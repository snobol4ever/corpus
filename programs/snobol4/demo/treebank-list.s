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
                        lea              rdi, [rip + .S1]
                        call             rt_bomb@PLT
                        ud2
n164_match_assign_cond_β:
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
.Lx199_4:                                                                     jmp   n181_match_assign_cond_α
.Lx199_5:               add              rsp, 16;                             jmp   n179_match_assign_save_β
.Lx199_0:               push             r14
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
                        test             eax, eax;                            jns   .Lx199_240
                        add              rsp, 16;                             jmp   n179_match_assign_save_β
.Lx199_240:             mov              r14d, eax
                        lea              rax, [rip + .Lx199_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n181_match_assign_cond_α
.Lx199_6:               add              rsp, 16
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
                        add              r12, 24;                             jmp   n182_match_defer_α
n181_match_assign_cond_β:
                        sub              r12, 24;                             jmp   n180_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n182_match_defer_α:     sub              rsp, 16
                        mov              rax, qword ptr [r9 + 800]            # PAT$3$V1
                        mov              rdx, qword ptr [r9 + 808]
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
.Lx202_4:                                                                     jmp   n183_match_arbno_α
.Lx202_5:               add              rsp, 16;                             jmp   n181_match_assign_cond_β
.Lx202_0:               push             r14
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
                        add              rsp, 16;                             jmp   n181_match_assign_cond_β
.Lx202_240:             mov              r14d, eax
                        lea              rax, [rip + .Lx202_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n183_match_arbno_α
.Lx202_6:               add              rsp, 16
                        add              rsp, 16;                             jmp   n181_match_assign_cond_β
n182_match_defer_β:                                                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n183_match_arbno_α:     mov              dword ptr [rbp + -48], r14d
                        mov              dword ptr [rbp + -44], r14d;         jmp   n184_match_defer_α
n183_match_arbno_β:                                                           jmp   n186_match_defer_α
n183_match_arbno_as:    mov              eax, dword ptr [rbp + -44]
                        cmp              r14d, eax;                           je    n183_match_arbno_af
                        mov              dword ptr [rbp + -44], r14d;         jmp   n184_match_defer_α
n183_match_arbno_af:    mov              eax, dword ptr [rbp + -48]
                        cmp              r14d, eax;                           jne   n183_match_arbno_af
                                                                              jmp   proc_PAT$3_ω
#-----------------------------------------------------------------------------------------------------------------------
n184_match_defer_α:     sub              rsp, 16
                        mov              rax, qword ptr [r9 + 864]            # PAT$3$V5
                        mov              rdx, qword ptr [r9 + 872]
                        cmp              eax, 8;                              jne   .Lx205_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx205_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx205_10
.Lx205_9:               xor              eax, eax
.Lx205_10:              test             rax, rax;                            jz    .Lx205_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx205_4]
                        lea              r11, [rip + .Lx205_5];               jmp   rax
.Lx205_4:                                                                     jmp   n185_match_lit_α
.Lx205_5:               add              rsp, 16;                             jmp   n183_match_arbno_β
.Lx205_0:               push             r14
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
.Lx205_2:               test             rax, rax;                            je    .Lx205_3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx205_7]
                        lea              rdx, [rip + .Lx205_8];               jmp   rax
.Lx205_7:               mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx205_2
.Lx205_8:               mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx205_2
.Lx205_3:               add              rsp, 8
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
                        test             eax, eax;                            jns   .Lx205_240
                        add              rsp, 16;                             jmp   n183_match_arbno_β
.Lx205_240:             mov              r14d, eax
                        lea              rax, [rip + .Lx205_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n185_match_lit_α
.Lx205_6:               add              rsp, 16
                        add              rsp, 16;                             jmp   n183_match_arbno_β
n184_match_defer_β:                                                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n185_match_lit_α:       mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    proc_PAT$3_ω
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41;                             jne   proc_PAT$3_ω
                        add              r14d, 1;                             jmp   proc_PAT$3_γ
n185_match_lit_β:       sub              r14d, 1;                             jmp   proc_PAT$3_ω
#-----------------------------------------------------------------------------------------------------------------------
n186_match_defer_α:     mov              rax, qword ptr [r9 + 848]            # PAT$3$V4
                        mov              rdx, qword ptr [r9 + 856]
                        cmp              eax, 8;                              jne   .Lx208_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx208_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx208_10
.Lx208_9:               xor              eax, eax
.Lx208_10:              test             rax, rax;                            jz    .Lx208_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx208_4]
                        lea              r11, [rip + .Lx208_5];               jmp   rax
.Lx208_4:                                                                     jmp   n187_match_fence1_α
.Lx208_5:                                                                     jmp   n183_match_arbno_af
.Lx208_0:               push             r14
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
.Lx208_2:               test             rax, rax;                            je    .Lx208_3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx208_7]
                        lea              rdx, [rip + .Lx208_8];               jmp   rax
.Lx208_7:               mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx208_2
.Lx208_8:               mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx208_2
.Lx208_3:               add              rsp, 8
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
                        test             eax, eax;                            js    n183_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx208_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n187_match_fence1_α
.Lx208_6:               add              rsp, 16;                             jmp   n183_match_arbno_af
n186_match_defer_β:                                                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n187_match_fence1_α:    mov              qword ptr [rbp + -64], rsp;          jmp   n188_match_alternate_α
n187_match_fence1_as:   mov              rsp, qword ptr [rbp + -64];          jmp   n183_match_arbno_as
n187_match_fence1_af:
n187_match_fence1_β:    mov              rsp, qword ptr [rbp + -64];          jmp   n183_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n188_match_alternate_α: sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        lea              rax, [rip + .Lx212_21]
                        mov              qword ptr [rsp + 16], rax;           jmp   n194_match_defer_α
.Lx212_21:              lea              rax, [rip + .Lx212_19]
                        mov              qword ptr [rsp + 16], rax;           jmp   n190_match_assign_save_α
n188_match_alternate_s0:
                        lea              rax, [rip + .Lx212_40]
                        mov              qword ptr [rsp + 8], rax;            jmp   n188_match_alternate_as
n188_match_alternate_s1:
                        lea              rax, [rip + .Lx212_41]
                        mov              qword ptr [rsp + 8], rax;            jmp   n188_match_alternate_as
.Lx212_40:                                                                    jmp   n194_match_defer_β
.Lx212_41:                                                                    jmp   n189_goto_β
n188_match_alternate_as:
                                                                              jmp   n187_match_fence1_as
n188_match_alternate_β: mov              rax, qword ptr [rsp + 8];            jmp   rax
n188_match_alternate_af:
                        mov              r14d, dword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16];           jmp   rax
.Lx212_19:              add              rsp, 32;                             jmp   n187_match_fence1_af
#-----------------------------------------------------------------------------------------------------------------------
n189_goto_α:                                                                  jmp   n188_match_alternate_af
n189_goto_β:                                                                  jmp   n188_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n190_match_assign_save_α:
                        mov              dword ptr [rbp + -80], r14d;         jmp   n191_match_defer_α
n190_match_assign_save_β:
                                                                              jmp   n188_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n191_match_defer_α:     mov              rax, qword ptr [r9 + 816]            # PAT$3$V2
                        mov              rdx, qword ptr [r9 + 824]
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
.Lx216_4:                                                                     jmp   n192_match_assign_cond_α
.Lx216_5:                                                                     jmp   n190_match_assign_save_β
.Lx216_0:               push             r14
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
                        test             eax, eax;                            js    n190_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx216_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n192_match_assign_cond_α
.Lx216_6:               add              rsp, 16;                             jmp   n190_match_assign_save_β
n191_match_defer_β:                                                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n192_match_assign_cond_α:
                        mov              eax, dword ptr [rbp + -80]
                        lea              rcx, [rip + .S8]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n193_match_defer_α
n192_match_assign_cond_β:
                        sub              r12, 24;                             jmp   n191_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n193_match_defer_α:     mov              rax, qword ptr [r9 + 832]            # PAT$3$V3
                        mov              rdx, qword ptr [r9 + 840]
                        cmp              eax, 8;                              jne   .Lx219_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx219_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx219_10
.Lx219_9:               xor              eax, eax
.Lx219_10:              test             rax, rax;                            jz    .Lx219_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx219_4]
                        lea              r11, [rip + .Lx219_5];               jmp   rax
.Lx219_4:                                                                     jmp   n188_match_alternate_s1
.Lx219_5:                                                                     jmp   n192_match_assign_cond_β
.Lx219_0:               push             r14
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
.Lx219_2:               test             rax, rax;                            je    .Lx219_3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx219_7]
                        lea              rdx, [rip + .Lx219_8];               jmp   rax
.Lx219_7:               mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx219_2
.Lx219_8:               mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx219_2
.Lx219_3:               add              rsp, 8
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
                        test             eax, eax;                            js    n192_match_assign_cond_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx219_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n188_match_alternate_s1
.Lx219_6:               add              rsp, 16;                             jmp   n192_match_assign_cond_β
n193_match_defer_β:                                                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n194_match_defer_α:     mov              rax, qword ptr [r9 + 624]            # group
                        mov              rdx, qword ptr [r9 + 632]
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
.Lx220_4:                                                                     jmp   n188_match_alternate_s0
.Lx220_5:                                                                     jmp   n188_match_alternate_af
.Lx220_0:               push             r14
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
                        test             eax, eax;                            js    n188_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx220_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n188_match_alternate_s0
.Lx220_6:               add              rsp, 16;                             jmp   n188_match_alternate_af
n194_match_defer_β:                                                           jmp   qword ptr [rsp]
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
n221_match_pos_α:       mov              rax, 0
                        cmp              r14d, eax;                           jne   proc_PAT$4_ω
                                                                              jmp   n222_match_defer_α
n221_match_pos_β:                                                             jmp   proc_PAT$4_ω
#-----------------------------------------------------------------------------------------------------------------------
n222_match_defer_α:     sub              rsp, 16
                        mov              rax, qword ptr [r9 + 880]            # PAT$4$V0
                        mov              rdx, qword ptr [r9 + 888]
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
.Lx233_4:                                                                     jmp   n223_match_defer_α
.Lx233_5:               add              rsp, 16;                             jmp   proc_PAT$4_ω
.Lx233_0:               push             r14
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
                        test             eax, eax;                            jns   .Lx233_240
                        add              rsp, 16;                             jmp   proc_PAT$4_ω
.Lx233_240:             mov              r14d, eax
                        lea              rax, [rip + .Lx233_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n223_match_defer_α
.Lx233_6:               add              rsp, 16
                        add              rsp, 16;                             jmp   proc_PAT$4_ω
n222_match_defer_β:                                                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n223_match_defer_α:     sub              rsp, 16
                        mov              rax, qword ptr [r9 + 896]            # PAT$4$V1
                        mov              rdx, qword ptr [r9 + 904]
                        cmp              eax, 8;                              jne   .Lx234_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx234_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx234_10
.Lx234_9:               xor              eax, eax
.Lx234_10:              test             rax, rax;                            jz    .Lx234_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx234_4]
                        lea              r11, [rip + .Lx234_5];               jmp   rax
.Lx234_4:                                                                     jmp   n224_match_arbno_α
.Lx234_5:               add              rsp, 16
                        add              rsp, 16;                             jmp   proc_PAT$4_ω
.Lx234_0:               push             r14
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
.Lx234_2:               test             rax, rax;                            je    .Lx234_3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx234_7]
                        lea              rdx, [rip + .Lx234_8];               jmp   rax
.Lx234_7:               mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx234_2
.Lx234_8:               mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx234_2
.Lx234_3:               add              rsp, 8
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
                        test             eax, eax;                            jns   .Lx234_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   proc_PAT$4_ω
.Lx234_240:             mov              r14d, eax
                        lea              rax, [rip + .Lx234_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n224_match_arbno_α
.Lx234_6:               add              rsp, 16
                        add              rsp, 16
                        add              rsp, 16;                             jmp   proc_PAT$4_ω
n223_match_defer_β:                                                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n224_match_arbno_α:     mov              dword ptr [rbp + -32], r14d
                        mov              dword ptr [rbp + -28], r14d;         jmp   n225_match_defer_α
n224_match_arbno_β:                                                           jmp   n227_match_defer_α
n224_match_arbno_as:    mov              eax, dword ptr [rbp + -28]
                        cmp              r14d, eax;                           je    n224_match_arbno_af
                        mov              dword ptr [rbp + -28], r14d;         jmp   n225_match_defer_α
n224_match_arbno_af:    mov              eax, dword ptr [rbp + -32]
                        cmp              r14d, eax;                           jne   n224_match_arbno_af
                                                                              jmp   proc_PAT$4_ω
#-----------------------------------------------------------------------------------------------------------------------
n225_match_defer_α:     sub              rsp, 16
                        mov              rax, qword ptr [r9 + 960]            # PAT$4$V5
                        mov              rdx, qword ptr [r9 + 968]
                        cmp              eax, 8;                              jne   .Lx237_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx237_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx237_10
.Lx237_9:               xor              eax, eax
.Lx237_10:              test             rax, rax;                            jz    .Lx237_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx237_4]
                        lea              r11, [rip + .Lx237_5];               jmp   rax
.Lx237_4:                                                                     jmp   n226_match_rpos_α
.Lx237_5:               add              rsp, 16;                             jmp   n224_match_arbno_β
.Lx237_0:               push             r14
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
.Lx237_2:               test             rax, rax;                            je    .Lx237_3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx237_7]
                        lea              rdx, [rip + .Lx237_8];               jmp   rax
.Lx237_7:               mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx237_2
.Lx237_8:               mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx237_2
.Lx237_3:               add              rsp, 8
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
                        test             eax, eax;                            jns   .Lx237_240
                        add              rsp, 16;                             jmp   n224_match_arbno_β
.Lx237_240:             mov              r14d, eax
                        lea              rax, [rip + .Lx237_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n226_match_rpos_α
.Lx237_6:               add              rsp, 16
                        add              rsp, 16;                             jmp   n224_match_arbno_β
n225_match_defer_β:                                                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n226_match_rpos_α:      mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   proc_PAT$4_ω
                                                                              jmp   proc_PAT$4_γ
#-----------------------------------------------------------------------------------------------------------------------
n227_match_defer_α:     mov              rax, qword ptr [r9 + 912]            # PAT$4$V2
                        mov              rdx, qword ptr [r9 + 920]
                        cmp              eax, 8;                              jne   .Lx239_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx239_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx239_10
.Lx239_9:               xor              eax, eax
.Lx239_10:              test             rax, rax;                            jz    .Lx239_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx239_4]
                        lea              r11, [rip + .Lx239_5];               jmp   rax
.Lx239_4:                                                                     jmp   n228_match_arbno_α
.Lx239_5:                                                                     jmp   n224_match_arbno_af
.Lx239_0:               push             r14
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
.Lx239_2:               test             rax, rax;                            je    .Lx239_3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx239_7]
                        lea              rdx, [rip + .Lx239_8];               jmp   rax
.Lx239_7:               mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx239_2
.Lx239_8:               mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx239_2
.Lx239_3:               add              rsp, 8
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
                        test             eax, eax;                            js    n224_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx239_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n228_match_arbno_α
.Lx239_6:               add              rsp, 16;                             jmp   n224_match_arbno_af
n227_match_defer_β:                                                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n228_match_arbno_α:     mov              dword ptr [rbp + -48], r14d
                        mov              dword ptr [rbp + -44], r14d;         jmp   n229_match_defer_α
n228_match_arbno_β:                                                           jmp   n231_match_defer_α
n228_match_arbno_as:    mov              eax, dword ptr [rbp + -44]
                        cmp              r14d, eax;                           je    n231_match_defer_β
                        mov              dword ptr [rbp + -44], r14d;         jmp   n229_match_defer_α
n228_match_arbno_af:    mov              eax, dword ptr [rbp + -48]
                        cmp              r14d, eax;                           jne   n231_match_defer_β
                                                                              jmp   n224_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n229_match_defer_α:     mov              rax, qword ptr [r9 + 928]            # PAT$4$V3
                        mov              rdx, qword ptr [r9 + 936]
                        cmp              eax, 8;                              jne   .Lx242_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx242_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx242_10
.Lx242_9:               xor              eax, eax
.Lx242_10:              test             rax, rax;                            jz    .Lx242_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx242_4]
                        lea              r11, [rip + .Lx242_5];               jmp   rax
.Lx242_4:                                                                     jmp   n230_match_defer_α
.Lx242_5:                                                                     jmp   n228_match_arbno_β
.Lx242_0:               push             r14
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
.Lx242_2:               test             rax, rax;                            je    .Lx242_3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx242_7]
                        lea              rdx, [rip + .Lx242_8];               jmp   rax
.Lx242_7:               mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx242_2
.Lx242_8:               mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx242_2
.Lx242_3:               add              rsp, 8
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
                        test             eax, eax;                            js    n228_match_arbno_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx242_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n230_match_defer_α
.Lx242_6:               add              rsp, 16;                             jmp   n228_match_arbno_β
n229_match_defer_β:                                                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n230_match_defer_α:     mov              rax, qword ptr [r9 + 944]            # PAT$4$V4
                        mov              rdx, qword ptr [r9 + 952]
                        cmp              eax, 8;                              jne   .Lx243_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx243_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx243_10
.Lx243_9:               xor              eax, eax
.Lx243_10:              test             rax, rax;                            jz    .Lx243_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx243_4]
                        lea              r11, [rip + .Lx243_5];               jmp   rax
.Lx243_4:                                                                     jmp   n224_match_arbno_as
.Lx243_5:                                                                     jmp   n224_match_arbno_af
.Lx243_0:               push             r14
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
.Lx243_2:               test             rax, rax;                            je    .Lx243_3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx243_7]
                        lea              rdx, [rip + .Lx243_8];               jmp   rax
.Lx243_7:               mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx243_2
.Lx243_8:               mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx243_2
.Lx243_3:               add              rsp, 8
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
                        test             eax, eax;                            js    n224_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx243_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n224_match_arbno_as
.Lx243_6:               add              rsp, 16;                             jmp   n224_match_arbno_af
n230_match_defer_β:                                                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n231_match_defer_α:     mov              rax, qword ptr [r9 + 624]            # group
                        mov              rdx, qword ptr [r9 + 632]
                        cmp              eax, 8;                              jne   .Lx244_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx244_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx244_10
.Lx244_9:               xor              eax, eax
.Lx244_10:              test             rax, rax;                            jz    .Lx244_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx244_4]
                        lea              r11, [rip + .Lx244_5];               jmp   rax
.Lx244_4:                                                                     jmp   n228_match_arbno_as
.Lx244_5:                                                                     jmp   n228_match_arbno_af
.Lx244_0:               push             r14
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
.Lx244_2:               test             rax, rax;                            je    .Lx244_3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx244_7]
                        lea              rdx, [rip + .Lx244_8];               jmp   rax
.Lx244_7:               mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx244_2
.Lx244_8:               mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx244_2
.Lx244_3:               add              rsp, 8
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
                        test             eax, eax;                            js    n228_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx244_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n228_match_arbno_as
.Lx244_6:               add              rsp, 16;                             jmp   n228_match_arbno_af
n231_match_defer_β:                                                           jmp   qword ptr [rsp]
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
                        mov              esi, 400
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
                        mov              esi, 336
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
.Lgvan52:               .string          "PAT$3$V3"
.Lgvan53:               .string          "PAT$3$V4"
.Lgvan54:               .string          "PAT$3$V5"
.Lgvan55:               .string          "PAT$4$V0"
.Lgvan56:               .string          "PAT$4$V1"
.Lgvan57:               .string          "PAT$4$V2"
.Lgvan58:               .string          "PAT$4$V3"
.Lgvan59:               .string          "PAT$4$V4"
.Lgvan60:               .string          "PAT$4$V5"
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
                        .quad            .Lgvan59
                        .quad            .Lgvan60
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 61
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 61
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
n245_statement_begin_α:                                                       jmp   n246_keyword_snobol4_α
n245_statement_begin_β:                                                       jmp   n254_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n246_keyword_snobol4_α: sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx789_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read_snobol4@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n247_match_begin_α
.Lx789_0:               .quad            .Lx789_0_s
.Lx789_0_s:             .string          "ALPHABET"
#-----------------------------------------------------------------------------------------------------------------------
n247_match_begin_α:     mov              rdi, qword ptr [rsp + 0]             # keyword_snobol4
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
.Lx791_0:               mov              r14d, dword ptr [rbp + -40];         jmp   n248_match_pos_α
n247_match_begin_β:     lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx791_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx791_1
                                                                              jmp   .Lx791_0
.Lx791_1:
n247_match_begin_af:    mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_match_ctx_restore@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   n253_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n248_match_pos_α:       mov              rax, 10
                        cmp              r14d, eax;                           jne   n247_match_begin_β
                                                                              jmp   n249_match_assign_save_α
n248_match_pos_β:                                                             jmp   n247_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n249_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d;           jmp   n250_match_len_α
n249_match_assign_save_β:
                        add              rsp, 16;                             jmp   n247_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n250_match_len_α:       mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jle   .Lx795_240
                        add              rsp, 16;                             jmp   n247_match_begin_β
.Lx795_240:             add              r14d, 1;                             jmp   n251_match_assign_cond_α
n250_match_len_β:       sub              r14d, 1
                        add              rsp, 16;                             jmp   n247_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n251_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 0]
                        lea              rcx, [rip + .S17]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n252_match_end_α
n251_match_assign_cond_β:
                        sub              r12, 24;                             jmp   n250_match_len_β
#-----------------------------------------------------------------------------------------------------------------------
n252_match_end_α:       push             r14
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
.Lx799_1:               test             rax, rax;                            je    .Lx799_2
                        lea              rcx, [rip + .Lx799_3]
                        lea              rdx, [rip + .Lx799_4];               jmp   rax
.Lx799_3:               mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx799_1
.Lx799_4:               mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx799_1
.Lx799_2:               call             rt_dcap_end_ok_close@PLT
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
                        pop              rbp;                                 jmp   n253_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n253_statement_end_α:   add              rsp, 16;                             jmp   n254_statement_begin_α
#=======================================================================================================================
#                DATA('list(head,tail)')
#-----------------------------------------------------------------------------------------------------------------------
n254_statement_begin_α:                                                       jmp   n255_lit_string_α
n254_statement_begin_β:                                                       jmp   n258_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n255_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Lx804_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n256_call_α
.Lx804_0:               .quad            .Lx804_0_s
.Lx804_0_s:             .string          "list(head,tail)"
#-----------------------------------------------------------------------------------------------------------------------
n256_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd806:            .string          "DATA"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd806]
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
                        cmp              eax, 104;                            jne   .Lx805_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n254_statement_begin_β
.Lx805_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n257_statement_end_α
n256_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n254_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n257_statement_end_α:   add              rsp, 32;                             jmp   n258_statement_begin_α
#=======================================================================================================================
#                DEFINE('list_reverse(lst)acc,cur')           :(list_reverse_end)
#-----------------------------------------------------------------------------------------------------------------------
n258_statement_begin_α:                                                       jmp   n259_func_activate_α
n258_statement_begin_β:                                                       jmp   n289_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n259_func_activate_α:   mov              rdi, qword ptr [rip + .Lx812_0]
                        mov              rsi, qword ptr [rip + .Lx812_1]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n260_statement_end_α
n259_func_activate_β:                                                         jmp   n258_statement_begin_β
.Lx812_0:               .quad            .Lx812_0_s
.Lx812_0_s:             .string          "list_reverse"
.Lx812_1:               .quad            .Lx812_1_s
.Lx812_1_s:             .string          "lst,acc,cur"
#-----------------------------------------------------------------------------------------------------------------------
n260_statement_end_α:                                                         jmp   n289_statement_begin_α
#=======================================================================================================================
# list_reverse   acc            =
#-----------------------------------------------------------------------------------------------------------------------
list_reverse_body:                                                            jmp   n262_lit_string_α
n261_statement_begin_β:                                                       jmp   n265_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n262_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx817_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n263_assign_α
.Lx817_0:               .quad            .Lx817_0_s
.Lx817_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n263_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # acc
                        mov              qword ptr [r9 + 40], rdx;            jmp   n264_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n264_statement_end_α:   add              rsp, 16;                             jmp   n265_statement_begin_α
#=======================================================================================================================
#                cur            =  lst
#-----------------------------------------------------------------------------------------------------------------------
n265_statement_begin_α:                                                       jmp   n266_var_α
n265_statement_begin_β:                                                       jmp   n269_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n266_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # lst
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n267_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n267_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # cur
                        mov              qword ptr [r9 + 56], rdx;            jmp   n268_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n268_statement_end_α:   add              rsp, 16;                             jmp   n269_statement_begin_α
#=======================================================================================================================
# lr1            DIFFER(cur)                                  :F(lr_done)
#-----------------------------------------------------------------------------------------------------------------------
n269_statement_begin_α:                                                       jmp   n270_var_α
n269_statement_begin_β:                                                       jmp   n285_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n270_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # cur
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n271_call_α
#-----------------------------------------------------------------------------------------------------------------------
n271_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd831:            .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd831]
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
                        cmp              eax, 104;                            jne   .Lx830_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n269_statement_begin_β
.Lx830_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n272_statement_end_α
n271_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n269_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n272_statement_end_α:   add              rsp, 32;                             jmp   n273_statement_begin_α
#=======================================================================================================================
#                acc            =  list(head(cur), acc)
#-----------------------------------------------------------------------------------------------------------------------
n273_statement_begin_α:                                                       jmp   n274_var_α
n273_statement_begin_β:                                                       jmp   n280_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n274_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # cur
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n275_call_α
#-----------------------------------------------------------------------------------------------------------------------
n275_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd838:            .string          "head"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd838]
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
                        cmp              eax, 104;                            jne   .Lx837_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n273_statement_begin_β
.Lx837_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n276_var_α
n275_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n273_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n276_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # acc
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n277_call_α
n276_var_β:             add              rsp, 16
                        add              rsp, 32;                             jmp   n273_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n277_call_α:            sub              rsp, 16
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
.Lrkfnzd841:            .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd841]
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
                        cmp              eax, 104;                            jne   .Lx840_240
                        add              rsp, 16;                             jmp   n276_var_β
.Lx840_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n278_assign_α
n277_call_β:            add              rsp, 16;                             jmp   n276_var_β
#-----------------------------------------------------------------------------------------------------------------------
n278_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # acc
                        mov              qword ptr [r9 + 40], rdx;            jmp   n279_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n279_statement_end_α:   add              rsp, 64;                             jmp   n280_statement_begin_α
#=======================================================================================================================
#                cur            =  tail(cur)                  :(lr1)
#-----------------------------------------------------------------------------------------------------------------------
n280_statement_begin_α:                                                       jmp   n281_var_α
n280_statement_begin_β:                                                       jmp   n269_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n281_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # cur
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n282_call_α
#-----------------------------------------------------------------------------------------------------------------------
n282_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd849:            .string          "tail"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd849]
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
                        cmp              eax, 104;                            jne   .Lx848_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n280_statement_begin_β
.Lx848_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n283_assign_α
n282_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n280_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n283_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # cur
                        mov              qword ptr [r9 + 56], rdx;            jmp   n284_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n284_statement_end_α:   add              rsp, 32;                             jmp   n269_statement_begin_α
#=======================================================================================================================
# lr_done        list_reverse   =  acc                        :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n285_statement_begin_α:                                                       jmp   n286_var_α
n285_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n286_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # acc
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n287_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n287_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # list_reverse
                        mov              qword ptr [r9 + 8], rdx;             jmp   n288_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n288_statement_end_α:   add              rsp, 16;                             jmp   RETURN
#=======================================================================================================================
# list_reverse_end  <stmt 10, line 19: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n289_statement_begin_α:                                                       jmp   n290_statement_end_α
n289_statement_begin_β:                                                       jmp   n291_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n290_statement_end_α:                                                         jmp   n291_statement_begin_α
#=======================================================================================================================
#                DEFINE('stk_push_frame(v)')                  :(stk_push_frame_end)
#-----------------------------------------------------------------------------------------------------------------------
n291_statement_begin_α:                                                       jmp   n292_func_activate_α
n291_statement_begin_β:                                                       jmp   n307_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n292_func_activate_α:   mov              rdi, qword ptr [rip + .Lx866_0]
                        mov              rsi, qword ptr [rip + .Lx866_1]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n293_statement_end_α
n292_func_activate_β:                                                         jmp   n291_statement_begin_β
.Lx866_0:               .quad            .Lx866_0_s
.Lx866_0_s:             .string          "stk_push_frame"
.Lx866_1:               .quad            .Lx866_1_s
.Lx866_1_s:             .string          "v"
#-----------------------------------------------------------------------------------------------------------------------
n293_statement_end_α:                                                         jmp   n307_statement_begin_α
#=======================================================================================================================
# stk_push_frame stk            =  list(list(v,), stk)
#-----------------------------------------------------------------------------------------------------------------------
stk_push_frame_body:                                                          jmp   n295_var_α
n294_statement_begin_β:                                                       jmp   n302_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n295_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # v
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n296_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n296_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx872_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n297_call_α
n296_lit_string_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n294_statement_begin_β
.Lx872_0:               .quad            .Lx872_0_s
.Lx872_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n297_call_α:            sub              rsp, 16
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
.Lrkfnzd874:            .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd874]
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
                        cmp              eax, 104;                            jne   .Lx873_240
                        add              rsp, 16;                             jmp   n296_lit_string_β
.Lx873_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n298_var_α
n297_call_β:            add              rsp, 16;                             jmp   n296_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n298_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 544]            # stk
                        mov              rdx, qword ptr [r9 + 552]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n299_call_α
n298_var_β:             add              rsp, 32;                             jmp   n296_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n299_call_α:            sub              rsp, 16
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
.Lrkfnzd877:            .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd877]
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
                        cmp              eax, 104;                            jne   .Lx876_240
                        add              rsp, 16;                             jmp   n298_var_β
.Lx876_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n300_assign_α
n299_call_β:            add              rsp, 16;                             jmp   n298_var_β
#-----------------------------------------------------------------------------------------------------------------------
n300_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 544], rax            # stk
                        mov              qword ptr [r9 + 552], rdx;           jmp   n301_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n301_statement_end_α:   add              rsp, 80;                             jmp   n302_statement_begin_α
#=======================================================================================================================
#                stk_push_frame =  .dummy                     :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n302_statement_begin_α:                                                       jmp   n303_lit_string_α
n302_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n303_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx883_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n304_call_α
.Lx883_0:               .quad            .Lx883_0_s
.Lx883_0_s:             .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n304_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd885:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd885]
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
                        cmp              eax, 104;                            jne   .Lx884_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n302_statement_begin_β
.Lx884_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n305_assign_α
n304_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n302_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n305_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # stk_push_frame
                        mov              qword ptr [r9 + 72], rdx;            jmp   n306_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n306_statement_end_α:   add              rsp, 32;                             jmp   RETURN
#=======================================================================================================================
# stk_push_frame_end  <stmt 14, line 24: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n307_statement_begin_α:                                                       jmp   n308_statement_end_α
n307_statement_begin_β:                                                       jmp   n309_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n308_statement_end_α:                                                         jmp   n309_statement_begin_α
#=======================================================================================================================
#                DEFINE('stk_push_item(v)')                   :(stk_push_item_end)
#-----------------------------------------------------------------------------------------------------------------------
n309_statement_begin_α:                                                       jmp   n310_func_activate_α
n309_statement_begin_β:                                                       jmp   n326_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n310_func_activate_α:   mov              rdi, qword ptr [rip + .Lx896_0]
                        mov              rsi, qword ptr [rip + .Lx896_1]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n311_statement_end_α
n310_func_activate_β:                                                         jmp   n309_statement_begin_β
.Lx896_0:               .quad            .Lx896_0_s
.Lx896_0_s:             .string          "stk_push_item"
.Lx896_1:               .quad            .Lx896_1_s
.Lx896_1_s:             .string          "v"
#-----------------------------------------------------------------------------------------------------------------------
n311_statement_end_α:                                                         jmp   n326_statement_begin_α
#=======================================================================================================================
# stk_push_item  head(stk)      =  list(v, head(stk))
#-----------------------------------------------------------------------------------------------------------------------
stk_push_item_body:                                                           jmp   n313_var_α
n312_statement_begin_β:                                                       jmp   n321_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n313_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 544]            # stk
                        mov              rdx, qword ptr [r9 + 552]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n314_field_var_α
#-----------------------------------------------------------------------------------------------------------------------
n314_field_var_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx902_0]
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
                        cmp              eax, 104;                            jne   .Lx902_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n312_statement_begin_β
.Lx902_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n315_var_α
n314_field_var_β:       add              rsp, 16
                        add              rsp, 16;                             jmp   n312_statement_begin_β
.Lx902_0:               .quad            .Lx902_0_s
.Lx902_0_s:             .string          "head"
#-----------------------------------------------------------------------------------------------------------------------
n315_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # v
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n316_var_α
n315_var_β:             add              rsp, 16;                             jmp   n314_field_var_β
#-----------------------------------------------------------------------------------------------------------------------
n316_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 544]            # stk
                        mov              rdx, qword ptr [r9 + 552]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n317_call_α
n316_var_β:             add              rsp, 16;                             jmp   n315_var_β
#-----------------------------------------------------------------------------------------------------------------------
n317_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd906:            .string          "head"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd906]
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
                        cmp              eax, 104;                            jne   .Lx905_240
                        add              rsp, 16;                             jmp   n316_var_β
.Lx905_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n318_call_α
n317_call_β:            add              rsp, 16;                             jmp   n316_var_β
#-----------------------------------------------------------------------------------------------------------------------
n318_call_α:            sub              rsp, 16
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
.Lrkfnzd908:            .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd908]
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
                        cmp              eax, 104;                            jne   .Lx907_240
                        add              rsp, 32;                             jmp   n316_var_β
.Lx907_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n319_assign_var_α
n318_call_β:            add              rsp, 32;                             jmp   n316_var_β
#-----------------------------------------------------------------------------------------------------------------------
n319_assign_var_α:      sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx909_240
                        add              rsp, 48;                             jmp   n316_var_β
.Lx909_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n320_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n320_statement_end_α:   add              rsp, 112;                            jmp   n321_statement_begin_α
#=======================================================================================================================
#                stk_push_item  =  .dummy                     :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n321_statement_begin_α:                                                       jmp   n322_lit_string_α
n321_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n322_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx914_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n323_call_α
.Lx914_0:               .quad            .Lx914_0_s
.Lx914_0_s:             .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n323_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd916:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd916]
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
                        cmp              eax, 104;                            jne   .Lx915_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n321_statement_begin_β
.Lx915_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n324_assign_α
n323_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n321_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n324_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # stk_push_item
                        mov              qword ptr [r9 + 104], rdx;           jmp   n325_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n325_statement_end_α:   add              rsp, 32;                             jmp   RETURN
#=======================================================================================================================
# stk_push_item_end  <stmt 18, line 29: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n326_statement_begin_α:                                                       jmp   n327_statement_end_α
n326_statement_begin_β:                                                       jmp   n328_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n327_statement_end_α:                                                         jmp   n328_statement_begin_α
#=======================================================================================================================
#                DEFINE('stk_pop_into_parent()child')         :(stk_pop_into_parent_end)
#-----------------------------------------------------------------------------------------------------------------------
n328_statement_begin_α:                                                       jmp   n329_func_activate_α
n328_statement_begin_β:                                                       jmp   n358_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n329_func_activate_α:   mov              rdi, qword ptr [rip + .Lx927_0]
                        mov              rsi, qword ptr [rip + .Lx927_1]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n330_statement_end_α
n329_func_activate_β:                                                         jmp   n328_statement_begin_β
.Lx927_0:               .quad            .Lx927_0_s
.Lx927_0_s:             .string          "stk_pop_into_parent"
.Lx927_1:               .quad            .Lx927_1_s
.Lx927_1_s:             .string          "child"
#-----------------------------------------------------------------------------------------------------------------------
n330_statement_end_α:                                                         jmp   n358_statement_begin_α
#=======================================================================================================================
# stk_pop_into_parent  <stmt 20, line 32: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
stk_pop_into_parent_body:
                                                                              jmp   n332_statement_end_α
n331_statement_begin_β:                                                       jmp   n333_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n332_statement_end_α:                                                         jmp   n333_statement_begin_α
#=======================================================================================================================
#                child          =  list_reverse(head(stk))
#-----------------------------------------------------------------------------------------------------------------------
n333_statement_begin_α:                                                       jmp   n334_var_α
n333_statement_begin_β:                                                       jmp   n339_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n334_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 544]            # stk
                        mov              rdx, qword ptr [r9 + 552]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n335_call_α
#-----------------------------------------------------------------------------------------------------------------------
n335_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd938:            .string          "head"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd938]
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
                        cmp              eax, 104;                            jne   .Lx937_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n333_statement_begin_β
.Lx937_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n336_call_α
n335_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n333_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n336_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig940z]
                        lea              rax, [rip + list_reverse_alpha];     jmp   rax
.Lsig940z:              .quad            1
                        .quad            .Lx940_2
                        .quad            .Lx940_2
                        .quad            16
.Lx940_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx940_29
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
.Lx940_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx940_240
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n333_statement_begin_β
.Lx940_240:                                                                   jmp   n337_assign_α
n336_call_β:                                                                  jmp   n333_statement_begin_β
.Lx940_0:               .quad            .Lx940_0_s
.Lx940_0_s:             .string          "list_reverse"
#-----------------------------------------------------------------------------------------------------------------------
n337_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # child
                        mov              qword ptr [r9 + 136], rdx;           jmp   n338_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n338_statement_end_α:   add              rsp, 48;                             jmp   n339_statement_begin_α
#=======================================================================================================================
#                stk            =  tail(stk)
#-----------------------------------------------------------------------------------------------------------------------
n339_statement_begin_α:                                                       jmp   n340_var_α
n339_statement_begin_β:                                                       jmp   n344_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n340_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 544]            # stk
                        mov              rdx, qword ptr [r9 + 552]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n341_call_α
#-----------------------------------------------------------------------------------------------------------------------
n341_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd948:            .string          "tail"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd948]
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
                        cmp              eax, 104;                            jne   .Lx947_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n339_statement_begin_β
.Lx947_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n342_assign_α
n341_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n339_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n342_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 544], rax            # stk
                        mov              qword ptr [r9 + 552], rdx;           jmp   n343_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n343_statement_end_α:   add              rsp, 32;                             jmp   n344_statement_begin_α
#=======================================================================================================================
#                head(stk)      =  list(child, head(stk))
#-----------------------------------------------------------------------------------------------------------------------
n344_statement_begin_α:                                                       jmp   n345_var_α
n344_statement_begin_β:                                                       jmp   n353_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n345_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 544]            # stk
                        mov              rdx, qword ptr [r9 + 552]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n346_field_var_α
#-----------------------------------------------------------------------------------------------------------------------
n346_field_var_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx955_0]
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
                        cmp              eax, 104;                            jne   .Lx955_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n344_statement_begin_β
.Lx955_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n347_var_α
n346_field_var_β:       add              rsp, 16
                        add              rsp, 16;                             jmp   n344_statement_begin_β
.Lx955_0:               .quad            .Lx955_0_s
.Lx955_0_s:             .string          "head"
#-----------------------------------------------------------------------------------------------------------------------
n347_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 128]            # child
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n348_var_α
n347_var_β:             add              rsp, 16;                             jmp   n346_field_var_β
#-----------------------------------------------------------------------------------------------------------------------
n348_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 544]            # stk
                        mov              rdx, qword ptr [r9 + 552]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n349_call_α
n348_var_β:             add              rsp, 16;                             jmp   n347_var_β
#-----------------------------------------------------------------------------------------------------------------------
n349_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd959:            .string          "head"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd959]
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
                        cmp              eax, 104;                            jne   .Lx958_240
                        add              rsp, 16;                             jmp   n348_var_β
.Lx958_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n350_call_α
n349_call_β:            add              rsp, 16;                             jmp   n348_var_β
#-----------------------------------------------------------------------------------------------------------------------
n350_call_α:            sub              rsp, 16
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
.Lrkfnzd961:            .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd961]
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
                        cmp              eax, 104;                            jne   .Lx960_240
                        add              rsp, 32;                             jmp   n348_var_β
.Lx960_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n351_assign_var_α
n350_call_β:            add              rsp, 32;                             jmp   n348_var_β
#-----------------------------------------------------------------------------------------------------------------------
n351_assign_var_α:      sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx962_240
                        add              rsp, 48;                             jmp   n348_var_β
.Lx962_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n352_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n352_statement_end_α:   add              rsp, 112;                            jmp   n353_statement_begin_α
#=======================================================================================================================
#                stk_pop_into_parent =  .dummy                :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n353_statement_begin_α:                                                       jmp   n354_lit_string_α
n353_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n354_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx967_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n355_call_α
.Lx967_0:               .quad            .Lx967_0_s
.Lx967_0_s:             .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n355_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd969:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd969]
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
                        cmp              eax, 104;                            jne   .Lx968_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n353_statement_begin_β
.Lx968_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n356_assign_α
n355_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n353_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n356_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # stk_pop_into_parent
                        mov              qword ptr [r9 + 120], rdx;           jmp   n357_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n357_statement_end_α:   add              rsp, 32;                             jmp   RETURN
#=======================================================================================================================
# stk_pop_into_parent_end  <stmt 25, line 37: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n358_statement_begin_α:                                                       jmp   n359_statement_end_α
n358_statement_begin_β:                                                       jmp   n360_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n359_statement_end_α:                                                         jmp   n360_statement_begin_α
#=======================================================================================================================
#                DEFINE('stk_pop_final(var)')                 :(stk_pop_final_end)
#-----------------------------------------------------------------------------------------------------------------------
n360_statement_begin_α:                                                       jmp   n361_func_activate_α
n360_statement_begin_β:                                                       jmp   n381_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n361_func_activate_α:   mov              rdi, qword ptr [rip + .Lx980_0]
                        mov              rsi, qword ptr [rip + .Lx980_1]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n362_statement_end_α
n361_func_activate_β:                                                         jmp   n360_statement_begin_β
.Lx980_0:               .quad            .Lx980_0_s
.Lx980_0_s:             .string          "stk_pop_final"
.Lx980_1:               .quad            .Lx980_1_s
.Lx980_1_s:             .string          "var"
#-----------------------------------------------------------------------------------------------------------------------
n362_statement_end_α:                                                         jmp   n381_statement_begin_α
#=======================================================================================================================
# stk_pop_final  $var           =  list_reverse(head(stk))
#-----------------------------------------------------------------------------------------------------------------------
stk_pop_final_body:                                                           jmp   n364_var_α
n363_statement_begin_β:                                                       jmp   n371_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n364_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # var
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n365_call_α
#-----------------------------------------------------------------------------------------------------------------------
n365_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd987:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd987]
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
                        cmp              eax, 104;                            jne   .Lx986_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n363_statement_begin_β
.Lx986_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n366_var_α
n365_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n363_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n366_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 544]            # stk
                        mov              rdx, qword ptr [r9 + 552]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n367_call_α
n366_var_β:             add              rsp, 16
                        add              rsp, 32;                             jmp   n363_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n367_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd990:            .string          "head"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd990]
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
                        cmp              eax, 104;                            jne   .Lx989_240
                        add              rsp, 16;                             jmp   n366_var_β
.Lx989_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n368_call_α
n367_call_β:            add              rsp, 16;                             jmp   n366_var_β
#-----------------------------------------------------------------------------------------------------------------------
n368_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig992z]
                        lea              rax, [rip + list_reverse_alpha];     jmp   rax
.Lsig992z:              .quad            1
                        .quad            .Lx992_2
                        .quad            .Lx992_2
                        .quad            16
.Lx992_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx992_29
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
.Lx992_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx992_240
                        add              rsp, 32;                             jmp   n366_var_β
.Lx992_240:                                                                   jmp   n369_assign_var_α
n368_call_β:                                                                  jmp   n366_var_β
.Lx992_0:               .quad            .Lx992_0_s
.Lx992_0_s:             .string          "list_reverse"
#-----------------------------------------------------------------------------------------------------------------------
n369_assign_var_α:      sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx993_240
                        add              rsp, 48;                             jmp   n366_var_β
.Lx993_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n370_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n370_statement_end_α:   add              rsp, 96;                             jmp   n371_statement_begin_α
#=======================================================================================================================
#                stk            =  tail(stk)
#-----------------------------------------------------------------------------------------------------------------------
n371_statement_begin_α:                                                       jmp   n372_var_α
n371_statement_begin_β:                                                       jmp   n376_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n372_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 544]            # stk
                        mov              rdx, qword ptr [r9 + 552]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n373_call_α
#-----------------------------------------------------------------------------------------------------------------------
n373_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1000:           .string          "tail"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1000]
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
                        cmp              eax, 104;                            jne   .Lx999_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n371_statement_begin_β
.Lx999_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n374_assign_α
n373_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n371_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n374_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 544], rax            # stk
                        mov              qword ptr [r9 + 552], rdx;           jmp   n375_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n375_statement_end_α:   add              rsp, 32;                             jmp   n376_statement_begin_α
#=======================================================================================================================
#                stk_pop_final  =  .dummy                     :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n376_statement_begin_α:                                                       jmp   n377_lit_string_α
n376_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n377_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1006_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n378_call_α
.Lx1006_0:              .quad            .Lx1006_0_s
.Lx1006_0_s:            .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n378_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1008:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1008]
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
                        cmp              eax, 104;                            jne   .Lx1007_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n376_statement_begin_β
.Lx1007_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n379_assign_α
n378_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n376_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n379_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # stk_pop_final
                        mov              qword ptr [r9 + 152], rdx;           jmp   n380_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n380_statement_end_α:   add              rsp, 32;                             jmp   RETURN
#=======================================================================================================================
# stk_pop_final_end  <stmt 30, line 43: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n381_statement_begin_α:                                                       jmp   n382_statement_end_α
n381_statement_begin_β:                                                       jmp   n383_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n382_statement_end_α:                                                         jmp   n383_statement_begin_α
#=======================================================================================================================
#                DEFINE('init_list(v)')
#-----------------------------------------------------------------------------------------------------------------------
n383_statement_begin_α:                                                       jmp   n384_func_activate_α
n383_statement_begin_β:                                                       jmp   n386_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n384_func_activate_α:   mov              rdi, qword ptr [rip + .Lx1019_0]
                        mov              rsi, qword ptr [rip + .Lx1019_1]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n385_statement_end_α
n384_func_activate_β:                                                         jmp   n383_statement_begin_β
.Lx1019_0:              .quad            .Lx1019_0_s
.Lx1019_0_s:            .string          "init_list"
.Lx1019_1:              .quad            .Lx1019_1_s
.Lx1019_1_s:            .string          "v"
#-----------------------------------------------------------------------------------------------------------------------
n385_statement_end_α:                                                         jmp   n386_statement_begin_α
#=======================================================================================================================
#                DEFINE('Init_list(vs)')                      :(init_list_end)
#-----------------------------------------------------------------------------------------------------------------------
n386_statement_begin_α:                                                       jmp   n387_func_activate_α
n386_statement_begin_β:                                                       jmp   n413_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n387_func_activate_α:   mov              rdi, qword ptr [rip + .Lx1025_0]
                        mov              rsi, qword ptr [rip + .Lx1025_1]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n388_statement_end_α
n387_func_activate_β:                                                         jmp   n386_statement_begin_β
.Lx1025_0:              .quad            .Lx1025_0_s
.Lx1025_0_s:            .string          "Init_list"
.Lx1025_1:              .quad            .Lx1025_1_s
.Lx1025_1_s:            .string          "vs"
#-----------------------------------------------------------------------------------------------------------------------
n388_statement_end_α:                                                         jmp   n413_statement_begin_α
#=======================================================================================================================
# init_list      $v             =
#-----------------------------------------------------------------------------------------------------------------------
init_list_body:                                                               jmp   n390_var_α
n389_statement_begin_β:                                                       jmp   n395_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n390_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # v
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n391_call_α
#-----------------------------------------------------------------------------------------------------------------------
n391_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1032:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1032]
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
                        cmp              eax, 104;                            jne   .Lx1031_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n389_statement_begin_β
.Lx1031_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n392_lit_string_α
n391_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n389_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n392_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx1033_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n393_assign_var_α
n392_lit_string_β:      add              rsp, 16
                        add              rsp, 32;                             jmp   n389_statement_begin_β
.Lx1033_0:              .quad            .Lx1033_0_s
.Lx1033_0_s:            .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n393_assign_var_α:      sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx1034_240
                        add              rsp, 16;                             jmp   n392_lit_string_β
.Lx1034_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n394_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n394_statement_end_α:   add              rsp, 64;                             jmp   n395_statement_begin_α
#=======================================================================================================================
#                stk            =
#-----------------------------------------------------------------------------------------------------------------------
n395_statement_begin_α:                                                       jmp   n396_lit_string_α
n395_statement_begin_β:                                                       jmp   n399_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n396_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx1039_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n397_assign_α
.Lx1039_0:              .quad            .Lx1039_0_s
.Lx1039_0_s:            .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n397_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 544], rax            # stk
                        mov              qword ptr [r9 + 552], rdx;           jmp   n398_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n398_statement_end_α:   add              rsp, 16;                             jmp   n399_statement_begin_α
#=======================================================================================================================
#                init_list      =  .dummy                     :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n399_statement_begin_α:                                                       jmp   n400_lit_string_α
n399_statement_begin_β:                                                       jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n400_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1045_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n401_call_α
.Lx1045_0:              .quad            .Lx1045_0_s
.Lx1045_0_s:            .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n401_call_α:            sub              rsp, 16
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
                        add              rsp, 16;                             jmp   n399_statement_begin_β
.Lx1046_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n402_assign_α
n401_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n399_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n402_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # init_list
                        mov              qword ptr [r9 + 184], rdx;           jmp   n403_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n403_statement_end_α:   add              rsp, 32;                             jmp   NRETURN
#=======================================================================================================================
# Init_list      Init_list      =  EVAL("epsilon . *init_list(" vs ")")  :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
Init_list_body:                                                               jmp   n405_lit_string_α
n404_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n405_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 21
                        mov              rax, qword ptr [rip + .Lx1053_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n406_var_α
.Lx1053_0:              .quad            .Lx1053_0_s
.Lx1053_0_s:            .string          "epsilon . *init_list("
#-----------------------------------------------------------------------------------------------------------------------
n406_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 208]            # vs
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n407_binop_α
n406_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n404_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n407_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n408_lit_string_α
n407_binop_β:           add              rsp, 16;                             jmp   n406_var_β
#-----------------------------------------------------------------------------------------------------------------------
n408_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1056_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n409_binop_α
n408_lit_string_β:      add              rsp, 16;                             jmp   n407_binop_β
.Lx1056_0:              .quad            .Lx1056_0_s
.Lx1056_0_s:            .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
n409_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n410_call_α
n409_binop_β:           add              rsp, 16;                             jmp   n408_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n410_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1059:           .string          "EVAL"
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
                        add              rsp, 16;                             jmp   n409_binop_β
.Lx1058_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n411_assign_α
n410_call_β:            add              rsp, 16;                             jmp   n409_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n411_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # Init_list
                        mov              qword ptr [r9 + 200], rdx;           jmp   n412_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n412_statement_end_α:   add              rsp, 96;                             jmp   RETURN
#=======================================================================================================================
# init_list_end  <stmt 37, line 51: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n413_statement_begin_α:                                                       jmp   n414_statement_end_α
n413_statement_begin_β:                                                       jmp   n415_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n414_statement_end_α:                                                         jmp   n415_statement_begin_α
#=======================================================================================================================
#                DEFINE('push_list(v)')
#-----------------------------------------------------------------------------------------------------------------------
n415_statement_begin_α:                                                       jmp   n416_func_activate_α
n415_statement_begin_β:                                                       jmp   n418_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n416_func_activate_α:   mov              rdi, qword ptr [rip + .Lx1070_0]
                        mov              rsi, qword ptr [rip + .Lx1070_1]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n417_statement_end_α
n416_func_activate_β:                                                         jmp   n415_statement_begin_β
.Lx1070_0:              .quad            .Lx1070_0_s
.Lx1070_0_s:            .string          "push_list"
.Lx1070_1:              .quad            .Lx1070_1_s
.Lx1070_1_s:            .string          "v"
#-----------------------------------------------------------------------------------------------------------------------
n417_statement_end_α:                                                         jmp   n418_statement_begin_α
#=======================================================================================================================
#                DEFINE('Push_list(vs)')                      :(push_list_end)
#-----------------------------------------------------------------------------------------------------------------------
n418_statement_begin_α:                                                       jmp   n419_func_activate_α
n418_statement_begin_β:                                                       jmp   n440_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n419_func_activate_α:   mov              rdi, qword ptr [rip + .Lx1076_0]
                        mov              rsi, qword ptr [rip + .Lx1076_1]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n420_statement_end_α
n419_func_activate_β:                                                         jmp   n418_statement_begin_β
.Lx1076_0:              .quad            .Lx1076_0_s
.Lx1076_0_s:            .string          "Push_list"
.Lx1076_1:              .quad            .Lx1076_1_s
.Lx1076_1_s:            .string          "vs"
#-----------------------------------------------------------------------------------------------------------------------
n420_statement_end_α:                                                         jmp   n440_statement_begin_α
#=======================================================================================================================
# push_list      dummy          =  stk_push_frame(v)
#-----------------------------------------------------------------------------------------------------------------------
push_list_body:                                                               jmp   n422_var_α
n421_statement_begin_β:                                                       jmp   n426_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n422_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # v
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n423_call_α
#-----------------------------------------------------------------------------------------------------------------------
n423_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1083z]
                        lea              rax, [rip + stk_push_frame_alpha];   jmp   rax
.Lsig1083z:             .quad            1
                        .quad            .Lx1083_2
                        .quad            .Lx1083_2
                        .quad            16
.Lx1083_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1083_29
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
.Lx1083_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx1083_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n421_statement_begin_β
.Lx1083_240:                                                                  jmp   n424_assign_α
n423_call_β:                                                                  jmp   n421_statement_begin_β
.Lx1083_0:              .quad            .Lx1083_0_s
.Lx1083_0_s:            .string          "stk_push_frame"
#-----------------------------------------------------------------------------------------------------------------------
n424_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 560], rax            # dummy
                        mov              qword ptr [r9 + 568], rdx;           jmp   n425_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n425_statement_end_α:   add              rsp, 32;                             jmp   n426_statement_begin_α
#=======================================================================================================================
#                push_list      =  .dummy                     :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n426_statement_begin_α:                                                       jmp   n427_lit_string_α
n426_statement_begin_β:                                                       jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n427_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1089_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n428_call_α
.Lx1089_0:              .quad            .Lx1089_0_s
.Lx1089_0_s:            .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n428_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1091:           .string          "SNO$NAME"
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
                        add              rsp, 16;                             jmp   n426_statement_begin_β
.Lx1090_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n429_assign_α
n428_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n426_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n429_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 224], rax            # push_list
                        mov              qword ptr [r9 + 232], rdx;           jmp   n430_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n430_statement_end_α:   add              rsp, 32;                             jmp   NRETURN
#=======================================================================================================================
# Push_list      Push_list      =  EVAL("epsilon . *push_list(" vs ")")  :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
Push_list_body:                                                               jmp   n432_lit_string_α
n431_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n432_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 21
                        mov              rax, qword ptr [rip + .Lx1097_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n433_var_α
.Lx1097_0:              .quad            .Lx1097_0_s
.Lx1097_0_s:            .string          "epsilon . *push_list("
#-----------------------------------------------------------------------------------------------------------------------
n433_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 208]            # vs
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n434_binop_α
n433_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n431_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n434_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n435_lit_string_α
n434_binop_β:           add              rsp, 16;                             jmp   n433_var_β
#-----------------------------------------------------------------------------------------------------------------------
n435_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1100_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n436_binop_α
n435_lit_string_β:      add              rsp, 16;                             jmp   n434_binop_β
.Lx1100_0:              .quad            .Lx1100_0_s
.Lx1100_0_s:            .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
n436_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n437_call_α
n436_binop_β:           add              rsp, 16;                             jmp   n435_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n437_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1103:           .string          "EVAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1103]
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
                        cmp              eax, 104;                            jne   .Lx1102_240
                        add              rsp, 16;                             jmp   n436_binop_β
.Lx1102_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n438_assign_α
n437_call_β:            add              rsp, 16;                             jmp   n436_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n438_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 240], rax            # Push_list
                        mov              qword ptr [r9 + 248], rdx;           jmp   n439_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n439_statement_end_α:   add              rsp, 96;                             jmp   RETURN
#=======================================================================================================================
# push_list_end  <stmt 43, line 58: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n440_statement_begin_α:                                                       jmp   n441_statement_end_α
n440_statement_begin_β:                                                       jmp   n442_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n441_statement_end_α:                                                         jmp   n442_statement_begin_α
#=======================================================================================================================
#                DEFINE('push_item(v)')
#-----------------------------------------------------------------------------------------------------------------------
n442_statement_begin_α:                                                       jmp   n443_func_activate_α
n442_statement_begin_β:                                                       jmp   n445_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n443_func_activate_α:   mov              rdi, qword ptr [rip + .Lx1114_0]
                        mov              rsi, qword ptr [rip + .Lx1114_1]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n444_statement_end_α
n443_func_activate_β:                                                         jmp   n442_statement_begin_β
.Lx1114_0:              .quad            .Lx1114_0_s
.Lx1114_0_s:            .string          "push_item"
.Lx1114_1:              .quad            .Lx1114_1_s
.Lx1114_1_s:            .string          "v"
#-----------------------------------------------------------------------------------------------------------------------
n444_statement_end_α:                                                         jmp   n445_statement_begin_α
#=======================================================================================================================
#                DEFINE('Push_item(vs)')                      :(push_item_end)
#-----------------------------------------------------------------------------------------------------------------------
n445_statement_begin_α:                                                       jmp   n446_func_activate_α
n445_statement_begin_β:                                                       jmp   n467_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n446_func_activate_α:   mov              rdi, qword ptr [rip + .Lx1120_0]
                        mov              rsi, qword ptr [rip + .Lx1120_1]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n447_statement_end_α
n446_func_activate_β:                                                         jmp   n445_statement_begin_β
.Lx1120_0:              .quad            .Lx1120_0_s
.Lx1120_0_s:            .string          "Push_item"
.Lx1120_1:              .quad            .Lx1120_1_s
.Lx1120_1_s:            .string          "vs"
#-----------------------------------------------------------------------------------------------------------------------
n447_statement_end_α:                                                         jmp   n467_statement_begin_α
#=======================================================================================================================
# push_item      dummy          =  stk_push_item(v)
#-----------------------------------------------------------------------------------------------------------------------
push_item_body:                                                               jmp   n449_var_α
n448_statement_begin_β:                                                       jmp   n453_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n449_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # v
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n450_call_α
#-----------------------------------------------------------------------------------------------------------------------
n450_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1127z]
                        lea              rax, [rip + stk_push_item_alpha];    jmp   rax
.Lsig1127z:             .quad            1
                        .quad            .Lx1127_2
                        .quad            .Lx1127_2
                        .quad            16
.Lx1127_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1127_29
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
.Lx1127_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx1127_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n448_statement_begin_β
.Lx1127_240:                                                                  jmp   n451_assign_α
n450_call_β:                                                                  jmp   n448_statement_begin_β
.Lx1127_0:              .quad            .Lx1127_0_s
.Lx1127_0_s:            .string          "stk_push_item"
#-----------------------------------------------------------------------------------------------------------------------
n451_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 560], rax            # dummy
                        mov              qword ptr [r9 + 568], rdx;           jmp   n452_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n452_statement_end_α:   add              rsp, 32;                             jmp   n453_statement_begin_α
#=======================================================================================================================
#                push_item      =  .dummy                     :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n453_statement_begin_α:                                                       jmp   n454_lit_string_α
n453_statement_begin_β:                                                       jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n454_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1133_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n455_call_α
.Lx1133_0:              .quad            .Lx1133_0_s
.Lx1133_0_s:            .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n455_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1135:           .string          "SNO$NAME"
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
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n453_statement_begin_β
.Lx1134_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n456_assign_α
n455_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n453_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n456_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 256], rax            # push_item
                        mov              qword ptr [r9 + 264], rdx;           jmp   n457_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n457_statement_end_α:   add              rsp, 32;                             jmp   NRETURN
#=======================================================================================================================
# Push_item      Push_item      =  EVAL("epsilon . *push_item(" vs ")")  :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
Push_item_body:                                                               jmp   n459_lit_string_α
n458_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n459_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 21
                        mov              rax, qword ptr [rip + .Lx1141_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n460_var_α
.Lx1141_0:              .quad            .Lx1141_0_s
.Lx1141_0_s:            .string          "epsilon . *push_item("
#-----------------------------------------------------------------------------------------------------------------------
n460_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 208]            # vs
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n461_binop_α
n460_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n458_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n461_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n462_lit_string_α
n461_binop_β:           add              rsp, 16;                             jmp   n460_var_β
#-----------------------------------------------------------------------------------------------------------------------
n462_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1144_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n463_binop_α
n462_lit_string_β:      add              rsp, 16;                             jmp   n461_binop_β
.Lx1144_0:              .quad            .Lx1144_0_s
.Lx1144_0_s:            .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
n463_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n464_call_α
n463_binop_β:           add              rsp, 16;                             jmp   n462_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n464_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1147:           .string          "EVAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1147]
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
                        cmp              eax, 104;                            jne   .Lx1146_240
                        add              rsp, 16;                             jmp   n463_binop_β
.Lx1146_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n465_assign_α
n464_call_β:            add              rsp, 16;                             jmp   n463_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n465_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 272], rax            # Push_item
                        mov              qword ptr [r9 + 280], rdx;           jmp   n466_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n466_statement_end_α:   add              rsp, 96;                             jmp   RETURN
#=======================================================================================================================
# push_item_end  <stmt 49, line 65: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n467_statement_begin_α:                                                       jmp   n468_statement_end_α
n467_statement_begin_β:                                                       jmp   n469_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n468_statement_end_α:                                                         jmp   n469_statement_begin_α
#=======================================================================================================================
#                DEFINE('pop_list()')
#-----------------------------------------------------------------------------------------------------------------------
n469_statement_begin_α:                                                       jmp   n470_func_activate_α
n469_statement_begin_β:                                                       jmp   n472_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n470_func_activate_α:   mov              rdi, qword ptr [rip + .Lx1158_0]
                        mov              rsi, qword ptr [rip + .Lx1158_1]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n471_statement_end_α
n470_func_activate_β:                                                         jmp   n469_statement_begin_β
.Lx1158_0:              .quad            .Lx1158_0_s
.Lx1158_0_s:            .string          "pop_list"
.Lx1158_1:              .quad            .Lx1158_1_s
.Lx1158_1_s:            .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n471_statement_end_α:                                                         jmp   n472_statement_begin_α
#=======================================================================================================================
#                DEFINE('Pop_list()')                         :(pop_list_end)
#-----------------------------------------------------------------------------------------------------------------------
n472_statement_begin_α:                                                       jmp   n473_func_activate_α
n472_statement_begin_β:                                                       jmp   n491_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n473_func_activate_α:   mov              rdi, qword ptr [rip + .Lx1164_0]
                        mov              rsi, qword ptr [rip + .Lx1164_1]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n474_statement_end_α
n473_func_activate_β:                                                         jmp   n472_statement_begin_β
.Lx1164_0:              .quad            .Lx1164_0_s
.Lx1164_0_s:            .string          "Pop_list"
.Lx1164_1:              .quad            .Lx1164_1_s
.Lx1164_1_s:            .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n474_statement_end_α:                                                         jmp   n491_statement_begin_α
#=======================================================================================================================
# pop_list       dummy          =  stk_pop_into_parent()
#-----------------------------------------------------------------------------------------------------------------------
pop_list_body:                                                                jmp   n476_call_α
n475_statement_begin_β:                                                       jmp   n479_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n476_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1170z]
                        lea              rax, [rip + stk_pop_into_parent_alpha]
                                                                              jmp   rax
.Lsig1170z:             .quad            0
                        .quad            .Lx1170_2
                        .quad            .Lx1170_2
.Lx1170_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1170_29
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
.Lx1170_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx1170_240
                        add              rsp, 16;                             jmp   n475_statement_begin_β
.Lx1170_240:                                                                  jmp   n477_assign_α
n476_call_β:                                                                  jmp   n475_statement_begin_β
.Lx1170_0:              .quad            .Lx1170_0_s
.Lx1170_0_s:            .string          "stk_pop_into_parent"
#-----------------------------------------------------------------------------------------------------------------------
n477_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 560], rax            # dummy
                        mov              qword ptr [r9 + 568], rdx;           jmp   n478_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n478_statement_end_α:   add              rsp, 16;                             jmp   n479_statement_begin_α
#=======================================================================================================================
#                pop_list       =  .dummy                     :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n479_statement_begin_α:                                                       jmp   n480_lit_string_α
n479_statement_begin_β:                                                       jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n480_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1176_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n481_call_α
.Lx1176_0:              .quad            .Lx1176_0_s
.Lx1176_0_s:            .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n481_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1178:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1178]
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
                        cmp              eax, 104;                            jne   .Lx1177_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n479_statement_begin_β
.Lx1177_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n482_assign_α
n481_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n479_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n482_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 288], rax            # pop_list
                        mov              qword ptr [r9 + 296], rdx;           jmp   n483_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n483_statement_end_α:   add              rsp, 32;                             jmp   NRETURN
#=======================================================================================================================
# Pop_list       Pop_list       =  epsilon . *pop_list()      :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
Pop_list_body:                                                                jmp   n485_var_α
n484_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n485_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 576]            # epsilon
                        mov              rdx, qword ptr [r9 + 584]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n486_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n486_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 768], rax            # PAT$0$V0
                        mov              qword ptr [r9 + 776], rdx;           jmp   n487_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n487_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1186_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n488_call_α
n487_lit_string_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n484_statement_begin_β
.Lx1186_0:              .quad            .Lx1186_0_s
.Lx1186_0_s:            .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n488_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1188:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1188]
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
                        cmp              eax, 104;                            jne   .Lx1187_240
                        add              rsp, 16;                             jmp   n487_lit_string_β
.Lx1187_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n489_assign_α
n488_call_β:            add              rsp, 16;                             jmp   n487_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n489_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 304], rax            # Pop_list
                        mov              qword ptr [r9 + 312], rdx;           jmp   n490_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n490_statement_end_α:   add              rsp, 48;                             jmp   RETURN
#=======================================================================================================================
# pop_list_end  <stmt 55, line 72: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n491_statement_begin_α:                                                       jmp   n492_statement_end_α
n491_statement_begin_β:                                                       jmp   n493_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n492_statement_end_α:                                                         jmp   n493_statement_begin_α
#=======================================================================================================================
#                DEFINE('pop_final(v)')
#-----------------------------------------------------------------------------------------------------------------------
n493_statement_begin_α:                                                       jmp   n494_func_activate_α
n493_statement_begin_β:                                                       jmp   n496_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n494_func_activate_α:   mov              rdi, qword ptr [rip + .Lx1199_0]
                        mov              rsi, qword ptr [rip + .Lx1199_1]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n495_statement_end_α
n494_func_activate_β:                                                         jmp   n493_statement_begin_β
.Lx1199_0:              .quad            .Lx1199_0_s
.Lx1199_0_s:            .string          "pop_final"
.Lx1199_1:              .quad            .Lx1199_1_s
.Lx1199_1_s:            .string          "v"
#-----------------------------------------------------------------------------------------------------------------------
n495_statement_end_α:                                                         jmp   n496_statement_begin_α
#=======================================================================================================================
#                DEFINE('Pop_final(vs)')                      :(pop_final_end)
#-----------------------------------------------------------------------------------------------------------------------
n496_statement_begin_α:                                                       jmp   n497_func_activate_α
n496_statement_begin_β:                                                       jmp   n518_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n497_func_activate_α:   mov              rdi, qword ptr [rip + .Lx1205_0]
                        mov              rsi, qword ptr [rip + .Lx1205_1]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n498_statement_end_α
n497_func_activate_β:                                                         jmp   n496_statement_begin_β
.Lx1205_0:              .quad            .Lx1205_0_s
.Lx1205_0_s:            .string          "Pop_final"
.Lx1205_1:              .quad            .Lx1205_1_s
.Lx1205_1_s:            .string          "vs"
#-----------------------------------------------------------------------------------------------------------------------
n498_statement_end_α:                                                         jmp   n518_statement_begin_α
#=======================================================================================================================
# pop_final      dummy          =  stk_pop_final(v)
#-----------------------------------------------------------------------------------------------------------------------
pop_final_body:                                                               jmp   n500_var_α
n499_statement_begin_β:                                                       jmp   n504_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n500_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # v
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n501_call_α
#-----------------------------------------------------------------------------------------------------------------------
n501_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1212z]
                        lea              rax, [rip + stk_pop_final_alpha];    jmp   rax
.Lsig1212z:             .quad            1
                        .quad            .Lx1212_2
                        .quad            .Lx1212_2
                        .quad            16
.Lx1212_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1212_29
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
.Lx1212_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx1212_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n499_statement_begin_β
.Lx1212_240:                                                                  jmp   n502_assign_α
n501_call_β:                                                                  jmp   n499_statement_begin_β
.Lx1212_0:              .quad            .Lx1212_0_s
.Lx1212_0_s:            .string          "stk_pop_final"
#-----------------------------------------------------------------------------------------------------------------------
n502_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 560], rax            # dummy
                        mov              qword ptr [r9 + 568], rdx;           jmp   n503_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n503_statement_end_α:   add              rsp, 32;                             jmp   n504_statement_begin_α
#=======================================================================================================================
#                pop_final      =  .dummy                     :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n504_statement_begin_α:                                                       jmp   n505_lit_string_α
n504_statement_begin_β:                                                       jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n505_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1218_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n506_call_α
.Lx1218_0:              .quad            .Lx1218_0_s
.Lx1218_0_s:            .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n506_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1220:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1220]
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
                        cmp              eax, 104;                            jne   .Lx1219_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n504_statement_begin_β
.Lx1219_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n507_assign_α
n506_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n504_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n507_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 320], rax            # pop_final
                        mov              qword ptr [r9 + 328], rdx;           jmp   n508_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n508_statement_end_α:   add              rsp, 32;                             jmp   NRETURN
#=======================================================================================================================
# Pop_final      Pop_final      =  EVAL("epsilon . *pop_final(" vs ")")  :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
Pop_final_body:                                                               jmp   n510_lit_string_α
n509_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n510_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 21
                        mov              rax, qword ptr [rip + .Lx1226_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n511_var_α
.Lx1226_0:              .quad            .Lx1226_0_s
.Lx1226_0_s:            .string          "epsilon . *pop_final("
#-----------------------------------------------------------------------------------------------------------------------
n511_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 208]            # vs
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n512_binop_α
n511_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n509_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n512_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n513_lit_string_α
n512_binop_β:           add              rsp, 16;                             jmp   n511_var_β
#-----------------------------------------------------------------------------------------------------------------------
n513_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1229_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n514_binop_α
n513_lit_string_β:      add              rsp, 16;                             jmp   n512_binop_β
.Lx1229_0:              .quad            .Lx1229_0_s
.Lx1229_0_s:            .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
n514_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n515_call_α
n514_binop_β:           add              rsp, 16;                             jmp   n513_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n515_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1232:           .string          "EVAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1232]
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
                        cmp              eax, 104;                            jne   .Lx1231_240
                        add              rsp, 16;                             jmp   n514_binop_β
.Lx1231_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n516_assign_α
n515_call_β:            add              rsp, 16;                             jmp   n514_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n516_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 336], rax            # Pop_final
                        mov              qword ptr [r9 + 344], rdx;           jmp   n517_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n517_statement_end_α:   add              rsp, 96;                             jmp   RETURN
#=======================================================================================================================
# pop_final_end  <stmt 61, line 79: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n518_statement_begin_α:                                                       jmp   n519_statement_end_α
n518_statement_begin_β:                                                       jmp   n520_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n519_statement_end_α:                                                         jmp   n520_statement_begin_α
#=======================================================================================================================
#                delim          =  SPAN(' ' CHAR(10))
#-----------------------------------------------------------------------------------------------------------------------
n520_statement_begin_α:                                                       jmp   n521_lit_string_α
n520_statement_begin_β:                                                       jmp   n525_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n521_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1242_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n522_call_α
.Lx1242_0:              .quad            .Lx1242_0_s
.Lx1242_0_s:            .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n522_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1244:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1244]
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
                        cmp              eax, 104;                            jne   .Lx1243_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n520_statement_begin_β
.Lx1243_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n523_assign_α
n522_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n520_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n523_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 592], rax            # delim
                        mov              qword ptr [r9 + 600], rdx;           jmp   n524_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n524_statement_end_α:   add              rsp, 32;                             jmp   n525_statement_begin_α
#=======================================================================================================================
#                word           =  NOTANY('( )' CHAR(10)) BREAK('( )' CHAR(10))
#-----------------------------------------------------------------------------------------------------------------------
n525_statement_begin_α:                                                       jmp   n526_lit_string_α
n525_statement_begin_β:                                                       jmp   n530_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n526_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1250_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n527_call_α
.Lx1250_0:              .quad            .Lx1250_0_s
.Lx1250_0_s:            .string          "PAT$2"
#-----------------------------------------------------------------------------------------------------------------------
n527_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1252:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1252]
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
                        cmp              eax, 104;                            jne   .Lx1251_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n525_statement_begin_β
.Lx1251_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n528_assign_α
n527_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n525_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n528_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 608], rax            # word
                        mov              qword ptr [r9 + 616], rdx;           jmp   n529_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n529_statement_end_α:   add              rsp, 32;                             jmp   n530_statement_begin_α
#=======================================================================================================================
#                group          =  FENCE(
#-----------------------------------------------------------------------------------------------------------------------
n530_statement_begin_α:                                                       jmp   n531_call_α
n530_statement_begin_β:                                                       jmp   n549_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n531_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1259z]
                        lea              rax, [rip + Pop_list_alpha];         jmp   rax
.Lsig1259z:             .quad            0
                        .quad            .Lx1259_2
                        .quad            .Lx1259_2
.Lx1259_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1259_29
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
.Lx1259_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx1259_240
                        add              rsp, 16;                             jmp   n530_statement_begin_β
.Lx1259_240:                                                                  jmp   n532_assign_α
n531_call_β:                                                                  jmp   n530_statement_begin_β
.Lx1259_0:              .quad            .Lx1259_0_s
.Lx1259_0_s:            .string          "Pop_list"
#-----------------------------------------------------------------------------------------------------------------------
n532_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 864], rax            # PAT$3$V5
                        mov              qword ptr [r9 + 872], rdx;           jmp   n533_var_α
#-----------------------------------------------------------------------------------------------------------------------
n533_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 592]            # delim
                        mov              rdx, qword ptr [r9 + 600]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n534_assign_α
n533_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n530_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n534_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 848], rax            # PAT$3$V4
                        mov              qword ptr [r9 + 856], rdx;           jmp   n535_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n535_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx1263_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n536_call_α
n535_lit_string_β:      add              rsp, 16;                             jmp   n533_var_β
.Lx1263_0:              .quad            .Lx1263_0_s
.Lx1263_0_s:            .string          "wrd"
#-----------------------------------------------------------------------------------------------------------------------
n536_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1265z]
                        lea              rax, [rip + Push_item_alpha];        jmp   rax
.Lsig1265z:             .quad            1
                        .quad            .Lx1265_2
                        .quad            .Lx1265_2
                        .quad            16
.Lx1265_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1265_29
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
.Lx1265_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx1265_240
                        add              rsp, 16;                             jmp   n535_lit_string_β
.Lx1265_240:                                                                  jmp   n537_assign_α
n536_call_β:                                                                  jmp   n535_lit_string_β
.Lx1265_0:              .quad            .Lx1265_0_s
.Lx1265_0_s:            .string          "Push_item"
#-----------------------------------------------------------------------------------------------------------------------
n537_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 832], rax            # PAT$3$V3
                        mov              qword ptr [r9 + 840], rdx;           jmp   n538_var_α
#-----------------------------------------------------------------------------------------------------------------------
n538_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 608]            # word
                        mov              rdx, qword ptr [r9 + 616]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n539_assign_α
n538_var_β:             add              rsp, 32;                             jmp   n535_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n539_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 816], rax            # PAT$3$V2
                        mov              qword ptr [r9 + 824], rdx;           jmp   n540_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n540_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx1269_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n541_call_α
n540_lit_string_β:      add              rsp, 16;                             jmp   n538_var_β
.Lx1269_0:              .quad            .Lx1269_0_s
.Lx1269_0_s:            .string          "tag"
#-----------------------------------------------------------------------------------------------------------------------
n541_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1271z]
                        lea              rax, [rip + Push_list_alpha];        jmp   rax
.Lsig1271z:             .quad            1
                        .quad            .Lx1271_2
                        .quad            .Lx1271_2
                        .quad            16
.Lx1271_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1271_29
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
.Lx1271_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx1271_240
                        add              rsp, 16;                             jmp   n540_lit_string_β
.Lx1271_240:                                                                  jmp   n542_assign_α
n541_call_β:                                                                  jmp   n540_lit_string_β
.Lx1271_0:              .quad            .Lx1271_0_s
.Lx1271_0_s:            .string          "Push_list"
#-----------------------------------------------------------------------------------------------------------------------
n542_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 800], rax            # PAT$3$V1
                        mov              qword ptr [r9 + 808], rdx;           jmp   n543_var_α
#-----------------------------------------------------------------------------------------------------------------------
n543_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 608]            # word
                        mov              rdx, qword ptr [r9 + 616]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n544_assign_α
n543_var_β:             add              rsp, 32;                             jmp   n540_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n544_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 784], rax            # PAT$3$V0
                        mov              qword ptr [r9 + 792], rdx;           jmp   n545_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n545_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1275_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n546_call_α
n545_lit_string_β:      add              rsp, 16;                             jmp   n543_var_β
.Lx1275_0:              .quad            .Lx1275_0_s
.Lx1275_0_s:            .string          "PAT$3"
#-----------------------------------------------------------------------------------------------------------------------
n546_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1277:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1277]
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
                        cmp              eax, 104;                            jne   .Lx1276_240
                        add              rsp, 16;                             jmp   n545_lit_string_β
.Lx1276_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n547_assign_α
n546_call_β:            add              rsp, 16;                             jmp   n545_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n547_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 624], rax            # group
                        mov              qword ptr [r9 + 632], rdx;           jmp   n548_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n548_statement_end_α:   add              rsp, 160;                            jmp   n549_statement_begin_α
#=======================================================================================================================
#                treebank       =
#-----------------------------------------------------------------------------------------------------------------------
n549_statement_begin_α:                                                       jmp   n550_lit_string_α
n549_statement_begin_β:                                                       jmp   n570_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n550_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx1283_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n551_call_α
.Lx1283_0:              .quad            .Lx1283_0_s
.Lx1283_0_s:            .string          "'bank'"
#-----------------------------------------------------------------------------------------------------------------------
n551_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1285z]
                        lea              rax, [rip + Pop_final_alpha];        jmp   rax
.Lsig1285z:             .quad            1
                        .quad            .Lx1285_2
                        .quad            .Lx1285_2
                        .quad            16
.Lx1285_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1285_29
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
.Lx1285_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx1285_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n549_statement_begin_β
.Lx1285_240:                                                                  jmp   n552_assign_α
n551_call_β:                                                                  jmp   n549_statement_begin_β
.Lx1285_0:              .quad            .Lx1285_0_s
.Lx1285_0_s:            .string          "Pop_final"
#-----------------------------------------------------------------------------------------------------------------------
n552_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 960], rax            # PAT$4$V5
                        mov              qword ptr [r9 + 968], rdx;           jmp   n553_call_α
#-----------------------------------------------------------------------------------------------------------------------
n553_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1288z]
                        lea              rax, [rip + Pop_list_alpha];         jmp   rax
.Lsig1288z:             .quad            0
                        .quad            .Lx1288_2
                        .quad            .Lx1288_2
.Lx1288_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1288_29
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
.Lx1288_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx1288_240
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n549_statement_begin_β
.Lx1288_240:                                                                  jmp   n554_assign_α
n553_call_β:                                                                  jmp   n549_statement_begin_β
.Lx1288_0:              .quad            .Lx1288_0_s
.Lx1288_0_s:            .string          "Pop_list"
#-----------------------------------------------------------------------------------------------------------------------
n554_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 944], rax            # PAT$4$V4
                        mov              qword ptr [r9 + 952], rdx;           jmp   n555_var_α
#-----------------------------------------------------------------------------------------------------------------------
n555_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 592]            # delim
                        mov              rdx, qword ptr [r9 + 600]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n556_assign_α
n555_var_β:             add              rsp, 16
                        add              rsp, 48;                             jmp   n549_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n556_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 928], rax            # PAT$4$V3
                        mov              qword ptr [r9 + 936], rdx;           jmp   n557_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n557_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx1292_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n558_call_α
n557_lit_string_β:      add              rsp, 16;                             jmp   n555_var_β
.Lx1292_0:              .quad            .Lx1292_0_s
.Lx1292_0_s:            .string          "'ROOT'"
#-----------------------------------------------------------------------------------------------------------------------
n558_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1294z]
                        lea              rax, [rip + Push_list_alpha];        jmp   rax
.Lsig1294z:             .quad            1
                        .quad            .Lx1294_2
                        .quad            .Lx1294_2
                        .quad            16
.Lx1294_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1294_29
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
.Lx1294_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx1294_240
                        add              rsp, 16;                             jmp   n557_lit_string_β
.Lx1294_240:                                                                  jmp   n559_assign_α
n558_call_β:                                                                  jmp   n557_lit_string_β
.Lx1294_0:              .quad            .Lx1294_0_s
.Lx1294_0_s:            .string          "Push_list"
#-----------------------------------------------------------------------------------------------------------------------
n559_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 912], rax            # PAT$4$V2
                        mov              qword ptr [r9 + 920], rdx;           jmp   n560_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n560_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx1296_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n561_call_α
n560_lit_string_β:      add              rsp, 32;                             jmp   n557_lit_string_β
.Lx1296_0:              .quad            .Lx1296_0_s
.Lx1296_0_s:            .string          "'BANK'"
#-----------------------------------------------------------------------------------------------------------------------
n561_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1298z]
                        lea              rax, [rip + Push_list_alpha];        jmp   rax
.Lsig1298z:             .quad            1
                        .quad            .Lx1298_2
                        .quad            .Lx1298_2
                        .quad            16
.Lx1298_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1298_29
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
.Lx1298_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx1298_240
                        add              rsp, 16;                             jmp   n560_lit_string_β
.Lx1298_240:                                                                  jmp   n562_assign_α
n561_call_β:                                                                  jmp   n560_lit_string_β
.Lx1298_0:              .quad            .Lx1298_0_s
.Lx1298_0_s:            .string          "Push_list"
#-----------------------------------------------------------------------------------------------------------------------
n562_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 896], rax            # PAT$4$V1
                        mov              qword ptr [r9 + 904], rdx;           jmp   n563_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n563_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx1300_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n564_call_α
n563_lit_string_β:      add              rsp, 32;                             jmp   n560_lit_string_β
.Lx1300_0:              .quad            .Lx1300_0_s
.Lx1300_0_s:            .string          "'bank'"
#-----------------------------------------------------------------------------------------------------------------------
n564_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1302z]
                        lea              rax, [rip + Init_list_alpha];        jmp   rax
.Lsig1302z:             .quad            1
                        .quad            .Lx1302_2
                        .quad            .Lx1302_2
                        .quad            16
.Lx1302_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1302_29
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
.Lx1302_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx1302_240
                        add              rsp, 16;                             jmp   n563_lit_string_β
.Lx1302_240:                                                                  jmp   n565_assign_α
n564_call_β:                                                                  jmp   n563_lit_string_β
.Lx1302_0:              .quad            .Lx1302_0_s
.Lx1302_0_s:            .string          "Init_list"
#-----------------------------------------------------------------------------------------------------------------------
n565_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 880], rax            # PAT$4$V0
                        mov              qword ptr [r9 + 888], rdx;           jmp   n566_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n566_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1304_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n567_call_α
n566_lit_string_β:      add              rsp, 32;                             jmp   n563_lit_string_β
.Lx1304_0:              .quad            .Lx1304_0_s
.Lx1304_0_s:            .string          "PAT$4"
#-----------------------------------------------------------------------------------------------------------------------
n567_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1306:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1306]
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
                        cmp              eax, 104;                            jne   .Lx1305_240
                        add              rsp, 16;                             jmp   n566_lit_string_β
.Lx1305_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n568_assign_α
n567_call_β:            add              rsp, 16;                             jmp   n566_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n568_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 672], rax            # treebank
                        mov              qword ptr [r9 + 680], rdx;           jmp   n569_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n569_statement_end_α:   add              rsp, 192;                            jmp   n570_statement_begin_α
#=======================================================================================================================
#                DEFINE('node_repr(node)r,c,sep')             :(node_repr_end)
#-----------------------------------------------------------------------------------------------------------------------
n570_statement_begin_α:                                                       jmp   n571_func_activate_α
n570_statement_begin_β:                                                       jmp   n631_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n571_func_activate_α:   mov              rdi, qword ptr [rip + .Lx1313_0]
                        mov              rsi, qword ptr [rip + .Lx1313_1]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n572_statement_end_α
n571_func_activate_β:                                                         jmp   n570_statement_begin_β
.Lx1313_0:              .quad            .Lx1313_0_s
.Lx1313_0_s:            .string          "node_repr"
.Lx1313_1:              .quad            .Lx1313_1_s
.Lx1313_1_s:            .string          "node,r,c,sep"
#-----------------------------------------------------------------------------------------------------------------------
n572_statement_end_α:                                                         jmp   n631_statement_begin_α
#=======================================================================================================================
# node_repr      IDENT(REPLACE(DATATYPE(node), &LCASE, &UCASE), 'STRING')  :F(nr_list)
#-----------------------------------------------------------------------------------------------------------------------
node_repr_body:                                                               jmp   n574_var_α
n573_statement_begin_β:                                                       jmp   n590_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n574_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 368]            # node
                        mov              rdx, qword ptr [r9 + 376]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n575_call_α
#-----------------------------------------------------------------------------------------------------------------------
n575_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1320:           .string          "DATATYPE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1320]
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
                        cmp              eax, 104;                            jne   .Lx1319_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n573_statement_begin_β
.Lx1319_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n576_keyword_snobol4_α
n575_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n573_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n576_keyword_snobol4_α: sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx1321_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read_snobol4@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n577_keyword_snobol4_α
.Lx1321_0:              .quad            .Lx1321_0_s
.Lx1321_0_s:            .string          "LCASE"
#-----------------------------------------------------------------------------------------------------------------------
n577_keyword_snobol4_α: sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx1322_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read_snobol4@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n578_call_α
.Lx1322_0:              .quad            .Lx1322_0_s
.Lx1322_0_s:            .string          "UCASE"
#-----------------------------------------------------------------------------------------------------------------------
n578_call_α:            sub              rsp, 16
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
.Lrkfnzd1324:           .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1324]
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
                        cmp              eax, 104;                            jne   .Lx1323_240
                        add              rsp, 16
                        add              rsp, 64;                             jmp   n573_statement_begin_β
.Lx1323_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n579_lit_string_α
n578_call_β:            add              rsp, 16
                        add              rsp, 64;                             jmp   n573_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n579_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx1325_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n580_call_α
n579_lit_string_β:      add              rsp, 16
                        add              rsp, 80;                             jmp   n573_statement_begin_β
.Lx1325_0:              .quad            .Lx1325_0_s
.Lx1325_0_s:            .string          "STRING"
#-----------------------------------------------------------------------------------------------------------------------
n580_call_α:            sub              rsp, 16
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
.Lrkfnzd1327:           .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1327]
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
                        cmp              eax, 104;                            jne   .Lx1326_240
                        add              rsp, 16;                             jmp   n579_lit_string_β
.Lx1326_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n581_statement_end_α
n580_call_β:            add              rsp, 16;                             jmp   n579_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n581_statement_end_α:   add              rsp, 112;                            jmp   n582_statement_begin_α
#=======================================================================================================================
#                node_repr      =  "'" node "'"               :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n582_statement_begin_α:                                                       jmp   n583_lit_string_α
n582_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n583_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1332_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n584_var_α
.Lx1332_0:              .quad            .Lx1332_0_s
.Lx1332_0_s:            .string          "'"
#-----------------------------------------------------------------------------------------------------------------------
n584_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 368]            # node
                        mov              rdx, qword ptr [r9 + 376]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n585_binop_α
n584_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n582_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n585_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n586_lit_string_α
n585_binop_β:           add              rsp, 16;                             jmp   n584_var_β
#-----------------------------------------------------------------------------------------------------------------------
n586_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1335_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n587_binop_α
n586_lit_string_β:      add              rsp, 16;                             jmp   n585_binop_β
.Lx1335_0:              .quad            .Lx1335_0_s
.Lx1335_0_s:            .string          "'"
#-----------------------------------------------------------------------------------------------------------------------
n587_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n588_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n588_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 352], rax            # node_repr
                        mov              qword ptr [r9 + 360], rdx;           jmp   n589_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n589_statement_end_α:   add              rsp, 80;                             jmp   RETURN
#=======================================================================================================================
# nr_list        r              =  '('
#-----------------------------------------------------------------------------------------------------------------------
n590_statement_begin_α:                                                       jmp   n591_lit_string_α
n590_statement_begin_β:                                                       jmp   n594_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n591_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1342_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n592_assign_α
.Lx1342_0:              .quad            .Lx1342_0_s
.Lx1342_0_s:            .string          "("
#-----------------------------------------------------------------------------------------------------------------------
n592_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 384], rax            # r
                        mov              qword ptr [r9 + 392], rdx;           jmp   n593_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n593_statement_end_α:   add              rsp, 16;                             jmp   n594_statement_begin_α
#=======================================================================================================================
#                sep            =
#-----------------------------------------------------------------------------------------------------------------------
n594_statement_begin_α:                                                       jmp   n595_lit_string_α
n594_statement_begin_β:                                                       jmp   n598_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n595_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx1348_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n596_assign_α
.Lx1348_0:              .quad            .Lx1348_0_s
.Lx1348_0_s:            .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n596_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 416], rax            # sep
                        mov              qword ptr [r9 + 424], rdx;           jmp   n597_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n597_statement_end_α:   add              rsp, 16;                             jmp   n598_statement_begin_α
#=======================================================================================================================
#                c              =  node
#-----------------------------------------------------------------------------------------------------------------------
n598_statement_begin_α:                                                       jmp   n599_var_α
n598_statement_begin_β:                                                       jmp   n602_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n599_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 368]            # node
                        mov              rdx, qword ptr [r9 + 376]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n600_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n600_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 400], rax            # c
                        mov              qword ptr [r9 + 408], rdx;           jmp   n601_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n601_statement_end_α:   add              rsp, 16;                             jmp   n602_statement_begin_α
#=======================================================================================================================
# nr_lp          DIFFER(c)                                    :F(nr_done)
#-----------------------------------------------------------------------------------------------------------------------
n602_statement_begin_α:                                                       jmp   n603_var_α
n602_statement_begin_β:                                                       jmp   n625_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n603_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 400]            # c
                        mov              rdx, qword ptr [r9 + 408]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n604_call_α
#-----------------------------------------------------------------------------------------------------------------------
n604_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1362:           .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1362]
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
                        cmp              eax, 104;                            jne   .Lx1361_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n602_statement_begin_β
.Lx1361_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n605_statement_end_α
n604_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n602_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n605_statement_end_α:   add              rsp, 32;                             jmp   n606_statement_begin_α
#=======================================================================================================================
#                r              =  r sep node_repr(head(c))
#-----------------------------------------------------------------------------------------------------------------------
n606_statement_begin_α:                                                       jmp   n607_var_α
n606_statement_begin_β:                                                       jmp   n616_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n607_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 384]            # r
                        mov              rdx, qword ptr [r9 + 392]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n608_var_α
#-----------------------------------------------------------------------------------------------------------------------
n608_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 416]            # sep
                        mov              rdx, qword ptr [r9 + 424]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n609_binop_α
n608_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n606_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n609_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n610_var_α
n609_binop_β:           add              rsp, 16;                             jmp   n608_var_β
#-----------------------------------------------------------------------------------------------------------------------
n610_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 400]            # c
                        mov              rdx, qword ptr [r9 + 408]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n611_call_α
n610_var_β:             add              rsp, 16;                             jmp   n609_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n611_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1372:           .string          "head"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1372]
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
                        cmp              eax, 104;                            jne   .Lx1371_240
                        add              rsp, 16;                             jmp   n610_var_β
.Lx1371_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n612_call_α
n611_call_β:            add              rsp, 16;                             jmp   n610_var_β
#-----------------------------------------------------------------------------------------------------------------------
n612_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1374z]
                        lea              rax, [rip + node_repr_alpha];        jmp   rax
.Lsig1374z:             .quad            1
                        .quad            .Lx1374_2
                        .quad            .Lx1374_2
                        .quad            16
.Lx1374_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1374_29
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
.Lx1374_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx1374_240
                        add              rsp, 32;                             jmp   n610_var_β
.Lx1374_240:                                                                  jmp   n613_binop_α
n612_call_β:                                                                  jmp   n610_var_β
.Lx1374_0:              .quad            .Lx1374_0_s
.Lx1374_0_s:            .string          "node_repr"
#-----------------------------------------------------------------------------------------------------------------------
n613_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n614_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n614_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 384], rax            # r
                        mov              qword ptr [r9 + 392], rdx;           jmp   n615_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n615_statement_end_α:   add              rsp, 112;                            jmp   n616_statement_begin_α
#=======================================================================================================================
#                sep            =  ', '
#-----------------------------------------------------------------------------------------------------------------------
n616_statement_begin_α:                                                       jmp   n617_lit_string_α
n616_statement_begin_β:                                                       jmp   n620_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n617_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx1381_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n618_assign_α
.Lx1381_0:              .quad            .Lx1381_0_s
.Lx1381_0_s:            .string          ", "
#-----------------------------------------------------------------------------------------------------------------------
n618_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 416], rax            # sep
                        mov              qword ptr [r9 + 424], rdx;           jmp   n619_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n619_statement_end_α:   add              rsp, 16;                             jmp   n620_statement_begin_α
#=======================================================================================================================
#                c              =  tail(c)                    :(nr_lp)
#-----------------------------------------------------------------------------------------------------------------------
n620_statement_begin_α:                                                       jmp   n621_var_α
n620_statement_begin_β:                                                       jmp   n602_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n621_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 400]            # c
                        mov              rdx, qword ptr [r9 + 408]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n622_call_α
#-----------------------------------------------------------------------------------------------------------------------
n622_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1389:           .string          "tail"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1389]
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
                        cmp              eax, 104;                            jne   .Lx1388_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n620_statement_begin_β
.Lx1388_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n623_assign_α
n622_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n620_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n623_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 400], rax            # c
                        mov              qword ptr [r9 + 408], rdx;           jmp   n624_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n624_statement_end_α:   add              rsp, 32;                             jmp   n602_statement_begin_α
#=======================================================================================================================
# nr_done        node_repr      =  r ')'                      :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n625_statement_begin_α:                                                       jmp   n626_var_α
n625_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n626_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 384]            # r
                        mov              rdx, qword ptr [r9 + 392]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n627_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n627_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1396_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n628_binop_α
n627_lit_string_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n625_statement_begin_β
.Lx1396_0:              .quad            .Lx1396_0_s
.Lx1396_0_s:            .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
n628_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n629_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n629_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 352], rax            # node_repr
                        mov              qword ptr [r9 + 360], rdx;           jmp   n630_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n630_statement_end_α:   add              rsp, 48;                             jmp   RETURN
#=======================================================================================================================
# node_repr_end  <stmt 77, line 120: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n631_statement_begin_α:                                                       jmp   n632_statement_end_α
n631_statement_begin_β:                                                       jmp   n633_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n632_statement_end_α:                                                         jmp   n633_statement_begin_α
#=======================================================================================================================
#                DEFINE('pp_node(node,indent,suffix)r,pad,c,nxt') :(pp_node_end)
#-----------------------------------------------------------------------------------------------------------------------
n633_statement_begin_α:                                                       jmp   n634_func_activate_α
n633_statement_begin_β:                                                       jmp   n722_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n634_func_activate_α:   mov              rdi, qword ptr [rip + .Lx1408_0]
                        mov              rsi, qword ptr [rip + .Lx1408_1]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n635_statement_end_α
n634_func_activate_β:                                                         jmp   n633_statement_begin_β
.Lx1408_0:              .quad            .Lx1408_0_s
.Lx1408_0_s:            .string          "pp_node"
.Lx1408_1:              .quad            .Lx1408_1_s
.Lx1408_1_s:            .string          "node,indent,suffix,r,pad,c,nxt"
#-----------------------------------------------------------------------------------------------------------------------
n635_statement_end_α:                                                         jmp   n722_statement_begin_α
#=======================================================================================================================
# pp_node        r              =  node_repr(node)
#-----------------------------------------------------------------------------------------------------------------------
pp_node_body:                                                                 jmp   n637_var_α
n636_statement_begin_β:                                                       jmp   n641_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n637_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 368]            # node
                        mov              rdx, qword ptr [r9 + 376]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n638_call_α
#-----------------------------------------------------------------------------------------------------------------------
n638_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1415z]
                        lea              rax, [rip + node_repr_alpha];        jmp   rax
.Lsig1415z:             .quad            1
                        .quad            .Lx1415_2
                        .quad            .Lx1415_2
                        .quad            16
.Lx1415_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1415_29
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
.Lx1415_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx1415_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n636_statement_begin_β
.Lx1415_240:                                                                  jmp   n639_assign_α
n638_call_β:                                                                  jmp   n636_statement_begin_β
.Lx1415_0:              .quad            .Lx1415_0_s
.Lx1415_0_s:            .string          "node_repr"
#-----------------------------------------------------------------------------------------------------------------------
n639_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 384], rax            # r
                        mov              qword ptr [r9 + 392], rdx;           jmp   n640_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n640_statement_end_α:   add              rsp, 32;                             jmp   n641_statement_begin_α
#=======================================================================================================================
#                pad            =  DUPL(' ', indent)
#-----------------------------------------------------------------------------------------------------------------------
n641_statement_begin_α:                                                       jmp   n642_lit_string_α
n641_statement_begin_β:                                                       jmp   n647_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n642_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1421_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n643_var_α
.Lx1421_0:              .quad            .Lx1421_0_s
.Lx1421_0_s:            .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n643_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 448]            # indent
                        mov              rdx, qword ptr [r9 + 456]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n644_call_α
n643_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n641_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n644_call_α:            sub              rsp, 16
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
.Lrkfnzd1424:           .string          "DUPL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1424]
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
                        cmp              eax, 104;                            jne   .Lx1423_240
                        add              rsp, 16;                             jmp   n643_var_β
.Lx1423_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n645_assign_α
n644_call_β:            add              rsp, 16;                             jmp   n643_var_β
#-----------------------------------------------------------------------------------------------------------------------
n645_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 480], rax            # pad
                        mov              qword ptr [r9 + 488], rdx;           jmp   n646_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n646_statement_end_α:   add              rsp, 48;                             jmp   n647_statement_begin_α
#=======================================================================================================================
#                GT(80, indent + SIZE(r))                     :F(pp_wrap)
#-----------------------------------------------------------------------------------------------------------------------
n647_statement_begin_α:                                                       jmp   n648_lit_integer_α
n647_statement_begin_β:                                                       jmp   n665_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n648_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1430_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n649_var_α
.Lx1430_0:              .quad            80
#-----------------------------------------------------------------------------------------------------------------------
n649_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 448]            # indent
                        mov              rdx, qword ptr [r9 + 456]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n650_var_α
n649_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n647_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n650_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 384]            # r
                        mov              rdx, qword ptr [r9 + 392]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n651_call_α
n650_var_β:             add              rsp, 16;                             jmp   n649_var_β
#-----------------------------------------------------------------------------------------------------------------------
n651_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1434:           .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1434]
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
                        cmp              eax, 104;                            jne   .Lx1433_240
                        add              rsp, 16;                             jmp   n650_var_β
.Lx1433_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n652_binop_α
n651_call_β:            add              rsp, 16;                             jmp   n650_var_β
#-----------------------------------------------------------------------------------------------------------------------
n652_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]            # var
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx1435_240
                        add              rsp, 32;                             jmp   n650_var_β
.Lx1435_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n653_coerce_numeric_α
n652_binop_β:           add              rsp, 32;                             jmp   n650_var_β
#-----------------------------------------------------------------------------------------------------------------------
n653_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 80]            # lit_integer
                        cmp              eax, 5;                              je    .Lx1437_1
                        cmp              eax, 3;                              jne   .Lx1437_0
                        mov              eax, dword ptr [rsp + 16]            # binop
                        cmp              eax, 3;                              jne   .Lx1437_0
.Lx1437_1:              mov              rax, qword ptr [rsp + 80]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 88]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n654_coerce_numeric_α
.Lx1437_0:              lea              rdi, [rsp + 80]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n654_coerce_numeric_α
n653_coerce_numeric_β:  add              rsp, 16;                             jmp   n652_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n654_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # binop
                        cmp              eax, 5;                              je    .Lx1439_1
                        cmp              eax, 3;                              jne   .Lx1439_0
                        mov              eax, dword ptr [rsp + 96]            # lit_integer
                        cmp              eax, 3;                              jne   .Lx1439_0
.Lx1439_1:              mov              rax, qword ptr [rsp + 32]            # binop
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # binop
                        mov              qword ptr [rsp + 8], rax;            jmp   n655_cmp_test_α
.Lx1439_0:              lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n655_cmp_test_α
n654_coerce_numeric_β:  add              rsp, 16;                             jmp   n653_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n655_cmp_test_α:        sub              rsp, 16
                        lea              rdi, [rsp + 32]                      # coerce_numeric
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        test             eax, eax;                            jg    .Lx1441_240
                        add              rsp, 16;                             jmp   n654_coerce_numeric_β
.Lx1441_240:                                                                  jmp   n656_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n656_statement_end_α:   add              rsp, 128;                            jmp   n657_statement_begin_α
#=======================================================================================================================
#                OUTPUT         =  pad r suffix               :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n657_statement_begin_α:                                                       jmp   n658_var_α
n657_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n658_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 480]            # pad
                        mov              rdx, qword ptr [r9 + 488]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n659_var_α
#-----------------------------------------------------------------------------------------------------------------------
n659_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 384]            # r
                        mov              rdx, qword ptr [r9 + 392]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n660_binop_α
n659_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n657_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n660_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n661_var_α
n660_binop_β:           add              rsp, 16;                             jmp   n659_var_β
#-----------------------------------------------------------------------------------------------------------------------
n661_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 464]            # suffix
                        mov              rdx, qword ptr [r9 + 472]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n662_binop_α
n661_var_β:             add              rsp, 16;                             jmp   n660_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n662_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n663_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n663_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1451_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n664_statement_end_α
.Lx1451_0:              .quad            .Lx1451_0_s
.Lx1451_0_s:            .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n664_statement_end_α:   add              rsp, 80;                             jmp   RETURN
#=======================================================================================================================
# pp_wrap        OUTPUT         =  pad '( ' "'" head(node) "',"
#-----------------------------------------------------------------------------------------------------------------------
n665_statement_begin_α:                                                       jmp   n666_var_α
n665_statement_begin_β:                                                       jmp   n678_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n666_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 480]            # pad
                        mov              rdx, qword ptr [r9 + 488]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n667_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n667_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx1457_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n668_binop_α
n667_lit_string_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n665_statement_begin_β
.Lx1457_0:              .quad            .Lx1457_0_s
.Lx1457_0_s:            .string          "( "
#-----------------------------------------------------------------------------------------------------------------------
n668_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n669_lit_string_α
n668_binop_β:           add              rsp, 16;                             jmp   n667_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n669_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1459_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n670_binop_α
n669_lit_string_β:      add              rsp, 16;                             jmp   n668_binop_β
.Lx1459_0:              .quad            .Lx1459_0_s
.Lx1459_0_s:            .string          "'"
#-----------------------------------------------------------------------------------------------------------------------
n670_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n671_var_α
n670_binop_β:           add              rsp, 16;                             jmp   n669_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n671_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 368]            # node
                        mov              rdx, qword ptr [r9 + 376]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n672_call_α
n671_var_β:             add              rsp, 16;                             jmp   n670_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n672_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1463:           .string          "head"
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
                        add              rsp, 16;                             jmp   n671_var_β
.Lx1462_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n673_binop_α
n672_call_β:            add              rsp, 16;                             jmp   n671_var_β
#-----------------------------------------------------------------------------------------------------------------------
n673_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n674_lit_string_α
n673_binop_β:           add              rsp, 32;                             jmp   n671_var_β
#-----------------------------------------------------------------------------------------------------------------------
n674_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx1465_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n675_binop_α
n674_lit_string_β:      add              rsp, 16;                             jmp   n673_binop_β
.Lx1465_0:              .quad            .Lx1465_0_s
.Lx1465_0_s:            .string          "',"
#-----------------------------------------------------------------------------------------------------------------------
n675_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n676_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n676_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1467_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n677_statement_end_α
.Lx1467_0:              .quad            .Lx1467_0_s
.Lx1467_0_s:            .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n677_statement_end_α:   add              rsp, 160;                            jmp   n678_statement_begin_α
#=======================================================================================================================
#                c              =  tail(node)
#-----------------------------------------------------------------------------------------------------------------------
n678_statement_begin_α:                                                       jmp   n679_var_α
n678_statement_begin_β:                                                       jmp   n683_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n679_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 368]            # node
                        mov              rdx, qword ptr [r9 + 376]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n680_call_α
#-----------------------------------------------------------------------------------------------------------------------
n680_call_α:            sub              rsp, 16
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
                        add              rsp, 16;                             jmp   n678_statement_begin_β
.Lx1473_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n681_assign_α
n680_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n678_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n681_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 400], rax            # c
                        mov              qword ptr [r9 + 408], rdx;           jmp   n682_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n682_statement_end_α:   add              rsp, 32;                             jmp   n683_statement_begin_α
#=======================================================================================================================
# pp_wch         DIFFER(c)                                    :F(pp_wdone)
#-----------------------------------------------------------------------------------------------------------------------
n683_statement_begin_α:                                                       jmp   n684_var_α
n683_statement_begin_β:                                                       jmp   n720_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n684_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 400]            # c
                        mov              rdx, qword ptr [r9 + 408]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n685_call_α
#-----------------------------------------------------------------------------------------------------------------------
n685_call_α:            sub              rsp, 16
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
                        add              rsp, 16;                             jmp   n683_statement_begin_β
.Lx1481_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n686_statement_end_α
n685_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n683_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n686_statement_end_α:   add              rsp, 32;                             jmp   n687_statement_begin_α
#=======================================================================================================================
#                nxt            =  tail(c)
#-----------------------------------------------------------------------------------------------------------------------
n687_statement_begin_α:                                                       jmp   n688_var_α
n687_statement_begin_β:                                                       jmp   n692_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n688_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 400]            # c
                        mov              rdx, qword ptr [r9 + 408]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n689_call_α
#-----------------------------------------------------------------------------------------------------------------------
n689_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1489:           .string          "tail"
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
                        add              rsp, 16;                             jmp   n687_statement_begin_β
.Lx1488_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n690_assign_α
n689_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n687_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n690_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 496], rax            # nxt
                        mov              qword ptr [r9 + 504], rdx;           jmp   n691_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n691_statement_end_α:   add              rsp, 32;                             jmp   n692_statement_begin_α
#=======================================================================================================================
#                DIFFER(nxt)                                  :F(pp_wlast)
#-----------------------------------------------------------------------------------------------------------------------
n692_statement_begin_α:                                                       jmp   n693_var_α
n692_statement_begin_β:                                                       jmp   n709_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n693_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 496]            # nxt
                        mov              rdx, qword ptr [r9 + 504]
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
.Lrkfnzd1497:           .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1497]
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
                        cmp              eax, 104;                            jne   .Lx1496_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n692_statement_begin_β
.Lx1496_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n695_statement_end_α
n694_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n692_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n695_statement_end_α:   add              rsp, 32;                             jmp   n696_statement_begin_α
#=======================================================================================================================
#                pp_node(head(c), indent + 2, ',')
#-----------------------------------------------------------------------------------------------------------------------
n696_statement_begin_α:                                                       jmp   n697_var_α
n696_statement_begin_β:                                                       jmp   n705_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n697_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 400]            # c
                        mov              rdx, qword ptr [r9 + 408]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n698_call_α
#-----------------------------------------------------------------------------------------------------------------------
n698_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1504:           .string          "head"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1504]
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
                        cmp              eax, 104;                            jne   .Lx1503_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n696_statement_begin_β
.Lx1503_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n699_var_α
n698_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n696_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n699_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 448]            # indent
                        mov              rdx, qword ptr [r9 + 456]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n700_lit_integer_α
n699_var_β:             add              rsp, 16
                        add              rsp, 32;                             jmp   n696_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n700_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1506_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n701_binop_α
n700_lit_integer_β:     add              rsp, 16;                             jmp   n699_var_β
.Lx1506_0:              .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n701_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx1507_240
                        add              rsp, 16;                             jmp   n700_lit_integer_β
.Lx1507_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n702_lit_string_α
n701_binop_β:           add              rsp, 16;                             jmp   n700_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n702_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1508_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n703_call_α
n702_lit_string_β:      add              rsp, 16;                             jmp   n701_binop_β
.Lx1508_0:              .quad            .Lx1508_0_s
.Lx1508_0_s:            .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n703_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1510z]
                        lea              rax, [rip + pp_node_alpha];          jmp   rax
.Lsig1510z:             .quad            3
                        .quad            .Lx1510_2
                        .quad            .Lx1510_2
                        .quad            80
                        .quad            32
                        .quad            16
.Lx1510_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1510_29
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
.Lx1510_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx1510_240
                        add              rsp, 16;                             jmp   n702_lit_string_β
.Lx1510_240:                                                                  jmp   n704_statement_end_α
n703_call_β:                                                                  jmp   n702_lit_string_β
.Lx1510_0:              .quad            .Lx1510_0_s
.Lx1510_0_s:            .string          "pp_node"
#-----------------------------------------------------------------------------------------------------------------------
n704_statement_end_α:   add              rsp, 112;                            jmp   n705_statement_begin_α
#=======================================================================================================================
#                c              =  nxt                        :(pp_wch)
#-----------------------------------------------------------------------------------------------------------------------
n705_statement_begin_α:                                                       jmp   n706_var_α
n705_statement_begin_β:                                                       jmp   n683_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n706_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 496]            # nxt
                        mov              rdx, qword ptr [r9 + 504]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n707_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n707_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 400], rax            # c
                        mov              qword ptr [r9 + 408], rdx;           jmp   n708_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n708_statement_end_α:   add              rsp, 16;                             jmp   n683_statement_begin_α
#=======================================================================================================================
# pp_wlast       pp_node(head(c), indent + 2, ')' suffix)     :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n709_statement_begin_α:                                                       jmp   n710_var_α
n709_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n710_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 400]            # c
                        mov              rdx, qword ptr [r9 + 408]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n711_call_α
#-----------------------------------------------------------------------------------------------------------------------
n711_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1523:           .string          "head"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1523]
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
                        cmp              eax, 104;                            jne   .Lx1522_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n709_statement_begin_β
.Lx1522_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n712_var_α
n711_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n709_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n712_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 448]            # indent
                        mov              rdx, qword ptr [r9 + 456]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n713_lit_integer_α
n712_var_β:             add              rsp, 16
                        add              rsp, 32;                             jmp   n709_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n713_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1525_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n714_binop_α
n713_lit_integer_β:     add              rsp, 16;                             jmp   n712_var_β
.Lx1525_0:              .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n714_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx1526_240
                        add              rsp, 16;                             jmp   n713_lit_integer_β
.Lx1526_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n715_lit_string_α
n714_binop_β:           add              rsp, 16;                             jmp   n713_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n715_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1527_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n716_var_α
n715_lit_string_β:      add              rsp, 16;                             jmp   n714_binop_β
.Lx1527_0:              .quad            .Lx1527_0_s
.Lx1527_0_s:            .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
n716_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 464]            # suffix
                        mov              rdx, qword ptr [r9 + 472]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n717_binop_α
n716_var_β:             add              rsp, 16;                             jmp   n715_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n717_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n718_call_α
n717_binop_β:           add              rsp, 16;                             jmp   n716_var_β
#-----------------------------------------------------------------------------------------------------------------------
n718_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1531z]
                        lea              rax, [rip + pp_node_alpha];          jmp   rax
.Lsig1531z:             .quad            3
                        .quad            .Lx1531_2
                        .quad            .Lx1531_2
                        .quad            112
                        .quad            64
                        .quad            16
.Lx1531_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1531_29
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
.Lx1531_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx1531_240
                        add              rsp, 16;                             jmp   n717_binop_β
.Lx1531_240:                                                                  jmp   n719_statement_end_α
n718_call_β:                                                                  jmp   n717_binop_β
.Lx1531_0:              .quad            .Lx1531_0_s
.Lx1531_0_s:            .string          "pp_node"
#-----------------------------------------------------------------------------------------------------------------------
n719_statement_end_α:   add              rsp, 144;                            jmp   RETURN
#=======================================================================================================================
# pp_wdone                                                    :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n720_statement_begin_α:                                                       jmp   n721_statement_end_α
n720_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n721_statement_end_α:                                                         jmp   RETURN
#=======================================================================================================================
# pp_node_end  <stmt 92, line 136: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n722_statement_begin_α:                                                       jmp   n723_statement_end_α
n722_statement_begin_β:                                                       jmp   n724_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n723_statement_end_α:                                                         jmp   n724_statement_begin_α
#=======================================================================================================================
#                DEFINE('pp_bank()cur')                       :(pp_bank_end)
#-----------------------------------------------------------------------------------------------------------------------
n724_statement_begin_α:                                                       jmp   n725_func_activate_α
n724_statement_begin_β:                                                       jmp   n738_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n725_func_activate_α:   mov              rdi, qword ptr [rip + .Lx1545_0]
                        mov              rsi, qword ptr [rip + .Lx1545_1]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n726_statement_end_α
n725_func_activate_β:                                                         jmp   n724_statement_begin_β
.Lx1545_0:              .quad            .Lx1545_0_s
.Lx1545_0_s:            .string          "pp_bank"
.Lx1545_1:              .quad            .Lx1545_1_s
.Lx1545_1_s:            .string          "cur"
#-----------------------------------------------------------------------------------------------------------------------
n726_statement_end_α:                                                         jmp   n738_statement_begin_α
#=======================================================================================================================
# pp_bank        pp_node(bank, 0, '')
#-----------------------------------------------------------------------------------------------------------------------
pp_bank_body:                                                                 jmp   n728_var_α
n727_statement_begin_β:                                                       jmp   n733_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n728_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 688]            # bank
                        mov              rdx, qword ptr [r9 + 696]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n729_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n729_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1551_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n730_lit_string_α
n729_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n727_statement_begin_β
.Lx1551_0:              .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n730_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx1552_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n731_call_α
n730_lit_string_β:      add              rsp, 16;                             jmp   n729_lit_integer_β
.Lx1552_0:              .quad            .Lx1552_0_s
.Lx1552_0_s:            .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n731_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1554z]
                        lea              rax, [rip + pp_node_alpha];          jmp   rax
.Lsig1554z:             .quad            3
                        .quad            .Lx1554_2
                        .quad            .Lx1554_2
                        .quad            48
                        .quad            32
                        .quad            16
.Lx1554_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1554_29
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
.Lx1554_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx1554_240
                        add              rsp, 16;                             jmp   n730_lit_string_β
.Lx1554_240:                                                                  jmp   n732_statement_end_α
n731_call_β:                                                                  jmp   n730_lit_string_β
.Lx1554_0:              .quad            .Lx1554_0_s
.Lx1554_0_s:            .string          "pp_node"
#-----------------------------------------------------------------------------------------------------------------------
n732_statement_end_α:   add              rsp, 64;                             jmp   n733_statement_begin_α
#=======================================================================================================================
#                pp_bank        =  .dummy                     :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n733_statement_begin_α:                                                       jmp   n734_lit_string_α
n733_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n734_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1559_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n735_call_α
.Lx1559_0:              .quad            .Lx1559_0_s
.Lx1559_0_s:            .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n735_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1561:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1561]
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
                        cmp              eax, 104;                            jne   .Lx1560_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n733_statement_begin_β
.Lx1560_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n736_assign_α
n735_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n733_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n736_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 512], rax            # pp_bank
                        mov              qword ptr [r9 + 520], rdx;           jmp   n737_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n737_statement_end_α:   add              rsp, 32;                             jmp   RETURN
#=======================================================================================================================
# pp_bank_end  <stmt 96, line 141: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n738_statement_begin_α:                                                       jmp   n739_statement_end_α
n738_statement_begin_β:                                                       jmp   n740_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n739_statement_end_α:                                                         jmp   n740_statement_begin_α
#=======================================================================================================================
# slurp          line           =  INPUT                      :F(slurp_done)
#-----------------------------------------------------------------------------------------------------------------------
n740_statement_begin_α:                                                       jmp   n741_var_α
n740_statement_begin_β:                                                       jmp   n752_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n741_var_α:             sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx1571_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx1571_240
                        add              rsp, 16;                             jmp   n740_statement_begin_β
.Lx1571_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n742_assign_α
.Lx1571_0:              .quad            .Lx1571_0_s
.Lx1571_0_s:            .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n742_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 704], rax            # line
                        mov              qword ptr [r9 + 712], rdx;           jmp   n743_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n743_statement_end_α:   add              rsp, 16;                             jmp   n744_statement_begin_α
#=======================================================================================================================
#                src            =  src line nl                :(slurp)
#-----------------------------------------------------------------------------------------------------------------------
n744_statement_begin_α:                                                       jmp   n745_var_α
n744_statement_begin_β:                                                       jmp   n740_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n745_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 720]            # src
                        mov              rdx, qword ptr [r9 + 728]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n746_var_α
#-----------------------------------------------------------------------------------------------------------------------
n746_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 704]            # line
                        mov              rdx, qword ptr [r9 + 712]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n747_binop_α
n746_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n744_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n747_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n748_var_α
n747_binop_β:           add              rsp, 16;                             jmp   n746_var_β
#-----------------------------------------------------------------------------------------------------------------------
n748_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 528]            # nl
                        mov              rdx, qword ptr [r9 + 536]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n749_binop_α
n748_var_β:             add              rsp, 16;                             jmp   n747_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n749_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n750_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n750_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 720], rax            # src
                        mov              qword ptr [r9 + 728], rdx;           jmp   n751_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n751_statement_end_α:   add              rsp, 80;                             jmp   n740_statement_begin_α
#=======================================================================================================================
# slurp_done     t0             =  TIME()
#-----------------------------------------------------------------------------------------------------------------------
n752_statement_begin_α:                                                       jmp   n753_call_α
n752_statement_begin_β:                                                       jmp   n756_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n753_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd1588:           .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1588]
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
                        cmp              eax, 104;                            jne   .Lx1587_240
                        add              rsp, 16;                             jmp   n752_statement_begin_β
.Lx1587_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n754_assign_α
n753_call_β:            add              rsp, 16;                             jmp   n752_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n754_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 736], rax            # t0
                        mov              qword ptr [r9 + 744], rdx;           jmp   n755_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n755_statement_end_α:   add              rsp, 16;                             jmp   n756_statement_begin_α
#=======================================================================================================================
#                src            treebank                      :F(main_fail)
#-----------------------------------------------------------------------------------------------------------------------
n756_statement_begin_α:                                                       jmp   n757_var_α
n756_statement_begin_β:                                                       jmp   n780_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n757_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 720]            # src
                        mov              rdx, qword ptr [r9 + 728]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n758_var_α
#-----------------------------------------------------------------------------------------------------------------------
n758_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 672]            # treebank
                        mov              rdx, qword ptr [r9 + 680]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n759_assign_α
n758_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n780_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n759_assign_α:          mov              rsi, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1596_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n760_match_begin_α
n759_assign_β:                                                                jmp   n758_var_β
.Lx1596_0:              .quad            .Lx1596_0_s
.Lx1596_0_s:            .string          "PATV$0"
#-----------------------------------------------------------------------------------------------------------------------
n760_match_begin_α:     mov              rdi, qword ptr [rsp + 16]            # var
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
.Lx1598_0:              mov              r14d, dword ptr [rbp + -40];         jmp   n761_match_defer_α
n760_match_begin_β:     lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx1598_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx1598_1
                                                                              jmp   .Lx1598_0
.Lx1598_1:
n760_match_begin_af:    mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_match_ctx_restore@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   n759_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n761_match_defer_α:     lea              rdi, [rip + .S18]
                        xor              esi, esi
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_get_pat_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            jz    .Lx1599_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx1599_4]
                        lea              r11, [rip + .Lx1599_5];              jmp   rax
.Lx1599_4:                                                                    jmp   n762_match_end_α
.Lx1599_5:                                                                    jmp   n760_match_begin_β
.Lx1599_0:              push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S18]
                        xor              esi, esi
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx1599_2:              test             rax, rax;                            je    .Lx1599_3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx1599_7]
                        lea              rdx, [rip + .Lx1599_8];              jmp   rax
.Lx1599_7:              mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx1599_2
.Lx1599_8:              mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx1599_2
.Lx1599_3:              add              rsp, 8
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
                        test             eax, eax;                            js    n760_match_begin_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx1599_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n762_match_end_α
.Lx1599_6:              add              rsp, 16;                             jmp   n760_match_begin_β
n761_match_defer_β:                                                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n762_match_end_α:       push             r14
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
.Lx1601_1:              test             rax, rax;                            je    .Lx1601_2
                        lea              rcx, [rip + .Lx1601_3]
                        lea              rdx, [rip + .Lx1601_4];              jmp   rax
.Lx1601_3:              mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx1601_1
.Lx1601_4:              mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx1601_1
.Lx1601_2:              call             rt_dcap_end_ok_close@PLT
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
                        pop              rbp;                                 jmp   n763_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n763_statement_end_α:   add              rsp, 32;                             jmp   n764_statement_begin_α
#=======================================================================================================================
#                t1             =  TIME()
#-----------------------------------------------------------------------------------------------------------------------
n764_statement_begin_α:                                                       jmp   n765_call_α
n764_statement_begin_β:                                                       jmp   n768_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n765_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd1607:           .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1607]
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
                        cmp              eax, 104;                            jne   .Lx1606_240
                        add              rsp, 16;                             jmp   n764_statement_begin_β
.Lx1606_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n766_assign_α
n765_call_β:            add              rsp, 16;                             jmp   n764_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n766_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 752], rax            # t1
                        mov              qword ptr [r9 + 760], rdx;           jmp   n767_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n767_statement_end_α:   add              rsp, 16;                             jmp   n768_statement_begin_α
#=======================================================================================================================
#                TERMINAL       =  'match_ms=' (t1 - t0)
#-----------------------------------------------------------------------------------------------------------------------
n768_statement_begin_α:                                                       jmp   n769_lit_string_α
n768_statement_begin_β:                                                       jmp   n776_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n769_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Lx1613_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n770_var_α
.Lx1613_0:              .quad            .Lx1613_0_s
.Lx1613_0_s:            .string          "match_ms="
#-----------------------------------------------------------------------------------------------------------------------
n770_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 752]            # t1
                        mov              rdx, qword ptr [r9 + 760]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n771_var_α
n770_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n768_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n771_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 736]            # t0
                        mov              rdx, qword ptr [r9 + 744]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n772_binop_α
n771_var_β:             add              rsp, 16;                             jmp   n770_var_β
#-----------------------------------------------------------------------------------------------------------------------
n772_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx1616_240
                        add              rsp, 16;                             jmp   n771_var_β
.Lx1616_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n773_binop_α
n772_binop_β:           add              rsp, 16;                             jmp   n771_var_β
#-----------------------------------------------------------------------------------------------------------------------
n773_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n774_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n774_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1618_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n775_statement_end_α
.Lx1618_0:              .quad            .Lx1618_0_s
.Lx1618_0_s:            .string          "TERMINAL"
#-----------------------------------------------------------------------------------------------------------------------
n775_statement_end_α:   add              rsp, 80;                             jmp   n776_statement_begin_α
#=======================================================================================================================
#                dummy          =  pp_bank()                  :(END)
#-----------------------------------------------------------------------------------------------------------------------
n776_statement_begin_α:                                                       jmp   n777_call_α
n776_statement_begin_β:                                                       jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n777_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1624z]
                        lea              rax, [rip + pp_bank_alpha];          jmp   rax
.Lsig1624z:             .quad            0
                        .quad            .Lx1624_2
                        .quad            .Lx1624_2
.Lx1624_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1624_29
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
.Lx1624_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx1624_240
                        add              rsp, 16;                             jmp   n776_statement_begin_β
.Lx1624_240:                                                                  jmp   n778_assign_α
n777_call_β:                                                                  jmp   n776_statement_begin_β
.Lx1624_0:              .quad            .Lx1624_0_s
.Lx1624_0_s:            .string          "pp_bank"
#-----------------------------------------------------------------------------------------------------------------------
n778_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 560], rax            # dummy
                        mov              qword ptr [r9 + 568], rdx;           jmp   n779_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n779_statement_end_α:   add              rsp, 16;                             jmp   main_γ
#=======================================================================================================================
# main_fail      OUTPUT         =  'Pattern match failed'
#-----------------------------------------------------------------------------------------------------------------------
n780_statement_begin_α:                                                       jmp   n781_lit_string_α
n780_statement_begin_β:                                                       jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n781_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 20
                        mov              rax, qword ptr [rip + .Lx1630_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n782_assign_α
.Lx1630_0:              .quad            .Lx1630_0_s
.Lx1630_0_s:            .string          "Pattern match failed"
#-----------------------------------------------------------------------------------------------------------------------
n782_assign_α:          mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1631_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n783_statement_end_α
.Lx1631_0:              .quad            .Lx1631_0_s
.Lx1631_0_s:            .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n783_statement_end_α:   add              rsp, 16;                             jmp   main_γ
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
.S11:                   .string          "PAT$4$V0"
.S12:                   .string          "PAT$4$V1"
.S13:                   .string          "PAT$4$V5"
.S14:                   .string          "PAT$4$V2"
.S15:                   .string          "PAT$4$V3"
.S16:                   .string          "PAT$4$V4"
.S17:                   .string          "nl"
.S18:                   .string          "PATV$0"
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
