                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_list_reverse_α
proc_list_reverse_α:
#-----------------------------------------------------------------------------------------------------------------------
n0_save_restore_α:                                                            jmp   n1_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n1_goto_deferred_α:     lea              rax, [rip + list_reverse_body];      jmp   rax
                                                                              jmp   n2_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n2_save_restore_α:
list_reverse_alpha:     sub              rsp, 96
                        mov              rax, qword ptr [r9 + 32]             # acc
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 32], 0
                        mov              qword ptr [r9 + 40], 0
                        mov              rax, qword ptr [r9 + 48]             # cur
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 24], rax
                        mov              qword ptr [r9 + 48], 0
                        mov              qword ptr [r9 + 56], 0
                        mov              rax, qword ptr [r9 + 0]              # list_reverse
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 40], rax
                        mov              qword ptr [r9 + 0], 0
                        mov              qword ptr [r9 + 8], 0
                        mov              qword ptr [rsp + 48], r10
                        mov              qword ptr [rsp + 56], r11
                        mov              qword ptr [rsp + 64], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 96]
                        cmp              rdx, 0;                              jbe   .Lx8_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # lst
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx8_41
.Lx8_10:                mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 88], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Lx8_41:                lea              r10, [rip + list_reverse_gamma]
                        lea              r11, [rip + list_reverse_omega]
                        push             r11
                        push             r10
                        lea              rax, [rip + list_reverse_body];      jmp   rax
list_reverse_gamma:     mov              rdi, qword ptr [r9 + 0]              # list_reverse
                        mov              rsi, qword ptr [r9 + 8]
                        mov              rcx, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 96]
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [r9 + 8], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [r9 + 48], rax             # cur
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [r9 + 56], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 32], rax             # acc
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 40], rax
                        cmp              rdx, 0;                              jbe   .Lx8_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 16], rax             # lst
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx8_110
.Lx8_80:                mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [r9 + 24], rax
.Lx8_110:               mov              r10, qword ptr [rsp + 48]
                        mov              r11, qword ptr [rsp + 56]
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 96
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
list_reverse_omega:     mov              rcx, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 96]
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [r9 + 0], rax              # list_reverse
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [r9 + 8], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [r9 + 48], rax             # cur
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [r9 + 56], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 32], rax             # acc
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 40], rax
                        cmp              rdx, 0;                              jbe   .Lx8_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 16], rax             # lst
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx8_180
.Lx8_150:               mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [r9 + 24], rax
.Lx8_180:               mov              r10, qword ptr [rsp + 48]
                        mov              r11, qword ptr [rsp + 56]
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 96
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_stk_push_frame_α
proc_stk_push_frame_α:
#-----------------------------------------------------------------------------------------------------------------------
n9_save_restore_α:                                                            jmp   n10_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n10_goto_deferred_α:    lea              rax, [rip + stk_push_frame_body];    jmp   rax
                                                                              jmp   n11_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n11_save_restore_α:
stk_push_frame_alpha:   sub              rsp, 64
                        mov              rax, qword ptr [r9 + 64]             # stk_push_frame
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
                        cmp              rdx, 0;                              jbe   .Lx17_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 80]             # v
                        mov              qword ptr [r9 + 80], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 88]
                        mov              qword ptr [r9 + 88], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx17_41
.Lx17_10:               mov              rax, qword ptr [r9 + 80]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 80], 0
                        mov              qword ptr [r9 + 88], 0
.Lx17_41:               lea              r10, [rip + stk_push_frame_gamma]
                        lea              r11, [rip + stk_push_frame_omega]
                        push             r11
                        push             r10
                        lea              rax, [rip + stk_push_frame_body];    jmp   rax
stk_push_frame_gamma:   mov              rdi, qword ptr [r9 + 64]             # stk_push_frame
                        mov              rsi, qword ptr [r9 + 72]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 64], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 72], rax
                        cmp              rdx, 0;                              jbe   .Lx17_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 80], rax             # v
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 88], rax;            jmp   .Lx17_110
.Lx17_80:               mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 88], rax
.Lx17_110:              mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 64
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
stk_push_frame_omega:   mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 64], rax             # stk_push_frame
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 72], rax
                        cmp              rdx, 0;                              jbe   .Lx17_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 80], rax             # v
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 88], rax;            jmp   .Lx17_180
.Lx17_150:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 88], rax
.Lx17_180:              mov              r10, qword ptr [rsp + 16]
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
n18_save_restore_α:                                                           jmp   n19_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n19_goto_deferred_α:    lea              rax, [rip + stk_push_item_body];     jmp   rax
                                                                              jmp   n20_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n20_save_restore_α:
stk_push_item_alpha:    sub              rsp, 64
                        mov              rax, qword ptr [r9 + 96]             # stk_push_item
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
                        cmp              rdx, 0;                              jbe   .Lx26_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 80]             # v
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
.Lx26_41:               lea              r10, [rip + stk_push_item_gamma]
                        lea              r11, [rip + stk_push_item_omega]
                        push             r11
                        push             r10
                        lea              rax, [rip + stk_push_item_body];     jmp   rax
stk_push_item_gamma:    mov              rdi, qword ptr [r9 + 96]             # stk_push_item
                        mov              rsi, qword ptr [r9 + 104]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 96], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 104], rax
                        cmp              rdx, 0;                              jbe   .Lx26_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 80], rax             # v
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 88], rax;            jmp   .Lx26_110
.Lx26_80:               mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 88], rax
.Lx26_110:              mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 64
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
stk_push_item_omega:    mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 96], rax             # stk_push_item
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 104], rax
                        cmp              rdx, 0;                              jbe   .Lx26_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 80], rax             # v
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 88], rax;            jmp   .Lx26_180
.Lx26_150:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 88], rax
.Lx26_180:              mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_stk_pop_into_parent_α
proc_stk_pop_into_parent_α:
#-----------------------------------------------------------------------------------------------------------------------
n27_save_restore_α:                                                           jmp   n28_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n28_goto_deferred_α:    lea              rax, [rip + stk_pop_into_parent_body]
                                                                              jmp   rax
                                                                              jmp   n29_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n29_save_restore_α:
stk_pop_into_parent_alpha:
                        sub              rsp, 64
                        mov              rax, qword ptr [r9 + 112]            # stk_pop_into_parent
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
                        cmp              rdx, 0;                              jbe   .Lx35_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 128]            # child
                        mov              qword ptr [r9 + 128], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 136]
                        mov              qword ptr [r9 + 136], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx35_41
.Lx35_10:               mov              rax, qword ptr [r9 + 128]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 128], 0
                        mov              qword ptr [r9 + 136], 0
.Lx35_41:               lea              r10, [rip + stk_pop_into_parent_gamma]
                        lea              r11, [rip + stk_pop_into_parent_omega]
                        push             r11
                        push             r10
                        lea              rax, [rip + stk_pop_into_parent_body]
                                                                              jmp   rax
stk_pop_into_parent_gamma:
                        mov              rdi, qword ptr [r9 + 112]            # stk_pop_into_parent
                        mov              rsi, qword ptr [r9 + 120]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 112], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 120], rax
                        cmp              rdx, 0;                              jbe   .Lx35_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 128], rax            # child
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 136], rax;           jmp   .Lx35_110
.Lx35_80:               mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 128], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 136], rax
.Lx35_110:              mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 64
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
stk_pop_into_parent_omega:
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 112], rax            # stk_pop_into_parent
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 120], rax
                        cmp              rdx, 0;                              jbe   .Lx35_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 128], rax            # child
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 136], rax;           jmp   .Lx35_180
.Lx35_150:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 128], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 136], rax
.Lx35_180:              mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_stk_pop_final_α
proc_stk_pop_final_α:
#-----------------------------------------------------------------------------------------------------------------------
n36_save_restore_α:                                                           jmp   n37_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n37_goto_deferred_α:    lea              rax, [rip + stk_pop_final_body];     jmp   rax
                                                                              jmp   n38_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n38_save_restore_α:
stk_pop_final_alpha:    sub              rsp, 64
                        mov              rax, qword ptr [r9 + 144]            # stk_pop_final
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
                        cmp              rdx, 0;                              jbe   .Lx44_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 160]            # var
                        mov              qword ptr [r9 + 160], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 168]
                        mov              qword ptr [r9 + 168], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx44_41
.Lx44_10:               mov              rax, qword ptr [r9 + 160]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 160], 0
                        mov              qword ptr [r9 + 168], 0
.Lx44_41:               lea              r10, [rip + stk_pop_final_gamma]
                        lea              r11, [rip + stk_pop_final_omega]
                        push             r11
                        push             r10
                        lea              rax, [rip + stk_pop_final_body];     jmp   rax
stk_pop_final_gamma:    mov              rdi, qword ptr [r9 + 144]            # stk_pop_final
                        mov              rsi, qword ptr [r9 + 152]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 144], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 152], rax
                        cmp              rdx, 0;                              jbe   .Lx44_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 160], rax            # var
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 168], rax;           jmp   .Lx44_110
.Lx44_80:               mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 160], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 168], rax
.Lx44_110:              mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 64
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
stk_pop_final_omega:    mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 144], rax            # stk_pop_final
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 152], rax
                        cmp              rdx, 0;                              jbe   .Lx44_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 160], rax            # var
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 168], rax;           jmp   .Lx44_180
.Lx44_150:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 160], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 168], rax
.Lx44_180:              mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_init_list_α
proc_init_list_α:
#-----------------------------------------------------------------------------------------------------------------------
n45_save_restore_α:                                                           jmp   n46_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n46_goto_deferred_α:    lea              rax, [rip + init_list_body];         jmp   rax
                                                                              jmp   n47_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n47_save_restore_α:
init_list_alpha:        sub              rsp, 64
                        mov              rax, qword ptr [r9 + 176]            # init_list
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
                        mov              rsi, qword ptr [r9 + 80]             # v
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
.Lx53_41:               lea              r10, [rip + init_list_gamma]
                        lea              r11, [rip + init_list_omega]
                        push             r11
                        push             r10
                        lea              rax, [rip + init_list_body];         jmp   rax
init_list_gamma:        mov              rdi, qword ptr [r9 + 176]            # init_list
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
                        mov              qword ptr [r9 + 80], rax             # v
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
init_list_omega:        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 176], rax            # init_list
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 184], rax
                        cmp              rdx, 0;                              jbe   .Lx53_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 80], rax             # v
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
                        .globl           proc_Init_list_α
proc_Init_list_α:
#-----------------------------------------------------------------------------------------------------------------------
n54_save_restore_α:                                                           jmp   n55_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n55_goto_deferred_α:    lea              rax, [rip + Init_list_body];         jmp   rax
                                                                              jmp   n56_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n56_save_restore_α:
Init_list_alpha:        sub              rsp, 64
                        mov              rax, qword ptr [r9 + 192]            # Init_list
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 192], 0
                        mov              qword ptr [r9 + 200], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Lx62_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 208]            # vs
                        mov              qword ptr [r9 + 208], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 216]
                        mov              qword ptr [r9 + 216], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx62_41
.Lx62_10:               mov              rax, qword ptr [r9 + 208]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 208], 0
                        mov              qword ptr [r9 + 216], 0
.Lx62_41:               lea              r10, [rip + Init_list_gamma]
                        lea              r11, [rip + Init_list_omega]
                        push             r11
                        push             r10
                        lea              rax, [rip + Init_list_body];         jmp   rax
Init_list_gamma:        mov              rdi, qword ptr [r9 + 192]            # Init_list
                        mov              rsi, qword ptr [r9 + 200]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 192], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 200], rax
                        cmp              rdx, 0;                              jbe   .Lx62_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 208], rax            # vs
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 216], rax;           jmp   .Lx62_110
.Lx62_80:               mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 208], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 216], rax
.Lx62_110:              mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 64
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
Init_list_omega:        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 192], rax            # Init_list
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 200], rax
                        cmp              rdx, 0;                              jbe   .Lx62_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 208], rax            # vs
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 216], rax;           jmp   .Lx62_180
.Lx62_150:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 208], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 216], rax
.Lx62_180:              mov              r10, qword ptr [rsp + 16]
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
n63_save_restore_α:                                                           jmp   n64_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n64_goto_deferred_α:    lea              rax, [rip + push_list_body];         jmp   rax
                                                                              jmp   n65_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n65_save_restore_α:
push_list_alpha:        sub              rsp, 64
                        mov              rax, qword ptr [r9 + 224]            # push_list
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
                        mov              rsi, qword ptr [r9 + 80]             # v
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
.Lx71_41:               lea              r10, [rip + push_list_gamma]
                        lea              r11, [rip + push_list_omega]
                        push             r11
                        push             r10
                        lea              rax, [rip + push_list_body];         jmp   rax
push_list_gamma:        mov              rdi, qword ptr [r9 + 224]            # push_list
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
                        mov              qword ptr [r9 + 80], rax             # v
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
push_list_omega:        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 224], rax            # push_list
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 232], rax
                        cmp              rdx, 0;                              jbe   .Lx71_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 80], rax             # v
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
                        .globl           proc_Push_list_α
proc_Push_list_α:
#-----------------------------------------------------------------------------------------------------------------------
n72_save_restore_α:                                                           jmp   n73_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n73_goto_deferred_α:    lea              rax, [rip + Push_list_body];         jmp   rax
                                                                              jmp   n74_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n74_save_restore_α:
Push_list_alpha:        sub              rsp, 64
                        mov              rax, qword ptr [r9 + 240]            # Push_list
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
                        mov              rsi, qword ptr [r9 + 208]            # vs
                        mov              qword ptr [r9 + 208], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 216]
                        mov              qword ptr [r9 + 216], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx80_41
.Lx80_10:               mov              rax, qword ptr [r9 + 208]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 208], 0
                        mov              qword ptr [r9 + 216], 0
.Lx80_41:               lea              r10, [rip + Push_list_gamma]
                        lea              r11, [rip + Push_list_omega]
                        push             r11
                        push             r10
                        lea              rax, [rip + Push_list_body];         jmp   rax
Push_list_gamma:        mov              rdi, qword ptr [r9 + 240]            # Push_list
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
                        mov              qword ptr [r9 + 208], rax            # vs
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 216], rax;           jmp   .Lx80_110
.Lx80_80:               mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 208], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 216], rax
.Lx80_110:              mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 64
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
Push_list_omega:        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 240], rax            # Push_list
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 248], rax
                        cmp              rdx, 0;                              jbe   .Lx80_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 208], rax            # vs
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 216], rax;           jmp   .Lx80_180
.Lx80_150:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 208], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 216], rax
.Lx80_180:              mov              r10, qword ptr [rsp + 16]
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
n81_save_restore_α:                                                           jmp   n82_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n82_goto_deferred_α:    lea              rax, [rip + push_item_body];         jmp   rax
                                                                              jmp   n83_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n83_save_restore_α:
push_item_alpha:        sub              rsp, 64
                        mov              rax, qword ptr [r9 + 256]            # push_item
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
                        mov              rsi, qword ptr [r9 + 80]             # v
                        mov              qword ptr [r9 + 80], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 88]
                        mov              qword ptr [r9 + 88], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx89_41
.Lx89_10:               mov              rax, qword ptr [r9 + 80]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 80], 0
                        mov              qword ptr [r9 + 88], 0
.Lx89_41:               lea              r10, [rip + push_item_gamma]
                        lea              r11, [rip + push_item_omega]
                        push             r11
                        push             r10
                        lea              rax, [rip + push_item_body];         jmp   rax
push_item_gamma:        mov              rdi, qword ptr [r9 + 256]            # push_item
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
                        mov              qword ptr [r9 + 80], rax             # v
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 88], rax;            jmp   .Lx89_110
.Lx89_80:               mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 88], rax
.Lx89_110:              mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 64
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
push_item_omega:        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 256], rax            # push_item
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 264], rax
                        cmp              rdx, 0;                              jbe   .Lx89_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 80], rax             # v
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 88], rax;            jmp   .Lx89_180
.Lx89_150:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 88], rax
.Lx89_180:              mov              r10, qword ptr [rsp + 16]
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
n90_save_restore_α:                                                           jmp   n91_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n91_goto_deferred_α:    lea              rax, [rip + Push_item_body];         jmp   rax
                                                                              jmp   n92_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n92_save_restore_α:
Push_item_alpha:        sub              rsp, 64
                        mov              rax, qword ptr [r9 + 272]            # Push_item
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 280]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 272], 0
                        mov              qword ptr [r9 + 280], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Lx98_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 208]            # vs
                        mov              qword ptr [r9 + 208], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 216]
                        mov              qword ptr [r9 + 216], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx98_41
.Lx98_10:               mov              rax, qword ptr [r9 + 208]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 208], 0
                        mov              qword ptr [r9 + 216], 0
.Lx98_41:               lea              r10, [rip + Push_item_gamma]
                        lea              r11, [rip + Push_item_omega]
                        push             r11
                        push             r10
                        lea              rax, [rip + Push_item_body];         jmp   rax
Push_item_gamma:        mov              rdi, qword ptr [r9 + 272]            # Push_item
                        mov              rsi, qword ptr [r9 + 280]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 272], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 280], rax
                        cmp              rdx, 0;                              jbe   .Lx98_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 208], rax            # vs
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 216], rax;           jmp   .Lx98_110
.Lx98_80:               mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 208], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 216], rax
.Lx98_110:              mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 64
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
Push_item_omega:        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 272], rax            # Push_item
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 280], rax
                        cmp              rdx, 0;                              jbe   .Lx98_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 208], rax            # vs
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 216], rax;           jmp   .Lx98_180
.Lx98_150:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 208], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 216], rax
.Lx98_180:              mov              r10, qword ptr [rsp + 16]
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
n99_save_restore_α:                                                           jmp   n100_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n100_goto_deferred_α:   lea              rax, [rip + pop_list_body];          jmp   rax
                                                                              jmp   n101_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n101_save_restore_α:
pop_list_alpha:         sub              rsp, 48
                        mov              rax, qword ptr [r9 + 288]            # pop_list
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
                        lea              r10, [rip + pop_list_gamma]
                        lea              r11, [rip + pop_list_omega]
                        push             r11
                        push             r10
                        lea              rax, [rip + pop_list_body];          jmp   rax
pop_list_gamma:         mov              rdi, qword ptr [r9 + 288]
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
pop_list_omega:         mov              rcx, qword ptr [rsp + 32]
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
                        .globl           proc_Pop_list_α
proc_Pop_list_α:
#-----------------------------------------------------------------------------------------------------------------------
n108_save_restore_α:                                                          jmp   n109_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n109_goto_deferred_α:   lea              rax, [rip + Pop_list_body];          jmp   rax
                                                                              jmp   n110_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n110_save_restore_α:
Pop_list_alpha:         sub              rsp, 48
                        mov              rax, qword ptr [r9 + 304]            # Pop_list
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 312]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 304], 0
                        mov              qword ptr [r9 + 312], 0
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
Pop_list_gamma:         mov              rdi, qword ptr [r9 + 304]
                        mov              rsi, qword ptr [r9 + 312]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 312], rax
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
                        mov              qword ptr [r9 + 304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 312], rax
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
n117_save_restore_α:                                                          jmp   n118_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n118_goto_deferred_α:   lea              rax, [rip + pop_final_body];         jmp   rax
                                                                              jmp   n119_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n119_save_restore_α:
pop_final_alpha:        sub              rsp, 64
                        mov              rax, qword ptr [r9 + 320]            # pop_final
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
                        mov              rsi, qword ptr [r9 + 80]             # v
                        mov              qword ptr [r9 + 80], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 88]
                        mov              qword ptr [r9 + 88], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx125_41
.Lx125_10:              mov              rax, qword ptr [r9 + 80]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 80], 0
                        mov              qword ptr [r9 + 88], 0
.Lx125_41:              lea              r10, [rip + pop_final_gamma]
                        lea              r11, [rip + pop_final_omega]
                        push             r11
                        push             r10
                        lea              rax, [rip + pop_final_body];         jmp   rax
pop_final_gamma:        mov              rdi, qword ptr [r9 + 320]            # pop_final
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
                        mov              qword ptr [r9 + 80], rax             # v
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 88], rax;            jmp   .Lx125_110
.Lx125_80:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 88], rax
.Lx125_110:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 64
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
pop_final_omega:        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 320], rax            # pop_final
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 328], rax
                        cmp              rdx, 0;                              jbe   .Lx125_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 80], rax             # v
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 88], rax;            jmp   .Lx125_180
.Lx125_150:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 88], rax
.Lx125_180:             mov              r10, qword ptr [rsp + 16]
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
n126_save_restore_α:                                                          jmp   n127_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n127_goto_deferred_α:   lea              rax, [rip + Pop_final_body];         jmp   rax
                                                                              jmp   n128_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n128_save_restore_α:
Pop_final_alpha:        sub              rsp, 64
                        mov              rax, qword ptr [r9 + 336]            # Pop_final
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 344]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 336], 0
                        mov              qword ptr [r9 + 344], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Lx134_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 208]            # vs
                        mov              qword ptr [r9 + 208], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 216]
                        mov              qword ptr [r9 + 216], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx134_41
.Lx134_10:              mov              rax, qword ptr [r9 + 208]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 208], 0
                        mov              qword ptr [r9 + 216], 0
.Lx134_41:              lea              r10, [rip + Pop_final_gamma]
                        lea              r11, [rip + Pop_final_omega]
                        push             r11
                        push             r10
                        lea              rax, [rip + Pop_final_body];         jmp   rax
Pop_final_gamma:        mov              rdi, qword ptr [r9 + 336]            # Pop_final
                        mov              rsi, qword ptr [r9 + 344]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 336], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 344], rax
                        cmp              rdx, 0;                              jbe   .Lx134_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 208], rax            # vs
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 216], rax;           jmp   .Lx134_110
.Lx134_80:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 208], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 216], rax
.Lx134_110:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 64
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
Pop_final_omega:        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 336], rax            # Pop_final
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 344], rax
                        cmp              rdx, 0;                              jbe   .Lx134_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 208], rax            # vs
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 216], rax;           jmp   .Lx134_180
.Lx134_150:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 208], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 216], rax
.Lx134_180:             mov              r10, qword ptr [rsp + 16]
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
n135_save_restore_α:                                                          jmp   n136_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n136_goto_deferred_α:   lea              rax, [rip + node_repr_body];         jmp   rax
                                                                              jmp   n137_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n137_save_restore_α:
node_repr_alpha:        sub              rsp, 112
                        mov              rax, qword ptr [r9 + 384]            # r
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 392]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 384], 0
                        mov              qword ptr [r9 + 392], 0
                        mov              rax, qword ptr [r9 + 400]            # c
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [r9 + 408]
                        mov              qword ptr [rsp + 24], rax
                        mov              qword ptr [r9 + 400], 0
                        mov              qword ptr [r9 + 408], 0
                        mov              rax, qword ptr [r9 + 416]            # sep
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [r9 + 424]
                        mov              qword ptr [rsp + 40], rax
                        mov              qword ptr [r9 + 416], 0
                        mov              qword ptr [r9 + 424], 0
                        mov              rax, qword ptr [r9 + 352]            # node_repr
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 360]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 352], 0
                        mov              qword ptr [r9 + 360], 0
                        mov              qword ptr [rsp + 64], r10
                        mov              qword ptr [rsp + 72], r11
                        mov              qword ptr [rsp + 80], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 112]
                        cmp              rdx, 0;                              jbe   .Lx143_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 368]            # node
                        mov              qword ptr [r9 + 368], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 376]
                        mov              qword ptr [r9 + 376], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx143_41
.Lx143_10:              mov              rax, qword ptr [r9 + 368]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [r9 + 376]
                        mov              qword ptr [rsp + 104], rax
                        mov              qword ptr [r9 + 368], 0
                        mov              qword ptr [r9 + 376], 0
.Lx143_41:              lea              r10, [rip + node_repr_gamma]
                        lea              r11, [rip + node_repr_omega]
                        push             r11
                        push             r10
                        lea              rax, [rip + node_repr_body];         jmp   rax
node_repr_gamma:        mov              rdi, qword ptr [r9 + 352]            # node_repr
                        mov              rsi, qword ptr [r9 + 360]
                        mov              rcx, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 112]
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 352], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 360], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [r9 + 416], rax            # sep
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [r9 + 424], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [r9 + 400], rax            # c
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [r9 + 408], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 384], rax            # r
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 392], rax
                        cmp              rdx, 0;                              jbe   .Lx143_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 368], rax            # node
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 376], rax;           jmp   .Lx143_110
.Lx143_80:              mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [r9 + 368], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [r9 + 376], rax
.Lx143_110:             mov              r10, qword ptr [rsp + 64]
                        mov              r11, qword ptr [rsp + 72]
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 112
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
node_repr_omega:        mov              rcx, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 112]
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 352], rax            # node_repr
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 360], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [r9 + 416], rax            # sep
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [r9 + 424], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [r9 + 400], rax            # c
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [r9 + 408], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 384], rax            # r
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 392], rax
                        cmp              rdx, 0;                              jbe   .Lx143_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 368], rax            # node
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 376], rax;           jmp   .Lx143_180
.Lx143_150:             mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [r9 + 368], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [r9 + 376], rax
.Lx143_180:             mov              r10, qword ptr [rsp + 64]
                        mov              r11, qword ptr [rsp + 72]
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 112
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pp_node_α
proc_pp_node_α:
#-----------------------------------------------------------------------------------------------------------------------
n144_save_restore_α:                                                          jmp   n145_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n145_goto_deferred_α:   lea              rax, [rip + pp_node_body];           jmp   rax
                                                                              jmp   n146_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n146_save_restore_α:
pp_node_alpha:          sub              rsp, 160
                        mov              rax, qword ptr [r9 + 384]            # r
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 392]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 384], 0
                        mov              qword ptr [r9 + 392], 0
                        mov              rax, qword ptr [r9 + 480]            # pad
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [r9 + 488]
                        mov              qword ptr [rsp + 24], rax
                        mov              qword ptr [r9 + 480], 0
                        mov              qword ptr [r9 + 488], 0
                        mov              rax, qword ptr [r9 + 400]            # c
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [r9 + 408]
                        mov              qword ptr [rsp + 40], rax
                        mov              qword ptr [r9 + 400], 0
                        mov              qword ptr [r9 + 408], 0
                        mov              rax, qword ptr [r9 + 496]            # nxt
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 504]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 496], 0
                        mov              qword ptr [r9 + 504], 0
                        mov              rax, qword ptr [r9 + 432]            # pp_node
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [r9 + 440]
                        mov              qword ptr [rsp + 72], rax
                        mov              qword ptr [r9 + 432], 0
                        mov              qword ptr [r9 + 440], 0
                        mov              qword ptr [rsp + 80], r10
                        mov              qword ptr [rsp + 88], r11
                        mov              qword ptr [rsp + 96], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 160]
                        cmp              rdx, 0;                              jbe   .Lx152_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 368]            # node
                        mov              qword ptr [r9 + 368], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 376]
                        mov              qword ptr [r9 + 376], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx152_41
.Lx152_10:              mov              rax, qword ptr [r9 + 368]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [r9 + 376]
                        mov              qword ptr [rsp + 120], rax
                        mov              qword ptr [r9 + 368], 0
                        mov              qword ptr [r9 + 376], 0
.Lx152_41:              cmp              rdx, 1;                              jbe   .Lx152_11
                        mov              rdi, qword ptr [rcx + 32]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 448]            # indent
                        mov              qword ptr [r9 + 448], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 456]
                        mov              qword ptr [r9 + 456], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx152_42
.Lx152_11:              mov              rax, qword ptr [r9 + 448]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [r9 + 456]
                        mov              qword ptr [rsp + 136], rax
                        mov              qword ptr [r9 + 448], 0
                        mov              qword ptr [r9 + 456], 0
.Lx152_42:              cmp              rdx, 2;                              jbe   .Lx152_12
                        mov              rdi, qword ptr [rcx + 40]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 464]            # suffix
                        mov              qword ptr [r9 + 464], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 472]
                        mov              qword ptr [r9 + 472], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx152_43
.Lx152_12:              mov              rax, qword ptr [r9 + 464]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [r9 + 472]
                        mov              qword ptr [rsp + 152], rax
                        mov              qword ptr [r9 + 464], 0
                        mov              qword ptr [r9 + 472], 0
.Lx152_43:              lea              r10, [rip + pp_node_gamma]
                        lea              r11, [rip + pp_node_omega]
                        push             r11
                        push             r10
                        lea              rax, [rip + pp_node_body];           jmp   rax
pp_node_gamma:          mov              rdi, qword ptr [r9 + 432]            # pp_node
                        mov              rsi, qword ptr [r9 + 440]
                        mov              rcx, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 160]
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [r9 + 432], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [r9 + 440], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 496], rax            # nxt
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 504], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [r9 + 400], rax            # c
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [r9 + 408], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [r9 + 480], rax            # pad
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [r9 + 488], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 384], rax            # r
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 392], rax
                        cmp              rdx, 0;                              jbe   .Lx152_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 368], rax            # node
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 376], rax;           jmp   .Lx152_110
.Lx152_80:              mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [r9 + 368], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [r9 + 376], rax
.Lx152_110:             cmp              rdx, 1;                              jbe   .Lx152_81
                        mov              r11, qword ptr [rcx + 32]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 448], rax            # indent
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 456], rax;           jmp   .Lx152_111
.Lx152_81:              mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [r9 + 448], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [r9 + 456], rax
.Lx152_111:             cmp              rdx, 2;                              jbe   .Lx152_82
                        mov              r11, qword ptr [rcx + 40]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 464], rax            # suffix
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 472], rax;           jmp   .Lx152_112
.Lx152_82:              mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [r9 + 464], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [r9 + 472], rax
.Lx152_112:             mov              r10, qword ptr [rsp + 80]
                        mov              r11, qword ptr [rsp + 88]
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 160
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
pp_node_omega:          mov              rcx, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 160]
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [r9 + 432], rax            # pp_node
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [r9 + 440], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 496], rax            # nxt
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 504], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [r9 + 400], rax            # c
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [r9 + 408], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [r9 + 480], rax            # pad
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [r9 + 488], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 384], rax            # r
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 392], rax
                        cmp              rdx, 0;                              jbe   .Lx152_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 368], rax            # node
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 376], rax;           jmp   .Lx152_180
.Lx152_150:             mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [r9 + 368], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [r9 + 376], rax
.Lx152_180:             cmp              rdx, 1;                              jbe   .Lx152_151
                        mov              r11, qword ptr [rcx + 32]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 448], rax            # indent
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 456], rax;           jmp   .Lx152_181
.Lx152_151:             mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [r9 + 448], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [r9 + 456], rax
.Lx152_181:             cmp              rdx, 2;                              jbe   .Lx152_152
                        mov              r11, qword ptr [rcx + 40]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 464], rax            # suffix
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 472], rax;           jmp   .Lx152_182
.Lx152_152:             mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [r9 + 464], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [r9 + 472], rax
.Lx152_182:             mov              r10, qword ptr [rsp + 80]
                        mov              r11, qword ptr [rsp + 88]
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 160
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pp_bank_α
proc_pp_bank_α:
#-----------------------------------------------------------------------------------------------------------------------
n153_save_restore_α:                                                          jmp   n154_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n154_goto_deferred_α:   lea              rax, [rip + pp_bank_body];           jmp   rax
                                                                              jmp   n155_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n155_save_restore_α:
pp_bank_alpha:          sub              rsp, 64
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
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Lx161_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 48]             # cur
                        mov              qword ptr [r9 + 48], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 56]
                        mov              qword ptr [r9 + 56], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx161_41
.Lx161_10:              mov              rax, qword ptr [r9 + 48]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 48], 0
                        mov              qword ptr [r9 + 56], 0
.Lx161_41:              lea              r10, [rip + pp_bank_gamma]
                        lea              r11, [rip + pp_bank_omega]
                        push             r11
                        push             r10
                        lea              rax, [rip + pp_bank_body];           jmp   rax
pp_bank_gamma:          mov              rdi, qword ptr [r9 + 512]            # pp_bank
                        mov              rsi, qword ptr [r9 + 520]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 512], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 520], rax
                        cmp              rdx, 0;                              jbe   .Lx161_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 48], rax             # cur
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 56], rax;            jmp   .Lx161_110
.Lx161_80:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 48], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 56], rax
.Lx161_110:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 64
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
pp_bank_omega:          mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 512], rax            # pp_bank
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 520], rax
                        cmp              rdx, 0;                              jbe   .Lx161_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 48], rax             # cur
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 56], rax;            jmp   .Lx161_180
.Lx161_150:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 48], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 56], rax
.Lx161_180:             mov              r10, qword ptr [rsp + 16]
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
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 40
                        mov              qword ptr [rbp + -8], r10
                        mov              qword ptr [rbp + -16], r11
#-----------------------------------------------------------------------------------------------------------------------
n162_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rbp + -32], r14d;         jmp   n163_match_defer_α
n162_match_assign_save_β:
                        add              rsp, 16;                             jmp   proc_PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
n163_match_defer_α:     sub              rsp, 16
                        mov              rax, qword ptr [r9 + 768]            # PAT$0$V0
                        mov              rdx, qword ptr [r9 + 776]
                        cmp              eax, 8;                              jne   .Lx167_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx167_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx167_10
.Lx167_9:               xor              eax, eax
.Lx167_10:              test             rax, rax;                            jz    .Lx167_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx167_4]
                        lea              r11, [rip + .Lx167_5];               jmp   rax
.Lx167_4:                                                                     jmp   n164_match_assign_cond_α
.Lx167_5:               add              rsp, 16;                             jmp   n162_match_assign_save_β
.Lx167_0:               push             r14
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
.Lx167_2:               test             rax, rax;                            je    .Lx167_3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx167_7]
                        lea              rdx, [rip + .Lx167_8];               jmp   rax
.Lx167_7:               mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx167_2
.Lx167_8:               mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx167_2
.Lx167_3:               add              rsp, 8
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
                        test             eax, eax;                            jns   .Lx167_240
                        add              rsp, 16;                             jmp   n162_match_assign_save_β
.Lx167_240:             mov              r14d, eax
                        lea              rax, [rip + .Lx167_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n164_match_assign_cond_α
.Lx167_6:               add              rsp, 16
                        add              rsp, 16;                             jmp   n162_match_assign_save_β
n163_match_defer_β:                                                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n164_match_assign_cond_α:
                        mov              eax, dword ptr [rbp + -32]
                        lea              rcx, [rip + .S1]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   proc_PAT$0_γ
n164_match_assign_cond_β:
                        sub              r12, 24;                             jmp   n163_match_defer_β
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
n170_match_span_α:      sub              rsp, 16
                        movsxd           rcx, r14d
.Lx172_0:               cmp              ecx, r15d;                           jge   .Lx172_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32;                             je    .Lx172_10
                        cmp              esi, 10;                             je    .Lx172_10
                                                                              jmp   .Lx172_1
.Lx172_10:              add              ecx, 1;                              jmp   .Lx172_0
.Lx172_1:               cmp              ecx, r14d;                           jg    .Lx172_240
                        add              rsp, 16;                             jmp   proc_PAT$1_ω
.Lx172_240:             mov              dword ptr [rsp + 4], r14d
                        mov              r14d, ecx;                           jmp   proc_PAT$1_γ
n170_match_span_β:      mov              r14d, dword ptr [rsp + 4]
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
n173_match_notany_α:    mov              eax, r14d
                        cmp              eax, r15d;                           jge   proc_PAT$2_ω
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0;               jne   proc_PAT$2_ω
                        add              r14d, 1;                             jmp   n174_match_break_α
n173_match_notany_β:    sub              r14d, 1;                             jmp   proc_PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
n174_match_break_α:     sub              rsp, 16
                        lea              rdi, [rip + .C0]
                        movsxd           rcx, r14d
.Lx177_0:               cmp              ecx, r15d;                           jl    .Lx177_240
                        add              rsp, 16;                             jmp   n173_match_notany_β
.Lx177_240:             movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               jnz   .Lx177_1
                        add              ecx, 1;                              jmp   .Lx177_0
.Lx177_1:               mov              dword ptr [rsp + 0], r14d
                        mov              r14d, ecx;                           jmp   proc_PAT$2_γ
n174_match_break_β:     mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16;                             jmp   n173_match_notany_β
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
n178_match_lit_α:       mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    proc_PAT$3_ω
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40;                             jne   proc_PAT$3_ω
                        add              r14d, 1;                             jmp   n179_match_assign_save_α
n178_match_lit_β:       sub              r14d, 1;                             jmp   proc_PAT$3_ω
#-----------------------------------------------------------------------------------------------------------------------
n179_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rbp + -32], r14d;         jmp   n180_match_defer_α
n179_match_assign_save_β:
                        add              rsp, 16;                             jmp   n178_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n180_match_defer_α:     sub              rsp, 16
                        mov              rax, qword ptr [r9 + 784]            # PAT$3$V0
                        mov              rdx, qword ptr [r9 + 792]
                        cmp              eax, 8;                              jne   .Lx204_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx204_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx204_10
.Lx204_9:               xor              eax, eax
.Lx204_10:              test             rax, rax;                            jz    .Lx204_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx204_4]
                        lea              r11, [rip + .Lx204_5];               jmp   rax
.Lx204_4:                                                                     jmp   n181_match_assign_cond_α
.Lx204_5:               add              rsp, 16;                             jmp   n179_match_assign_save_β
.Lx204_0:               push             r14
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
.Lx204_2:               test             rax, rax;                            je    .Lx204_3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx204_7]
                        lea              rdx, [rip + .Lx204_8];               jmp   rax
.Lx204_7:               mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx204_2
.Lx204_8:               mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx204_2
.Lx204_3:               add              rsp, 8
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
                        test             eax, eax;                            jns   .Lx204_240
                        add              rsp, 16;                             jmp   n179_match_assign_save_β
.Lx204_240:             mov              r14d, eax
                        lea              rax, [rip + .Lx204_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n181_match_assign_cond_α
.Lx204_6:               add              rsp, 16
                        add              rsp, 16;                             jmp   n179_match_assign_save_β
n180_match_defer_β:                                                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n181_match_assign_cond_α:
                        mov              eax, dword ptr [rbp + -32]
                        lea              rcx, [rip + .S3]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n182_lit_string_α
n181_match_assign_cond_β:
                        sub              r12, 24;                             jmp   n180_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n182_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx207_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n183_call_α
.Lx207_0:               .quad            .Lx207_0_s
.Lx207_0_s:             .string          "tag"
#-----------------------------------------------------------------------------------------------------------------------
n183_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig209z]
                        lea              rax, [rip + Push_list_alpha];        jmp   rax
.Lsig209z:              .quad            1
                        .quad            .Lx209_2
                        .quad            .Lx209_2
                        .quad            16
.Lx209_2:               mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx209_240
                        add              rsp, 16;                             jmp   n181_match_assign_cond_β
.Lx209_240:                                                                   jmp   n184_match_value_α
n183_call_β:                                                                  jmp   n181_match_assign_cond_β
.Lx209_0:               .quad            .Lx209_0_s
.Lx209_0_s:             .string          "Push_list"
#-----------------------------------------------------------------------------------------------------------------------
n184_match_value_α:     lea              rdi, [rsp + 0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_match_value_get_pat_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            jz    .Lx210_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx210_4]
                        lea              rdx, [rip + .Lx210_5];               jmp   rax
.Lx210_4:                                                                     jmp   n185_match_arbno_α
.Lx210_5:                                                                     jmp   n181_match_assign_cond_β
.Lx210_0:               lea              rdi, [rsp + 0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_match_value_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_close@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    n181_match_assign_cond_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx210_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n185_match_arbno_α
.Lx210_6:               add              rsp, 16;                             jmp   n181_match_assign_cond_β
n184_match_value_β:                                                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n185_match_arbno_α:     mov              dword ptr [rbp + -48], r14d
                        mov              dword ptr [rbp + -44], r14d;         jmp   n186_call_α
n185_match_arbno_β:                                                           jmp   n189_match_defer_α
n185_match_arbno_as:    mov              eax, dword ptr [rbp + -44]
                        cmp              r14d, eax;                           je    n185_match_arbno_af
                        mov              dword ptr [rbp + -44], r14d;         jmp   n186_call_α
n185_match_arbno_af:    mov              eax, dword ptr [rbp + -48]
                        cmp              r14d, eax;                           jne   n185_match_arbno_af
                                                                              jmp   n184_match_value_β
#-----------------------------------------------------------------------------------------------------------------------
n186_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig214z]
                        lea              rax, [rip + Pop_list_alpha];         jmp   rax
.Lsig214z:              .quad            0
                        .quad            .Lx214_2
                        .quad            .Lx214_2
.Lx214_2:               mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx214_240
                        add              rsp, 16;                             jmp   n185_match_arbno_β
.Lx214_240:                                                                   jmp   n187_match_value_α
n186_call_β:                                                                  jmp   n185_match_arbno_β
.Lx214_0:               .quad            .Lx214_0_s
.Lx214_0_s:             .string          "Pop_list"
#-----------------------------------------------------------------------------------------------------------------------
n187_match_value_α:     lea              rdi, [rsp + 0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_match_value_get_pat_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            jz    .Lx215_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx215_4]
                        lea              rdx, [rip + .Lx215_5];               jmp   rax
.Lx215_4:                                                                     jmp   n188_match_lit_α
.Lx215_5:                                                                     jmp   n185_match_arbno_β
.Lx215_0:               lea              rdi, [rsp + 0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_match_value_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_close@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    n185_match_arbno_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx215_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n188_match_lit_α
.Lx215_6:               add              rsp, 16;                             jmp   n185_match_arbno_β
n187_match_value_β:                                                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n188_match_lit_α:       mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n187_match_value_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41;                             jne   n187_match_value_β
                        add              r14d, 1;                             jmp   proc_PAT$3_γ
n188_match_lit_β:       sub              r14d, 1;                             jmp   n187_match_value_β
#-----------------------------------------------------------------------------------------------------------------------
n189_match_defer_α:     mov              rax, qword ptr [r9 + 816]            # PAT$3$V2
                        mov              rdx, qword ptr [r9 + 824]
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
.Lx218_4:                                                                     jmp   n190_match_fence1_α
.Lx218_5:                                                                     jmp   n185_match_arbno_af
.Lx218_0:               push             r14
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
                        test             eax, eax;                            js    n185_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx218_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n190_match_fence1_α
.Lx218_6:               add              rsp, 16;                             jmp   n185_match_arbno_af
n189_match_defer_β:                                                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n190_match_fence1_α:    mov              qword ptr [rbp + -64], rsp;          jmp   n191_match_alternate_α
n190_match_fence1_as:   mov              rsp, qword ptr [rbp + -64];          jmp   n185_match_arbno_as
n190_match_fence1_af:
n190_match_fence1_β:    mov              rsp, qword ptr [rbp + -64];          jmp   n185_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n191_match_alternate_α: sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        lea              rax, [rip + .Lx222_21]
                        mov              qword ptr [rsp + 16], rax;           jmp   n199_match_defer_α
.Lx222_21:              lea              rax, [rip + .Lx222_19]
                        mov              qword ptr [rsp + 16], rax;           jmp   n193_match_assign_save_α
n191_match_alternate_s0:
                        lea              rax, [rip + .Lx222_40]
                        mov              qword ptr [rsp + 8], rax;            jmp   n191_match_alternate_as
n191_match_alternate_s1:
                        lea              rax, [rip + .Lx222_41]
                        mov              qword ptr [rsp + 8], rax;            jmp   n191_match_alternate_as
.Lx222_40:                                                                    jmp   n199_match_defer_β
.Lx222_41:                                                                    jmp   n192_goto_β
n191_match_alternate_as:
                                                                              jmp   n190_match_fence1_as
n191_match_alternate_β: mov              rax, qword ptr [rsp + 8];            jmp   rax
n191_match_alternate_af:
                        mov              r14d, dword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16];           jmp   rax
.Lx222_19:              add              rsp, 32;                             jmp   n190_match_fence1_af
#-----------------------------------------------------------------------------------------------------------------------
n192_goto_α:                                                                  jmp   n191_match_alternate_af
n192_goto_β:                                                                  jmp   n191_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n193_match_assign_save_α:
                        mov              dword ptr [rbp + -80], r14d;         jmp   n194_match_defer_α
n193_match_assign_save_β:
                                                                              jmp   n191_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n194_match_defer_α:     mov              rax, qword ptr [r9 + 800]            # PAT$3$V1
                        mov              rdx, qword ptr [r9 + 808]
                        cmp              eax, 8;                              jne   .Lx226_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx226_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx226_10
.Lx226_9:               xor              eax, eax
.Lx226_10:              test             rax, rax;                            jz    .Lx226_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx226_4]
                        lea              r11, [rip + .Lx226_5];               jmp   rax
.Lx226_4:                                                                     jmp   n195_match_assign_cond_α
.Lx226_5:                                                                     jmp   n193_match_assign_save_β
.Lx226_0:               push             r14
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
.Lx226_2:               test             rax, rax;                            je    .Lx226_3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx226_7]
                        lea              rdx, [rip + .Lx226_8];               jmp   rax
.Lx226_7:               mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx226_2
.Lx226_8:               mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx226_2
.Lx226_3:               add              rsp, 8
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
                        test             eax, eax;                            js    n193_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx226_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n195_match_assign_cond_α
.Lx226_6:               add              rsp, 16;                             jmp   n193_match_assign_save_β
n194_match_defer_β:                                                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n195_match_assign_cond_α:
                        mov              eax, dword ptr [rbp + -80]
                        lea              rcx, [rip + .S6]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n196_lit_string_α
n195_match_assign_cond_β:
                        sub              r12, 24;                             jmp   n194_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n196_lit_string_α:      mov              qword ptr [rsp + 416], 2             # result
                        mov              dword ptr [rsp + 420], 3
                        mov              rax, qword ptr [rip + .Lx229_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n197_call_α
.Lx229_0:               .quad            .Lx229_0_s
.Lx229_0_s:             .string          "wrd"
#-----------------------------------------------------------------------------------------------------------------------
n197_call_α:            lea              rcx, [rip + .Lsig231]
                        lea              rax, [rip + Push_item_alpha];        jmp   rax
.Lsig231:               .quad            1
                        .quad            .Lx231_2
                        .quad            .Lx231_2
                        .quad            416
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx231_20
                        mov              rax, qword ptr [rsp + 416]
                        mov              rdx, qword ptr [rsp + 424]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx231_21
.Lx231_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 416]
                        mov              rdx, qword ptr [rsp + 424]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx231_21:              mov              rdi, qword ptr [rip + .Lx231_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx231_1
                        mov              rdi, qword ptr [rip + .Lx231_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx231_3]
                        lea              rdx, [rip + .Lx231_4];               jmp   rax
.Lx231_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx231_2
.Lx231_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx231_2
.Lx231_1:               call             rt_faildescr@PLT
.Lx231_2:               mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        cmp              eax, 104;                            je    n195_match_assign_cond_β
                                                                              jmp   n198_match_value_α
n197_call_β:                                                                  jmp   n195_match_assign_cond_β
.Lx231_0:               .quad            .Lx231_0_s
.Lx231_0_s:             .string          "Push_item"
#-----------------------------------------------------------------------------------------------------------------------
n198_match_value_α:     lea              rdi, [rsp + 368]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_match_value_get_pat_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            jz    .Lx232_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx232_4]
                        lea              rdx, [rip + .Lx232_5];               jmp   rax
.Lx232_4:                                                                     jmp   n191_match_alternate_s1
.Lx232_5:                                                                     jmp   n195_match_assign_cond_β
.Lx232_0:               lea              rdi, [rsp + 368]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_match_value_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_close@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    n195_match_assign_cond_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx232_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n191_match_alternate_s1
.Lx232_6:               add              rsp, 16;                             jmp   n195_match_assign_cond_β
n198_match_value_β:                                                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n199_match_defer_α:     mov              rax, qword ptr [r9 + 624]            # group
                        mov              rdx, qword ptr [r9 + 632]
                        cmp              eax, 8;                              jne   .Lx233_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx233_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx233_10
.Lx233_9:               xor              eax, eax
.Lx233_10:              test             rax, rax;                            jz    .Lx233_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx233_4]
                        lea              r11, [rip + .Lx233_5];               jmp   rax
.Lx233_4:                                                                     jmp   n191_match_alternate_s0
.Lx233_5:                                                                     jmp   n191_match_alternate_af
.Lx233_0:               push             r14
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
.Lx233_2:               test             rax, rax;                            je    .Lx233_3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx233_7]
                        lea              rdx, [rip + .Lx233_8];               jmp   rax
.Lx233_7:               mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx233_2
.Lx233_8:               mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx233_2
.Lx233_3:               add              rsp, 8
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
                        test             eax, eax;                            js    n191_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx233_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n191_match_alternate_s0
.Lx233_6:               add              rsp, 16;                             jmp   n191_match_alternate_af
n199_match_defer_β:                                                           jmp   qword ptr [rsp]
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
n234_match_pos_α:       mov              rax, 0
                        cmp              r14d, eax;                           jne   proc_PAT$4_ω
                                                                              jmp   n235_lit_string_α
n234_match_pos_β:                                                             jmp   proc_PAT$4_ω
#-----------------------------------------------------------------------------------------------------------------------
n235_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx255_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n236_call_α
.Lx255_0:               .quad            .Lx255_0_s
.Lx255_0_s:             .string          "'bank'"
#-----------------------------------------------------------------------------------------------------------------------
n236_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig257z]
                        lea              rax, [rip + Init_list_alpha];        jmp   rax
.Lsig257z:              .quad            1
                        .quad            .Lx257_2
                        .quad            .Lx257_2
                        .quad            16
.Lx257_2:               mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx257_240
                        add              rsp, 16;                             jmp   proc_PAT$4_ω
.Lx257_240:                                                                   jmp   n237_match_value_α
n236_call_β:                                                                  jmp   proc_PAT$4_ω
.Lx257_0:               .quad            .Lx257_0_s
.Lx257_0_s:             .string          "Init_list"
#-----------------------------------------------------------------------------------------------------------------------
n237_match_value_α:     lea              rdi, [rsp + 0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_match_value_get_pat_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            jz    .Lx258_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx258_4]
                        lea              rdx, [rip + .Lx258_5];               jmp   rax
.Lx258_4:                                                                     jmp   n238_lit_string_α
.Lx258_5:                                                                     jmp   proc_PAT$4_ω
.Lx258_0:               lea              rdi, [rsp + 0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_match_value_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_close@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    proc_PAT$4_ω
                        mov              r14d, eax
                        lea              rax, [rip + .Lx258_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n238_lit_string_α
.Lx258_6:               add              rsp, 16;                             jmp   proc_PAT$4_ω
n237_match_value_β:                                                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n238_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx259_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n239_call_α
.Lx259_0:               .quad            .Lx259_0_s
.Lx259_0_s:             .string          "'BANK'"
#-----------------------------------------------------------------------------------------------------------------------
n239_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig261z]
                        lea              rax, [rip + Push_list_alpha];        jmp   rax
.Lsig261z:              .quad            1
                        .quad            .Lx261_2
                        .quad            .Lx261_2
                        .quad            16
.Lx261_2:               mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx261_240
                        add              rsp, 16;                             jmp   n237_match_value_β
.Lx261_240:                                                                   jmp   n240_match_value_α
n239_call_β:                                                                  jmp   n237_match_value_β
.Lx261_0:               .quad            .Lx261_0_s
.Lx261_0_s:             .string          "Push_list"
#-----------------------------------------------------------------------------------------------------------------------
n240_match_value_α:     lea              rdi, [rsp + 0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_match_value_get_pat_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            jz    .Lx262_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx262_4]
                        lea              rdx, [rip + .Lx262_5];               jmp   rax
.Lx262_4:                                                                     jmp   n241_match_arbno_α
.Lx262_5:                                                                     jmp   n237_match_value_β
.Lx262_0:               lea              rdi, [rsp + 0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_match_value_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_close@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    n237_match_value_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx262_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n241_match_arbno_α
.Lx262_6:               add              rsp, 16;                             jmp   n237_match_value_β
n240_match_value_β:                                                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n241_match_arbno_α:     mov              dword ptr [rbp + -32], r14d
                        mov              dword ptr [rbp + -28], r14d;         jmp   n242_lit_string_α
n241_match_arbno_β:                                                           jmp   n246_lit_string_α
n241_match_arbno_as:    mov              eax, dword ptr [rbp + -28]
                        cmp              r14d, eax;                           je    n241_match_arbno_af
                        mov              dword ptr [rbp + -28], r14d;         jmp   n242_lit_string_α
n241_match_arbno_af:    mov              eax, dword ptr [rbp + -32]
                        cmp              r14d, eax;                           jne   n241_match_arbno_af
                                                                              jmp   n240_match_value_β
#-----------------------------------------------------------------------------------------------------------------------
n242_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx265_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n243_call_α
.Lx265_0:               .quad            .Lx265_0_s
.Lx265_0_s:             .string          "'bank'"
#-----------------------------------------------------------------------------------------------------------------------
n243_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig267z]
                        lea              rax, [rip + Pop_final_alpha];        jmp   rax
.Lsig267z:              .quad            1
                        .quad            .Lx267_2
                        .quad            .Lx267_2
                        .quad            16
.Lx267_2:               mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx267_240
                        add              rsp, 16;                             jmp   n241_match_arbno_β
.Lx267_240:                                                                   jmp   n244_match_value_α
n243_call_β:                                                                  jmp   n241_match_arbno_β
.Lx267_0:               .quad            .Lx267_0_s
.Lx267_0_s:             .string          "Pop_final"
#-----------------------------------------------------------------------------------------------------------------------
n244_match_value_α:     lea              rdi, [rsp + 0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_match_value_get_pat_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            jz    .Lx268_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx268_4]
                        lea              rdx, [rip + .Lx268_5];               jmp   rax
.Lx268_4:                                                                     jmp   n245_match_rpos_α
.Lx268_5:                                                                     jmp   n241_match_arbno_β
.Lx268_0:               lea              rdi, [rsp + 0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_match_value_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_close@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    n241_match_arbno_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx268_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n245_match_rpos_α
.Lx268_6:               add              rsp, 16;                             jmp   n241_match_arbno_β
n244_match_value_β:                                                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n245_match_rpos_α:      mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n244_match_value_β
                                                                              jmp   proc_PAT$4_γ
#-----------------------------------------------------------------------------------------------------------------------
n246_lit_string_α:      mov              qword ptr [rsp + 288], 2             # result
                        mov              dword ptr [rsp + 292], 6
                        mov              rax, qword ptr [rip + .Lx270_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n247_call_α
n246_lit_string_β:                                                            jmp   n241_match_arbno_af
.Lx270_0:               .quad            .Lx270_0_s
.Lx270_0_s:             .string          "'ROOT'"
#-----------------------------------------------------------------------------------------------------------------------
n247_call_α:            lea              rcx, [rip + .Lsig272]
                        lea              rax, [rip + Push_list_alpha];        jmp   rax
.Lsig272:               .quad            1
                        .quad            .Lx272_2
                        .quad            .Lx272_2
                        .quad            288
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx272_20
                        mov              rax, qword ptr [rsp + 288]
                        mov              rdx, qword ptr [rsp + 296]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx272_21
.Lx272_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 288]
                        mov              rdx, qword ptr [rsp + 296]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx272_21:              mov              rdi, qword ptr [rip + .Lx272_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx272_1
                        mov              rdi, qword ptr [rip + .Lx272_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx272_3]
                        lea              rdx, [rip + .Lx272_4];               jmp   rax
.Lx272_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx272_2
.Lx272_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx272_2
.Lx272_1:               call             rt_faildescr@PLT
.Lx272_2:               mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              eax, 104;                            je    n241_match_arbno_af
                                                                              jmp   n248_match_value_α
n247_call_β:                                                                  jmp   n241_match_arbno_af
.Lx272_0:               .quad            .Lx272_0_s
.Lx272_0_s:             .string          "Push_list"
#-----------------------------------------------------------------------------------------------------------------------
n248_match_value_α:     lea              rdi, [rsp + 240]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_match_value_get_pat_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            jz    .Lx273_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx273_4]
                        lea              rdx, [rip + .Lx273_5];               jmp   rax
.Lx273_4:                                                                     jmp   n249_match_arbno_α
.Lx273_5:                                                                     jmp   n241_match_arbno_af
.Lx273_0:               lea              rdi, [rsp + 240]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_match_value_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_close@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    n241_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx273_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n249_match_arbno_α
.Lx273_6:               add              rsp, 16;                             jmp   n241_match_arbno_af
n248_match_value_β:                                                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n249_match_arbno_α:     mov              dword ptr [rbp + -48], r14d
                        mov              dword ptr [rbp + -44], r14d;         jmp   n250_match_defer_α
n249_match_arbno_β:                                                           jmp   n253_match_defer_α
n249_match_arbno_as:    mov              eax, dword ptr [rbp + -44]
                        cmp              r14d, eax;                           je    n253_match_defer_β
                        mov              dword ptr [rbp + -44], r14d;         jmp   n250_match_defer_α
n249_match_arbno_af:    mov              eax, dword ptr [rbp + -48]
                        cmp              r14d, eax;                           jne   n253_match_defer_β
                                                                              jmp   n248_match_value_β
#-----------------------------------------------------------------------------------------------------------------------
n250_match_defer_α:     mov              rax, qword ptr [r9 + 832]            # PAT$4$V0
                        mov              rdx, qword ptr [r9 + 840]
                        cmp              eax, 8;                              jne   .Lx276_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx276_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx276_10
.Lx276_9:               xor              eax, eax
.Lx276_10:              test             rax, rax;                            jz    .Lx276_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx276_4]
                        lea              r11, [rip + .Lx276_5];               jmp   rax
.Lx276_4:                                                                     jmp   n251_call_α
.Lx276_5:                                                                     jmp   n249_match_arbno_β
.Lx276_0:               push             r14
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
.Lx276_2:               test             rax, rax;                            je    .Lx276_3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx276_7]
                        lea              rdx, [rip + .Lx276_8];               jmp   rax
.Lx276_7:               mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx276_2
.Lx276_8:               mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx276_2
.Lx276_3:               add              rsp, 8
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
                        test             eax, eax;                            js    n249_match_arbno_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx276_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n251_call_α
.Lx276_6:               add              rsp, 16;                             jmp   n249_match_arbno_β
n250_match_defer_β:                                                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n251_call_α:            lea              rcx, [rip + .Lsig278]
                        lea              rax, [rip + Pop_list_alpha];         jmp   rax
.Lsig278:               .quad            0
                        .quad            .Lx278_2
                        .quad            .Lx278_2
                        mov              rdi, qword ptr [rip + .Lx278_0]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx278_1
                        mov              rdi, qword ptr [rip + .Lx278_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx278_3]
                        lea              rdx, [rip + .Lx278_4];               jmp   rax
.Lx278_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx278_2
.Lx278_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx278_2
.Lx278_1:               call             rt_faildescr@PLT
.Lx278_2:               mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                        cmp              eax, 104;                            je    n241_match_arbno_af
                                                                              jmp   n252_match_value_α
n251_call_β:                                                                  jmp   n241_match_arbno_af
.Lx278_0:               .quad            .Lx278_0_s
.Lx278_0_s:             .string          "Pop_list"
#-----------------------------------------------------------------------------------------------------------------------
n252_match_value_α:     lea              rdi, [rsp + 416]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_match_value_get_pat_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            jz    .Lx279_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx279_4]
                        lea              rdx, [rip + .Lx279_5];               jmp   rax
.Lx279_4:                                                                     jmp   n241_match_arbno_as
.Lx279_5:                                                                     jmp   n241_match_arbno_af
.Lx279_0:               lea              rdi, [rsp + 416]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_match_value_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_close@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    n241_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx279_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n241_match_arbno_as
.Lx279_6:               add              rsp, 16;                             jmp   n241_match_arbno_af
n252_match_value_β:                                                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n253_match_defer_α:     mov              rax, qword ptr [r9 + 624]            # group
                        mov              rdx, qword ptr [r9 + 632]
                        cmp              eax, 8;                              jne   .Lx280_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx280_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx280_10
.Lx280_9:               xor              eax, eax
.Lx280_10:              test             rax, rax;                            jz    .Lx280_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx280_4]
                        lea              r11, [rip + .Lx280_5];               jmp   rax
.Lx280_4:                                                                     jmp   n249_match_arbno_as
.Lx280_5:                                                                     jmp   n249_match_arbno_af
.Lx280_0:               push             r14
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
.Lx280_2:               test             rax, rax;                            je    .Lx280_3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx280_7]
                        lea              rdx, [rip + .Lx280_8];               jmp   rax
.Lx280_7:               mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx280_2
.Lx280_8:               mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx280_2
.Lx280_3:               add              rsp, 8
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
                        test             eax, eax;                            js    n249_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx280_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n249_match_arbno_as
.Lx280_6:               add              rsp, 16;                             jmp   n249_match_arbno_af
n253_match_defer_β:                                                           jmp   qword ptr [rsp]
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
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lclassspec0:           .string          "list(head,tail)"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lclassspec0]
                        call             record_register@PLT
                        .section         .rodata
.Lstartup_pname0:       .string          "LBL__list_reverse"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + list_reverse_body]
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
.Lstartup_pname1:       .string          "LBL__stk_push_frame"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + stk_push_frame_body]
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
.Lstartup_pname2:       .string          "LBL__stk_push_item"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + stk_push_item_body]
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
.Lstartup_pname3:       .string          "LBL__stk_pop_into_parent"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + stk_pop_into_parent_body]
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
.Lstartup_pname4:       .string          "LBL__stk_pop_final"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + stk_pop_final_body]
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
.Lstartup_pname5:       .string          "LBL__init_list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + init_list_body]
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
.Lstartup_pname6:       .string          "LBL__Init_list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + Init_list_body]
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
.Lstartup_pname7:       .string          "LBL__push_list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname7]
                        lea              rsi, [rip + push_list_body]
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
.Lstartup_pname8:       .string          "LBL__Push_list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname8]
                        lea              rsi, [rip + Push_list_body]
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
.Lstartup_pname9:       .string          "LBL__push_item"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname9]
                        lea              rsi, [rip + push_item_body]
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
.Lstartup_pname10:      .string          "LBL__Push_item"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname10]
                        lea              rsi, [rip + Push_item_body]
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
.Lstartup_pname11:      .string          "LBL__pop_list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname11]
                        lea              rsi, [rip + pop_list_body]
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
.Lstartup_pname12:      .string          "LBL__Pop_list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname12]
                        lea              rsi, [rip + Pop_list_body]
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
.Lstartup_pname13:      .string          "LBL__pop_final"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname13]
                        lea              rsi, [rip + pop_final_body]
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
.Lstartup_pname14:      .string          "LBL__Pop_final"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname14]
                        lea              rsi, [rip + Pop_final_body]
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
.Lstartup_pname15:      .string          "LBL__node_repr"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname15]
                        lea              rsi, [rip + node_repr_body]
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
.Lstartup_pname16:      .string          "LBL__pp_node"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname16]
                        lea              rsi, [rip + pp_node_body]
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
.Lstartup_pname17:      .string          "LBL__pp_bank"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname17]
                        lea              rsi, [rip + pp_bank_body]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname17]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname17]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname17]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname36:      .string          "PAT$0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname36]
                        lea              rsi, [rip + proc_PAT$0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname36]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname36]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname36]
                        mov              esi, 96
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname36]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname37:      .string          "PAT$1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname37]
                        lea              rsi, [rip + proc_PAT$1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname37]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname37]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname37]
                        mov              esi, 32
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname37]
                        mov              esi, 1
                        call             rt_proc_set_zstatic@PLT
                        lea              rdi, [rip + .Lstartup_pname37]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname38:      .string          "PAT$2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname38]
                        lea              rsi, [rip + proc_PAT$2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname38]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname38]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname38]
                        mov              esi, 48
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname38]
                        mov              esi, 1
                        call             rt_proc_set_zstatic@PLT
                        lea              rdi, [rip + .Lstartup_pname38]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname39:      .string          "PAT$3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname39]
                        lea              rsi, [rip + proc_PAT$3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname39]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname39]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname39]
                        mov              esi, 512
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname39]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname40:      .string          "PAT$4"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname40]
                        lea              rsi, [rip + proc_PAT$4_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname40]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname40]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname40]
                        mov              esi, 528
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname40]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "list_reverse"
.Lgvan1:                .string          "lst"
.Lgvan2:                .string          "acc"
.Lgvan3:                .string          "cur"
.Lgvan4:                .string          "stk_push_frame"
.Lgvan5:                .string          "v"
.Lgvan6:                .string          "stk_push_item"
.Lgvan7:                .string          "stk_pop_into_parent"
.Lgvan8:                .string          "child"
.Lgvan9:                .string          "stk_pop_final"
.Lgvan10:               .string          "var"
.Lgvan11:               .string          "init_list"
.Lgvan12:               .string          "Init_list"
.Lgvan13:               .string          "vs"
.Lgvan14:               .string          "push_list"
.Lgvan15:               .string          "Push_list"
.Lgvan16:               .string          "push_item"
.Lgvan17:               .string          "Push_item"
.Lgvan18:               .string          "pop_list"
.Lgvan19:               .string          "Pop_list"
.Lgvan20:               .string          "pop_final"
.Lgvan21:               .string          "Pop_final"
.Lgvan22:               .string          "node_repr"
.Lgvan23:               .string          "node"
.Lgvan24:               .string          "r"
.Lgvan25:               .string          "c"
.Lgvan26:               .string          "sep"
.Lgvan27:               .string          "pp_node"
.Lgvan28:               .string          "indent"
.Lgvan29:               .string          "suffix"
.Lgvan30:               .string          "pad"
.Lgvan31:               .string          "nxt"
.Lgvan32:               .string          "pp_bank"
.Lgvan33:               .string          "nl"
.Lgvan34:               .string          "stk"
.Lgvan35:               .string          "dummy"
.Lgvan36:               .string          "epsilon"
.Lgvan37:               .string          "delim"
.Lgvan38:               .string          "word"
.Lgvan39:               .string          "group"
.Lgvan40:               .string          "tag"
.Lgvan41:               .string          "wrd"
.Lgvan42:               .string          "treebank"
.Lgvan43:               .string          "bank"
.Lgvan44:               .string          "line"
.Lgvan45:               .string          "src"
.Lgvan46:               .string          "t0"
.Lgvan47:               .string          "t1"
.Lgvan48:               .string          "PAT$0$V0"
.Lgvan49:               .string          "PAT$3$V0"
.Lgvan50:               .string          "PAT$3$V1"
.Lgvan51:               .string          "PAT$3$V2"
.Lgvan52:               .string          "PAT$4$V0"
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
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 53
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 53
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
n281_statement_begin_α:                                                       jmp   n282_keyword_snobol4_α
n281_statement_begin_β:                                                       jmp   n290_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n282_keyword_snobol4_α: sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx804_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read_snobol4@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n283_match_begin_α
.Lx804_0:               .quad            .Lx804_0_s
.Lx804_0_s:             .string          "ALPHABET"
#-----------------------------------------------------------------------------------------------------------------------
n283_match_begin_α:     mov              rdi, qword ptr [rsp + 0]             # keyword_snobol4
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
.Lx806_0:               mov              r14d, dword ptr [rbp + -40];         jmp   n284_match_pos_α
n283_match_begin_β:     lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx806_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx806_1
                                                                              jmp   .Lx806_0
.Lx806_1:
n283_match_begin_af:    mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_match_ctx_restore@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   n289_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n284_match_pos_α:       mov              rax, 10
                        cmp              r14d, eax;                           jne   n283_match_begin_β
                                                                              jmp   n285_match_assign_save_α
n284_match_pos_β:                                                             jmp   n283_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n285_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d;           jmp   n286_match_len_α
n285_match_assign_save_β:
                        add              rsp, 16;                             jmp   n283_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n286_match_len_α:       mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jle   .Lx810_240
                        add              rsp, 16;                             jmp   n283_match_begin_β
.Lx810_240:             add              r14d, 1;                             jmp   n287_match_assign_cond_α
n286_match_len_β:       sub              r14d, 1
                        add              rsp, 16;                             jmp   n283_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n287_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 0]
                        lea              rcx, [rip + .S9]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n288_match_end_α
n287_match_assign_cond_β:
                        sub              r12, 24;                             jmp   n286_match_len_β
#-----------------------------------------------------------------------------------------------------------------------
n288_match_end_α:       push             r14
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
.Lx814_1:               test             rax, rax;                            je    .Lx814_2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx814_3]
                        lea              rdx, [rip + .Lx814_4];               jmp   rax
.Lx814_3:               mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx814_1
.Lx814_4:               mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx814_1
.Lx814_2:               call             rt_dcap_end_ok_close@PLT
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
                        pop              rbp;                                 jmp   n289_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n289_statement_end_α:   add              rsp, 16;                             jmp   n290_statement_begin_α
#=======================================================================================================================
#                DATA('list(head,tail)')
#-----------------------------------------------------------------------------------------------------------------------
n290_statement_begin_α:                                                       jmp   n291_lit_string_α
n290_statement_begin_β:                                                       jmp   n294_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n291_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Lx819_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n292_call_α
.Lx819_0:               .quad            .Lx819_0_s
.Lx819_0_s:             .string          "list(head,tail)"
#-----------------------------------------------------------------------------------------------------------------------
n292_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd821:            .string          "DATA"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd821]
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
                        cmp              eax, 104;                            jne   .Lx820_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n290_statement_begin_β
.Lx820_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n293_statement_end_α
n292_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n290_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n293_statement_end_α:   add              rsp, 32;                             jmp   n294_statement_begin_α
#=======================================================================================================================
#                DEFINE('list_reverse(lst)acc,cur')           :(list_reverse_end)
#-----------------------------------------------------------------------------------------------------------------------
n294_statement_begin_α:                                                       jmp   n295_func_activate_α
n294_statement_begin_β:                                                       jmp   n325_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n295_func_activate_α:   mov              rdi, qword ptr [rip + .Lx827_0]
                        mov              rsi, qword ptr [rip + .Lx827_1]
                        mov              edx, 3
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + proc_list_reverse_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n296_statement_end_α
n295_func_activate_β:                                                         jmp   n294_statement_begin_β
.Lx827_0:               .quad            .Lx827_0_s
.Lx827_0_s:             .string          "list_reverse"
.Lx827_1:               .quad            .Lx827_1_s
.Lx827_1_s:             .string          "lst,acc,cur"
#-----------------------------------------------------------------------------------------------------------------------
n296_statement_end_α:                                                         jmp   n325_statement_begin_α
#=======================================================================================================================
# list_reverse   acc            =
#-----------------------------------------------------------------------------------------------------------------------
list_reverse_body:                                                            jmp   n298_lit_string_α
n297_statement_begin_β:                                                       jmp   n301_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n298_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx832_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n299_assign_α
.Lx832_0:               .quad            .Lx832_0_s
.Lx832_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n299_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # acc
                        mov              qword ptr [r9 + 40], rdx;            jmp   n300_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n300_statement_end_α:   add              rsp, 16;                             jmp   n301_statement_begin_α
#=======================================================================================================================
#                cur            =  lst
#-----------------------------------------------------------------------------------------------------------------------
n301_statement_begin_α:                                                       jmp   n302_var_α
n301_statement_begin_β:                                                       jmp   n305_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n302_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # lst
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n303_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n303_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # cur
                        mov              qword ptr [r9 + 56], rdx;            jmp   n304_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n304_statement_end_α:   add              rsp, 16;                             jmp   n305_statement_begin_α
#=======================================================================================================================
# lr1            DIFFER(cur)                                  :F(lr_done)
#-----------------------------------------------------------------------------------------------------------------------
n305_statement_begin_α:                                                       jmp   n306_var_α
n305_statement_begin_β:                                                       jmp   n321_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n306_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # cur
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n307_call_α
#-----------------------------------------------------------------------------------------------------------------------
n307_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd846:            .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd846]
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
                        cmp              eax, 104;                            jne   .Lx845_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n305_statement_begin_β
.Lx845_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n308_statement_end_α
n307_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n305_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n308_statement_end_α:   add              rsp, 32;                             jmp   n309_statement_begin_α
#=======================================================================================================================
#                acc            =  list(head(cur), acc)
#-----------------------------------------------------------------------------------------------------------------------
n309_statement_begin_α:                                                       jmp   n310_var_α
n309_statement_begin_β:                                                       jmp   n316_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n310_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # cur
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n311_call_α
#-----------------------------------------------------------------------------------------------------------------------
n311_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd853:            .string          "head"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd853]
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
                        cmp              eax, 104;                            jne   .Lx852_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n309_statement_begin_β
.Lx852_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n312_var_α
n311_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n309_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n312_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # acc
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n313_call_α
n312_var_β:             add              rsp, 16
                        add              rsp, 32;                             jmp   n309_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n313_call_α:            sub              rsp, 16
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
.Lrkfnzd856:            .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd856]
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
                        cmp              eax, 104;                            jne   .Lx855_240
                        add              rsp, 16;                             jmp   n312_var_β
.Lx855_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n314_assign_α
n313_call_β:            add              rsp, 16;                             jmp   n312_var_β
#-----------------------------------------------------------------------------------------------------------------------
n314_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # acc
                        mov              qword ptr [r9 + 40], rdx;            jmp   n315_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n315_statement_end_α:   add              rsp, 64;                             jmp   n316_statement_begin_α
#=======================================================================================================================
#                cur            =  tail(cur)                  :(lr1)
#-----------------------------------------------------------------------------------------------------------------------
n316_statement_begin_α:                                                       jmp   n317_var_α
n316_statement_begin_β:                                                       jmp   n305_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n317_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # cur
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n318_call_α
#-----------------------------------------------------------------------------------------------------------------------
n318_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd864:            .string          "tail"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd864]
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
                        cmp              eax, 104;                            jne   .Lx863_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n316_statement_begin_β
.Lx863_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n319_assign_α
n318_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n316_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n319_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # cur
                        mov              qword ptr [r9 + 56], rdx;            jmp   n320_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n320_statement_end_α:   add              rsp, 32;                             jmp   n305_statement_begin_α
#=======================================================================================================================
# lr_done        list_reverse   =  acc                        :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n321_statement_begin_α:                                                       jmp   n322_var_α
n321_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n322_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # acc
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n323_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n323_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # list_reverse
                        mov              qword ptr [r9 + 8], rdx;             jmp   n324_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n324_statement_end_α:   add              rsp, 16;                             jmp   RETURN
#=======================================================================================================================
# list_reverse_end  <stmt 10, line 19: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n325_statement_begin_α:                                                       jmp   n326_statement_end_α
n325_statement_begin_β:                                                       jmp   n327_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n326_statement_end_α:                                                         jmp   n327_statement_begin_α
#=======================================================================================================================
#                DEFINE('stk_push_frame(v)')                  :(stk_push_frame_end)
#-----------------------------------------------------------------------------------------------------------------------
n327_statement_begin_α:                                                       jmp   n328_func_activate_α
n327_statement_begin_β:                                                       jmp   n343_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n328_func_activate_α:   mov              rdi, qword ptr [rip + .Lx881_0]
                        mov              rsi, qword ptr [rip + .Lx881_1]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n329_statement_end_α
n328_func_activate_β:                                                         jmp   n327_statement_begin_β
.Lx881_0:               .quad            .Lx881_0_s
.Lx881_0_s:             .string          "stk_push_frame"
.Lx881_1:               .quad            .Lx881_1_s
.Lx881_1_s:             .string          "v"
#-----------------------------------------------------------------------------------------------------------------------
n329_statement_end_α:                                                         jmp   n343_statement_begin_α
#=======================================================================================================================
# stk_push_frame stk            =  list(list(v,), stk)
#-----------------------------------------------------------------------------------------------------------------------
stk_push_frame_body:                                                          jmp   n331_var_α
n330_statement_begin_β:                                                       jmp   n338_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n331_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # v
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n332_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n332_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx887_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n333_call_α
n332_lit_string_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n330_statement_begin_β
.Lx887_0:               .quad            .Lx887_0_s
.Lx887_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n333_call_α:            sub              rsp, 16
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
.Lrkfnzd889:            .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd889]
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
                        cmp              eax, 104;                            jne   .Lx888_240
                        add              rsp, 16;                             jmp   n332_lit_string_β
.Lx888_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n334_var_α
n333_call_β:            add              rsp, 16;                             jmp   n332_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n334_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 544]            # stk
                        mov              rdx, qword ptr [r9 + 552]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n335_call_α
n334_var_β:             add              rsp, 32;                             jmp   n332_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n335_call_α:            sub              rsp, 16
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
.Lrkfnzd892:            .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd892]
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
                        cmp              eax, 104;                            jne   .Lx891_240
                        add              rsp, 16;                             jmp   n334_var_β
.Lx891_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n336_assign_α
n335_call_β:            add              rsp, 16;                             jmp   n334_var_β
#-----------------------------------------------------------------------------------------------------------------------
n336_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 544], rax            # stk
                        mov              qword ptr [r9 + 552], rdx;           jmp   n337_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n337_statement_end_α:   add              rsp, 80;                             jmp   n338_statement_begin_α
#=======================================================================================================================
#                stk_push_frame =  .dummy                     :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n338_statement_begin_α:                                                       jmp   n339_lit_string_α
n338_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n339_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx898_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n340_call_α
.Lx898_0:               .quad            .Lx898_0_s
.Lx898_0_s:             .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n340_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd900:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd900]
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
                        cmp              eax, 104;                            jne   .Lx899_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n338_statement_begin_β
.Lx899_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n341_assign_α
n340_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n338_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n341_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # stk_push_frame
                        mov              qword ptr [r9 + 72], rdx;            jmp   n342_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n342_statement_end_α:   add              rsp, 32;                             jmp   RETURN
#=======================================================================================================================
# stk_push_frame_end  <stmt 14, line 24: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n343_statement_begin_α:                                                       jmp   n344_statement_end_α
n343_statement_begin_β:                                                       jmp   n345_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n344_statement_end_α:                                                         jmp   n345_statement_begin_α
#=======================================================================================================================
#                DEFINE('stk_push_item(v)')                   :(stk_push_item_end)
#-----------------------------------------------------------------------------------------------------------------------
n345_statement_begin_α:                                                       jmp   n346_func_activate_α
n345_statement_begin_β:                                                       jmp   n362_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n346_func_activate_α:   mov              rdi, qword ptr [rip + .Lx911_0]
                        mov              rsi, qword ptr [rip + .Lx911_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + proc_stk_push_item_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n347_statement_end_α
n346_func_activate_β:                                                         jmp   n345_statement_begin_β
.Lx911_0:               .quad            .Lx911_0_s
.Lx911_0_s:             .string          "stk_push_item"
.Lx911_1:               .quad            .Lx911_1_s
.Lx911_1_s:             .string          "v"
#-----------------------------------------------------------------------------------------------------------------------
n347_statement_end_α:                                                         jmp   n362_statement_begin_α
#=======================================================================================================================
# stk_push_item  head(stk)      =  list(v, head(stk))
#-----------------------------------------------------------------------------------------------------------------------
stk_push_item_body:                                                           jmp   n349_var_α
n348_statement_begin_β:                                                       jmp   n357_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n349_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 544]            # stk
                        mov              rdx, qword ptr [r9 + 552]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n350_field_var_α
#-----------------------------------------------------------------------------------------------------------------------
n350_field_var_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx917_0]
                        mov              rsi, qword ptr [rsp + 16]            # var
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_field_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx917_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n348_statement_begin_β
.Lx917_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n351_var_α
n350_field_var_β:       add              rsp, 16
                        add              rsp, 16;                             jmp   n348_statement_begin_β
.Lx917_0:               .quad            .Lx917_0_s
.Lx917_0_s:             .string          "head"
#-----------------------------------------------------------------------------------------------------------------------
n351_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # v
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n352_var_α
n351_var_β:             add              rsp, 16;                             jmp   n350_field_var_β
#-----------------------------------------------------------------------------------------------------------------------
n352_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 544]            # stk
                        mov              rdx, qword ptr [r9 + 552]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n353_call_α
n352_var_β:             add              rsp, 16;                             jmp   n351_var_β
#-----------------------------------------------------------------------------------------------------------------------
n353_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd921:            .string          "head"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd921]
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
                        cmp              eax, 104;                            jne   .Lx920_240
                        add              rsp, 16;                             jmp   n352_var_β
.Lx920_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n354_call_α
n353_call_β:            add              rsp, 16;                             jmp   n352_var_β
#-----------------------------------------------------------------------------------------------------------------------
n354_call_α:            sub              rsp, 16
                        sub              rsp, 32
                        mov              r8, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], r8
                        .section         .rodata
.Lrkfnzd923:            .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd923]
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
                        cmp              eax, 104;                            jne   .Lx922_240
                        add              rsp, 32;                             jmp   n352_var_β
.Lx922_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n355_assign_var_α
n354_call_β:            add              rsp, 32;                             jmp   n352_var_β
#-----------------------------------------------------------------------------------------------------------------------
n355_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 80]            # field_var
                        mov              rsi, qword ptr [rsp + 88]
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
                        cmp              eax, 104;                            jne   .Lx924_240
                        add              rsp, 48;                             jmp   n352_var_β
.Lx924_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n356_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n356_statement_end_α:   add              rsp, 112;                            jmp   n357_statement_begin_α
#=======================================================================================================================
#                stk_push_item  =  .dummy                     :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n357_statement_begin_α:                                                       jmp   n358_lit_string_α
n357_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n358_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx929_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n359_call_α
.Lx929_0:               .quad            .Lx929_0_s
.Lx929_0_s:             .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n359_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd931:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd931]
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
                        cmp              eax, 104;                            jne   .Lx930_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n357_statement_begin_β
.Lx930_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n360_assign_α
n359_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n357_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n360_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # stk_push_item
                        mov              qword ptr [r9 + 104], rdx;           jmp   n361_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n361_statement_end_α:   add              rsp, 32;                             jmp   RETURN
#=======================================================================================================================
# stk_push_item_end  <stmt 18, line 29: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n362_statement_begin_α:                                                       jmp   n363_statement_end_α
n362_statement_begin_β:                                                       jmp   n364_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n363_statement_end_α:                                                         jmp   n364_statement_begin_α
#=======================================================================================================================
#                DEFINE('stk_pop_into_parent()child')         :(stk_pop_into_parent_end)
#-----------------------------------------------------------------------------------------------------------------------
n364_statement_begin_α:                                                       jmp   n365_func_activate_α
n364_statement_begin_β:                                                       jmp   n394_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n365_func_activate_α:   mov              rdi, qword ptr [rip + .Lx942_0]
                        mov              rsi, qword ptr [rip + .Lx942_1]
                        mov              edx, 1
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + proc_stk_pop_into_parent_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n366_statement_end_α
n365_func_activate_β:                                                         jmp   n364_statement_begin_β
.Lx942_0:               .quad            .Lx942_0_s
.Lx942_0_s:             .string          "stk_pop_into_parent"
.Lx942_1:               .quad            .Lx942_1_s
.Lx942_1_s:             .string          "child"
#-----------------------------------------------------------------------------------------------------------------------
n366_statement_end_α:                                                         jmp   n394_statement_begin_α
#=======================================================================================================================
# stk_pop_into_parent  <stmt 20, line 32: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
stk_pop_into_parent_body:
                                                                              jmp   n368_statement_end_α
n367_statement_begin_β:                                                       jmp   n369_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n368_statement_end_α:                                                         jmp   n369_statement_begin_α
#=======================================================================================================================
#                child          =  list_reverse(head(stk))
#-----------------------------------------------------------------------------------------------------------------------
n369_statement_begin_α:                                                       jmp   n370_var_α
n369_statement_begin_β:                                                       jmp   n375_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n370_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 544]            # stk
                        mov              rdx, qword ptr [r9 + 552]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n371_call_α
#-----------------------------------------------------------------------------------------------------------------------
n371_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd953:            .string          "head"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd953]
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
                        cmp              eax, 104;                            jne   .Lx952_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n369_statement_begin_β
.Lx952_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n372_call_α
n371_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n369_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n372_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig955z]
                        lea              rax, [rip + list_reverse_alpha];     jmp   rax
.Lsig955z:              .quad            1
                        .quad            .Lx955_2
                        .quad            .Lx955_2
                        .quad            16
.Lx955_2:               mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx955_240
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n369_statement_begin_β
.Lx955_240:                                                                   jmp   n373_assign_α
n372_call_β:                                                                  jmp   n369_statement_begin_β
.Lx955_0:               .quad            .Lx955_0_s
.Lx955_0_s:             .string          "list_reverse"
#-----------------------------------------------------------------------------------------------------------------------
n373_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # child
                        mov              qword ptr [r9 + 136], rdx;           jmp   n374_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n374_statement_end_α:   add              rsp, 48;                             jmp   n375_statement_begin_α
#=======================================================================================================================
#                stk            =  tail(stk)
#-----------------------------------------------------------------------------------------------------------------------
n375_statement_begin_α:                                                       jmp   n376_var_α
n375_statement_begin_β:                                                       jmp   n380_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n376_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 544]            # stk
                        mov              rdx, qword ptr [r9 + 552]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n377_call_α
#-----------------------------------------------------------------------------------------------------------------------
n377_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd963:            .string          "tail"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd963]
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
                        cmp              eax, 104;                            jne   .Lx962_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n375_statement_begin_β
.Lx962_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n378_assign_α
n377_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n375_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n378_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 544], rax            # stk
                        mov              qword ptr [r9 + 552], rdx;           jmp   n379_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n379_statement_end_α:   add              rsp, 32;                             jmp   n380_statement_begin_α
#=======================================================================================================================
#                head(stk)      =  list(child, head(stk))
#-----------------------------------------------------------------------------------------------------------------------
n380_statement_begin_α:                                                       jmp   n381_var_α
n380_statement_begin_β:                                                       jmp   n389_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n381_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 544]            # stk
                        mov              rdx, qword ptr [r9 + 552]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n382_field_var_α
#-----------------------------------------------------------------------------------------------------------------------
n382_field_var_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx970_0]
                        mov              rsi, qword ptr [rsp + 16]            # var
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_field_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx970_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n380_statement_begin_β
.Lx970_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n383_var_α
n382_field_var_β:       add              rsp, 16
                        add              rsp, 16;                             jmp   n380_statement_begin_β
.Lx970_0:               .quad            .Lx970_0_s
.Lx970_0_s:             .string          "head"
#-----------------------------------------------------------------------------------------------------------------------
n383_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 128]            # child
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n384_var_α
n383_var_β:             add              rsp, 16;                             jmp   n382_field_var_β
#-----------------------------------------------------------------------------------------------------------------------
n384_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 544]            # stk
                        mov              rdx, qword ptr [r9 + 552]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n385_call_α
n384_var_β:             add              rsp, 16;                             jmp   n383_var_β
#-----------------------------------------------------------------------------------------------------------------------
n385_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd974:            .string          "head"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd974]
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
                        cmp              eax, 104;                            jne   .Lx973_240
                        add              rsp, 16;                             jmp   n384_var_β
.Lx973_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n386_call_α
n385_call_β:            add              rsp, 16;                             jmp   n384_var_β
#-----------------------------------------------------------------------------------------------------------------------
n386_call_α:            sub              rsp, 16
                        sub              rsp, 32
                        mov              r8, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], r8
                        .section         .rodata
.Lrkfnzd976:            .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd976]
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
                        cmp              eax, 104;                            jne   .Lx975_240
                        add              rsp, 32;                             jmp   n384_var_β
.Lx975_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n387_assign_var_α
n386_call_β:            add              rsp, 32;                             jmp   n384_var_β
#-----------------------------------------------------------------------------------------------------------------------
n387_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 80]            # field_var
                        mov              rsi, qword ptr [rsp + 88]
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
                        cmp              eax, 104;                            jne   .Lx977_240
                        add              rsp, 48;                             jmp   n384_var_β
.Lx977_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n388_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n388_statement_end_α:   add              rsp, 112;                            jmp   n389_statement_begin_α
#=======================================================================================================================
#                stk_pop_into_parent =  .dummy                :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n389_statement_begin_α:                                                       jmp   n390_lit_string_α
n389_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n390_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx982_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n391_call_α
.Lx982_0:               .quad            .Lx982_0_s
.Lx982_0_s:             .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n391_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd984:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd984]
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
                        cmp              eax, 104;                            jne   .Lx983_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n389_statement_begin_β
.Lx983_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n392_assign_α
n391_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n389_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n392_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # stk_pop_into_parent
                        mov              qword ptr [r9 + 120], rdx;           jmp   n393_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n393_statement_end_α:   add              rsp, 32;                             jmp   RETURN
#=======================================================================================================================
# stk_pop_into_parent_end  <stmt 25, line 37: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n394_statement_begin_α:                                                       jmp   n395_statement_end_α
n394_statement_begin_β:                                                       jmp   n396_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n395_statement_end_α:                                                         jmp   n396_statement_begin_α
#=======================================================================================================================
#                DEFINE('stk_pop_final(var)')                 :(stk_pop_final_end)
#-----------------------------------------------------------------------------------------------------------------------
n396_statement_begin_α:                                                       jmp   n397_func_activate_α
n396_statement_begin_β:                                                       jmp   n417_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n397_func_activate_α:   mov              rdi, qword ptr [rip + .Lx995_0]
                        mov              rsi, qword ptr [rip + .Lx995_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + proc_stk_pop_final_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n398_statement_end_α
n397_func_activate_β:                                                         jmp   n396_statement_begin_β
.Lx995_0:               .quad            .Lx995_0_s
.Lx995_0_s:             .string          "stk_pop_final"
.Lx995_1:               .quad            .Lx995_1_s
.Lx995_1_s:             .string          "var"
#-----------------------------------------------------------------------------------------------------------------------
n398_statement_end_α:                                                         jmp   n417_statement_begin_α
#=======================================================================================================================
# stk_pop_final  $var           =  list_reverse(head(stk))
#-----------------------------------------------------------------------------------------------------------------------
stk_pop_final_body:                                                           jmp   n400_var_α
n399_statement_begin_β:                                                       jmp   n407_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n400_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # var
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n401_call_α
#-----------------------------------------------------------------------------------------------------------------------
n401_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1002:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1002]
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
                        cmp              eax, 104;                            jne   .Lx1001_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n399_statement_begin_β
.Lx1001_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n402_var_α
n401_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n399_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n402_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 544]            # stk
                        mov              rdx, qword ptr [r9 + 552]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n403_call_α
n402_var_β:             add              rsp, 16
                        add              rsp, 32;                             jmp   n399_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n403_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1005:           .string          "head"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1005]
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
                        cmp              eax, 104;                            jne   .Lx1004_240
                        add              rsp, 16;                             jmp   n402_var_β
.Lx1004_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n404_call_α
n403_call_β:            add              rsp, 16;                             jmp   n402_var_β
#-----------------------------------------------------------------------------------------------------------------------
n404_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1007z]
                        lea              rax, [rip + list_reverse_alpha];     jmp   rax
.Lsig1007z:             .quad            1
                        .quad            .Lx1007_2
                        .quad            .Lx1007_2
                        .quad            16
.Lx1007_2:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx1007_240
                        add              rsp, 32;                             jmp   n402_var_β
.Lx1007_240:                                                                  jmp   n405_assign_var_α
n404_call_β:                                                                  jmp   n402_var_β
.Lx1007_0:              .quad            .Lx1007_0_s
.Lx1007_0_s:            .string          "list_reverse"
#-----------------------------------------------------------------------------------------------------------------------
n405_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]            # call
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx1008_240
                        add              rsp, 48;                             jmp   n402_var_β
.Lx1008_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n406_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n406_statement_end_α:   add              rsp, 96;                             jmp   n407_statement_begin_α
#=======================================================================================================================
#                stk            =  tail(stk)
#-----------------------------------------------------------------------------------------------------------------------
n407_statement_begin_α:                                                       jmp   n408_var_α
n407_statement_begin_β:                                                       jmp   n412_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n408_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 544]            # stk
                        mov              rdx, qword ptr [r9 + 552]
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
.Lrkfnzd1015:           .string          "tail"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1015]
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
                        cmp              eax, 104;                            jne   .Lx1014_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n407_statement_begin_β
.Lx1014_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n410_assign_α
n409_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n407_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n410_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 544], rax            # stk
                        mov              qword ptr [r9 + 552], rdx;           jmp   n411_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n411_statement_end_α:   add              rsp, 32;                             jmp   n412_statement_begin_α
#=======================================================================================================================
#                stk_pop_final  =  .dummy                     :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n412_statement_begin_α:                                                       jmp   n413_lit_string_α
n412_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n413_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1021_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n414_call_α
.Lx1021_0:              .quad            .Lx1021_0_s
.Lx1021_0_s:            .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n414_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1023:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1023]
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
                        cmp              eax, 104;                            jne   .Lx1022_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n412_statement_begin_β
.Lx1022_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n415_assign_α
n414_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n412_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n415_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # stk_pop_final
                        mov              qword ptr [r9 + 152], rdx;           jmp   n416_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n416_statement_end_α:   add              rsp, 32;                             jmp   RETURN
#=======================================================================================================================
# stk_pop_final_end  <stmt 30, line 43: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n417_statement_begin_α:                                                       jmp   n418_statement_end_α
n417_statement_begin_β:                                                       jmp   n419_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n418_statement_end_α:                                                         jmp   n419_statement_begin_α
#=======================================================================================================================
#                DEFINE('init_list(v)')
#-----------------------------------------------------------------------------------------------------------------------
n419_statement_begin_α:                                                       jmp   n420_func_activate_α
n419_statement_begin_β:                                                       jmp   n422_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n420_func_activate_α:   mov              rdi, qword ptr [rip + .Lx1034_0]
                        mov              rsi, qword ptr [rip + .Lx1034_1]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n421_statement_end_α
n420_func_activate_β:                                                         jmp   n419_statement_begin_β
.Lx1034_0:              .quad            .Lx1034_0_s
.Lx1034_0_s:            .string          "init_list"
.Lx1034_1:              .quad            .Lx1034_1_s
.Lx1034_1_s:            .string          "v"
#-----------------------------------------------------------------------------------------------------------------------
n421_statement_end_α:                                                         jmp   n422_statement_begin_α
#=======================================================================================================================
#                DEFINE('Init_list(vs)')                      :(init_list_end)
#-----------------------------------------------------------------------------------------------------------------------
n422_statement_begin_α:                                                       jmp   n423_func_activate_α
n422_statement_begin_β:                                                       jmp   n449_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n423_func_activate_α:   mov              rdi, qword ptr [rip + .Lx1040_0]
                        mov              rsi, qword ptr [rip + .Lx1040_1]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n424_statement_end_α
n423_func_activate_β:                                                         jmp   n422_statement_begin_β
.Lx1040_0:              .quad            .Lx1040_0_s
.Lx1040_0_s:            .string          "Init_list"
.Lx1040_1:              .quad            .Lx1040_1_s
.Lx1040_1_s:            .string          "vs"
#-----------------------------------------------------------------------------------------------------------------------
n424_statement_end_α:                                                         jmp   n449_statement_begin_α
#=======================================================================================================================
# init_list      $v             =
#-----------------------------------------------------------------------------------------------------------------------
init_list_body:                                                               jmp   n426_var_α
n425_statement_begin_β:                                                       jmp   n431_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n426_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # v
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n427_call_α
#-----------------------------------------------------------------------------------------------------------------------
n427_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1047:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1047]
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
                        cmp              eax, 104;                            jne   .Lx1046_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n425_statement_begin_β
.Lx1046_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n428_lit_string_α
n427_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n425_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n428_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx1048_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n429_assign_var_α
n428_lit_string_β:      add              rsp, 16
                        add              rsp, 32;                             jmp   n425_statement_begin_β
.Lx1048_0:              .quad            .Lx1048_0_s
.Lx1048_0_s:            .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n429_assign_var_α:      sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx1049_240
                        add              rsp, 16;                             jmp   n428_lit_string_β
.Lx1049_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n430_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n430_statement_end_α:   add              rsp, 64;                             jmp   n431_statement_begin_α
#=======================================================================================================================
#                stk            =
#-----------------------------------------------------------------------------------------------------------------------
n431_statement_begin_α:                                                       jmp   n432_lit_string_α
n431_statement_begin_β:                                                       jmp   n435_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n432_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx1054_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n433_assign_α
.Lx1054_0:              .quad            .Lx1054_0_s
.Lx1054_0_s:            .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n433_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 544], rax            # stk
                        mov              qword ptr [r9 + 552], rdx;           jmp   n434_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n434_statement_end_α:   add              rsp, 16;                             jmp   n435_statement_begin_α
#=======================================================================================================================
#                init_list      =  .dummy                     :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n435_statement_begin_α:                                                       jmp   n436_lit_string_α
n435_statement_begin_β:                                                       jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n436_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1060_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n437_call_α
.Lx1060_0:              .quad            .Lx1060_0_s
.Lx1060_0_s:            .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n437_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1062:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1062]
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
                        cmp              eax, 104;                            jne   .Lx1061_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n435_statement_begin_β
.Lx1061_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n438_assign_α
n437_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n435_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n438_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # init_list
                        mov              qword ptr [r9 + 184], rdx;           jmp   n439_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n439_statement_end_α:   add              rsp, 32;                             jmp   NRETURN
#=======================================================================================================================
# Init_list      Init_list      =  EVAL("epsilon . *init_list(" vs ")")  :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
Init_list_body:                                                               jmp   n441_lit_string_α
n440_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n441_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 21
                        mov              rax, qword ptr [rip + .Lx1068_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n442_var_α
.Lx1068_0:              .quad            .Lx1068_0_s
.Lx1068_0_s:            .string          "epsilon . *init_list("
#-----------------------------------------------------------------------------------------------------------------------
n442_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 208]            # vs
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n443_binop_α
n442_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n440_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n443_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n444_lit_string_α
n443_binop_β:           add              rsp, 16;                             jmp   n442_var_β
#-----------------------------------------------------------------------------------------------------------------------
n444_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1071_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n445_binop_α
n444_lit_string_β:      add              rsp, 16;                             jmp   n443_binop_β
.Lx1071_0:              .quad            .Lx1071_0_s
.Lx1071_0_s:            .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
n445_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n446_call_α
n445_binop_β:           add              rsp, 16;                             jmp   n444_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n446_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1074:           .string          "EVAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1074]
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
                        cmp              eax, 104;                            jne   .Lx1073_240
                        add              rsp, 16;                             jmp   n445_binop_β
.Lx1073_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n447_assign_α
n446_call_β:            add              rsp, 16;                             jmp   n445_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n447_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # Init_list
                        mov              qword ptr [r9 + 200], rdx;           jmp   n448_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n448_statement_end_α:   add              rsp, 96;                             jmp   RETURN
#=======================================================================================================================
# init_list_end  <stmt 37, line 51: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n449_statement_begin_α:                                                       jmp   n450_statement_end_α
n449_statement_begin_β:                                                       jmp   n451_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n450_statement_end_α:                                                         jmp   n451_statement_begin_α
#=======================================================================================================================
#                DEFINE('push_list(v)')
#-----------------------------------------------------------------------------------------------------------------------
n451_statement_begin_α:                                                       jmp   n452_func_activate_α
n451_statement_begin_β:                                                       jmp   n454_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n452_func_activate_α:   mov              rdi, qword ptr [rip + .Lx1085_0]
                        mov              rsi, qword ptr [rip + .Lx1085_1]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n453_statement_end_α
n452_func_activate_β:                                                         jmp   n451_statement_begin_β
.Lx1085_0:              .quad            .Lx1085_0_s
.Lx1085_0_s:            .string          "push_list"
.Lx1085_1:              .quad            .Lx1085_1_s
.Lx1085_1_s:            .string          "v"
#-----------------------------------------------------------------------------------------------------------------------
n453_statement_end_α:                                                         jmp   n454_statement_begin_α
#=======================================================================================================================
#                DEFINE('Push_list(vs)')                      :(push_list_end)
#-----------------------------------------------------------------------------------------------------------------------
n454_statement_begin_α:                                                       jmp   n455_func_activate_α
n454_statement_begin_β:                                                       jmp   n476_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n455_func_activate_α:   mov              rdi, qword ptr [rip + .Lx1091_0]
                        mov              rsi, qword ptr [rip + .Lx1091_1]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n456_statement_end_α
n455_func_activate_β:                                                         jmp   n454_statement_begin_β
.Lx1091_0:              .quad            .Lx1091_0_s
.Lx1091_0_s:            .string          "Push_list"
.Lx1091_1:              .quad            .Lx1091_1_s
.Lx1091_1_s:            .string          "vs"
#-----------------------------------------------------------------------------------------------------------------------
n456_statement_end_α:                                                         jmp   n476_statement_begin_α
#=======================================================================================================================
# push_list      dummy          =  stk_push_frame(v)
#-----------------------------------------------------------------------------------------------------------------------
push_list_body:                                                               jmp   n458_var_α
n457_statement_begin_β:                                                       jmp   n462_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n458_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # v
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n459_call_α
#-----------------------------------------------------------------------------------------------------------------------
n459_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1098z]
                        lea              rax, [rip + stk_push_frame_alpha];   jmp   rax
.Lsig1098z:             .quad            1
                        .quad            .Lx1098_2
                        .quad            .Lx1098_2
                        .quad            16
.Lx1098_2:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx1098_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n457_statement_begin_β
.Lx1098_240:                                                                  jmp   n460_assign_α
n459_call_β:                                                                  jmp   n457_statement_begin_β
.Lx1098_0:              .quad            .Lx1098_0_s
.Lx1098_0_s:            .string          "stk_push_frame"
#-----------------------------------------------------------------------------------------------------------------------
n460_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 560], rax            # dummy
                        mov              qword ptr [r9 + 568], rdx;           jmp   n461_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n461_statement_end_α:   add              rsp, 32;                             jmp   n462_statement_begin_α
#=======================================================================================================================
#                push_list      =  .dummy                     :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n462_statement_begin_α:                                                       jmp   n463_lit_string_α
n462_statement_begin_β:                                                       jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n463_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1104_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n464_call_α
.Lx1104_0:              .quad            .Lx1104_0_s
.Lx1104_0_s:            .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n464_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1106:           .string          "SNO$NAME"
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
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n462_statement_begin_β
.Lx1105_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n465_assign_α
n464_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n462_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n465_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 224], rax            # push_list
                        mov              qword ptr [r9 + 232], rdx;           jmp   n466_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n466_statement_end_α:   add              rsp, 32;                             jmp   NRETURN
#=======================================================================================================================
# Push_list      Push_list      =  EVAL("epsilon . *push_list(" vs ")")  :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
Push_list_body:                                                               jmp   n468_lit_string_α
n467_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n468_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 21
                        mov              rax, qword ptr [rip + .Lx1112_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n469_var_α
.Lx1112_0:              .quad            .Lx1112_0_s
.Lx1112_0_s:            .string          "epsilon . *push_list("
#-----------------------------------------------------------------------------------------------------------------------
n469_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 208]            # vs
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n470_binop_α
n469_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n467_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n470_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n471_lit_string_α
n470_binop_β:           add              rsp, 16;                             jmp   n469_var_β
#-----------------------------------------------------------------------------------------------------------------------
n471_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1115_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n472_binop_α
n471_lit_string_β:      add              rsp, 16;                             jmp   n470_binop_β
.Lx1115_0:              .quad            .Lx1115_0_s
.Lx1115_0_s:            .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
n472_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n473_call_α
n472_binop_β:           add              rsp, 16;                             jmp   n471_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n473_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1118:           .string          "EVAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1118]
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
                        cmp              eax, 104;                            jne   .Lx1117_240
                        add              rsp, 16;                             jmp   n472_binop_β
.Lx1117_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n474_assign_α
n473_call_β:            add              rsp, 16;                             jmp   n472_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n474_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 240], rax            # Push_list
                        mov              qword ptr [r9 + 248], rdx;           jmp   n475_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n475_statement_end_α:   add              rsp, 96;                             jmp   RETURN
#=======================================================================================================================
# push_list_end  <stmt 43, line 58: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n476_statement_begin_α:                                                       jmp   n477_statement_end_α
n476_statement_begin_β:                                                       jmp   n478_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n477_statement_end_α:                                                         jmp   n478_statement_begin_α
#=======================================================================================================================
#                DEFINE('push_item(v)')
#-----------------------------------------------------------------------------------------------------------------------
n478_statement_begin_α:                                                       jmp   n479_func_activate_α
n478_statement_begin_β:                                                       jmp   n481_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n479_func_activate_α:   mov              rdi, qword ptr [rip + .Lx1129_0]
                        mov              rsi, qword ptr [rip + .Lx1129_1]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n480_statement_end_α
n479_func_activate_β:                                                         jmp   n478_statement_begin_β
.Lx1129_0:              .quad            .Lx1129_0_s
.Lx1129_0_s:            .string          "push_item"
.Lx1129_1:              .quad            .Lx1129_1_s
.Lx1129_1_s:            .string          "v"
#-----------------------------------------------------------------------------------------------------------------------
n480_statement_end_α:                                                         jmp   n481_statement_begin_α
#=======================================================================================================================
#                DEFINE('Push_item(vs)')                      :(push_item_end)
#-----------------------------------------------------------------------------------------------------------------------
n481_statement_begin_α:                                                       jmp   n482_func_activate_α
n481_statement_begin_β:                                                       jmp   n503_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n482_func_activate_α:   mov              rdi, qword ptr [rip + .Lx1135_0]
                        mov              rsi, qword ptr [rip + .Lx1135_1]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n483_statement_end_α
n482_func_activate_β:                                                         jmp   n481_statement_begin_β
.Lx1135_0:              .quad            .Lx1135_0_s
.Lx1135_0_s:            .string          "Push_item"
.Lx1135_1:              .quad            .Lx1135_1_s
.Lx1135_1_s:            .string          "vs"
#-----------------------------------------------------------------------------------------------------------------------
n483_statement_end_α:                                                         jmp   n503_statement_begin_α
#=======================================================================================================================
# push_item      dummy          =  stk_push_item(v)
#-----------------------------------------------------------------------------------------------------------------------
push_item_body:                                                               jmp   n485_var_α
n484_statement_begin_β:                                                       jmp   n489_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n485_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # v
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n486_call_α
#-----------------------------------------------------------------------------------------------------------------------
n486_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1142z]
                        lea              rax, [rip + stk_push_item_alpha];    jmp   rax
.Lsig1142z:             .quad            1
                        .quad            .Lx1142_2
                        .quad            .Lx1142_2
                        .quad            16
.Lx1142_2:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx1142_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n484_statement_begin_β
.Lx1142_240:                                                                  jmp   n487_assign_α
n486_call_β:                                                                  jmp   n484_statement_begin_β
.Lx1142_0:              .quad            .Lx1142_0_s
.Lx1142_0_s:            .string          "stk_push_item"
#-----------------------------------------------------------------------------------------------------------------------
n487_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 560], rax            # dummy
                        mov              qword ptr [r9 + 568], rdx;           jmp   n488_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n488_statement_end_α:   add              rsp, 32;                             jmp   n489_statement_begin_α
#=======================================================================================================================
#                push_item      =  .dummy                     :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n489_statement_begin_α:                                                       jmp   n490_lit_string_α
n489_statement_begin_β:                                                       jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n490_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1148_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n491_call_α
.Lx1148_0:              .quad            .Lx1148_0_s
.Lx1148_0_s:            .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n491_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1150:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1150]
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
                        cmp              eax, 104;                            jne   .Lx1149_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n489_statement_begin_β
.Lx1149_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n492_assign_α
n491_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n489_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n492_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 256], rax            # push_item
                        mov              qword ptr [r9 + 264], rdx;           jmp   n493_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n493_statement_end_α:   add              rsp, 32;                             jmp   NRETURN
#=======================================================================================================================
# Push_item      Push_item      =  EVAL("epsilon . *push_item(" vs ")")  :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
Push_item_body:                                                               jmp   n495_lit_string_α
n494_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n495_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 21
                        mov              rax, qword ptr [rip + .Lx1156_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n496_var_α
.Lx1156_0:              .quad            .Lx1156_0_s
.Lx1156_0_s:            .string          "epsilon . *push_item("
#-----------------------------------------------------------------------------------------------------------------------
n496_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 208]            # vs
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n497_binop_α
n496_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n494_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n497_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n498_lit_string_α
n497_binop_β:           add              rsp, 16;                             jmp   n496_var_β
#-----------------------------------------------------------------------------------------------------------------------
n498_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1159_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n499_binop_α
n498_lit_string_β:      add              rsp, 16;                             jmp   n497_binop_β
.Lx1159_0:              .quad            .Lx1159_0_s
.Lx1159_0_s:            .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
n499_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n500_call_α
n499_binop_β:           add              rsp, 16;                             jmp   n498_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n500_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1162:           .string          "EVAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1162]
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
                        cmp              eax, 104;                            jne   .Lx1161_240
                        add              rsp, 16;                             jmp   n499_binop_β
.Lx1161_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n501_assign_α
n500_call_β:            add              rsp, 16;                             jmp   n499_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n501_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 272], rax            # Push_item
                        mov              qword ptr [r9 + 280], rdx;           jmp   n502_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n502_statement_end_α:   add              rsp, 96;                             jmp   RETURN
#=======================================================================================================================
# push_item_end  <stmt 49, line 65: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n503_statement_begin_α:                                                       jmp   n504_statement_end_α
n503_statement_begin_β:                                                       jmp   n505_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n504_statement_end_α:                                                         jmp   n505_statement_begin_α
#=======================================================================================================================
#                DEFINE('pop_list()')
#-----------------------------------------------------------------------------------------------------------------------
n505_statement_begin_α:                                                       jmp   n506_func_activate_α
n505_statement_begin_β:                                                       jmp   n508_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n506_func_activate_α:   mov              rdi, qword ptr [rip + .Lx1173_0]
                        mov              rsi, qword ptr [rip + .Lx1173_1]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n507_statement_end_α
n506_func_activate_β:                                                         jmp   n505_statement_begin_β
.Lx1173_0:              .quad            .Lx1173_0_s
.Lx1173_0_s:            .string          "pop_list"
.Lx1173_1:              .quad            .Lx1173_1_s
.Lx1173_1_s:            .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n507_statement_end_α:                                                         jmp   n508_statement_begin_α
#=======================================================================================================================
#                DEFINE('Pop_list()')                         :(pop_list_end)
#-----------------------------------------------------------------------------------------------------------------------
n508_statement_begin_α:                                                       jmp   n509_func_activate_α
n508_statement_begin_β:                                                       jmp   n527_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n509_func_activate_α:   mov              rdi, qword ptr [rip + .Lx1179_0]
                        mov              rsi, qword ptr [rip + .Lx1179_1]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n510_statement_end_α
n509_func_activate_β:                                                         jmp   n508_statement_begin_β
.Lx1179_0:              .quad            .Lx1179_0_s
.Lx1179_0_s:            .string          "Pop_list"
.Lx1179_1:              .quad            .Lx1179_1_s
.Lx1179_1_s:            .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n510_statement_end_α:                                                         jmp   n527_statement_begin_α
#=======================================================================================================================
# pop_list       dummy          =  stk_pop_into_parent()
#-----------------------------------------------------------------------------------------------------------------------
pop_list_body:                                                                jmp   n512_call_α
n511_statement_begin_β:                                                       jmp   n515_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n512_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1185z]
                        lea              rax, [rip + stk_pop_into_parent_alpha]
                                                                              jmp   rax
.Lsig1185z:             .quad            0
                        .quad            .Lx1185_2
                        .quad            .Lx1185_2
.Lx1185_2:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx1185_240
                        add              rsp, 16;                             jmp   n511_statement_begin_β
.Lx1185_240:                                                                  jmp   n513_assign_α
n512_call_β:                                                                  jmp   n511_statement_begin_β
.Lx1185_0:              .quad            .Lx1185_0_s
.Lx1185_0_s:            .string          "stk_pop_into_parent"
#-----------------------------------------------------------------------------------------------------------------------
n513_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 560], rax            # dummy
                        mov              qword ptr [r9 + 568], rdx;           jmp   n514_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n514_statement_end_α:   add              rsp, 16;                             jmp   n515_statement_begin_α
#=======================================================================================================================
#                pop_list       =  .dummy                     :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n515_statement_begin_α:                                                       jmp   n516_lit_string_α
n515_statement_begin_β:                                                       jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n516_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1191_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n517_call_α
.Lx1191_0:              .quad            .Lx1191_0_s
.Lx1191_0_s:            .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n517_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1193:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1193]
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
                        cmp              eax, 104;                            jne   .Lx1192_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n515_statement_begin_β
.Lx1192_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n518_assign_α
n517_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n515_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n518_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 288], rax            # pop_list
                        mov              qword ptr [r9 + 296], rdx;           jmp   n519_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n519_statement_end_α:   add              rsp, 32;                             jmp   NRETURN
#=======================================================================================================================
# Pop_list       Pop_list       =  epsilon . *pop_list()      :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
Pop_list_body:                                                                jmp   n521_var_α
n520_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n521_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 576]            # epsilon
                        mov              rdx, qword ptr [r9 + 584]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n522_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n522_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 768], rax            # PAT$0$V0
                        mov              qword ptr [r9 + 776], rdx;           jmp   n523_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n523_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1201_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n524_call_α
n523_lit_string_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n520_statement_begin_β
.Lx1201_0:              .quad            .Lx1201_0_s
.Lx1201_0_s:            .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n524_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1203:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1203]
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
                        cmp              eax, 104;                            jne   .Lx1202_240
                        add              rsp, 16;                             jmp   n523_lit_string_β
.Lx1202_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n525_assign_α
n524_call_β:            add              rsp, 16;                             jmp   n523_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n525_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 304], rax            # Pop_list
                        mov              qword ptr [r9 + 312], rdx;           jmp   n526_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n526_statement_end_α:   add              rsp, 48;                             jmp   RETURN
#=======================================================================================================================
# pop_list_end  <stmt 55, line 72: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n527_statement_begin_α:                                                       jmp   n528_statement_end_α
n527_statement_begin_β:                                                       jmp   n529_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n528_statement_end_α:                                                         jmp   n529_statement_begin_α
#=======================================================================================================================
#                DEFINE('pop_final(v)')
#-----------------------------------------------------------------------------------------------------------------------
n529_statement_begin_α:                                                       jmp   n530_func_activate_α
n529_statement_begin_β:                                                       jmp   n532_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n530_func_activate_α:   mov              rdi, qword ptr [rip + .Lx1214_0]
                        mov              rsi, qword ptr [rip + .Lx1214_1]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n531_statement_end_α
n530_func_activate_β:                                                         jmp   n529_statement_begin_β
.Lx1214_0:              .quad            .Lx1214_0_s
.Lx1214_0_s:            .string          "pop_final"
.Lx1214_1:              .quad            .Lx1214_1_s
.Lx1214_1_s:            .string          "v"
#-----------------------------------------------------------------------------------------------------------------------
n531_statement_end_α:                                                         jmp   n532_statement_begin_α
#=======================================================================================================================
#                DEFINE('Pop_final(vs)')                      :(pop_final_end)
#-----------------------------------------------------------------------------------------------------------------------
n532_statement_begin_α:                                                       jmp   n533_func_activate_α
n532_statement_begin_β:                                                       jmp   n554_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n533_func_activate_α:   mov              rdi, qword ptr [rip + .Lx1220_0]
                        mov              rsi, qword ptr [rip + .Lx1220_1]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n534_statement_end_α
n533_func_activate_β:                                                         jmp   n532_statement_begin_β
.Lx1220_0:              .quad            .Lx1220_0_s
.Lx1220_0_s:            .string          "Pop_final"
.Lx1220_1:              .quad            .Lx1220_1_s
.Lx1220_1_s:            .string          "vs"
#-----------------------------------------------------------------------------------------------------------------------
n534_statement_end_α:                                                         jmp   n554_statement_begin_α
#=======================================================================================================================
# pop_final      dummy          =  stk_pop_final(v)
#-----------------------------------------------------------------------------------------------------------------------
pop_final_body:                                                               jmp   n536_var_α
n535_statement_begin_β:                                                       jmp   n540_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n536_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # v
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n537_call_α
#-----------------------------------------------------------------------------------------------------------------------
n537_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1227z]
                        lea              rax, [rip + stk_pop_final_alpha];    jmp   rax
.Lsig1227z:             .quad            1
                        .quad            .Lx1227_2
                        .quad            .Lx1227_2
                        .quad            16
.Lx1227_2:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx1227_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n535_statement_begin_β
.Lx1227_240:                                                                  jmp   n538_assign_α
n537_call_β:                                                                  jmp   n535_statement_begin_β
.Lx1227_0:              .quad            .Lx1227_0_s
.Lx1227_0_s:            .string          "stk_pop_final"
#-----------------------------------------------------------------------------------------------------------------------
n538_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 560], rax            # dummy
                        mov              qword ptr [r9 + 568], rdx;           jmp   n539_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n539_statement_end_α:   add              rsp, 32;                             jmp   n540_statement_begin_α
#=======================================================================================================================
#                pop_final      =  .dummy                     :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n540_statement_begin_α:                                                       jmp   n541_lit_string_α
n540_statement_begin_β:                                                       jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n541_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1233_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n542_call_α
.Lx1233_0:              .quad            .Lx1233_0_s
.Lx1233_0_s:            .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n542_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1235:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1235]
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
                        cmp              eax, 104;                            jne   .Lx1234_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n540_statement_begin_β
.Lx1234_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n543_assign_α
n542_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n540_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n543_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 320], rax            # pop_final
                        mov              qword ptr [r9 + 328], rdx;           jmp   n544_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n544_statement_end_α:   add              rsp, 32;                             jmp   NRETURN
#=======================================================================================================================
# Pop_final      Pop_final      =  EVAL("epsilon . *pop_final(" vs ")")  :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
Pop_final_body:                                                               jmp   n546_lit_string_α
n545_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n546_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 21
                        mov              rax, qword ptr [rip + .Lx1241_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n547_var_α
.Lx1241_0:              .quad            .Lx1241_0_s
.Lx1241_0_s:            .string          "epsilon . *pop_final("
#-----------------------------------------------------------------------------------------------------------------------
n547_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 208]            # vs
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n548_binop_α
n547_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n545_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n548_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n549_lit_string_α
n548_binop_β:           add              rsp, 16;                             jmp   n547_var_β
#-----------------------------------------------------------------------------------------------------------------------
n549_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1244_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n550_binop_α
n549_lit_string_β:      add              rsp, 16;                             jmp   n548_binop_β
.Lx1244_0:              .quad            .Lx1244_0_s
.Lx1244_0_s:            .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
n550_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n551_call_α
n550_binop_β:           add              rsp, 16;                             jmp   n549_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n551_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1247:           .string          "EVAL"
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
                        add              rsp, 16;                             jmp   n550_binop_β
.Lx1246_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n552_assign_α
n551_call_β:            add              rsp, 16;                             jmp   n550_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n552_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 336], rax            # Pop_final
                        mov              qword ptr [r9 + 344], rdx;           jmp   n553_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n553_statement_end_α:   add              rsp, 96;                             jmp   RETURN
#=======================================================================================================================
# pop_final_end  <stmt 61, line 79: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n554_statement_begin_α:                                                       jmp   n555_statement_end_α
n554_statement_begin_β:                                                       jmp   n556_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n555_statement_end_α:                                                         jmp   n556_statement_begin_α
#=======================================================================================================================
#                delim          =  SPAN(' ' CHAR(10))
#-----------------------------------------------------------------------------------------------------------------------
n556_statement_begin_α:                                                       jmp   n557_lit_string_α
n556_statement_begin_β:                                                       jmp   n561_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n557_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1257_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n558_call_α
.Lx1257_0:              .quad            .Lx1257_0_s
.Lx1257_0_s:            .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n558_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1259:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1259]
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
                        cmp              eax, 104;                            jne   .Lx1258_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n556_statement_begin_β
.Lx1258_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n559_assign_α
n558_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n556_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n559_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 592], rax            # delim
                        mov              qword ptr [r9 + 600], rdx;           jmp   n560_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n560_statement_end_α:   add              rsp, 32;                             jmp   n561_statement_begin_α
#=======================================================================================================================
#                word           =  NOTANY('( )' CHAR(10)) BREAK('( )' CHAR(10))
#-----------------------------------------------------------------------------------------------------------------------
n561_statement_begin_α:                                                       jmp   n562_lit_string_α
n561_statement_begin_β:                                                       jmp   n566_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n562_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1265_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n563_call_α
.Lx1265_0:              .quad            .Lx1265_0_s
.Lx1265_0_s:            .string          "PAT$2"
#-----------------------------------------------------------------------------------------------------------------------
n563_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1267:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1267]
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
                        cmp              eax, 104;                            jne   .Lx1266_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n561_statement_begin_β
.Lx1266_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n564_assign_α
n563_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n561_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n564_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 608], rax            # word
                        mov              qword ptr [r9 + 616], rdx;           jmp   n565_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n565_statement_end_α:   add              rsp, 32;                             jmp   n566_statement_begin_α
#=======================================================================================================================
#                group          =  FENCE(
#-----------------------------------------------------------------------------------------------------------------------
n566_statement_begin_α:                                                       jmp   n567_var_α
n566_statement_begin_β:                                                       jmp   n577_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n567_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 592]            # delim
                        mov              rdx, qword ptr [r9 + 600]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n568_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n568_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 816], rax            # PAT$3$V2
                        mov              qword ptr [r9 + 824], rdx;           jmp   n569_var_α
#-----------------------------------------------------------------------------------------------------------------------
n569_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 608]            # word
                        mov              rdx, qword ptr [r9 + 616]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n570_assign_α
n569_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n566_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n570_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 800], rax            # PAT$3$V1
                        mov              qword ptr [r9 + 808], rdx;           jmp   n571_var_α
#-----------------------------------------------------------------------------------------------------------------------
n571_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 608]            # word
                        mov              rdx, qword ptr [r9 + 616]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n572_assign_α
n571_var_β:             add              rsp, 16;                             jmp   n569_var_β
#-----------------------------------------------------------------------------------------------------------------------
n572_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 784], rax            # PAT$3$V0
                        mov              qword ptr [r9 + 792], rdx;           jmp   n573_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n573_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1279_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n574_call_α
n573_lit_string_β:      add              rsp, 16;                             jmp   n571_var_β
.Lx1279_0:              .quad            .Lx1279_0_s
.Lx1279_0_s:            .string          "PAT$3"
#-----------------------------------------------------------------------------------------------------------------------
n574_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1281:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1281]
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
                        cmp              eax, 104;                            jne   .Lx1280_240
                        add              rsp, 16;                             jmp   n573_lit_string_β
.Lx1280_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n575_assign_α
n574_call_β:            add              rsp, 16;                             jmp   n573_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n575_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 624], rax            # group
                        mov              qword ptr [r9 + 632], rdx;           jmp   n576_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n576_statement_end_α:   add              rsp, 80;                             jmp   n577_statement_begin_α
#=======================================================================================================================
#                treebank       =
#-----------------------------------------------------------------------------------------------------------------------
n577_statement_begin_α:                                                       jmp   n578_var_α
n577_statement_begin_β:                                                       jmp   n584_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n578_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 592]            # delim
                        mov              rdx, qword ptr [r9 + 600]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n579_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n579_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 832], rax            # PAT$4$V0
                        mov              qword ptr [r9 + 840], rdx;           jmp   n580_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n580_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1289_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n581_call_α
n580_lit_string_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n577_statement_begin_β
.Lx1289_0:              .quad            .Lx1289_0_s
.Lx1289_0_s:            .string          "PAT$4"
#-----------------------------------------------------------------------------------------------------------------------
n581_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1291:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1291]
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
                        cmp              eax, 104;                            jne   .Lx1290_240
                        add              rsp, 16;                             jmp   n580_lit_string_β
.Lx1290_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n582_assign_α
n581_call_β:            add              rsp, 16;                             jmp   n580_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n582_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 672], rax            # treebank
                        mov              qword ptr [r9 + 680], rdx;           jmp   n583_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n583_statement_end_α:   add              rsp, 48;                             jmp   n584_statement_begin_α
#=======================================================================================================================
#                DEFINE('node_repr(node)r,c,sep')             :(node_repr_end)
#-----------------------------------------------------------------------------------------------------------------------
n584_statement_begin_α:                                                       jmp   n585_func_activate_α
n584_statement_begin_β:                                                       jmp   n645_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n585_func_activate_α:   mov              rdi, qword ptr [rip + .Lx1298_0]
                        mov              rsi, qword ptr [rip + .Lx1298_1]
                        mov              edx, 4
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n586_statement_end_α
n585_func_activate_β:                                                         jmp   n584_statement_begin_β
.Lx1298_0:              .quad            .Lx1298_0_s
.Lx1298_0_s:            .string          "node_repr"
.Lx1298_1:              .quad            .Lx1298_1_s
.Lx1298_1_s:            .string          "node,r,c,sep"
#-----------------------------------------------------------------------------------------------------------------------
n586_statement_end_α:                                                         jmp   n645_statement_begin_α
#=======================================================================================================================
# node_repr      IDENT(REPLACE(DATATYPE(node), &LCASE, &UCASE), 'STRING')  :F(nr_list)
#-----------------------------------------------------------------------------------------------------------------------
node_repr_body:                                                               jmp   n588_var_α
n587_statement_begin_β:                                                       jmp   n604_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n588_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 368]            # node
                        mov              rdx, qword ptr [r9 + 376]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n589_call_α
#-----------------------------------------------------------------------------------------------------------------------
n589_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1305:           .string          "DATATYPE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1305]
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
                        cmp              eax, 104;                            jne   .Lx1304_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n587_statement_begin_β
.Lx1304_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n590_keyword_snobol4_α
n589_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n587_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n590_keyword_snobol4_α: sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx1306_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read_snobol4@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n591_keyword_snobol4_α
.Lx1306_0:              .quad            .Lx1306_0_s
.Lx1306_0_s:            .string          "LCASE"
#-----------------------------------------------------------------------------------------------------------------------
n591_keyword_snobol4_α: sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx1307_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read_snobol4@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n592_call_α
.Lx1307_0:              .quad            .Lx1307_0_s
.Lx1307_0_s:            .string          "UCASE"
#-----------------------------------------------------------------------------------------------------------------------
n592_call_α:            sub              rsp, 16
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
.Lrkfnzd1309:           .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1309]
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
                        cmp              eax, 104;                            jne   .Lx1308_240
                        add              rsp, 16
                        add              rsp, 64;                             jmp   n587_statement_begin_β
.Lx1308_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n593_lit_string_α
n592_call_β:            add              rsp, 16
                        add              rsp, 64;                             jmp   n587_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n593_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx1310_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n594_call_α
n593_lit_string_β:      add              rsp, 16
                        add              rsp, 80;                             jmp   n587_statement_begin_β
.Lx1310_0:              .quad            .Lx1310_0_s
.Lx1310_0_s:            .string          "STRING"
#-----------------------------------------------------------------------------------------------------------------------
n594_call_α:            sub              rsp, 16
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
.Lrkfnzd1312:           .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1312]
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
                        cmp              eax, 104;                            jne   .Lx1311_240
                        add              rsp, 16;                             jmp   n593_lit_string_β
.Lx1311_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n595_statement_end_α
n594_call_β:            add              rsp, 16;                             jmp   n593_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n595_statement_end_α:   add              rsp, 112;                            jmp   n596_statement_begin_α
#=======================================================================================================================
#                node_repr      =  "'" node "'"               :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n596_statement_begin_α:                                                       jmp   n597_lit_string_α
n596_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n597_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1317_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n598_var_α
.Lx1317_0:              .quad            .Lx1317_0_s
.Lx1317_0_s:            .string          "'"
#-----------------------------------------------------------------------------------------------------------------------
n598_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 368]            # node
                        mov              rdx, qword ptr [r9 + 376]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n599_binop_α
n598_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n596_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n599_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n600_lit_string_α
n599_binop_β:           add              rsp, 16;                             jmp   n598_var_β
#-----------------------------------------------------------------------------------------------------------------------
n600_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1320_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n601_binop_α
n600_lit_string_β:      add              rsp, 16;                             jmp   n599_binop_β
.Lx1320_0:              .quad            .Lx1320_0_s
.Lx1320_0_s:            .string          "'"
#-----------------------------------------------------------------------------------------------------------------------
n601_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n602_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n602_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 352], rax            # node_repr
                        mov              qword ptr [r9 + 360], rdx;           jmp   n603_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n603_statement_end_α:   add              rsp, 80;                             jmp   RETURN
#=======================================================================================================================
# nr_list        r              =  '('
#-----------------------------------------------------------------------------------------------------------------------
n604_statement_begin_α:                                                       jmp   n605_lit_string_α
n604_statement_begin_β:                                                       jmp   n608_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n605_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1327_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n606_assign_α
.Lx1327_0:              .quad            .Lx1327_0_s
.Lx1327_0_s:            .string          "("
#-----------------------------------------------------------------------------------------------------------------------
n606_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 384], rax            # r
                        mov              qword ptr [r9 + 392], rdx;           jmp   n607_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n607_statement_end_α:   add              rsp, 16;                             jmp   n608_statement_begin_α
#=======================================================================================================================
#                sep            =
#-----------------------------------------------------------------------------------------------------------------------
n608_statement_begin_α:                                                       jmp   n609_lit_string_α
n608_statement_begin_β:                                                       jmp   n612_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n609_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx1333_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n610_assign_α
.Lx1333_0:              .quad            .Lx1333_0_s
.Lx1333_0_s:            .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n610_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 416], rax            # sep
                        mov              qword ptr [r9 + 424], rdx;           jmp   n611_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n611_statement_end_α:   add              rsp, 16;                             jmp   n612_statement_begin_α
#=======================================================================================================================
#                c              =  node
#-----------------------------------------------------------------------------------------------------------------------
n612_statement_begin_α:                                                       jmp   n613_var_α
n612_statement_begin_β:                                                       jmp   n616_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n613_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 368]            # node
                        mov              rdx, qword ptr [r9 + 376]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n614_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n614_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 400], rax            # c
                        mov              qword ptr [r9 + 408], rdx;           jmp   n615_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n615_statement_end_α:   add              rsp, 16;                             jmp   n616_statement_begin_α
#=======================================================================================================================
# nr_lp          DIFFER(c)                                    :F(nr_done)
#-----------------------------------------------------------------------------------------------------------------------
n616_statement_begin_α:                                                       jmp   n617_var_α
n616_statement_begin_β:                                                       jmp   n639_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n617_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 400]            # c
                        mov              rdx, qword ptr [r9 + 408]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n618_call_α
#-----------------------------------------------------------------------------------------------------------------------
n618_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1347:           .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1347]
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
                        cmp              eax, 104;                            jne   .Lx1346_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n616_statement_begin_β
.Lx1346_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n619_statement_end_α
n618_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n616_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n619_statement_end_α:   add              rsp, 32;                             jmp   n620_statement_begin_α
#=======================================================================================================================
#                r              =  r sep node_repr(head(c))
#-----------------------------------------------------------------------------------------------------------------------
n620_statement_begin_α:                                                       jmp   n621_var_α
n620_statement_begin_β:                                                       jmp   n630_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n621_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 384]            # r
                        mov              rdx, qword ptr [r9 + 392]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n622_var_α
#-----------------------------------------------------------------------------------------------------------------------
n622_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 416]            # sep
                        mov              rdx, qword ptr [r9 + 424]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n623_binop_α
n622_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n620_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n623_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n624_var_α
n623_binop_β:           add              rsp, 16;                             jmp   n622_var_β
#-----------------------------------------------------------------------------------------------------------------------
n624_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 400]            # c
                        mov              rdx, qword ptr [r9 + 408]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n625_call_α
n624_var_β:             add              rsp, 16;                             jmp   n623_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n625_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1357:           .string          "head"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1357]
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
                        cmp              eax, 104;                            jne   .Lx1356_240
                        add              rsp, 16;                             jmp   n624_var_β
.Lx1356_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n626_call_α
n625_call_β:            add              rsp, 16;                             jmp   n624_var_β
#-----------------------------------------------------------------------------------------------------------------------
n626_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1359z]
                        lea              rax, [rip + node_repr_alpha];        jmp   rax
.Lsig1359z:             .quad            1
                        .quad            .Lx1359_2
                        .quad            .Lx1359_2
                        .quad            16
.Lx1359_2:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx1359_240
                        add              rsp, 32;                             jmp   n624_var_β
.Lx1359_240:                                                                  jmp   n627_binop_α
n626_call_β:                                                                  jmp   n624_var_β
.Lx1359_0:              .quad            .Lx1359_0_s
.Lx1359_0_s:            .string          "node_repr"
#-----------------------------------------------------------------------------------------------------------------------
n627_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]            # binop
                        mov              rsi, qword ptr [rsp + 72]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n628_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n628_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 384], rax            # r
                        mov              qword ptr [r9 + 392], rdx;           jmp   n629_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n629_statement_end_α:   add              rsp, 112;                            jmp   n630_statement_begin_α
#=======================================================================================================================
#                sep            =  ', '
#-----------------------------------------------------------------------------------------------------------------------
n630_statement_begin_α:                                                       jmp   n631_lit_string_α
n630_statement_begin_β:                                                       jmp   n634_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n631_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx1366_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n632_assign_α
.Lx1366_0:              .quad            .Lx1366_0_s
.Lx1366_0_s:            .string          ", "
#-----------------------------------------------------------------------------------------------------------------------
n632_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 416], rax            # sep
                        mov              qword ptr [r9 + 424], rdx;           jmp   n633_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n633_statement_end_α:   add              rsp, 16;                             jmp   n634_statement_begin_α
#=======================================================================================================================
#                c              =  tail(c)                    :(nr_lp)
#-----------------------------------------------------------------------------------------------------------------------
n634_statement_begin_α:                                                       jmp   n635_var_α
n634_statement_begin_β:                                                       jmp   n616_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n635_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 400]            # c
                        mov              rdx, qword ptr [r9 + 408]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n636_call_α
#-----------------------------------------------------------------------------------------------------------------------
n636_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1374:           .string          "tail"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1374]
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
                        cmp              eax, 104;                            jne   .Lx1373_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n634_statement_begin_β
.Lx1373_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n637_assign_α
n636_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n634_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n637_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 400], rax            # c
                        mov              qword ptr [r9 + 408], rdx;           jmp   n638_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n638_statement_end_α:   add              rsp, 32;                             jmp   n616_statement_begin_α
#=======================================================================================================================
# nr_done        node_repr      =  r ')'                      :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n639_statement_begin_α:                                                       jmp   n640_var_α
n639_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n640_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 384]            # r
                        mov              rdx, qword ptr [r9 + 392]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n641_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n641_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1381_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n642_binop_α
n641_lit_string_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n639_statement_begin_β
.Lx1381_0:              .quad            .Lx1381_0_s
.Lx1381_0_s:            .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
n642_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n643_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n643_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 352], rax            # node_repr
                        mov              qword ptr [r9 + 360], rdx;           jmp   n644_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n644_statement_end_α:   add              rsp, 48;                             jmp   RETURN
#=======================================================================================================================
# node_repr_end  <stmt 77, line 120: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n645_statement_begin_α:                                                       jmp   n646_statement_end_α
n645_statement_begin_β:                                                       jmp   n647_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n646_statement_end_α:                                                         jmp   n647_statement_begin_α
#=======================================================================================================================
#                DEFINE('pp_node(node,indent,suffix)r,pad,c,nxt') :(pp_node_end)
#-----------------------------------------------------------------------------------------------------------------------
n647_statement_begin_α:                                                       jmp   n648_func_activate_α
n647_statement_begin_β:                                                       jmp   n736_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n648_func_activate_α:   mov              rdi, qword ptr [rip + .Lx1393_0]
                        mov              rsi, qword ptr [rip + .Lx1393_1]
                        mov              edx, 7
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n649_statement_end_α
n648_func_activate_β:                                                         jmp   n647_statement_begin_β
.Lx1393_0:              .quad            .Lx1393_0_s
.Lx1393_0_s:            .string          "pp_node"
.Lx1393_1:              .quad            .Lx1393_1_s
.Lx1393_1_s:            .string          "node,indent,suffix,r,pad,c,nxt"
#-----------------------------------------------------------------------------------------------------------------------
n649_statement_end_α:                                                         jmp   n736_statement_begin_α
#=======================================================================================================================
# pp_node        r              =  node_repr(node)
#-----------------------------------------------------------------------------------------------------------------------
pp_node_body:                                                                 jmp   n651_var_α
n650_statement_begin_β:                                                       jmp   n655_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n651_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 368]            # node
                        mov              rdx, qword ptr [r9 + 376]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n652_call_α
#-----------------------------------------------------------------------------------------------------------------------
n652_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1400z]
                        lea              rax, [rip + node_repr_alpha];        jmp   rax
.Lsig1400z:             .quad            1
                        .quad            .Lx1400_2
                        .quad            .Lx1400_2
                        .quad            16
.Lx1400_2:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx1400_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n650_statement_begin_β
.Lx1400_240:                                                                  jmp   n653_assign_α
n652_call_β:                                                                  jmp   n650_statement_begin_β
.Lx1400_0:              .quad            .Lx1400_0_s
.Lx1400_0_s:            .string          "node_repr"
#-----------------------------------------------------------------------------------------------------------------------
n653_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 384], rax            # r
                        mov              qword ptr [r9 + 392], rdx;           jmp   n654_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n654_statement_end_α:   add              rsp, 32;                             jmp   n655_statement_begin_α
#=======================================================================================================================
#                pad            =  DUPL(' ', indent)
#-----------------------------------------------------------------------------------------------------------------------
n655_statement_begin_α:                                                       jmp   n656_lit_string_α
n655_statement_begin_β:                                                       jmp   n661_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n656_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1406_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n657_var_α
.Lx1406_0:              .quad            .Lx1406_0_s
.Lx1406_0_s:            .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n657_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 448]            # indent
                        mov              rdx, qword ptr [r9 + 456]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n658_call_α
n657_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n655_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n658_call_α:            sub              rsp, 16
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
.Lrkfnzd1409:           .string          "DUPL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1409]
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
                        cmp              eax, 104;                            jne   .Lx1408_240
                        add              rsp, 16;                             jmp   n657_var_β
.Lx1408_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n659_assign_α
n658_call_β:            add              rsp, 16;                             jmp   n657_var_β
#-----------------------------------------------------------------------------------------------------------------------
n659_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 480], rax            # pad
                        mov              qword ptr [r9 + 488], rdx;           jmp   n660_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n660_statement_end_α:   add              rsp, 48;                             jmp   n661_statement_begin_α
#=======================================================================================================================
#                GT(80, indent + SIZE(r))                     :F(pp_wrap)
#-----------------------------------------------------------------------------------------------------------------------
n661_statement_begin_α:                                                       jmp   n662_lit_integer_α
n661_statement_begin_β:                                                       jmp   n679_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n662_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1415_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n663_var_α
.Lx1415_0:              .quad            80
#-----------------------------------------------------------------------------------------------------------------------
n663_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 448]            # indent
                        mov              rdx, qword ptr [r9 + 456]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n664_var_α
n663_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n661_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n664_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 384]            # r
                        mov              rdx, qword ptr [r9 + 392]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n665_call_α
n664_var_β:             add              rsp, 16;                             jmp   n663_var_β
#-----------------------------------------------------------------------------------------------------------------------
n665_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1419:           .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1419]
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
                        cmp              eax, 104;                            jne   .Lx1418_240
                        add              rsp, 16;                             jmp   n664_var_β
.Lx1418_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n666_binop_α
n665_call_β:            add              rsp, 16;                             jmp   n664_var_β
#-----------------------------------------------------------------------------------------------------------------------
n666_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]            # var
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx1420_240
                        add              rsp, 32;                             jmp   n664_var_β
.Lx1420_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n667_coerce_numeric_α
n666_binop_β:           add              rsp, 32;                             jmp   n664_var_β
#-----------------------------------------------------------------------------------------------------------------------
n667_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 80]            # lit_integer
                        cmp              eax, 5;                              je    .Lx1422_1
                        cmp              eax, 3;                              jne   .Lx1422_0
                        mov              eax, dword ptr [rsp + 16]            # binop
                        cmp              eax, 3;                              jne   .Lx1422_0
.Lx1422_1:              mov              rax, qword ptr [rsp + 80]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 88]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n668_coerce_numeric_α
.Lx1422_0:              lea              rdi, [rsp + 80]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n668_coerce_numeric_α
n667_coerce_numeric_β:  add              rsp, 16;                             jmp   n666_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n668_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # binop
                        cmp              eax, 5;                              je    .Lx1424_1
                        cmp              eax, 3;                              jne   .Lx1424_0
                        mov              eax, dword ptr [rsp + 96]            # lit_integer
                        cmp              eax, 3;                              jne   .Lx1424_0
.Lx1424_1:              mov              rax, qword ptr [rsp + 32]            # binop
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # binop
                        mov              qword ptr [rsp + 8], rax;            jmp   n669_cmp_test_α
.Lx1424_0:              lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n669_cmp_test_α
n668_coerce_numeric_β:  add              rsp, 16;                             jmp   n667_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n669_cmp_test_α:        sub              rsp, 16
                        lea              rdi, [rsp + 32]                      # coerce_numeric
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        test             eax, eax;                            jg    .Lx1426_240
                        add              rsp, 16;                             jmp   n668_coerce_numeric_β
.Lx1426_240:                                                                  jmp   n670_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n670_statement_end_α:   add              rsp, 128;                            jmp   n671_statement_begin_α
#=======================================================================================================================
#                OUTPUT         =  pad r suffix               :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n671_statement_begin_α:                                                       jmp   n672_var_α
n671_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n672_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 480]            # pad
                        mov              rdx, qword ptr [r9 + 488]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n673_var_α
#-----------------------------------------------------------------------------------------------------------------------
n673_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 384]            # r
                        mov              rdx, qword ptr [r9 + 392]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n674_binop_α
n673_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n671_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n674_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n675_var_α
n674_binop_β:           add              rsp, 16;                             jmp   n673_var_β
#-----------------------------------------------------------------------------------------------------------------------
n675_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 464]            # suffix
                        mov              rdx, qword ptr [r9 + 472]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n676_binop_α
n675_var_β:             add              rsp, 16;                             jmp   n674_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n676_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n677_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n677_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1436_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n678_statement_end_α
.Lx1436_0:              .quad            .Lx1436_0_s
.Lx1436_0_s:            .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n678_statement_end_α:   add              rsp, 80;                             jmp   RETURN
#=======================================================================================================================
# pp_wrap        OUTPUT         =  pad '( ' "'" head(node) "',"
#-----------------------------------------------------------------------------------------------------------------------
n679_statement_begin_α:                                                       jmp   n680_var_α
n679_statement_begin_β:                                                       jmp   n692_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n680_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 480]            # pad
                        mov              rdx, qword ptr [r9 + 488]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n681_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n681_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx1442_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n682_binop_α
n681_lit_string_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n679_statement_begin_β
.Lx1442_0:              .quad            .Lx1442_0_s
.Lx1442_0_s:            .string          "( "
#-----------------------------------------------------------------------------------------------------------------------
n682_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n683_lit_string_α
n682_binop_β:           add              rsp, 16;                             jmp   n681_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n683_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1444_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n684_binop_α
n683_lit_string_β:      add              rsp, 16;                             jmp   n682_binop_β
.Lx1444_0:              .quad            .Lx1444_0_s
.Lx1444_0_s:            .string          "'"
#-----------------------------------------------------------------------------------------------------------------------
n684_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n685_var_α
n684_binop_β:           add              rsp, 16;                             jmp   n683_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n685_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 368]            # node
                        mov              rdx, qword ptr [r9 + 376]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n686_call_α
n685_var_β:             add              rsp, 16;                             jmp   n684_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n686_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1448:           .string          "head"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1448]
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
                        cmp              eax, 104;                            jne   .Lx1447_240
                        add              rsp, 16;                             jmp   n685_var_β
.Lx1447_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n687_binop_α
n686_call_β:            add              rsp, 16;                             jmp   n685_var_β
#-----------------------------------------------------------------------------------------------------------------------
n687_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]            # binop
                        mov              rsi, qword ptr [rsp + 56]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n688_lit_string_α
n687_binop_β:           add              rsp, 32;                             jmp   n685_var_β
#-----------------------------------------------------------------------------------------------------------------------
n688_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx1450_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n689_binop_α
n688_lit_string_β:      add              rsp, 16;                             jmp   n687_binop_β
.Lx1450_0:              .quad            .Lx1450_0_s
.Lx1450_0_s:            .string          "',"
#-----------------------------------------------------------------------------------------------------------------------
n689_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n690_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n690_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1452_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n691_statement_end_α
.Lx1452_0:              .quad            .Lx1452_0_s
.Lx1452_0_s:            .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n691_statement_end_α:   add              rsp, 160;                            jmp   n692_statement_begin_α
#=======================================================================================================================
#                c              =  tail(node)
#-----------------------------------------------------------------------------------------------------------------------
n692_statement_begin_α:                                                       jmp   n693_var_α
n692_statement_begin_β:                                                       jmp   n697_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n693_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 368]            # node
                        mov              rdx, qword ptr [r9 + 376]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n694_call_α
#-----------------------------------------------------------------------------------------------------------------------
n694_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1459:           .string          "tail"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1459]
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
                        cmp              eax, 104;                            jne   .Lx1458_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n692_statement_begin_β
.Lx1458_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n695_assign_α
n694_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n692_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n695_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 400], rax            # c
                        mov              qword ptr [r9 + 408], rdx;           jmp   n696_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n696_statement_end_α:   add              rsp, 32;                             jmp   n697_statement_begin_α
#=======================================================================================================================
# pp_wch         DIFFER(c)                                    :F(pp_wdone)
#-----------------------------------------------------------------------------------------------------------------------
n697_statement_begin_α:                                                       jmp   n698_var_α
n697_statement_begin_β:                                                       jmp   n734_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n698_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 400]            # c
                        mov              rdx, qword ptr [r9 + 408]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n699_call_α
#-----------------------------------------------------------------------------------------------------------------------
n699_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1467:           .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1467]
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
                        cmp              eax, 104;                            jne   .Lx1466_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n697_statement_begin_β
.Lx1466_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n700_statement_end_α
n699_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n697_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n700_statement_end_α:   add              rsp, 32;                             jmp   n701_statement_begin_α
#=======================================================================================================================
#                nxt            =  tail(c)
#-----------------------------------------------------------------------------------------------------------------------
n701_statement_begin_α:                                                       jmp   n702_var_α
n701_statement_begin_β:                                                       jmp   n706_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n702_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 400]            # c
                        mov              rdx, qword ptr [r9 + 408]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n703_call_α
#-----------------------------------------------------------------------------------------------------------------------
n703_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1474:           .string          "tail"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1474]
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
                        cmp              eax, 104;                            jne   .Lx1473_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n701_statement_begin_β
.Lx1473_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n704_assign_α
n703_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n701_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n704_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 496], rax            # nxt
                        mov              qword ptr [r9 + 504], rdx;           jmp   n705_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n705_statement_end_α:   add              rsp, 32;                             jmp   n706_statement_begin_α
#=======================================================================================================================
#                DIFFER(nxt)                                  :F(pp_wlast)
#-----------------------------------------------------------------------------------------------------------------------
n706_statement_begin_α:                                                       jmp   n707_var_α
n706_statement_begin_β:                                                       jmp   n723_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n707_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 496]            # nxt
                        mov              rdx, qword ptr [r9 + 504]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n708_call_α
#-----------------------------------------------------------------------------------------------------------------------
n708_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1482:           .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1482]
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
                        cmp              eax, 104;                            jne   .Lx1481_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n706_statement_begin_β
.Lx1481_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n709_statement_end_α
n708_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n706_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n709_statement_end_α:   add              rsp, 32;                             jmp   n710_statement_begin_α
#=======================================================================================================================
#                pp_node(head(c), indent + 2, ',')
#-----------------------------------------------------------------------------------------------------------------------
n710_statement_begin_α:                                                       jmp   n711_var_α
n710_statement_begin_β:                                                       jmp   n719_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n711_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 400]            # c
                        mov              rdx, qword ptr [r9 + 408]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n712_call_α
#-----------------------------------------------------------------------------------------------------------------------
n712_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1489:           .string          "head"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1489]
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
                        cmp              eax, 104;                            jne   .Lx1488_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n710_statement_begin_β
.Lx1488_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n713_var_α
n712_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n710_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n713_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 448]            # indent
                        mov              rdx, qword ptr [r9 + 456]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n714_lit_integer_α
n713_var_β:             add              rsp, 16
                        add              rsp, 32;                             jmp   n710_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n714_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1491_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n715_binop_α
n714_lit_integer_β:     add              rsp, 16;                             jmp   n713_var_β
.Lx1491_0:              .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n715_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx1492_240
                        add              rsp, 16;                             jmp   n714_lit_integer_β
.Lx1492_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n716_lit_string_α
n715_binop_β:           add              rsp, 16;                             jmp   n714_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n716_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1493_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n717_call_α
n716_lit_string_β:      add              rsp, 16;                             jmp   n715_binop_β
.Lx1493_0:              .quad            .Lx1493_0_s
.Lx1493_0_s:            .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n717_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1495z]
                        lea              rax, [rip + pp_node_alpha];          jmp   rax
.Lsig1495z:             .quad            3
                        .quad            .Lx1495_2
                        .quad            .Lx1495_2
                        .quad            80
                        .quad            32
                        .quad            16
.Lx1495_2:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx1495_240
                        add              rsp, 16;                             jmp   n716_lit_string_β
.Lx1495_240:                                                                  jmp   n718_statement_end_α
n717_call_β:                                                                  jmp   n716_lit_string_β
.Lx1495_0:              .quad            .Lx1495_0_s
.Lx1495_0_s:            .string          "pp_node"
#-----------------------------------------------------------------------------------------------------------------------
n718_statement_end_α:   add              rsp, 112;                            jmp   n719_statement_begin_α
#=======================================================================================================================
#                c              =  nxt                        :(pp_wch)
#-----------------------------------------------------------------------------------------------------------------------
n719_statement_begin_α:                                                       jmp   n720_var_α
n719_statement_begin_β:                                                       jmp   n697_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n720_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 496]            # nxt
                        mov              rdx, qword ptr [r9 + 504]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n721_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n721_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 400], rax            # c
                        mov              qword ptr [r9 + 408], rdx;           jmp   n722_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n722_statement_end_α:   add              rsp, 16;                             jmp   n697_statement_begin_α
#=======================================================================================================================
# pp_wlast       pp_node(head(c), indent + 2, ')' suffix)     :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n723_statement_begin_α:                                                       jmp   n724_var_α
n723_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n724_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 400]            # c
                        mov              rdx, qword ptr [r9 + 408]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n725_call_α
#-----------------------------------------------------------------------------------------------------------------------
n725_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1508:           .string          "head"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1508]
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
                        cmp              eax, 104;                            jne   .Lx1507_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n723_statement_begin_β
.Lx1507_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n726_var_α
n725_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n723_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n726_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 448]            # indent
                        mov              rdx, qword ptr [r9 + 456]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n727_lit_integer_α
n726_var_β:             add              rsp, 16
                        add              rsp, 32;                             jmp   n723_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n727_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1510_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n728_binop_α
n727_lit_integer_β:     add              rsp, 16;                             jmp   n726_var_β
.Lx1510_0:              .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n728_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx1511_240
                        add              rsp, 16;                             jmp   n727_lit_integer_β
.Lx1511_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n729_lit_string_α
n728_binop_β:           add              rsp, 16;                             jmp   n727_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n729_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1512_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n730_var_α
n729_lit_string_β:      add              rsp, 16;                             jmp   n728_binop_β
.Lx1512_0:              .quad            .Lx1512_0_s
.Lx1512_0_s:            .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
n730_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 464]            # suffix
                        mov              rdx, qword ptr [r9 + 472]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n731_binop_α
n730_var_β:             add              rsp, 16;                             jmp   n729_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n731_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n732_call_α
n731_binop_β:           add              rsp, 16;                             jmp   n730_var_β
#-----------------------------------------------------------------------------------------------------------------------
n732_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1516z]
                        lea              rax, [rip + pp_node_alpha];          jmp   rax
.Lsig1516z:             .quad            3
                        .quad            .Lx1516_2
                        .quad            .Lx1516_2
                        .quad            112
                        .quad            64
                        .quad            16
.Lx1516_2:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx1516_240
                        add              rsp, 16;                             jmp   n731_binop_β
.Lx1516_240:                                                                  jmp   n733_statement_end_α
n732_call_β:                                                                  jmp   n731_binop_β
.Lx1516_0:              .quad            .Lx1516_0_s
.Lx1516_0_s:            .string          "pp_node"
#-----------------------------------------------------------------------------------------------------------------------
n733_statement_end_α:   add              rsp, 144;                            jmp   RETURN
#=======================================================================================================================
# pp_wdone                                                    :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n734_statement_begin_α:                                                       jmp   n735_statement_end_α
n734_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n735_statement_end_α:                                                         jmp   RETURN
#=======================================================================================================================
# pp_node_end  <stmt 92, line 136: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n736_statement_begin_α:                                                       jmp   n737_statement_end_α
n736_statement_begin_β:                                                       jmp   n738_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n737_statement_end_α:                                                         jmp   n738_statement_begin_α
#=======================================================================================================================
#                DEFINE('pp_bank()cur')                       :(pp_bank_end)
#-----------------------------------------------------------------------------------------------------------------------
n738_statement_begin_α:                                                       jmp   n739_func_activate_α
n738_statement_begin_β:                                                       jmp   n752_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n739_func_activate_α:   mov              rdi, qword ptr [rip + .Lx1530_0]
                        mov              rsi, qword ptr [rip + .Lx1530_1]
                        mov              edx, 1
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n740_statement_end_α
n739_func_activate_β:                                                         jmp   n738_statement_begin_β
.Lx1530_0:              .quad            .Lx1530_0_s
.Lx1530_0_s:            .string          "pp_bank"
.Lx1530_1:              .quad            .Lx1530_1_s
.Lx1530_1_s:            .string          "cur"
#-----------------------------------------------------------------------------------------------------------------------
n740_statement_end_α:                                                         jmp   n752_statement_begin_α
#=======================================================================================================================
# pp_bank        pp_node(bank, 0, '')
#-----------------------------------------------------------------------------------------------------------------------
pp_bank_body:                                                                 jmp   n742_var_α
n741_statement_begin_β:                                                       jmp   n747_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n742_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 688]            # bank
                        mov              rdx, qword ptr [r9 + 696]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n743_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n743_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1536_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n744_lit_string_α
n743_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n741_statement_begin_β
.Lx1536_0:              .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n744_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx1537_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n745_call_α
n744_lit_string_β:      add              rsp, 16;                             jmp   n743_lit_integer_β
.Lx1537_0:              .quad            .Lx1537_0_s
.Lx1537_0_s:            .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n745_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1539z]
                        lea              rax, [rip + pp_node_alpha];          jmp   rax
.Lsig1539z:             .quad            3
                        .quad            .Lx1539_2
                        .quad            .Lx1539_2
                        .quad            48
                        .quad            32
                        .quad            16
.Lx1539_2:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx1539_240
                        add              rsp, 16;                             jmp   n744_lit_string_β
.Lx1539_240:                                                                  jmp   n746_statement_end_α
n745_call_β:                                                                  jmp   n744_lit_string_β
.Lx1539_0:              .quad            .Lx1539_0_s
.Lx1539_0_s:            .string          "pp_node"
#-----------------------------------------------------------------------------------------------------------------------
n746_statement_end_α:   add              rsp, 64;                             jmp   n747_statement_begin_α
#=======================================================================================================================
#                pp_bank        =  .dummy                     :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n747_statement_begin_α:                                                       jmp   n748_lit_string_α
n747_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n748_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1544_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n749_call_α
.Lx1544_0:              .quad            .Lx1544_0_s
.Lx1544_0_s:            .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n749_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1546:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1546]
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
                        cmp              eax, 104;                            jne   .Lx1545_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n747_statement_begin_β
.Lx1545_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n750_assign_α
n749_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n747_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n750_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 512], rax            # pp_bank
                        mov              qword ptr [r9 + 520], rdx;           jmp   n751_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n751_statement_end_α:   add              rsp, 32;                             jmp   RETURN
#=======================================================================================================================
# pp_bank_end  <stmt 96, line 141: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n752_statement_begin_α:                                                       jmp   n753_statement_end_α
n752_statement_begin_β:                                                       jmp   n754_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n753_statement_end_α:                                                         jmp   n754_statement_begin_α
#=======================================================================================================================
# slurp          line           =  INPUT                      :F(slurp_done)
#-----------------------------------------------------------------------------------------------------------------------
n754_statement_begin_α:                                                       jmp   n755_var_α
n754_statement_begin_β:                                                       jmp   n766_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n755_var_α:             sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx1556_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx1556_240
                        add              rsp, 16;                             jmp   n754_statement_begin_β
.Lx1556_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n756_assign_α
.Lx1556_0:              .quad            .Lx1556_0_s
.Lx1556_0_s:            .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n756_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 704], rax            # line
                        mov              qword ptr [r9 + 712], rdx;           jmp   n757_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n757_statement_end_α:   add              rsp, 16;                             jmp   n758_statement_begin_α
#=======================================================================================================================
#                src            =  src line nl                :(slurp)
#-----------------------------------------------------------------------------------------------------------------------
n758_statement_begin_α:                                                       jmp   n759_var_α
n758_statement_begin_β:                                                       jmp   n754_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n759_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 720]            # src
                        mov              rdx, qword ptr [r9 + 728]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n760_var_α
#-----------------------------------------------------------------------------------------------------------------------
n760_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 704]            # line
                        mov              rdx, qword ptr [r9 + 712]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n761_binop_α
n760_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n758_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n761_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n762_var_α
n761_binop_β:           add              rsp, 16;                             jmp   n760_var_β
#-----------------------------------------------------------------------------------------------------------------------
n762_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 528]            # nl
                        mov              rdx, qword ptr [r9 + 536]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n763_binop_α
n762_var_β:             add              rsp, 16;                             jmp   n761_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n763_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n764_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n764_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 720], rax            # src
                        mov              qword ptr [r9 + 728], rdx;           jmp   n765_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n765_statement_end_α:   add              rsp, 80;                             jmp   n754_statement_begin_α
#=======================================================================================================================
# slurp_done     t0             =  TIME()
#-----------------------------------------------------------------------------------------------------------------------
n766_statement_begin_α:                                                       jmp   n767_call_α
n766_statement_begin_β:                                                       jmp   n770_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n767_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd1573:           .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1573]
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
                        cmp              eax, 104;                            jne   .Lx1572_240
                        add              rsp, 16;                             jmp   n766_statement_begin_β
.Lx1572_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n768_assign_α
n767_call_β:            add              rsp, 16;                             jmp   n766_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n768_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 736], rax            # t0
                        mov              qword ptr [r9 + 744], rdx;           jmp   n769_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n769_statement_end_α:   add              rsp, 16;                             jmp   n770_statement_begin_α
#=======================================================================================================================
#                src            treebank                      :F(main_fail)
#-----------------------------------------------------------------------------------------------------------------------
n770_statement_begin_α:                                                       jmp   n771_var_α
n770_statement_begin_β:                                                       jmp   n794_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n771_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 720]            # src
                        mov              rdx, qword ptr [r9 + 728]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n772_var_α
#-----------------------------------------------------------------------------------------------------------------------
n772_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 672]            # treebank
                        mov              rdx, qword ptr [r9 + 680]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n773_assign_α
n772_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n794_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n773_assign_α:          mov              rsi, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1581_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n774_match_begin_α
n773_assign_β:                                                                jmp   n772_var_β
.Lx1581_0:              .quad            .Lx1581_0_s
.Lx1581_0_s:            .string          "PATV$0"
#-----------------------------------------------------------------------------------------------------------------------
n774_match_begin_α:     mov              rdi, qword ptr [rsp + 16]            # var
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
.Lx1583_0:              mov              r14d, dword ptr [rbp + -40];         jmp   n775_match_defer_α
n774_match_begin_β:     lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx1583_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx1583_1
                                                                              jmp   .Lx1583_0
.Lx1583_1:
n774_match_begin_af:    mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_match_ctx_restore@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   n773_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n775_match_defer_α:     lea              rdi, [rip + .S10]
                        xor              esi, esi
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_get_pat_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            jz    .Lx1584_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx1584_4]
                        lea              r11, [rip + .Lx1584_5];              jmp   rax
.Lx1584_4:                                                                    jmp   n776_match_end_α
.Lx1584_5:                                                                    jmp   n774_match_begin_β
.Lx1584_0:              push             r14
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
.Lx1584_2:              test             rax, rax;                            je    .Lx1584_3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx1584_7]
                        lea              rdx, [rip + .Lx1584_8];              jmp   rax
.Lx1584_7:              mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx1584_2
.Lx1584_8:              mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx1584_2
.Lx1584_3:              add              rsp, 8
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
                        test             eax, eax;                            js    n774_match_begin_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx1584_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n776_match_end_α
.Lx1584_6:              add              rsp, 16;                             jmp   n774_match_begin_β
n775_match_defer_β:                                                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n776_match_end_α:       push             r14
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
.Lx1586_1:              test             rax, rax;                            je    .Lx1586_2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx1586_3]
                        lea              rdx, [rip + .Lx1586_4];              jmp   rax
.Lx1586_3:              mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx1586_1
.Lx1586_4:              mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx1586_1
.Lx1586_2:              call             rt_dcap_end_ok_close@PLT
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
                        pop              rbp;                                 jmp   n777_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n777_statement_end_α:   add              rsp, 32;                             jmp   n778_statement_begin_α
#=======================================================================================================================
#                t1             =  TIME()
#-----------------------------------------------------------------------------------------------------------------------
n778_statement_begin_α:                                                       jmp   n779_call_α
n778_statement_begin_β:                                                       jmp   n782_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n779_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd1592:           .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1592]
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
                        cmp              eax, 104;                            jne   .Lx1591_240
                        add              rsp, 16;                             jmp   n778_statement_begin_β
.Lx1591_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n780_assign_α
n779_call_β:            add              rsp, 16;                             jmp   n778_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n780_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 752], rax            # t1
                        mov              qword ptr [r9 + 760], rdx;           jmp   n781_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n781_statement_end_α:   add              rsp, 16;                             jmp   n782_statement_begin_α
#=======================================================================================================================
#                TERMINAL       =  'match_ms=' (t1 - t0)
#-----------------------------------------------------------------------------------------------------------------------
n782_statement_begin_α:                                                       jmp   n783_lit_string_α
n782_statement_begin_β:                                                       jmp   n790_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n783_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Lx1598_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n784_var_α
.Lx1598_0:              .quad            .Lx1598_0_s
.Lx1598_0_s:            .string          "match_ms="
#-----------------------------------------------------------------------------------------------------------------------
n784_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 752]            # t1
                        mov              rdx, qword ptr [r9 + 760]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n785_var_α
n784_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n782_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n785_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 736]            # t0
                        mov              rdx, qword ptr [r9 + 744]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n786_binop_α
n785_var_β:             add              rsp, 16;                             jmp   n784_var_β
#-----------------------------------------------------------------------------------------------------------------------
n786_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx1601_240
                        add              rsp, 16;                             jmp   n785_var_β
.Lx1601_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n787_binop_α
n786_binop_β:           add              rsp, 16;                             jmp   n785_var_β
#-----------------------------------------------------------------------------------------------------------------------
n787_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n788_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n788_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1603_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n789_statement_end_α
.Lx1603_0:              .quad            .Lx1603_0_s
.Lx1603_0_s:            .string          "TERMINAL"
#-----------------------------------------------------------------------------------------------------------------------
n789_statement_end_α:   add              rsp, 80;                             jmp   n790_statement_begin_α
#=======================================================================================================================
#                dummy          =  pp_bank()                  :(END)
#-----------------------------------------------------------------------------------------------------------------------
n790_statement_begin_α:                                                       jmp   n791_call_α
n790_statement_begin_β:                                                       jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n791_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1609z]
                        lea              rax, [rip + pp_bank_alpha];          jmp   rax
.Lsig1609z:             .quad            0
                        .quad            .Lx1609_2
                        .quad            .Lx1609_2
.Lx1609_2:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx1609_240
                        add              rsp, 16;                             jmp   n790_statement_begin_β
.Lx1609_240:                                                                  jmp   n792_assign_α
n791_call_β:                                                                  jmp   n790_statement_begin_β
.Lx1609_0:              .quad            .Lx1609_0_s
.Lx1609_0_s:            .string          "pp_bank"
#-----------------------------------------------------------------------------------------------------------------------
n792_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 560], rax            # dummy
                        mov              qword ptr [r9 + 568], rdx;           jmp   n793_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n793_statement_end_α:   add              rsp, 16;                             jmp   main_γ
#=======================================================================================================================
# main_fail      OUTPUT         =  'Pattern match failed'
#-----------------------------------------------------------------------------------------------------------------------
n794_statement_begin_α:                                                       jmp   n795_lit_string_α
n794_statement_begin_β:                                                       jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n795_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 20
                        mov              rax, qword ptr [rip + .Lx1615_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n796_assign_α
.Lx1615_0:              .quad            .Lx1615_0_s
.Lx1615_0_s:            .string          "Pattern match failed"
#-----------------------------------------------------------------------------------------------------------------------
n796_assign_α:          mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1616_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n797_statement_end_α
.Lx1616_0:              .quad            .Lx1616_0_s
.Lx1616_0_s:            .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n797_statement_end_α:   add              rsp, 16;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
RETURN:                 pop              rcx
                        add              rsp, 8;                              jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FRETURN:                add              rsp, 8
                        pop              rcx;                                 jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
NRETURN:                mov              qword ptr [rsp + 32], 2              # result
                        mov              dword ptr [rsp + 36], 0
                        mov              rax, qword ptr [rip + .Lx1623_0]
                        mov              qword ptr [rsp + 40], rax;           jmp   n801_call_α
.Lx1623_0:              .quad            .Lx1623_0_s
.Lx1623_0_s:            .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n801_call_α:            mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 72], rax
                        .section         .rodata
.Lrkfn1625:             .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1625]
                        lea              rsi, [rsp + 64]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              eax, 104;                            je    FRETURN
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   RETURN
n801_call_β:                                                                  jmp   FRETURN
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
.S1:                    .string          "*pop_list"
.S2:                    .string          "PAT$3$V0"
.S3:                    .string          "tag"
.S4:                    .string          "PAT$3$V2"
.S5:                    .string          "PAT$3$V1"
.S6:                    .string          "wrd"
.S7:                    .string          "group"
.S8:                    .string          "PAT$4$V0"
.S9:                    .string          "nl"
.S10:                   .string          "PATV$0"
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
