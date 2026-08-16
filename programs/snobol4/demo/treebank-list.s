                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__list_reverse:
#-----------------------------------------------------------------------------------------------------------------------
n0_save_restore_α:                                                            jmp   n1_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n1_goto_deferred_α:     lea              rax, [rip + LBL__list_reverse];      jmp   rax
                                                                              jmp   n2_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n2_save_restore_α:
list_reverse_α:         sub              rsp, 96
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
.Lx8_41:                lea              r10, [rip + list_reverse_γ]
                        lea              r11, [rip + list_reverse_ω]
                        push             r11
                        push             r10
                        lea              rax, [rip + LBL__list_reverse];      jmp   rax
list_reverse_γ:         mov              rdi, qword ptr [r9 + 0]              # list_reverse
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
list_reverse_ω:         mov              rcx, qword ptr [rsp + 64]
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
FN__stk_push_frame:
#-----------------------------------------------------------------------------------------------------------------------
n9_save_restore_α:                                                            jmp   n10_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n10_goto_deferred_α:    lea              rax, [rip + LBL__stk_push_frame];    jmp   rax
                                                                              jmp   n11_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n11_save_restore_α:
stk_push_frame_α:       sub              rsp, 64
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
.Lx17_41:               lea              r10, [rip + stk_push_frame_γ]
                        lea              r11, [rip + stk_push_frame_ω]
                        push             r11
                        push             r10
                        lea              rax, [rip + LBL__stk_push_frame];    jmp   rax
stk_push_frame_γ:       mov              rdi, qword ptr [r9 + 64]             # stk_push_frame
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
stk_push_frame_ω:       mov              rcx, qword ptr [rsp + 32]
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
FN__stk_push_item:
#-----------------------------------------------------------------------------------------------------------------------
n18_save_restore_α:                                                           jmp   n19_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n19_goto_deferred_α:    lea              rax, [rip + LBL__stk_push_item];     jmp   rax
                                                                              jmp   n20_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n20_save_restore_α:
stk_push_item_α:        sub              rsp, 64
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
.Lx26_41:               lea              r10, [rip + stk_push_item_γ]
                        lea              r11, [rip + stk_push_item_ω]
                        push             r11
                        push             r10
                        lea              rax, [rip + LBL__stk_push_item];     jmp   rax
stk_push_item_γ:        mov              rdi, qword ptr [r9 + 96]             # stk_push_item
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
stk_push_item_ω:        mov              rcx, qword ptr [rsp + 32]
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
FN__stk_pop_into_parent:
#-----------------------------------------------------------------------------------------------------------------------
n27_save_restore_α:                                                           jmp   n28_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n28_goto_deferred_α:    lea              rax, [rip + LBL__stk_pop_into_parent]
                                                                              jmp   rax
                                                                              jmp   n29_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n29_save_restore_α:
stk_pop_into_parent_α:  sub              rsp, 64
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
.Lx35_41:               lea              r10, [rip + stk_pop_into_parent_γ]
                        lea              r11, [rip + stk_pop_into_parent_ω]
                        push             r11
                        push             r10
                        lea              rax, [rip + LBL__stk_pop_into_parent]
                                                                              jmp   rax
stk_pop_into_parent_γ:  mov              rdi, qword ptr [r9 + 112]            # stk_pop_into_parent
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
stk_pop_into_parent_ω:  mov              rcx, qword ptr [rsp + 32]
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
FN__stk_pop_final:
#-----------------------------------------------------------------------------------------------------------------------
n36_save_restore_α:                                                           jmp   n37_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n37_goto_deferred_α:    lea              rax, [rip + LBL__stk_pop_final];     jmp   rax
                                                                              jmp   n38_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n38_save_restore_α:
stk_pop_final_α:        sub              rsp, 64
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
.Lx44_41:               lea              r10, [rip + stk_pop_final_γ]
                        lea              r11, [rip + stk_pop_final_ω]
                        push             r11
                        push             r10
                        lea              rax, [rip + LBL__stk_pop_final];     jmp   rax
stk_pop_final_γ:        mov              rdi, qword ptr [r9 + 144]            # stk_pop_final
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
stk_pop_final_ω:        mov              rcx, qword ptr [rsp + 32]
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
FN__init_list:
#-----------------------------------------------------------------------------------------------------------------------
n45_save_restore_α:                                                           jmp   n46_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n46_goto_deferred_α:    lea              rax, [rip + LBL__init_list];         jmp   rax
                                                                              jmp   n47_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n47_save_restore_α:
init_list_α:            sub              rsp, 64
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
.Lx53_41:               lea              r10, [rip + init_list_γ]
                        lea              r11, [rip + init_list_ω]
                        push             r11
                        push             r10
                        lea              rax, [rip + LBL__init_list];         jmp   rax
init_list_γ:            mov              rdi, qword ptr [r9 + 176]            # init_list
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
init_list_ω:            mov              rcx, qword ptr [rsp + 32]
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
FN__Init_list:
#-----------------------------------------------------------------------------------------------------------------------
n54_save_restore_α:                                                           jmp   n55_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n55_goto_deferred_α:    lea              rax, [rip + LBL__Init_list];         jmp   rax
                                                                              jmp   n56_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n56_save_restore_α:
Init_list_α:            sub              rsp, 64
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
.Lx62_41:               lea              r10, [rip + Init_list_γ]
                        lea              r11, [rip + Init_list_ω]
                        push             r11
                        push             r10
                        lea              rax, [rip + LBL__Init_list];         jmp   rax
Init_list_γ:            mov              rdi, qword ptr [r9 + 192]            # Init_list
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
Init_list_ω:            mov              rcx, qword ptr [rsp + 32]
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
FN__push_list:
#-----------------------------------------------------------------------------------------------------------------------
n63_save_restore_α:                                                           jmp   n64_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n64_goto_deferred_α:    lea              rax, [rip + LBL__push_list];         jmp   rax
                                                                              jmp   n65_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n65_save_restore_α:
push_list_α:            sub              rsp, 64
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
.Lx71_41:               lea              r10, [rip + push_list_γ]
                        lea              r11, [rip + push_list_ω]
                        push             r11
                        push             r10
                        lea              rax, [rip + LBL__push_list];         jmp   rax
push_list_γ:            mov              rdi, qword ptr [r9 + 224]            # push_list
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
push_list_ω:            mov              rcx, qword ptr [rsp + 32]
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
FN__Push_list:
#-----------------------------------------------------------------------------------------------------------------------
n72_save_restore_α:                                                           jmp   n73_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n73_goto_deferred_α:    lea              rax, [rip + LBL__Push_list];         jmp   rax
                                                                              jmp   n74_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n74_save_restore_α:
Push_list_α:            sub              rsp, 64
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
.Lx80_41:               lea              r10, [rip + Push_list_γ]
                        lea              r11, [rip + Push_list_ω]
                        push             r11
                        push             r10
                        lea              rax, [rip + LBL__Push_list];         jmp   rax
Push_list_γ:            mov              rdi, qword ptr [r9 + 240]            # Push_list
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
Push_list_ω:            mov              rcx, qword ptr [rsp + 32]
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
FN__push_item:
#-----------------------------------------------------------------------------------------------------------------------
n81_save_restore_α:                                                           jmp   n82_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n82_goto_deferred_α:    lea              rax, [rip + LBL__push_item];         jmp   rax
                                                                              jmp   n83_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n83_save_restore_α:
push_item_α:            sub              rsp, 64
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
.Lx89_41:               lea              r10, [rip + push_item_γ]
                        lea              r11, [rip + push_item_ω]
                        push             r11
                        push             r10
                        lea              rax, [rip + LBL__push_item];         jmp   rax
push_item_γ:            mov              rdi, qword ptr [r9 + 256]            # push_item
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
push_item_ω:            mov              rcx, qword ptr [rsp + 32]
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
FN__Push_item:
#-----------------------------------------------------------------------------------------------------------------------
n90_save_restore_α:                                                           jmp   n91_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n91_goto_deferred_α:    lea              rax, [rip + LBL__Push_item];         jmp   rax
                                                                              jmp   n92_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n92_save_restore_α:
Push_item_α:            sub              rsp, 64
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
.Lx98_41:               lea              r10, [rip + Push_item_γ]
                        lea              r11, [rip + Push_item_ω]
                        push             r11
                        push             r10
                        lea              rax, [rip + LBL__Push_item];         jmp   rax
Push_item_γ:            mov              rdi, qword ptr [r9 + 272]            # Push_item
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
Push_item_ω:            mov              rcx, qword ptr [rsp + 32]
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
FN__pop_list:
#-----------------------------------------------------------------------------------------------------------------------
n99_save_restore_α:                                                           jmp   n100_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n100_goto_deferred_α:   lea              rax, [rip + LBL__pop_list];          jmp   rax
                                                                              jmp   n101_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n101_save_restore_α:
pop_list_α:             sub              rsp, 48
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
                        lea              r10, [rip + pop_list_γ]
                        lea              r11, [rip + pop_list_ω]
                        push             r11
                        push             r10
                        lea              rax, [rip + LBL__pop_list];          jmp   rax
pop_list_γ:             mov              rdi, qword ptr [r9 + 288]
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
pop_list_ω:             mov              rcx, qword ptr [rsp + 32]
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
FN__Pop_list:
#-----------------------------------------------------------------------------------------------------------------------
n108_save_restore_α:                                                          jmp   n109_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n109_goto_deferred_α:   lea              rax, [rip + LBL__Pop_list];          jmp   rax
                                                                              jmp   n110_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n110_save_restore_α:
Pop_list_α:             sub              rsp, 48
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
                        lea              r10, [rip + Pop_list_γ]
                        lea              r11, [rip + Pop_list_ω]
                        push             r11
                        push             r10
                        lea              rax, [rip + LBL__Pop_list];          jmp   rax
Pop_list_γ:             mov              rdi, qword ptr [r9 + 304]
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
Pop_list_ω:             mov              rcx, qword ptr [rsp + 32]
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
FN__pop_final:
#-----------------------------------------------------------------------------------------------------------------------
n117_save_restore_α:                                                          jmp   n118_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n118_goto_deferred_α:   lea              rax, [rip + LBL__pop_final];         jmp   rax
                                                                              jmp   n119_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n119_save_restore_α:
pop_final_α:            sub              rsp, 64
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
.Lx125_41:              lea              r10, [rip + pop_final_γ]
                        lea              r11, [rip + pop_final_ω]
                        push             r11
                        push             r10
                        lea              rax, [rip + LBL__pop_final];         jmp   rax
pop_final_γ:            mov              rdi, qword ptr [r9 + 320]            # pop_final
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
pop_final_ω:            mov              rcx, qword ptr [rsp + 32]
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
FN__Pop_final:
#-----------------------------------------------------------------------------------------------------------------------
n126_save_restore_α:                                                          jmp   n127_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n127_goto_deferred_α:   lea              rax, [rip + LBL__Pop_final];         jmp   rax
                                                                              jmp   n128_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n128_save_restore_α:
Pop_final_α:            sub              rsp, 64
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
.Lx134_41:              lea              r10, [rip + Pop_final_γ]
                        lea              r11, [rip + Pop_final_ω]
                        push             r11
                        push             r10
                        lea              rax, [rip + LBL__Pop_final];         jmp   rax
Pop_final_γ:            mov              rdi, qword ptr [r9 + 336]            # Pop_final
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
Pop_final_ω:            mov              rcx, qword ptr [rsp + 32]
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
FN__node_repr:
#-----------------------------------------------------------------------------------------------------------------------
n135_save_restore_α:                                                          jmp   n136_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n136_goto_deferred_α:   lea              rax, [rip + LBL__node_repr];         jmp   rax
                                                                              jmp   n137_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n137_save_restore_α:
node_repr_α:            sub              rsp, 112
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
.Lx143_41:              lea              r10, [rip + node_repr_γ]
                        lea              r11, [rip + node_repr_ω]
                        push             r11
                        push             r10
                        lea              rax, [rip + LBL__node_repr];         jmp   rax
node_repr_γ:            mov              rdi, qword ptr [r9 + 352]            # node_repr
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
node_repr_ω:            mov              rcx, qword ptr [rsp + 80]
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
FN__pp_node:
#-----------------------------------------------------------------------------------------------------------------------
n144_save_restore_α:                                                          jmp   n145_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n145_goto_deferred_α:   lea              rax, [rip + LBL__pp_node];           jmp   rax
                                                                              jmp   n146_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n146_save_restore_α:
pp_node_α:              sub              rsp, 160
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
.Lx152_43:              lea              r10, [rip + pp_node_γ]
                        lea              r11, [rip + pp_node_ω]
                        push             r11
                        push             r10
                        lea              rax, [rip + LBL__pp_node];           jmp   rax
pp_node_γ:              mov              rdi, qword ptr [r9 + 432]            # pp_node
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
pp_node_ω:              mov              rcx, qword ptr [rsp + 96]
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
FN__pp_bank:
#-----------------------------------------------------------------------------------------------------------------------
n153_save_restore_α:                                                          jmp   n154_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n154_goto_deferred_α:   lea              rax, [rip + LBL__pp_bank];           jmp   rax
                                                                              jmp   n155_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n155_save_restore_α:
pp_bank_α:              sub              rsp, 64
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
.Lx161_41:              lea              r10, [rip + pp_bank_γ]
                        lea              r11, [rip + pp_bank_ω]
                        push             r11
                        push             r10
                        lea              rax, [rip + LBL__pp_bank];           jmp   rax
pp_bank_γ:              mov              rdi, qword ptr [r9 + 512]            # pp_bank
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
pp_bank_ω:              mov              rcx, qword ptr [rsp + 32]
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
FN__PAT$0:
proc_PAT$0_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 40
                        mov              qword ptr [rbp + -8], r10
                        mov              qword ptr [rbp + -16], r11
                        mov              qword ptr [rbp + -24], rdx
#-----------------------------------------------------------------------------------------------------------------------
n162_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rbp + -32], r14d;         jmp   n163_match_defer_α
n162_match_assign_save_β:
                        add              rsp, 16;                             jmp   proc_PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
n163_match_defer_α:     sub              rsp, 16
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        lea              rdx, [rip + .S0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx167_16
                        mov              rax, qword ptr [rdx + 0]
.Lx167_16:              test             rax, rax;                            jz    .Lx167_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx167_4]
                        lea              r11, [rip + .Lx167_5];               jmp   rax
.Lx167_4:                                                                     jmp   n164_match_assign_cond_α
.Lx167_5:               add              rsp, 16;                             jmp   n162_match_assign_save_β
.Lx167_0:               push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        lea              rdx, [rip + .S0]
                        xor              ecx, ecx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_open@PLT
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
FN__PAT$1:
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
FN__PAT$2:
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
FN__PAT$3:
proc_PAT$3_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 88
                        mov              qword ptr [rbp + -8], r10
                        mov              qword ptr [rbp + -16], r11
                        mov              qword ptr [rbp + -24], rdx
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
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        lea              rdx, [rip + .S2]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx199_16
                        mov              rax, qword ptr [rdx + 0]
.Lx199_16:              test             rax, rax;                            jz    .Lx199_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx199_4]
                        lea              r11, [rip + .Lx199_5];               jmp   rax
.Lx199_4:                                                                     jmp   n181_match_assign_cond_α
.Lx199_5:               add              rsp, 16;                             jmp   n179_match_assign_save_β
.Lx199_0:               push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        lea              rdx, [rip + .S2]
                        xor              ecx, ecx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_open@PLT
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
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        lea              rdx, [rip + .S4]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx202_16
                        mov              rax, qword ptr [rdx + 0]
.Lx202_16:              test             rax, rax;                            jz    .Lx202_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx202_4]
                        lea              r11, [rip + .Lx202_5];               jmp   rax
.Lx202_4:                                                                     jmp   n183_match_arbno_α
.Lx202_5:               add              rsp, 16;                             jmp   n181_match_assign_cond_β
.Lx202_0:               push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        lea              rdx, [rip + .S4]
                        xor              ecx, ecx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_open@PLT
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
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 5
                        lea              rdx, [rip + .S5]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx205_16
                        mov              rax, qword ptr [rdx + 0]
.Lx205_16:              test             rax, rax;                            jz    .Lx205_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx205_4]
                        lea              r11, [rip + .Lx205_5];               jmp   rax
.Lx205_4:                                                                     jmp   n185_match_lit_α
.Lx205_5:               add              rsp, 16;                             jmp   n183_match_arbno_β
.Lx205_0:               push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 5
                        lea              rdx, [rip + .S5]
                        xor              ecx, ecx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_open@PLT
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
n186_match_defer_α:     mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 4
                        lea              rdx, [rip + .S6]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx208_16
                        mov              rax, qword ptr [rdx + 0]
.Lx208_16:              test             rax, rax;                            jz    .Lx208_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx208_4]
                        lea              r11, [rip + .Lx208_5];               jmp   rax
.Lx208_4:                                                                     jmp   n187_match_fence1_α
.Lx208_5:                                                                     jmp   n183_match_arbno_af
.Lx208_0:               push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 4
                        lea              rdx, [rip + .S6]
                        xor              ecx, ecx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_open@PLT
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
n191_match_defer_α:     mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 2
                        lea              rdx, [rip + .S7]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx216_16
                        mov              rax, qword ptr [rdx + 0]
.Lx216_16:              test             rax, rax;                            jz    .Lx216_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx216_4]
                        lea              r11, [rip + .Lx216_5];               jmp   rax
.Lx216_4:                                                                     jmp   n192_match_assign_cond_α
.Lx216_5:                                                                     jmp   n190_match_assign_save_β
.Lx216_0:               push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 2
                        lea              rdx, [rip + .S7]
                        xor              ecx, ecx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_open@PLT
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
n193_match_defer_α:     mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 3
                        lea              rdx, [rip + .S9]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx219_16
                        mov              rax, qword ptr [rdx + 0]
.Lx219_16:              test             rax, rax;                            jz    .Lx219_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx219_4]
                        lea              r11, [rip + .Lx219_5];               jmp   rax
.Lx219_4:                                                                     jmp   n188_match_alternate_s1
.Lx219_5:                                                                     jmp   n192_match_assign_cond_β
.Lx219_0:               push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 3
                        lea              rdx, [rip + .S9]
                        xor              ecx, ecx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_open@PLT
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
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 632];           jmp   .Lx220_10
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
FN__PAT$4:
proc_PAT$4_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 56
                        mov              qword ptr [rbp + -8], r10
                        mov              qword ptr [rbp + -16], r11
                        mov              qword ptr [rbp + -24], rdx
#-----------------------------------------------------------------------------------------------------------------------
n221_match_pos_α:       mov              rax, 0
                        cmp              r14d, eax;                           jne   proc_PAT$4_ω
                                                                              jmp   n222_match_defer_α
n221_match_pos_β:                                                             jmp   proc_PAT$4_ω
#-----------------------------------------------------------------------------------------------------------------------
n222_match_defer_α:     sub              rsp, 16
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        lea              rdx, [rip + .S11]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx233_16
                        mov              rax, qword ptr [rdx + 0]
.Lx233_16:              test             rax, rax;                            jz    .Lx233_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx233_4]
                        lea              r11, [rip + .Lx233_5];               jmp   rax
.Lx233_4:                                                                     jmp   n223_match_defer_α
.Lx233_5:               add              rsp, 16;                             jmp   proc_PAT$4_ω
.Lx233_0:               push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        lea              rdx, [rip + .S11]
                        xor              ecx, ecx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_open@PLT
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
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        lea              rdx, [rip + .S12]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx234_16
                        mov              rax, qword ptr [rdx + 0]
.Lx234_16:              test             rax, rax;                            jz    .Lx234_0
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
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        lea              rdx, [rip + .S12]
                        xor              ecx, ecx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_open@PLT
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
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 5
                        lea              rdx, [rip + .S13]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx237_16
                        mov              rax, qword ptr [rdx + 0]
.Lx237_16:              test             rax, rax;                            jz    .Lx237_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx237_4]
                        lea              r11, [rip + .Lx237_5];               jmp   rax
.Lx237_4:                                                                     jmp   n226_match_rpos_α
.Lx237_5:               add              rsp, 16;                             jmp   n224_match_arbno_β
.Lx237_0:               push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 5
                        lea              rdx, [rip + .S13]
                        xor              ecx, ecx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_open@PLT
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
n227_match_defer_α:     mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 2
                        lea              rdx, [rip + .S14]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx239_16
                        mov              rax, qword ptr [rdx + 0]
.Lx239_16:              test             rax, rax;                            jz    .Lx239_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx239_4]
                        lea              r11, [rip + .Lx239_5];               jmp   rax
.Lx239_4:                                                                     jmp   n228_match_arbno_α
.Lx239_5:                                                                     jmp   n224_match_arbno_af
.Lx239_0:               push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 2
                        lea              rdx, [rip + .S14]
                        xor              ecx, ecx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_open@PLT
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
n229_match_defer_α:     mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 3
                        lea              rdx, [rip + .S15]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx242_16
                        mov              rax, qword ptr [rdx + 0]
.Lx242_16:              test             rax, rax;                            jz    .Lx242_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx242_4]
                        lea              r11, [rip + .Lx242_5];               jmp   rax
.Lx242_4:                                                                     jmp   n230_match_defer_α
.Lx242_5:                                                                     jmp   n228_match_arbno_β
.Lx242_0:               push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 3
                        lea              rdx, [rip + .S15]
                        xor              ecx, ecx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_open@PLT
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
n230_match_defer_α:     mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 4
                        lea              rdx, [rip + .S16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx243_16
                        mov              rax, qword ptr [rdx + 0]
.Lx243_16:              test             rax, rax;                            jz    .Lx243_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx243_4]
                        lea              r11, [rip + .Lx243_5];               jmp   rax
.Lx243_4:                                                                     jmp   n224_match_arbno_as
.Lx243_5:                                                                     jmp   n224_match_arbno_af
.Lx243_0:               push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 4
                        lea              rdx, [rip + .S16]
                        xor              ecx, ecx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_open@PLT
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
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 632];           jmp   .Lx244_10
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
                        lea              rsi, [rip + LBL__list_reverse]
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
                        lea              rsi, [rip + LBL__stk_push_frame]
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
                        lea              rsi, [rip + LBL__stk_push_item]
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
                        lea              rsi, [rip + LBL__stk_pop_into_parent]
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
                        lea              rsi, [rip + LBL__stk_pop_final]
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
                        lea              rsi, [rip + LBL__init_list]
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
                        lea              rsi, [rip + LBL__Init_list]
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
                        lea              rsi, [rip + LBL__push_list]
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
                        lea              rsi, [rip + LBL__Push_list]
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
                        lea              rsi, [rip + LBL__push_item]
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
                        lea              rsi, [rip + LBL__Push_item]
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
                        lea              rsi, [rip + LBL__pop_list]
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
                        lea              rsi, [rip + LBL__Pop_list]
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
                        lea              rsi, [rip + LBL__pop_final]
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
                        lea              rsi, [rip + LBL__Pop_final]
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
                        lea              rsi, [rip + LBL__node_repr]
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
                        lea              rsi, [rip + LBL__pp_node]
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
                        lea              rsi, [rip + LBL__pp_bank]
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
                        lea              rsi, [rip + FN__PAT$0]
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
                        lea              rsi, [rip + FN__PAT$1]
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
                        lea              rsi, [rip + FN__PAT$2]
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
                        lea              rsi, [rip + FN__PAT$3]
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
                        lea              rsi, [rip + FN__PAT$4]
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
                        mov              rdi, qword ptr [rip + .Lx792_0]
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
.Lx792_0:               .quad            .Lx792_0_s
.Lx792_0_s:             .string          "ALPHABET"
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
.Lx794_0:               mov              r14d, dword ptr [rbp + -40];         jmp   n248_match_pos_α
n247_match_begin_β:     lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx794_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx794_1
                                                                              jmp   .Lx794_0
.Lx794_1:
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
                        cmp              eax, r15d;                           jle   .Lx798_240
                        add              rsp, 16;                             jmp   n247_match_begin_β
.Lx798_240:             add              r14d, 1;                             jmp   n251_match_assign_cond_α
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
.Lx802_1:               test             rax, rax;                            je    .Lx802_2
                        lea              rcx, [rip + .Lx802_3]
                        lea              rdx, [rip + .Lx802_4];               jmp   rax
.Lx802_3:               mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx802_1
.Lx802_4:               mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx802_1
.Lx802_2:               call             rt_dcap_end_ok_close@PLT
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
                        mov              rax, qword ptr [rip + .Lx807_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n256_call_α
.Lx807_0:               .quad            .Lx807_0_s
.Lx807_0_s:             .string          "list(head,tail)"
#-----------------------------------------------------------------------------------------------------------------------
n256_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd809:            .string          "DATA"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd809]
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
                        cmp              eax, 104;                            jne   .Lx808_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n254_statement_begin_β
.Lx808_240:             mov              qword ptr [rsp + 0], rax             # result
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
n259_func_activate_α:   mov              rdi, qword ptr [rip + .Lx815_0]
                        mov              rsi, qword ptr [rip + .Lx815_1]
                        mov              edx, 3
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + FN__list_reverse]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n260_statement_end_α
n259_func_activate_β:                                                         jmp   n258_statement_begin_β
.Lx815_0:               .quad            .Lx815_0_s
.Lx815_0_s:             .string          "list_reverse"
.Lx815_1:               .quad            .Lx815_1_s
.Lx815_1_s:             .string          "lst,acc,cur"
#-----------------------------------------------------------------------------------------------------------------------
n260_statement_end_α:                                                         jmp   n289_statement_begin_α
#=======================================================================================================================
# list_reverse   acc            =
#-----------------------------------------------------------------------------------------------------------------------
LBL__list_reverse:                                                            jmp   n262_lit_string_α
n261_statement_begin_β:                                                       jmp   n265_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n262_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx820_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n263_assign_α
.Lx820_0:               .quad            .Lx820_0_s
.Lx820_0_s:             .string          ""
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
.Lrkfnzd834:            .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd834]
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
                        cmp              eax, 104;                            jne   .Lx833_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n269_statement_begin_β
.Lx833_240:             mov              qword ptr [rsp + 0], rax             # result
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
.Lrkfnzd841:            .string          "head"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd841]
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
                        cmp              eax, 104;                            jne   .Lx840_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n273_statement_begin_β
.Lx840_240:             mov              qword ptr [rsp + 0], rax             # result
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
.Lrkfnzd844:            .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd844]
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
                        cmp              eax, 104;                            jne   .Lx843_240
                        add              rsp, 16;                             jmp   n276_var_β
.Lx843_240:             mov              qword ptr [rsp + 0], rax             # result
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
.Lrkfnzd852:            .string          "tail"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd852]
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
                        cmp              eax, 104;                            jne   .Lx851_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n280_statement_begin_β
.Lx851_240:             mov              qword ptr [rsp + 0], rax             # result
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
n292_func_activate_α:   mov              rdi, qword ptr [rip + .Lx869_0]
                        mov              rsi, qword ptr [rip + .Lx869_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + FN__stk_push_frame]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n293_statement_end_α
n292_func_activate_β:                                                         jmp   n291_statement_begin_β
.Lx869_0:               .quad            .Lx869_0_s
.Lx869_0_s:             .string          "stk_push_frame"
.Lx869_1:               .quad            .Lx869_1_s
.Lx869_1_s:             .string          "v"
#-----------------------------------------------------------------------------------------------------------------------
n293_statement_end_α:                                                         jmp   n307_statement_begin_α
#=======================================================================================================================
# stk_push_frame stk            =  list(list(v,), stk)
#-----------------------------------------------------------------------------------------------------------------------
LBL__stk_push_frame:                                                          jmp   n295_var_α
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
                        mov              rax, qword ptr [rip + .Lx875_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n297_call_α
n296_lit_string_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n294_statement_begin_β
.Lx875_0:               .quad            .Lx875_0_s
.Lx875_0_s:             .string          ""
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
                        add              rsp, 16;                             jmp   n296_lit_string_β
.Lx876_240:             mov              qword ptr [rsp + 0], rax             # result
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
.Lrkfnzd880:            .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd880]
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
                        cmp              eax, 104;                            jne   .Lx879_240
                        add              rsp, 16;                             jmp   n298_var_β
.Lx879_240:             mov              qword ptr [rsp + 0], rax             # result
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
                        mov              rax, qword ptr [rip + .Lx886_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n304_call_α
.Lx886_0:               .quad            .Lx886_0_s
.Lx886_0_s:             .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n304_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd888:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd888]
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
                        cmp              eax, 104;                            jne   .Lx887_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n302_statement_begin_β
.Lx887_240:             mov              qword ptr [rsp + 0], rax             # result
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
n310_func_activate_α:   mov              rdi, qword ptr [rip + .Lx899_0]
                        mov              rsi, qword ptr [rip + .Lx899_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + FN__stk_push_item]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n311_statement_end_α
n310_func_activate_β:                                                         jmp   n309_statement_begin_β
.Lx899_0:               .quad            .Lx899_0_s
.Lx899_0_s:             .string          "stk_push_item"
.Lx899_1:               .quad            .Lx899_1_s
.Lx899_1_s:             .string          "v"
#-----------------------------------------------------------------------------------------------------------------------
n311_statement_end_α:                                                         jmp   n326_statement_begin_α
#=======================================================================================================================
# stk_push_item  head(stk)      =  list(v, head(stk))
#-----------------------------------------------------------------------------------------------------------------------
LBL__stk_push_item:                                                           jmp   n313_var_α
n312_statement_begin_β:                                                       jmp   n321_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n313_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 544]            # stk
                        mov              rdx, qword ptr [r9 + 552]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n314_field_var_α
#-----------------------------------------------------------------------------------------------------------------------
n314_field_var_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx905_0]
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
                        cmp              eax, 104;                            jne   .Lx905_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n312_statement_begin_β
.Lx905_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n315_var_α
n314_field_var_β:       add              rsp, 16
                        add              rsp, 16;                             jmp   n312_statement_begin_β
.Lx905_0:               .quad            .Lx905_0_s
.Lx905_0_s:             .string          "head"
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
.Lrkfnzd909:            .string          "head"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd909]
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
                        cmp              eax, 104;                            jne   .Lx908_240
                        add              rsp, 16;                             jmp   n316_var_β
.Lx908_240:             mov              qword ptr [rsp + 0], rax             # result
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
.Lrkfnzd911:            .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd911]
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
                        cmp              eax, 104;                            jne   .Lx910_240
                        add              rsp, 32;                             jmp   n316_var_β
.Lx910_240:             mov              qword ptr [rsp + 0], rax             # result
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
                        cmp              eax, 104;                            jne   .Lx912_240
                        add              rsp, 48;                             jmp   n316_var_β
.Lx912_240:             mov              qword ptr [rsp + 0], rax             # result
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
                        mov              rax, qword ptr [rip + .Lx917_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n323_call_α
.Lx917_0:               .quad            .Lx917_0_s
.Lx917_0_s:             .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n323_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd919:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd919]
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
                        cmp              eax, 104;                            jne   .Lx918_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n321_statement_begin_β
.Lx918_240:             mov              qword ptr [rsp + 0], rax             # result
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
n329_func_activate_α:   mov              rdi, qword ptr [rip + .Lx930_0]
                        mov              rsi, qword ptr [rip + .Lx930_1]
                        mov              edx, 1
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + FN__stk_pop_into_parent]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n330_statement_end_α
n329_func_activate_β:                                                         jmp   n328_statement_begin_β
.Lx930_0:               .quad            .Lx930_0_s
.Lx930_0_s:             .string          "stk_pop_into_parent"
.Lx930_1:               .quad            .Lx930_1_s
.Lx930_1_s:             .string          "child"
#-----------------------------------------------------------------------------------------------------------------------
n330_statement_end_α:                                                         jmp   n358_statement_begin_α
#=======================================================================================================================
# stk_pop_into_parent  <stmt 20, line 32: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
LBL__stk_pop_into_parent:
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
.Lrkfnzd941:            .string          "head"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd941]
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
                        cmp              eax, 104;                            jne   .Lx940_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n333_statement_begin_β
.Lx940_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n336_call_α
n335_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n333_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n336_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig943z]
                        lea              rax, [rip + list_reverse_α];         jmp   rax
.Lsig943z:              .quad            1
                        .quad            .Lx943_2
                        .quad            .Lx943_2
                        .quad            16
.Lx943_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx943_29
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
.Lx943_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx943_240
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n333_statement_begin_β
.Lx943_240:                                                                   jmp   n337_assign_α
n336_call_β:                                                                  jmp   n333_statement_begin_β
.Lx943_0:               .quad            .Lx943_0_s
.Lx943_0_s:             .string          "list_reverse"
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
.Lrkfnzd951:            .string          "tail"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd951]
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
                        cmp              eax, 104;                            jne   .Lx950_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n339_statement_begin_β
.Lx950_240:             mov              qword ptr [rsp + 0], rax             # result
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
                        mov              rdi, qword ptr [rip + .Lx958_0]
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
                        cmp              eax, 104;                            jne   .Lx958_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n344_statement_begin_β
.Lx958_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n347_var_α
n346_field_var_β:       add              rsp, 16
                        add              rsp, 16;                             jmp   n344_statement_begin_β
.Lx958_0:               .quad            .Lx958_0_s
.Lx958_0_s:             .string          "head"
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
.Lrkfnzd962:            .string          "head"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd962]
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
                        cmp              eax, 104;                            jne   .Lx961_240
                        add              rsp, 16;                             jmp   n348_var_β
.Lx961_240:             mov              qword ptr [rsp + 0], rax             # result
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
.Lrkfnzd964:            .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd964]
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
                        cmp              eax, 104;                            jne   .Lx963_240
                        add              rsp, 32;                             jmp   n348_var_β
.Lx963_240:             mov              qword ptr [rsp + 0], rax             # result
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
                        cmp              eax, 104;                            jne   .Lx965_240
                        add              rsp, 48;                             jmp   n348_var_β
.Lx965_240:             mov              qword ptr [rsp + 0], rax             # result
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
                        mov              rax, qword ptr [rip + .Lx970_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n355_call_α
.Lx970_0:               .quad            .Lx970_0_s
.Lx970_0_s:             .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n355_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd972:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd972]
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
                        cmp              eax, 104;                            jne   .Lx971_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n353_statement_begin_β
.Lx971_240:             mov              qword ptr [rsp + 0], rax             # result
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
n361_func_activate_α:   mov              rdi, qword ptr [rip + .Lx983_0]
                        mov              rsi, qword ptr [rip + .Lx983_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + FN__stk_pop_final]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n362_statement_end_α
n361_func_activate_β:                                                         jmp   n360_statement_begin_β
.Lx983_0:               .quad            .Lx983_0_s
.Lx983_0_s:             .string          "stk_pop_final"
.Lx983_1:               .quad            .Lx983_1_s
.Lx983_1_s:             .string          "var"
#-----------------------------------------------------------------------------------------------------------------------
n362_statement_end_α:                                                         jmp   n381_statement_begin_α
#=======================================================================================================================
# stk_pop_final  $var           =  list_reverse(head(stk))
#-----------------------------------------------------------------------------------------------------------------------
LBL__stk_pop_final:                                                           jmp   n364_var_α
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
.Lrkfnzd990:            .string          "SNO$NAME"
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
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n363_statement_begin_β
.Lx989_240:             mov              qword ptr [rsp + 0], rax             # result
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
.Lrkfnzd993:            .string          "head"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd993]
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
                        cmp              eax, 104;                            jne   .Lx992_240
                        add              rsp, 16;                             jmp   n366_var_β
.Lx992_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n368_call_α
n367_call_β:            add              rsp, 16;                             jmp   n366_var_β
#-----------------------------------------------------------------------------------------------------------------------
n368_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig995z]
                        lea              rax, [rip + list_reverse_α];         jmp   rax
.Lsig995z:              .quad            1
                        .quad            .Lx995_2
                        .quad            .Lx995_2
                        .quad            16
.Lx995_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx995_29
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
.Lx995_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx995_240
                        add              rsp, 32;                             jmp   n366_var_β
.Lx995_240:                                                                   jmp   n369_assign_var_α
n368_call_β:                                                                  jmp   n366_var_β
.Lx995_0:               .quad            .Lx995_0_s
.Lx995_0_s:             .string          "list_reverse"
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
                        cmp              eax, 104;                            jne   .Lx996_240
                        add              rsp, 48;                             jmp   n366_var_β
.Lx996_240:             mov              qword ptr [rsp + 0], rax             # result
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
.Lrkfnzd1003:           .string          "tail"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1003]
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
                        cmp              eax, 104;                            jne   .Lx1002_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n371_statement_begin_β
.Lx1002_240:            mov              qword ptr [rsp + 0], rax             # result
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
                        mov              rax, qword ptr [rip + .Lx1009_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n378_call_α
.Lx1009_0:              .quad            .Lx1009_0_s
.Lx1009_0_s:            .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n378_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1011:           .string          "SNO$NAME"
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
                        add              rsp, 16;                             jmp   n376_statement_begin_β
.Lx1010_240:            mov              qword ptr [rsp + 0], rax             # result
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
n384_func_activate_α:   mov              rdi, qword ptr [rip + .Lx1022_0]
                        mov              rsi, qword ptr [rip + .Lx1022_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + FN__init_list]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n385_statement_end_α
n384_func_activate_β:                                                         jmp   n383_statement_begin_β
.Lx1022_0:              .quad            .Lx1022_0_s
.Lx1022_0_s:            .string          "init_list"
.Lx1022_1:              .quad            .Lx1022_1_s
.Lx1022_1_s:            .string          "v"
#-----------------------------------------------------------------------------------------------------------------------
n385_statement_end_α:                                                         jmp   n386_statement_begin_α
#=======================================================================================================================
#                DEFINE('Init_list(vs)')                      :(init_list_end)
#-----------------------------------------------------------------------------------------------------------------------
n386_statement_begin_α:                                                       jmp   n387_func_activate_α
n386_statement_begin_β:                                                       jmp   n413_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n387_func_activate_α:   mov              rdi, qword ptr [rip + .Lx1028_0]
                        mov              rsi, qword ptr [rip + .Lx1028_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + FN__Init_list]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n388_statement_end_α
n387_func_activate_β:                                                         jmp   n386_statement_begin_β
.Lx1028_0:              .quad            .Lx1028_0_s
.Lx1028_0_s:            .string          "Init_list"
.Lx1028_1:              .quad            .Lx1028_1_s
.Lx1028_1_s:            .string          "vs"
#-----------------------------------------------------------------------------------------------------------------------
n388_statement_end_α:                                                         jmp   n413_statement_begin_α
#=======================================================================================================================
# init_list      $v             =
#-----------------------------------------------------------------------------------------------------------------------
LBL__init_list:                                                               jmp   n390_var_α
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
.Lrkfnzd1035:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1035]
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
                        cmp              eax, 104;                            jne   .Lx1034_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n389_statement_begin_β
.Lx1034_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n392_lit_string_α
n391_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n389_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n392_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx1036_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n393_assign_var_α
n392_lit_string_β:      add              rsp, 16
                        add              rsp, 32;                             jmp   n389_statement_begin_β
.Lx1036_0:              .quad            .Lx1036_0_s
.Lx1036_0_s:            .string          ""
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
                        cmp              eax, 104;                            jne   .Lx1037_240
                        add              rsp, 16;                             jmp   n392_lit_string_β
.Lx1037_240:            mov              qword ptr [rsp + 0], rax             # result
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
                        mov              rax, qword ptr [rip + .Lx1042_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n397_assign_α
.Lx1042_0:              .quad            .Lx1042_0_s
.Lx1042_0_s:            .string          ""
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
                        mov              rax, qword ptr [rip + .Lx1048_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n401_call_α
.Lx1048_0:              .quad            .Lx1048_0_s
.Lx1048_0_s:            .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n401_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1050:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1050]
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
                        cmp              eax, 104;                            jne   .Lx1049_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n399_statement_begin_β
.Lx1049_240:            mov              qword ptr [rsp + 0], rax             # result
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
LBL__Init_list:                                                               jmp   n405_lit_string_α
n404_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n405_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 21
                        mov              rax, qword ptr [rip + .Lx1056_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n406_var_α
.Lx1056_0:              .quad            .Lx1056_0_s
.Lx1056_0_s:            .string          "epsilon . *init_list("
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
                        mov              rax, qword ptr [rip + .Lx1059_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n409_binop_α
n408_lit_string_β:      add              rsp, 16;                             jmp   n407_binop_β
.Lx1059_0:              .quad            .Lx1059_0_s
.Lx1059_0_s:            .string          ")"
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
.Lrkfnzd1062:           .string          "EVAL"
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
                        add              rsp, 16;                             jmp   n409_binop_β
.Lx1061_240:            mov              qword ptr [rsp + 0], rax             # result
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
n416_func_activate_α:   mov              rdi, qword ptr [rip + .Lx1073_0]
                        mov              rsi, qword ptr [rip + .Lx1073_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + FN__push_list]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n417_statement_end_α
n416_func_activate_β:                                                         jmp   n415_statement_begin_β
.Lx1073_0:              .quad            .Lx1073_0_s
.Lx1073_0_s:            .string          "push_list"
.Lx1073_1:              .quad            .Lx1073_1_s
.Lx1073_1_s:            .string          "v"
#-----------------------------------------------------------------------------------------------------------------------
n417_statement_end_α:                                                         jmp   n418_statement_begin_α
#=======================================================================================================================
#                DEFINE('Push_list(vs)')                      :(push_list_end)
#-----------------------------------------------------------------------------------------------------------------------
n418_statement_begin_α:                                                       jmp   n419_func_activate_α
n418_statement_begin_β:                                                       jmp   n440_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n419_func_activate_α:   mov              rdi, qword ptr [rip + .Lx1079_0]
                        mov              rsi, qword ptr [rip + .Lx1079_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + FN__Push_list]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n420_statement_end_α
n419_func_activate_β:                                                         jmp   n418_statement_begin_β
.Lx1079_0:              .quad            .Lx1079_0_s
.Lx1079_0_s:            .string          "Push_list"
.Lx1079_1:              .quad            .Lx1079_1_s
.Lx1079_1_s:            .string          "vs"
#-----------------------------------------------------------------------------------------------------------------------
n420_statement_end_α:                                                         jmp   n440_statement_begin_α
#=======================================================================================================================
# push_list      dummy          =  stk_push_frame(v)
#-----------------------------------------------------------------------------------------------------------------------
LBL__push_list:                                                               jmp   n422_var_α
n421_statement_begin_β:                                                       jmp   n426_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n422_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # v
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n423_call_α
#-----------------------------------------------------------------------------------------------------------------------
n423_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1086z]
                        lea              rax, [rip + stk_push_frame_α];       jmp   rax
.Lsig1086z:             .quad            1
                        .quad            .Lx1086_2
                        .quad            .Lx1086_2
                        .quad            16
.Lx1086_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1086_29
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
.Lx1086_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx1086_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n421_statement_begin_β
.Lx1086_240:                                                                  jmp   n424_assign_α
n423_call_β:                                                                  jmp   n421_statement_begin_β
.Lx1086_0:              .quad            .Lx1086_0_s
.Lx1086_0_s:            .string          "stk_push_frame"
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
                        mov              rax, qword ptr [rip + .Lx1092_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n428_call_α
.Lx1092_0:              .quad            .Lx1092_0_s
.Lx1092_0_s:            .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n428_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1094:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1094]
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
                        cmp              eax, 104;                            jne   .Lx1093_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n426_statement_begin_β
.Lx1093_240:            mov              qword ptr [rsp + 0], rax             # result
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
LBL__Push_list:                                                               jmp   n432_lit_string_α
n431_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n432_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 21
                        mov              rax, qword ptr [rip + .Lx1100_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n433_var_α
.Lx1100_0:              .quad            .Lx1100_0_s
.Lx1100_0_s:            .string          "epsilon . *push_list("
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
                        mov              rax, qword ptr [rip + .Lx1103_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n436_binop_α
n435_lit_string_β:      add              rsp, 16;                             jmp   n434_binop_β
.Lx1103_0:              .quad            .Lx1103_0_s
.Lx1103_0_s:            .string          ")"
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
.Lrkfnzd1106:           .string          "EVAL"
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
                        add              rsp, 16;                             jmp   n436_binop_β
.Lx1105_240:            mov              qword ptr [rsp + 0], rax             # result
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
n443_func_activate_α:   mov              rdi, qword ptr [rip + .Lx1117_0]
                        mov              rsi, qword ptr [rip + .Lx1117_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + FN__push_item]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n444_statement_end_α
n443_func_activate_β:                                                         jmp   n442_statement_begin_β
.Lx1117_0:              .quad            .Lx1117_0_s
.Lx1117_0_s:            .string          "push_item"
.Lx1117_1:              .quad            .Lx1117_1_s
.Lx1117_1_s:            .string          "v"
#-----------------------------------------------------------------------------------------------------------------------
n444_statement_end_α:                                                         jmp   n445_statement_begin_α
#=======================================================================================================================
#                DEFINE('Push_item(vs)')                      :(push_item_end)
#-----------------------------------------------------------------------------------------------------------------------
n445_statement_begin_α:                                                       jmp   n446_func_activate_α
n445_statement_begin_β:                                                       jmp   n467_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n446_func_activate_α:   mov              rdi, qword ptr [rip + .Lx1123_0]
                        mov              rsi, qword ptr [rip + .Lx1123_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + FN__Push_item]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n447_statement_end_α
n446_func_activate_β:                                                         jmp   n445_statement_begin_β
.Lx1123_0:              .quad            .Lx1123_0_s
.Lx1123_0_s:            .string          "Push_item"
.Lx1123_1:              .quad            .Lx1123_1_s
.Lx1123_1_s:            .string          "vs"
#-----------------------------------------------------------------------------------------------------------------------
n447_statement_end_α:                                                         jmp   n467_statement_begin_α
#=======================================================================================================================
# push_item      dummy          =  stk_push_item(v)
#-----------------------------------------------------------------------------------------------------------------------
LBL__push_item:                                                               jmp   n449_var_α
n448_statement_begin_β:                                                       jmp   n453_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n449_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # v
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n450_call_α
#-----------------------------------------------------------------------------------------------------------------------
n450_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1130z]
                        lea              rax, [rip + stk_push_item_α];        jmp   rax
.Lsig1130z:             .quad            1
                        .quad            .Lx1130_2
                        .quad            .Lx1130_2
                        .quad            16
.Lx1130_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1130_29
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
.Lx1130_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx1130_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n448_statement_begin_β
.Lx1130_240:                                                                  jmp   n451_assign_α
n450_call_β:                                                                  jmp   n448_statement_begin_β
.Lx1130_0:              .quad            .Lx1130_0_s
.Lx1130_0_s:            .string          "stk_push_item"
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
                        mov              rax, qword ptr [rip + .Lx1136_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n455_call_α
.Lx1136_0:              .quad            .Lx1136_0_s
.Lx1136_0_s:            .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n455_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1138:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1138]
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
                        cmp              eax, 104;                            jne   .Lx1137_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n453_statement_begin_β
.Lx1137_240:            mov              qword ptr [rsp + 0], rax             # result
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
LBL__Push_item:                                                               jmp   n459_lit_string_α
n458_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n459_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 21
                        mov              rax, qword ptr [rip + .Lx1144_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n460_var_α
.Lx1144_0:              .quad            .Lx1144_0_s
.Lx1144_0_s:            .string          "epsilon . *push_item("
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
                        mov              rax, qword ptr [rip + .Lx1147_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n463_binop_α
n462_lit_string_β:      add              rsp, 16;                             jmp   n461_binop_β
.Lx1147_0:              .quad            .Lx1147_0_s
.Lx1147_0_s:            .string          ")"
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
.Lrkfnzd1150:           .string          "EVAL"
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
                        add              rsp, 16;                             jmp   n463_binop_β
.Lx1149_240:            mov              qword ptr [rsp + 0], rax             # result
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
n470_func_activate_α:   mov              rdi, qword ptr [rip + .Lx1161_0]
                        mov              rsi, qword ptr [rip + .Lx1161_1]
                        mov              edx, 0
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + FN__pop_list]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n471_statement_end_α
n470_func_activate_β:                                                         jmp   n469_statement_begin_β
.Lx1161_0:              .quad            .Lx1161_0_s
.Lx1161_0_s:            .string          "pop_list"
.Lx1161_1:              .quad            .Lx1161_1_s
.Lx1161_1_s:            .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n471_statement_end_α:                                                         jmp   n472_statement_begin_α
#=======================================================================================================================
#                DEFINE('Pop_list()')                         :(pop_list_end)
#-----------------------------------------------------------------------------------------------------------------------
n472_statement_begin_α:                                                       jmp   n473_func_activate_α
n472_statement_begin_β:                                                       jmp   n492_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n473_func_activate_α:   mov              rdi, qword ptr [rip + .Lx1167_0]
                        mov              rsi, qword ptr [rip + .Lx1167_1]
                        mov              edx, 0
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + FN__Pop_list]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n474_statement_end_α
n473_func_activate_β:                                                         jmp   n472_statement_begin_β
.Lx1167_0:              .quad            .Lx1167_0_s
.Lx1167_0_s:            .string          "Pop_list"
.Lx1167_1:              .quad            .Lx1167_1_s
.Lx1167_1_s:            .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n474_statement_end_α:                                                         jmp   n492_statement_begin_α
#=======================================================================================================================
# pop_list       dummy          =  stk_pop_into_parent()
#-----------------------------------------------------------------------------------------------------------------------
LBL__pop_list:                                                                jmp   n476_call_α
n475_statement_begin_β:                                                       jmp   n479_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n476_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1173z]
                        lea              rax, [rip + stk_pop_into_parent_α];  jmp   rax
.Lsig1173z:             .quad            0
                        .quad            .Lx1173_2
                        .quad            .Lx1173_2
.Lx1173_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1173_29
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
.Lx1173_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx1173_240
                        add              rsp, 16;                             jmp   n475_statement_begin_β
.Lx1173_240:                                                                  jmp   n477_assign_α
n476_call_β:                                                                  jmp   n475_statement_begin_β
.Lx1173_0:              .quad            .Lx1173_0_s
.Lx1173_0_s:            .string          "stk_pop_into_parent"
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
                        mov              rax, qword ptr [rip + .Lx1179_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n481_call_α
.Lx1179_0:              .quad            .Lx1179_0_s
.Lx1179_0_s:            .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n481_call_α:            sub              rsp, 16
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
                        add              rsp, 16;                             jmp   n479_statement_begin_β
.Lx1180_240:            mov              qword ptr [rsp + 0], rax             # result
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
LBL__Pop_list:                                                                jmp   n485_var_α
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
                        mov              rax, qword ptr [rip + .Lx1189_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n488_lit_string_α
n487_lit_string_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n484_statement_begin_β
.Lx1189_0:              .quad            .Lx1189_0_s
.Lx1189_0_s:            .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n488_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1190_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n489_call_α
n488_lit_string_β:      add              rsp, 16;                             jmp   n487_lit_string_β
.Lx1190_0:              .quad            .Lx1190_0_s
.Lx1190_0_s:            .string          "1"
#-----------------------------------------------------------------------------------------------------------------------
n489_call_α:            sub              rsp, 16
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
.Lrkfnzd1192:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1192]
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
                        cmp              eax, 104;                            jne   .Lx1191_240
                        add              rsp, 16;                             jmp   n488_lit_string_β
.Lx1191_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n490_assign_α
n489_call_β:            add              rsp, 16;                             jmp   n488_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n490_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 304], rax            # Pop_list
                        mov              qword ptr [r9 + 312], rdx;           jmp   n491_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n491_statement_end_α:   add              rsp, 64;                             jmp   RETURN
#=======================================================================================================================
# pop_list_end  <stmt 55, line 72: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n492_statement_begin_α:                                                       jmp   n493_statement_end_α
n492_statement_begin_β:                                                       jmp   n494_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n493_statement_end_α:                                                         jmp   n494_statement_begin_α
#=======================================================================================================================
#                DEFINE('pop_final(v)')
#-----------------------------------------------------------------------------------------------------------------------
n494_statement_begin_α:                                                       jmp   n495_func_activate_α
n494_statement_begin_β:                                                       jmp   n497_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n495_func_activate_α:   mov              rdi, qword ptr [rip + .Lx1203_0]
                        mov              rsi, qword ptr [rip + .Lx1203_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + FN__pop_final]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n496_statement_end_α
n495_func_activate_β:                                                         jmp   n494_statement_begin_β
.Lx1203_0:              .quad            .Lx1203_0_s
.Lx1203_0_s:            .string          "pop_final"
.Lx1203_1:              .quad            .Lx1203_1_s
.Lx1203_1_s:            .string          "v"
#-----------------------------------------------------------------------------------------------------------------------
n496_statement_end_α:                                                         jmp   n497_statement_begin_α
#=======================================================================================================================
#                DEFINE('Pop_final(vs)')                      :(pop_final_end)
#-----------------------------------------------------------------------------------------------------------------------
n497_statement_begin_α:                                                       jmp   n498_func_activate_α
n497_statement_begin_β:                                                       jmp   n519_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n498_func_activate_α:   mov              rdi, qword ptr [rip + .Lx1209_0]
                        mov              rsi, qword ptr [rip + .Lx1209_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + FN__Pop_final]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n499_statement_end_α
n498_func_activate_β:                                                         jmp   n497_statement_begin_β
.Lx1209_0:              .quad            .Lx1209_0_s
.Lx1209_0_s:            .string          "Pop_final"
.Lx1209_1:              .quad            .Lx1209_1_s
.Lx1209_1_s:            .string          "vs"
#-----------------------------------------------------------------------------------------------------------------------
n499_statement_end_α:                                                         jmp   n519_statement_begin_α
#=======================================================================================================================
# pop_final      dummy          =  stk_pop_final(v)
#-----------------------------------------------------------------------------------------------------------------------
LBL__pop_final:                                                               jmp   n501_var_α
n500_statement_begin_β:                                                       jmp   n505_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n501_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # v
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n502_call_α
#-----------------------------------------------------------------------------------------------------------------------
n502_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1216z]
                        lea              rax, [rip + stk_pop_final_α];        jmp   rax
.Lsig1216z:             .quad            1
                        .quad            .Lx1216_2
                        .quad            .Lx1216_2
                        .quad            16
.Lx1216_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1216_29
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
.Lx1216_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx1216_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n500_statement_begin_β
.Lx1216_240:                                                                  jmp   n503_assign_α
n502_call_β:                                                                  jmp   n500_statement_begin_β
.Lx1216_0:              .quad            .Lx1216_0_s
.Lx1216_0_s:            .string          "stk_pop_final"
#-----------------------------------------------------------------------------------------------------------------------
n503_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 560], rax            # dummy
                        mov              qword ptr [r9 + 568], rdx;           jmp   n504_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n504_statement_end_α:   add              rsp, 32;                             jmp   n505_statement_begin_α
#=======================================================================================================================
#                pop_final      =  .dummy                     :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n505_statement_begin_α:                                                       jmp   n506_lit_string_α
n505_statement_begin_β:                                                       jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n506_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1222_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n507_call_α
.Lx1222_0:              .quad            .Lx1222_0_s
.Lx1222_0_s:            .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n507_call_α:            sub              rsp, 16
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
                        add              rsp, 16;                             jmp   n505_statement_begin_β
.Lx1223_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n508_assign_α
n507_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n505_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n508_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 320], rax            # pop_final
                        mov              qword ptr [r9 + 328], rdx;           jmp   n509_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n509_statement_end_α:   add              rsp, 32;                             jmp   NRETURN
#=======================================================================================================================
# Pop_final      Pop_final      =  EVAL("epsilon . *pop_final(" vs ")")  :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
LBL__Pop_final:                                                               jmp   n511_lit_string_α
n510_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n511_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 21
                        mov              rax, qword ptr [rip + .Lx1230_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n512_var_α
.Lx1230_0:              .quad            .Lx1230_0_s
.Lx1230_0_s:            .string          "epsilon . *pop_final("
#-----------------------------------------------------------------------------------------------------------------------
n512_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 208]            # vs
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n513_binop_α
n512_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n510_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n513_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n514_lit_string_α
n513_binop_β:           add              rsp, 16;                             jmp   n512_var_β
#-----------------------------------------------------------------------------------------------------------------------
n514_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1233_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n515_binop_α
n514_lit_string_β:      add              rsp, 16;                             jmp   n513_binop_β
.Lx1233_0:              .quad            .Lx1233_0_s
.Lx1233_0_s:            .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
n515_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n516_call_α
n515_binop_β:           add              rsp, 16;                             jmp   n514_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n516_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1236:           .string          "EVAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1236]
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
                        cmp              eax, 104;                            jne   .Lx1235_240
                        add              rsp, 16;                             jmp   n515_binop_β
.Lx1235_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n517_assign_α
n516_call_β:            add              rsp, 16;                             jmp   n515_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n517_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 336], rax            # Pop_final
                        mov              qword ptr [r9 + 344], rdx;           jmp   n518_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n518_statement_end_α:   add              rsp, 96;                             jmp   RETURN
#=======================================================================================================================
# pop_final_end  <stmt 61, line 79: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n519_statement_begin_α:                                                       jmp   n520_statement_end_α
n519_statement_begin_β:                                                       jmp   n521_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n520_statement_end_α:                                                         jmp   n521_statement_begin_α
#=======================================================================================================================
#                delim          =  SPAN(' ' CHAR(10))
#-----------------------------------------------------------------------------------------------------------------------
n521_statement_begin_α:                                                       jmp   n522_lit_string_α
n521_statement_begin_β:                                                       jmp   n526_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n522_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1246_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n523_call_α
.Lx1246_0:              .quad            .Lx1246_0_s
.Lx1246_0_s:            .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n523_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1248:           .string          "SNO$MKPAT"
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
                        add              rsp, 16;                             jmp   n521_statement_begin_β
.Lx1247_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n524_assign_α
n523_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n521_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n524_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 592], rax            # delim
                        mov              qword ptr [r9 + 600], rdx;           jmp   n525_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n525_statement_end_α:   add              rsp, 32;                             jmp   n526_statement_begin_α
#=======================================================================================================================
#                word           =  NOTANY('( )' CHAR(10)) BREAK('( )' CHAR(10))
#-----------------------------------------------------------------------------------------------------------------------
n526_statement_begin_α:                                                       jmp   n527_lit_string_α
n526_statement_begin_β:                                                       jmp   n531_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n527_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1254_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n528_call_α
.Lx1254_0:              .quad            .Lx1254_0_s
.Lx1254_0_s:            .string          "PAT$2"
#-----------------------------------------------------------------------------------------------------------------------
n528_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1256:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1256]
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
                        cmp              eax, 104;                            jne   .Lx1255_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n526_statement_begin_β
.Lx1255_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n529_assign_α
n528_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n526_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n529_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 608], rax            # word
                        mov              qword ptr [r9 + 616], rdx;           jmp   n530_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n530_statement_end_α:   add              rsp, 32;                             jmp   n531_statement_begin_α
#=======================================================================================================================
#                group          =  FENCE(
#-----------------------------------------------------------------------------------------------------------------------
n531_statement_begin_α:                                                       jmp   n532_call_α
n531_statement_begin_β:                                                       jmp   n551_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n532_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1263z]
                        lea              rax, [rip + Pop_list_α];             jmp   rax
.Lsig1263z:             .quad            0
                        .quad            .Lx1263_2
                        .quad            .Lx1263_2
.Lx1263_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1263_29
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
.Lx1263_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx1263_240
                        add              rsp, 16;                             jmp   n531_statement_begin_β
.Lx1263_240:                                                                  jmp   n533_assign_α
n532_call_β:                                                                  jmp   n531_statement_begin_β
.Lx1263_0:              .quad            .Lx1263_0_s
.Lx1263_0_s:            .string          "Pop_list"
#-----------------------------------------------------------------------------------------------------------------------
n533_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 864], rax            # PAT$3$V5
                        mov              qword ptr [r9 + 872], rdx;           jmp   n534_var_α
#-----------------------------------------------------------------------------------------------------------------------
n534_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 592]            # delim
                        mov              rdx, qword ptr [r9 + 600]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n535_assign_α
n534_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n531_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n535_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 848], rax            # PAT$3$V4
                        mov              qword ptr [r9 + 856], rdx;           jmp   n536_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n536_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx1267_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n537_call_α
n536_lit_string_β:      add              rsp, 16;                             jmp   n534_var_β
.Lx1267_0:              .quad            .Lx1267_0_s
.Lx1267_0_s:            .string          "wrd"
#-----------------------------------------------------------------------------------------------------------------------
n537_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1269z]
                        lea              rax, [rip + Push_item_α];            jmp   rax
.Lsig1269z:             .quad            1
                        .quad            .Lx1269_2
                        .quad            .Lx1269_2
                        .quad            16
.Lx1269_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1269_29
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
.Lx1269_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx1269_240
                        add              rsp, 16;                             jmp   n536_lit_string_β
.Lx1269_240:                                                                  jmp   n538_assign_α
n537_call_β:                                                                  jmp   n536_lit_string_β
.Lx1269_0:              .quad            .Lx1269_0_s
.Lx1269_0_s:            .string          "Push_item"
#-----------------------------------------------------------------------------------------------------------------------
n538_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 832], rax            # PAT$3$V3
                        mov              qword ptr [r9 + 840], rdx;           jmp   n539_var_α
#-----------------------------------------------------------------------------------------------------------------------
n539_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 608]            # word
                        mov              rdx, qword ptr [r9 + 616]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n540_assign_α
n539_var_β:             add              rsp, 32;                             jmp   n536_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n540_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 816], rax            # PAT$3$V2
                        mov              qword ptr [r9 + 824], rdx;           jmp   n541_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n541_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx1273_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n542_call_α
n541_lit_string_β:      add              rsp, 16;                             jmp   n539_var_β
.Lx1273_0:              .quad            .Lx1273_0_s
.Lx1273_0_s:            .string          "tag"
#-----------------------------------------------------------------------------------------------------------------------
n542_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1275z]
                        lea              rax, [rip + Push_list_α];            jmp   rax
.Lsig1275z:             .quad            1
                        .quad            .Lx1275_2
                        .quad            .Lx1275_2
                        .quad            16
.Lx1275_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1275_29
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
.Lx1275_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx1275_240
                        add              rsp, 16;                             jmp   n541_lit_string_β
.Lx1275_240:                                                                  jmp   n543_assign_α
n542_call_β:                                                                  jmp   n541_lit_string_β
.Lx1275_0:              .quad            .Lx1275_0_s
.Lx1275_0_s:            .string          "Push_list"
#-----------------------------------------------------------------------------------------------------------------------
n543_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 800], rax            # PAT$3$V1
                        mov              qword ptr [r9 + 808], rdx;           jmp   n544_var_α
#-----------------------------------------------------------------------------------------------------------------------
n544_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 608]            # word
                        mov              rdx, qword ptr [r9 + 616]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n545_assign_α
n544_var_β:             add              rsp, 32;                             jmp   n541_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n545_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 784], rax            # PAT$3$V0
                        mov              qword ptr [r9 + 792], rdx;           jmp   n546_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n546_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1279_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n547_lit_string_α
n546_lit_string_β:      add              rsp, 16;                             jmp   n544_var_β
.Lx1279_0:              .quad            .Lx1279_0_s
.Lx1279_0_s:            .string          "PAT$3"
#-----------------------------------------------------------------------------------------------------------------------
n547_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1280_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n548_call_α
n547_lit_string_β:      add              rsp, 16;                             jmp   n546_lit_string_β
.Lx1280_0:              .quad            .Lx1280_0_s
.Lx1280_0_s:            .string          "6"
#-----------------------------------------------------------------------------------------------------------------------
n548_call_α:            sub              rsp, 16
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
.Lrkfnzd1282:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1282]
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
                        cmp              eax, 104;                            jne   .Lx1281_240
                        add              rsp, 16;                             jmp   n547_lit_string_β
.Lx1281_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n549_assign_α
n548_call_β:            add              rsp, 16;                             jmp   n547_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n549_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 624], rax            # group
                        mov              qword ptr [r9 + 632], rdx;           jmp   n550_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n550_statement_end_α:   add              rsp, 176;                            jmp   n551_statement_begin_α
#=======================================================================================================================
#                treebank       =
#-----------------------------------------------------------------------------------------------------------------------
n551_statement_begin_α:                                                       jmp   n552_lit_string_α
n551_statement_begin_β:                                                       jmp   n573_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n552_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx1288_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n553_call_α
.Lx1288_0:              .quad            .Lx1288_0_s
.Lx1288_0_s:            .string          "'bank'"
#-----------------------------------------------------------------------------------------------------------------------
n553_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1290z]
                        lea              rax, [rip + Pop_final_α];            jmp   rax
.Lsig1290z:             .quad            1
                        .quad            .Lx1290_2
                        .quad            .Lx1290_2
                        .quad            16
.Lx1290_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1290_29
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
.Lx1290_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx1290_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n551_statement_begin_β
.Lx1290_240:                                                                  jmp   n554_assign_α
n553_call_β:                                                                  jmp   n551_statement_begin_β
.Lx1290_0:              .quad            .Lx1290_0_s
.Lx1290_0_s:            .string          "Pop_final"
#-----------------------------------------------------------------------------------------------------------------------
n554_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 960], rax            # PAT$4$V5
                        mov              qword ptr [r9 + 968], rdx;           jmp   n555_call_α
#-----------------------------------------------------------------------------------------------------------------------
n555_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1293z]
                        lea              rax, [rip + Pop_list_α];             jmp   rax
.Lsig1293z:             .quad            0
                        .quad            .Lx1293_2
                        .quad            .Lx1293_2
.Lx1293_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1293_29
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
.Lx1293_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx1293_240
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n551_statement_begin_β
.Lx1293_240:                                                                  jmp   n556_assign_α
n555_call_β:                                                                  jmp   n551_statement_begin_β
.Lx1293_0:              .quad            .Lx1293_0_s
.Lx1293_0_s:            .string          "Pop_list"
#-----------------------------------------------------------------------------------------------------------------------
n556_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 944], rax            # PAT$4$V4
                        mov              qword ptr [r9 + 952], rdx;           jmp   n557_var_α
#-----------------------------------------------------------------------------------------------------------------------
n557_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 592]            # delim
                        mov              rdx, qword ptr [r9 + 600]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n558_assign_α
n557_var_β:             add              rsp, 16
                        add              rsp, 48;                             jmp   n551_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n558_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 928], rax            # PAT$4$V3
                        mov              qword ptr [r9 + 936], rdx;           jmp   n559_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n559_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx1297_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n560_call_α
n559_lit_string_β:      add              rsp, 16;                             jmp   n557_var_β
.Lx1297_0:              .quad            .Lx1297_0_s
.Lx1297_0_s:            .string          "'ROOT'"
#-----------------------------------------------------------------------------------------------------------------------
n560_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1299z]
                        lea              rax, [rip + Push_list_α];            jmp   rax
.Lsig1299z:             .quad            1
                        .quad            .Lx1299_2
                        .quad            .Lx1299_2
                        .quad            16
.Lx1299_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1299_29
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
.Lx1299_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx1299_240
                        add              rsp, 16;                             jmp   n559_lit_string_β
.Lx1299_240:                                                                  jmp   n561_assign_α
n560_call_β:                                                                  jmp   n559_lit_string_β
.Lx1299_0:              .quad            .Lx1299_0_s
.Lx1299_0_s:            .string          "Push_list"
#-----------------------------------------------------------------------------------------------------------------------
n561_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 912], rax            # PAT$4$V2
                        mov              qword ptr [r9 + 920], rdx;           jmp   n562_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n562_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx1301_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n563_call_α
n562_lit_string_β:      add              rsp, 32;                             jmp   n559_lit_string_β
.Lx1301_0:              .quad            .Lx1301_0_s
.Lx1301_0_s:            .string          "'BANK'"
#-----------------------------------------------------------------------------------------------------------------------
n563_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1303z]
                        lea              rax, [rip + Push_list_α];            jmp   rax
.Lsig1303z:             .quad            1
                        .quad            .Lx1303_2
                        .quad            .Lx1303_2
                        .quad            16
.Lx1303_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1303_29
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
.Lx1303_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx1303_240
                        add              rsp, 16;                             jmp   n562_lit_string_β
.Lx1303_240:                                                                  jmp   n564_assign_α
n563_call_β:                                                                  jmp   n562_lit_string_β
.Lx1303_0:              .quad            .Lx1303_0_s
.Lx1303_0_s:            .string          "Push_list"
#-----------------------------------------------------------------------------------------------------------------------
n564_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 896], rax            # PAT$4$V1
                        mov              qword ptr [r9 + 904], rdx;           jmp   n565_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n565_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx1305_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n566_call_α
n565_lit_string_β:      add              rsp, 32;                             jmp   n562_lit_string_β
.Lx1305_0:              .quad            .Lx1305_0_s
.Lx1305_0_s:            .string          "'bank'"
#-----------------------------------------------------------------------------------------------------------------------
n566_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1307z]
                        lea              rax, [rip + Init_list_α];            jmp   rax
.Lsig1307z:             .quad            1
                        .quad            .Lx1307_2
                        .quad            .Lx1307_2
                        .quad            16
.Lx1307_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1307_29
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
.Lx1307_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx1307_240
                        add              rsp, 16;                             jmp   n565_lit_string_β
.Lx1307_240:                                                                  jmp   n567_assign_α
n566_call_β:                                                                  jmp   n565_lit_string_β
.Lx1307_0:              .quad            .Lx1307_0_s
.Lx1307_0_s:            .string          "Init_list"
#-----------------------------------------------------------------------------------------------------------------------
n567_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 880], rax            # PAT$4$V0
                        mov              qword ptr [r9 + 888], rdx;           jmp   n568_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n568_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1309_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n569_lit_string_α
n568_lit_string_β:      add              rsp, 32;                             jmp   n565_lit_string_β
.Lx1309_0:              .quad            .Lx1309_0_s
.Lx1309_0_s:            .string          "PAT$4"
#-----------------------------------------------------------------------------------------------------------------------
n569_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1310_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n570_call_α
n569_lit_string_β:      add              rsp, 16;                             jmp   n568_lit_string_β
.Lx1310_0:              .quad            .Lx1310_0_s
.Lx1310_0_s:            .string          "6"
#-----------------------------------------------------------------------------------------------------------------------
n570_call_α:            sub              rsp, 16
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
.Lrkfnzd1312:           .string          "SNO$MKPAT"
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
                        add              rsp, 16;                             jmp   n569_lit_string_β
.Lx1311_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n571_assign_α
n570_call_β:            add              rsp, 16;                             jmp   n569_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n571_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 672], rax            # treebank
                        mov              qword ptr [r9 + 680], rdx;           jmp   n572_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n572_statement_end_α:   add              rsp, 208;                            jmp   n573_statement_begin_α
#=======================================================================================================================
#                DEFINE('node_repr(node)r,c,sep')             :(node_repr_end)
#-----------------------------------------------------------------------------------------------------------------------
n573_statement_begin_α:                                                       jmp   n574_func_activate_α
n573_statement_begin_β:                                                       jmp   n634_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n574_func_activate_α:   mov              rdi, qword ptr [rip + .Lx1319_0]
                        mov              rsi, qword ptr [rip + .Lx1319_1]
                        mov              edx, 4
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + FN__node_repr]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n575_statement_end_α
n574_func_activate_β:                                                         jmp   n573_statement_begin_β
.Lx1319_0:              .quad            .Lx1319_0_s
.Lx1319_0_s:            .string          "node_repr"
.Lx1319_1:              .quad            .Lx1319_1_s
.Lx1319_1_s:            .string          "node,r,c,sep"
#-----------------------------------------------------------------------------------------------------------------------
n575_statement_end_α:                                                         jmp   n634_statement_begin_α
#=======================================================================================================================
# node_repr      IDENT(REPLACE(DATATYPE(node), &LCASE, &UCASE), 'STRING')  :F(nr_list)
#-----------------------------------------------------------------------------------------------------------------------
LBL__node_repr:                                                               jmp   n577_var_α
n576_statement_begin_β:                                                       jmp   n593_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n577_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 368]            # node
                        mov              rdx, qword ptr [r9 + 376]
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
.Lrkfnzd1326:           .string          "DATATYPE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1326]
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
                        cmp              eax, 104;                            jne   .Lx1325_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n576_statement_begin_β
.Lx1325_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n579_keyword_snobol4_α
n578_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n576_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n579_keyword_snobol4_α: sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx1327_0]
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
.Lx1327_0:              .quad            .Lx1327_0_s
.Lx1327_0_s:            .string          "LCASE"
#-----------------------------------------------------------------------------------------------------------------------
n580_keyword_snobol4_α: sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx1328_0]
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
.Lx1328_0:              .quad            .Lx1328_0_s
.Lx1328_0_s:            .string          "UCASE"
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
.Lrkfnzd1330:           .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1330]
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
                        cmp              eax, 104;                            jne   .Lx1329_240
                        add              rsp, 16
                        add              rsp, 64;                             jmp   n576_statement_begin_β
.Lx1329_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n582_lit_string_α
n581_call_β:            add              rsp, 16
                        add              rsp, 64;                             jmp   n576_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n582_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx1331_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n583_call_α
n582_lit_string_β:      add              rsp, 16
                        add              rsp, 80;                             jmp   n576_statement_begin_β
.Lx1331_0:              .quad            .Lx1331_0_s
.Lx1331_0_s:            .string          "STRING"
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
.Lrkfnzd1333:           .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1333]
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
                        cmp              eax, 104;                            jne   .Lx1332_240
                        add              rsp, 16;                             jmp   n582_lit_string_β
.Lx1332_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n584_statement_end_α
n583_call_β:            add              rsp, 16;                             jmp   n582_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n584_statement_end_α:   add              rsp, 112;                            jmp   n585_statement_begin_α
#=======================================================================================================================
#                node_repr      =  "'" node "'"               :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n585_statement_begin_α:                                                       jmp   n586_lit_string_α
n585_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n586_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1338_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n587_var_α
.Lx1338_0:              .quad            .Lx1338_0_s
.Lx1338_0_s:            .string          "'"
#-----------------------------------------------------------------------------------------------------------------------
n587_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 368]            # node
                        mov              rdx, qword ptr [r9 + 376]
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
                        mov              rax, qword ptr [rip + .Lx1341_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n590_binop_α
n589_lit_string_β:      add              rsp, 16;                             jmp   n588_binop_β
.Lx1341_0:              .quad            .Lx1341_0_s
.Lx1341_0_s:            .string          "'"
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
                        mov              qword ptr [r9 + 352], rax            # node_repr
                        mov              qword ptr [r9 + 360], rdx;           jmp   n592_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n592_statement_end_α:   add              rsp, 80;                             jmp   RETURN
#=======================================================================================================================
# nr_list        r              =  '('
#-----------------------------------------------------------------------------------------------------------------------
n593_statement_begin_α:                                                       jmp   n594_lit_string_α
n593_statement_begin_β:                                                       jmp   n597_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n594_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1348_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n595_assign_α
.Lx1348_0:              .quad            .Lx1348_0_s
.Lx1348_0_s:            .string          "("
#-----------------------------------------------------------------------------------------------------------------------
n595_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 384], rax            # r
                        mov              qword ptr [r9 + 392], rdx;           jmp   n596_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n596_statement_end_α:   add              rsp, 16;                             jmp   n597_statement_begin_α
#=======================================================================================================================
#                sep            =
#-----------------------------------------------------------------------------------------------------------------------
n597_statement_begin_α:                                                       jmp   n598_lit_string_α
n597_statement_begin_β:                                                       jmp   n601_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n598_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx1354_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n599_assign_α
.Lx1354_0:              .quad            .Lx1354_0_s
.Lx1354_0_s:            .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n599_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 416], rax            # sep
                        mov              qword ptr [r9 + 424], rdx;           jmp   n600_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n600_statement_end_α:   add              rsp, 16;                             jmp   n601_statement_begin_α
#=======================================================================================================================
#                c              =  node
#-----------------------------------------------------------------------------------------------------------------------
n601_statement_begin_α:                                                       jmp   n602_var_α
n601_statement_begin_β:                                                       jmp   n605_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n602_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 368]            # node
                        mov              rdx, qword ptr [r9 + 376]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n603_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n603_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 400], rax            # c
                        mov              qword ptr [r9 + 408], rdx;           jmp   n604_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n604_statement_end_α:   add              rsp, 16;                             jmp   n605_statement_begin_α
#=======================================================================================================================
# nr_lp          DIFFER(c)                                    :F(nr_done)
#-----------------------------------------------------------------------------------------------------------------------
n605_statement_begin_α:                                                       jmp   n606_var_α
n605_statement_begin_β:                                                       jmp   n628_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n606_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 400]            # c
                        mov              rdx, qword ptr [r9 + 408]
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
.Lrkfnzd1368:           .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1368]
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
                        cmp              eax, 104;                            jne   .Lx1367_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n605_statement_begin_β
.Lx1367_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n608_statement_end_α
n607_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n605_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n608_statement_end_α:   add              rsp, 32;                             jmp   n609_statement_begin_α
#=======================================================================================================================
#                r              =  r sep node_repr(head(c))
#-----------------------------------------------------------------------------------------------------------------------
n609_statement_begin_α:                                                       jmp   n610_var_α
n609_statement_begin_β:                                                       jmp   n619_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n610_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 384]            # r
                        mov              rdx, qword ptr [r9 + 392]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n611_var_α
#-----------------------------------------------------------------------------------------------------------------------
n611_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 416]            # sep
                        mov              rdx, qword ptr [r9 + 424]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n612_binop_α
n611_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n609_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n612_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n613_var_α
n612_binop_β:           add              rsp, 16;                             jmp   n611_var_β
#-----------------------------------------------------------------------------------------------------------------------
n613_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 400]            # c
                        mov              rdx, qword ptr [r9 + 408]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n614_call_α
n613_var_β:             add              rsp, 16;                             jmp   n612_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n614_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1378:           .string          "head"
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
                        add              rsp, 16;                             jmp   n613_var_β
.Lx1377_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n615_call_α
n614_call_β:            add              rsp, 16;                             jmp   n613_var_β
#-----------------------------------------------------------------------------------------------------------------------
n615_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1380z]
                        lea              rax, [rip + node_repr_α];            jmp   rax
.Lsig1380z:             .quad            1
                        .quad            .Lx1380_2
                        .quad            .Lx1380_2
                        .quad            16
.Lx1380_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1380_29
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
.Lx1380_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx1380_240
                        add              rsp, 32;                             jmp   n613_var_β
.Lx1380_240:                                                                  jmp   n616_binop_α
n615_call_β:                                                                  jmp   n613_var_β
.Lx1380_0:              .quad            .Lx1380_0_s
.Lx1380_0_s:            .string          "node_repr"
#-----------------------------------------------------------------------------------------------------------------------
n616_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n617_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n617_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 384], rax            # r
                        mov              qword ptr [r9 + 392], rdx;           jmp   n618_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n618_statement_end_α:   add              rsp, 112;                            jmp   n619_statement_begin_α
#=======================================================================================================================
#                sep            =  ', '
#-----------------------------------------------------------------------------------------------------------------------
n619_statement_begin_α:                                                       jmp   n620_lit_string_α
n619_statement_begin_β:                                                       jmp   n623_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n620_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx1387_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n621_assign_α
.Lx1387_0:              .quad            .Lx1387_0_s
.Lx1387_0_s:            .string          ", "
#-----------------------------------------------------------------------------------------------------------------------
n621_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 416], rax            # sep
                        mov              qword ptr [r9 + 424], rdx;           jmp   n622_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n622_statement_end_α:   add              rsp, 16;                             jmp   n623_statement_begin_α
#=======================================================================================================================
#                c              =  tail(c)                    :(nr_lp)
#-----------------------------------------------------------------------------------------------------------------------
n623_statement_begin_α:                                                       jmp   n624_var_α
n623_statement_begin_β:                                                       jmp   n605_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n624_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 400]            # c
                        mov              rdx, qword ptr [r9 + 408]
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
.Lrkfnzd1395:           .string          "tail"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1395]
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
                        cmp              eax, 104;                            jne   .Lx1394_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n623_statement_begin_β
.Lx1394_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n626_assign_α
n625_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n623_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n626_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 400], rax            # c
                        mov              qword ptr [r9 + 408], rdx;           jmp   n627_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n627_statement_end_α:   add              rsp, 32;                             jmp   n605_statement_begin_α
#=======================================================================================================================
# nr_done        node_repr      =  r ')'                      :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n628_statement_begin_α:                                                       jmp   n629_var_α
n628_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n629_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 384]            # r
                        mov              rdx, qword ptr [r9 + 392]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n630_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n630_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1402_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n631_binop_α
n630_lit_string_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n628_statement_begin_β
.Lx1402_0:              .quad            .Lx1402_0_s
.Lx1402_0_s:            .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
n631_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n632_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n632_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 352], rax            # node_repr
                        mov              qword ptr [r9 + 360], rdx;           jmp   n633_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n633_statement_end_α:   add              rsp, 48;                             jmp   RETURN
#=======================================================================================================================
# node_repr_end  <stmt 77, line 120: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n634_statement_begin_α:                                                       jmp   n635_statement_end_α
n634_statement_begin_β:                                                       jmp   n636_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n635_statement_end_α:                                                         jmp   n636_statement_begin_α
#=======================================================================================================================
#                DEFINE('pp_node(node,indent,suffix)r,pad,c,nxt') :(pp_node_end)
#-----------------------------------------------------------------------------------------------------------------------
n636_statement_begin_α:                                                       jmp   n637_func_activate_α
n636_statement_begin_β:                                                       jmp   n725_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n637_func_activate_α:   mov              rdi, qword ptr [rip + .Lx1414_0]
                        mov              rsi, qword ptr [rip + .Lx1414_1]
                        mov              edx, 7
                        mov              ecx, 3
                        mov              r8d, 0
                        lea              r9, [rip + FN__pp_node]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n638_statement_end_α
n637_func_activate_β:                                                         jmp   n636_statement_begin_β
.Lx1414_0:              .quad            .Lx1414_0_s
.Lx1414_0_s:            .string          "pp_node"
.Lx1414_1:              .quad            .Lx1414_1_s
.Lx1414_1_s:            .string          "node,indent,suffix,r,pad,c,nxt"
#-----------------------------------------------------------------------------------------------------------------------
n638_statement_end_α:                                                         jmp   n725_statement_begin_α
#=======================================================================================================================
# pp_node        r              =  node_repr(node)
#-----------------------------------------------------------------------------------------------------------------------
LBL__pp_node:                                                                 jmp   n640_var_α
n639_statement_begin_β:                                                       jmp   n644_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n640_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 368]            # node
                        mov              rdx, qword ptr [r9 + 376]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n641_call_α
#-----------------------------------------------------------------------------------------------------------------------
n641_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1421z]
                        lea              rax, [rip + node_repr_α];            jmp   rax
.Lsig1421z:             .quad            1
                        .quad            .Lx1421_2
                        .quad            .Lx1421_2
                        .quad            16
.Lx1421_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1421_29
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
.Lx1421_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx1421_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n639_statement_begin_β
.Lx1421_240:                                                                  jmp   n642_assign_α
n641_call_β:                                                                  jmp   n639_statement_begin_β
.Lx1421_0:              .quad            .Lx1421_0_s
.Lx1421_0_s:            .string          "node_repr"
#-----------------------------------------------------------------------------------------------------------------------
n642_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 384], rax            # r
                        mov              qword ptr [r9 + 392], rdx;           jmp   n643_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n643_statement_end_α:   add              rsp, 32;                             jmp   n644_statement_begin_α
#=======================================================================================================================
#                pad            =  DUPL(' ', indent)
#-----------------------------------------------------------------------------------------------------------------------
n644_statement_begin_α:                                                       jmp   n645_lit_string_α
n644_statement_begin_β:                                                       jmp   n650_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n645_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1427_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n646_var_α
.Lx1427_0:              .quad            .Lx1427_0_s
.Lx1427_0_s:            .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n646_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 448]            # indent
                        mov              rdx, qword ptr [r9 + 456]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n647_call_α
n646_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n644_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n647_call_α:            sub              rsp, 16
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
.Lrkfnzd1430:           .string          "DUPL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1430]
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
                        cmp              eax, 104;                            jne   .Lx1429_240
                        add              rsp, 16;                             jmp   n646_var_β
.Lx1429_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n648_assign_α
n647_call_β:            add              rsp, 16;                             jmp   n646_var_β
#-----------------------------------------------------------------------------------------------------------------------
n648_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 480], rax            # pad
                        mov              qword ptr [r9 + 488], rdx;           jmp   n649_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n649_statement_end_α:   add              rsp, 48;                             jmp   n650_statement_begin_α
#=======================================================================================================================
#                GT(80, indent + SIZE(r))                     :F(pp_wrap)
#-----------------------------------------------------------------------------------------------------------------------
n650_statement_begin_α:                                                       jmp   n651_lit_integer_α
n650_statement_begin_β:                                                       jmp   n668_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n651_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1436_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n652_var_α
.Lx1436_0:              .quad            80
#-----------------------------------------------------------------------------------------------------------------------
n652_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 448]            # indent
                        mov              rdx, qword ptr [r9 + 456]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n653_var_α
n652_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n650_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n653_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 384]            # r
                        mov              rdx, qword ptr [r9 + 392]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n654_call_α
n653_var_β:             add              rsp, 16;                             jmp   n652_var_β
#-----------------------------------------------------------------------------------------------------------------------
n654_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1440:           .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1440]
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
                        cmp              eax, 104;                            jne   .Lx1439_240
                        add              rsp, 16;                             jmp   n653_var_β
.Lx1439_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n655_binop_α
n654_call_β:            add              rsp, 16;                             jmp   n653_var_β
#-----------------------------------------------------------------------------------------------------------------------
n655_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 48]            # var
                        mov              ecx, dword ptr [rsp + 16]            # call
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx1441_2
                        mov              rax, qword ptr [rsp + 56]            # var
                        mov              rdx, qword ptr [rsp + 24]            # call
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx1441_7
.Lx1441_2:              and              edx, 1;                              jz    .Lx1441_0
                        mov              rsi, qword ptr [rsp + 56]            # var
                        mov              rdi, qword ptr [rsp + 24]            # call
                        cmp              eax, 5;                              je    .Lx1441_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1441_4
.Lx1441_3:              movq             xmm0, rsi
.Lx1441_4:              cmp              ecx, 5;                              je    .Lx1441_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx1441_6
.Lx1441_5:              movq             xmm1, rdi
.Lx1441_6:              addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx1441_7:                                                                    jmp   n656_coerce_numeric_α
.Lx1441_0:              mov              rdi, qword ptr [rsp + 48]            # var
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx1441_240
                        add              rsp, 32;                             jmp   n653_var_β
.Lx1441_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n656_coerce_numeric_α
n655_binop_β:           add              rsp, 32;                             jmp   n653_var_β
#-----------------------------------------------------------------------------------------------------------------------
n656_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 80]            # lit_integer
                        cmp              eax, 5;                              je    .Lx1443_1
                        cmp              eax, 3;                              jne   .Lx1443_0
                        mov              eax, dword ptr [rsp + 16]            # binop
                        cmp              eax, 3;                              jne   .Lx1443_0
.Lx1443_1:              mov              rax, qword ptr [rsp + 80]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 88]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n657_coerce_numeric_α
.Lx1443_0:              lea              rdi, [rsp + 80]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n657_coerce_numeric_α
n656_coerce_numeric_β:  add              rsp, 16;                             jmp   n655_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n657_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # binop
                        cmp              eax, 5;                              je    .Lx1445_1
                        cmp              eax, 3;                              jne   .Lx1445_0
                        mov              eax, dword ptr [rsp + 96]            # lit_integer
                        cmp              eax, 3;                              jne   .Lx1445_0
.Lx1445_1:              mov              rax, qword ptr [rsp + 32]            # binop
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # binop
                        mov              qword ptr [rsp + 8], rax;            jmp   n658_cmp_test_α
.Lx1445_0:              lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n658_cmp_test_α
n657_coerce_numeric_β:  add              rsp, 16;                             jmp   n656_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n658_cmp_test_α:        sub              rsp, 16
                        lea              rdi, [rsp + 32]                      # coerce_numeric
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        test             eax, eax;                            jg    .Lx1447_240
                        add              rsp, 16;                             jmp   n657_coerce_numeric_β
.Lx1447_240:                                                                  jmp   n659_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n659_statement_end_α:   add              rsp, 128;                            jmp   n660_statement_begin_α
#=======================================================================================================================
#                OUTPUT         =  pad r suffix               :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n660_statement_begin_α:                                                       jmp   n661_var_α
n660_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n661_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 480]            # pad
                        mov              rdx, qword ptr [r9 + 488]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n662_var_α
#-----------------------------------------------------------------------------------------------------------------------
n662_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 384]            # r
                        mov              rdx, qword ptr [r9 + 392]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n663_binop_α
n662_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n660_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n663_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n664_var_α
n663_binop_β:           add              rsp, 16;                             jmp   n662_var_β
#-----------------------------------------------------------------------------------------------------------------------
n664_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 464]            # suffix
                        mov              rdx, qword ptr [r9 + 472]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n665_binop_α
n664_var_β:             add              rsp, 16;                             jmp   n663_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n665_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n666_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n666_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1457_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n667_statement_end_α
.Lx1457_0:              .quad            .Lx1457_0_s
.Lx1457_0_s:            .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n667_statement_end_α:   add              rsp, 80;                             jmp   RETURN
#=======================================================================================================================
# pp_wrap        OUTPUT         =  pad '( ' "'" head(node) "',"
#-----------------------------------------------------------------------------------------------------------------------
n668_statement_begin_α:                                                       jmp   n669_var_α
n668_statement_begin_β:                                                       jmp   n681_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n669_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 480]            # pad
                        mov              rdx, qword ptr [r9 + 488]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n670_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n670_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx1463_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n671_binop_α
n670_lit_string_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n668_statement_begin_β
.Lx1463_0:              .quad            .Lx1463_0_s
.Lx1463_0_s:            .string          "( "
#-----------------------------------------------------------------------------------------------------------------------
n671_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n672_lit_string_α
n671_binop_β:           add              rsp, 16;                             jmp   n670_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n672_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1465_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n673_binop_α
n672_lit_string_β:      add              rsp, 16;                             jmp   n671_binop_β
.Lx1465_0:              .quad            .Lx1465_0_s
.Lx1465_0_s:            .string          "'"
#-----------------------------------------------------------------------------------------------------------------------
n673_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n674_var_α
n673_binop_β:           add              rsp, 16;                             jmp   n672_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n674_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 368]            # node
                        mov              rdx, qword ptr [r9 + 376]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n675_call_α
n674_var_β:             add              rsp, 16;                             jmp   n673_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n675_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1469:           .string          "head"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1469]
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
                        cmp              eax, 104;                            jne   .Lx1468_240
                        add              rsp, 16;                             jmp   n674_var_β
.Lx1468_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n676_binop_α
n675_call_β:            add              rsp, 16;                             jmp   n674_var_β
#-----------------------------------------------------------------------------------------------------------------------
n676_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n677_lit_string_α
n676_binop_β:           add              rsp, 32;                             jmp   n674_var_β
#-----------------------------------------------------------------------------------------------------------------------
n677_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx1471_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n678_binop_α
n677_lit_string_β:      add              rsp, 16;                             jmp   n676_binop_β
.Lx1471_0:              .quad            .Lx1471_0_s
.Lx1471_0_s:            .string          "',"
#-----------------------------------------------------------------------------------------------------------------------
n678_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n679_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n679_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1473_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n680_statement_end_α
.Lx1473_0:              .quad            .Lx1473_0_s
.Lx1473_0_s:            .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n680_statement_end_α:   add              rsp, 160;                            jmp   n681_statement_begin_α
#=======================================================================================================================
#                c              =  tail(node)
#-----------------------------------------------------------------------------------------------------------------------
n681_statement_begin_α:                                                       jmp   n682_var_α
n681_statement_begin_β:                                                       jmp   n686_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n682_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 368]            # node
                        mov              rdx, qword ptr [r9 + 376]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n683_call_α
#-----------------------------------------------------------------------------------------------------------------------
n683_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1480:           .string          "tail"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1480]
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
                        cmp              eax, 104;                            jne   .Lx1479_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n681_statement_begin_β
.Lx1479_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n684_assign_α
n683_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n681_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n684_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 400], rax            # c
                        mov              qword ptr [r9 + 408], rdx;           jmp   n685_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n685_statement_end_α:   add              rsp, 32;                             jmp   n686_statement_begin_α
#=======================================================================================================================
# pp_wch         DIFFER(c)                                    :F(pp_wdone)
#-----------------------------------------------------------------------------------------------------------------------
n686_statement_begin_α:                                                       jmp   n687_var_α
n686_statement_begin_β:                                                       jmp   n723_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n687_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 400]            # c
                        mov              rdx, qword ptr [r9 + 408]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n688_call_α
#-----------------------------------------------------------------------------------------------------------------------
n688_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1488:           .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1488]
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
                        cmp              eax, 104;                            jne   .Lx1487_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n686_statement_begin_β
.Lx1487_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n689_statement_end_α
n688_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n686_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n689_statement_end_α:   add              rsp, 32;                             jmp   n690_statement_begin_α
#=======================================================================================================================
#                nxt            =  tail(c)
#-----------------------------------------------------------------------------------------------------------------------
n690_statement_begin_α:                                                       jmp   n691_var_α
n690_statement_begin_β:                                                       jmp   n695_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n691_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 400]            # c
                        mov              rdx, qword ptr [r9 + 408]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n692_call_α
#-----------------------------------------------------------------------------------------------------------------------
n692_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1495:           .string          "tail"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1495]
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
                        cmp              eax, 104;                            jne   .Lx1494_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n690_statement_begin_β
.Lx1494_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n693_assign_α
n692_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n690_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n693_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 496], rax            # nxt
                        mov              qword ptr [r9 + 504], rdx;           jmp   n694_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n694_statement_end_α:   add              rsp, 32;                             jmp   n695_statement_begin_α
#=======================================================================================================================
#                DIFFER(nxt)                                  :F(pp_wlast)
#-----------------------------------------------------------------------------------------------------------------------
n695_statement_begin_α:                                                       jmp   n696_var_α
n695_statement_begin_β:                                                       jmp   n712_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n696_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 496]            # nxt
                        mov              rdx, qword ptr [r9 + 504]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n697_call_α
#-----------------------------------------------------------------------------------------------------------------------
n697_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1503:           .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1503]
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
                        cmp              eax, 104;                            jne   .Lx1502_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n695_statement_begin_β
.Lx1502_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n698_statement_end_α
n697_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n695_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n698_statement_end_α:   add              rsp, 32;                             jmp   n699_statement_begin_α
#=======================================================================================================================
#                pp_node(head(c), indent + 2, ',')
#-----------------------------------------------------------------------------------------------------------------------
n699_statement_begin_α:                                                       jmp   n700_var_α
n699_statement_begin_β:                                                       jmp   n708_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n700_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 400]            # c
                        mov              rdx, qword ptr [r9 + 408]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n701_call_α
#-----------------------------------------------------------------------------------------------------------------------
n701_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1510:           .string          "head"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1510]
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
                        cmp              eax, 104;                            jne   .Lx1509_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n699_statement_begin_β
.Lx1509_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n702_var_α
n701_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n699_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n702_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 448]            # indent
                        mov              rdx, qword ptr [r9 + 456]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n703_lit_integer_α
n702_var_β:             add              rsp, 16
                        add              rsp, 32;                             jmp   n699_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n703_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1512_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n704_binop_α
n703_lit_integer_β:     add              rsp, 16;                             jmp   n702_var_β
.Lx1512_0:              .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n704_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]            # lit_integer
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx1513_2
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              rdx, qword ptr [rsp + 24]            # lit_integer
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx1513_7
.Lx1513_2:              and              edx, 1;                              jz    .Lx1513_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]            # lit_integer
                        cmp              eax, 5;                              je    .Lx1513_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1513_4
.Lx1513_3:              movq             xmm0, rsi
.Lx1513_4:              cmp              ecx, 5;                              je    .Lx1513_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx1513_6
.Lx1513_5:              movq             xmm1, rdi
.Lx1513_6:              addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx1513_7:                                                                    jmp   n705_lit_string_α
.Lx1513_0:              mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx1513_240
                        add              rsp, 16;                             jmp   n703_lit_integer_β
.Lx1513_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n705_lit_string_α
n704_binop_β:           add              rsp, 16;                             jmp   n703_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n705_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1514_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n706_call_α
n705_lit_string_β:      add              rsp, 16;                             jmp   n704_binop_β
.Lx1514_0:              .quad            .Lx1514_0_s
.Lx1514_0_s:            .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n706_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1516z]
                        lea              rax, [rip + pp_node_α];              jmp   rax
.Lsig1516z:             .quad            3
                        .quad            .Lx1516_2
                        .quad            .Lx1516_2
                        .quad            80
                        .quad            32
                        .quad            16
.Lx1516_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1516_29
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
.Lx1516_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx1516_240
                        add              rsp, 16;                             jmp   n705_lit_string_β
.Lx1516_240:                                                                  jmp   n707_statement_end_α
n706_call_β:                                                                  jmp   n705_lit_string_β
.Lx1516_0:              .quad            .Lx1516_0_s
.Lx1516_0_s:            .string          "pp_node"
#-----------------------------------------------------------------------------------------------------------------------
n707_statement_end_α:   add              rsp, 112;                            jmp   n708_statement_begin_α
#=======================================================================================================================
#                c              =  nxt                        :(pp_wch)
#-----------------------------------------------------------------------------------------------------------------------
n708_statement_begin_α:                                                       jmp   n709_var_α
n708_statement_begin_β:                                                       jmp   n686_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n709_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 496]            # nxt
                        mov              rdx, qword ptr [r9 + 504]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n710_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n710_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 400], rax            # c
                        mov              qword ptr [r9 + 408], rdx;           jmp   n711_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n711_statement_end_α:   add              rsp, 16;                             jmp   n686_statement_begin_α
#=======================================================================================================================
# pp_wlast       pp_node(head(c), indent + 2, ')' suffix)     :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n712_statement_begin_α:                                                       jmp   n713_var_α
n712_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n713_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 400]            # c
                        mov              rdx, qword ptr [r9 + 408]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n714_call_α
#-----------------------------------------------------------------------------------------------------------------------
n714_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1529:           .string          "head"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1529]
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
                        cmp              eax, 104;                            jne   .Lx1528_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n712_statement_begin_β
.Lx1528_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n715_var_α
n714_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n712_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n715_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 448]            # indent
                        mov              rdx, qword ptr [r9 + 456]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n716_lit_integer_α
n715_var_β:             add              rsp, 16
                        add              rsp, 32;                             jmp   n712_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n716_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1531_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n717_binop_α
n716_lit_integer_β:     add              rsp, 16;                             jmp   n715_var_β
.Lx1531_0:              .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n717_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]            # lit_integer
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx1532_2
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              rdx, qword ptr [rsp + 24]            # lit_integer
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx1532_7
.Lx1532_2:              and              edx, 1;                              jz    .Lx1532_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]            # lit_integer
                        cmp              eax, 5;                              je    .Lx1532_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1532_4
.Lx1532_3:              movq             xmm0, rsi
.Lx1532_4:              cmp              ecx, 5;                              je    .Lx1532_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx1532_6
.Lx1532_5:              movq             xmm1, rdi
.Lx1532_6:              addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx1532_7:                                                                    jmp   n718_lit_string_α
.Lx1532_0:              mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx1532_240
                        add              rsp, 16;                             jmp   n716_lit_integer_β
.Lx1532_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n718_lit_string_α
n717_binop_β:           add              rsp, 16;                             jmp   n716_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n718_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1533_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n719_var_α
n718_lit_string_β:      add              rsp, 16;                             jmp   n717_binop_β
.Lx1533_0:              .quad            .Lx1533_0_s
.Lx1533_0_s:            .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
n719_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 464]            # suffix
                        mov              rdx, qword ptr [r9 + 472]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n720_binop_α
n719_var_β:             add              rsp, 16;                             jmp   n718_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n720_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n721_call_α
n720_binop_β:           add              rsp, 16;                             jmp   n719_var_β
#-----------------------------------------------------------------------------------------------------------------------
n721_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1537z]
                        lea              rax, [rip + pp_node_α];              jmp   rax
.Lsig1537z:             .quad            3
                        .quad            .Lx1537_2
                        .quad            .Lx1537_2
                        .quad            112
                        .quad            64
                        .quad            16
.Lx1537_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1537_29
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
.Lx1537_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx1537_240
                        add              rsp, 16;                             jmp   n720_binop_β
.Lx1537_240:                                                                  jmp   n722_statement_end_α
n721_call_β:                                                                  jmp   n720_binop_β
.Lx1537_0:              .quad            .Lx1537_0_s
.Lx1537_0_s:            .string          "pp_node"
#-----------------------------------------------------------------------------------------------------------------------
n722_statement_end_α:   add              rsp, 144;                            jmp   RETURN
#=======================================================================================================================
# pp_wdone                                                    :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n723_statement_begin_α:                                                       jmp   n724_statement_end_α
n723_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n724_statement_end_α:                                                         jmp   RETURN
#=======================================================================================================================
# pp_node_end  <stmt 92, line 136: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n725_statement_begin_α:                                                       jmp   n726_statement_end_α
n725_statement_begin_β:                                                       jmp   n727_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n726_statement_end_α:                                                         jmp   n727_statement_begin_α
#=======================================================================================================================
#                DEFINE('pp_bank()cur')                       :(pp_bank_end)
#-----------------------------------------------------------------------------------------------------------------------
n727_statement_begin_α:                                                       jmp   n728_func_activate_α
n727_statement_begin_β:                                                       jmp   n741_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n728_func_activate_α:   mov              rdi, qword ptr [rip + .Lx1551_0]
                        mov              rsi, qword ptr [rip + .Lx1551_1]
                        mov              edx, 1
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + FN__pp_bank]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n729_statement_end_α
n728_func_activate_β:                                                         jmp   n727_statement_begin_β
.Lx1551_0:              .quad            .Lx1551_0_s
.Lx1551_0_s:            .string          "pp_bank"
.Lx1551_1:              .quad            .Lx1551_1_s
.Lx1551_1_s:            .string          "cur"
#-----------------------------------------------------------------------------------------------------------------------
n729_statement_end_α:                                                         jmp   n741_statement_begin_α
#=======================================================================================================================
# pp_bank        pp_node(bank, 0, '')
#-----------------------------------------------------------------------------------------------------------------------
LBL__pp_bank:                                                                 jmp   n731_var_α
n730_statement_begin_β:                                                       jmp   n736_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n731_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 688]            # bank
                        mov              rdx, qword ptr [r9 + 696]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n732_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n732_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1557_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n733_lit_string_α
n732_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n730_statement_begin_β
.Lx1557_0:              .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n733_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx1558_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n734_call_α
n733_lit_string_β:      add              rsp, 16;                             jmp   n732_lit_integer_β
.Lx1558_0:              .quad            .Lx1558_0_s
.Lx1558_0_s:            .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n734_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1560z]
                        lea              rax, [rip + pp_node_α];              jmp   rax
.Lsig1560z:             .quad            3
                        .quad            .Lx1560_2
                        .quad            .Lx1560_2
                        .quad            48
                        .quad            32
                        .quad            16
.Lx1560_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1560_29
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
.Lx1560_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx1560_240
                        add              rsp, 16;                             jmp   n733_lit_string_β
.Lx1560_240:                                                                  jmp   n735_statement_end_α
n734_call_β:                                                                  jmp   n733_lit_string_β
.Lx1560_0:              .quad            .Lx1560_0_s
.Lx1560_0_s:            .string          "pp_node"
#-----------------------------------------------------------------------------------------------------------------------
n735_statement_end_α:   add              rsp, 64;                             jmp   n736_statement_begin_α
#=======================================================================================================================
#                pp_bank        =  .dummy                     :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n736_statement_begin_α:                                                       jmp   n737_lit_string_α
n736_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n737_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1565_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n738_call_α
.Lx1565_0:              .quad            .Lx1565_0_s
.Lx1565_0_s:            .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n738_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1567:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1567]
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
                        cmp              eax, 104;                            jne   .Lx1566_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n736_statement_begin_β
.Lx1566_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n739_assign_α
n738_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n736_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n739_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 512], rax            # pp_bank
                        mov              qword ptr [r9 + 520], rdx;           jmp   n740_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n740_statement_end_α:   add              rsp, 32;                             jmp   RETURN
#=======================================================================================================================
# pp_bank_end  <stmt 96, line 141: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n741_statement_begin_α:                                                       jmp   n742_statement_end_α
n741_statement_begin_β:                                                       jmp   n743_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n742_statement_end_α:                                                         jmp   n743_statement_begin_α
#=======================================================================================================================
# slurp          line           =  INPUT                      :F(slurp_done)
#-----------------------------------------------------------------------------------------------------------------------
n743_statement_begin_α:                                                       jmp   n744_var_α
n743_statement_begin_β:                                                       jmp   n755_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n744_var_α:             sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx1577_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx1577_240
                        add              rsp, 16;                             jmp   n743_statement_begin_β
.Lx1577_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n745_assign_α
.Lx1577_0:              .quad            .Lx1577_0_s
.Lx1577_0_s:            .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n745_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 704], rax            # line
                        mov              qword ptr [r9 + 712], rdx;           jmp   n746_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n746_statement_end_α:   add              rsp, 16;                             jmp   n747_statement_begin_α
#=======================================================================================================================
#                src            =  src line nl                :(slurp)
#-----------------------------------------------------------------------------------------------------------------------
n747_statement_begin_α:                                                       jmp   n748_var_α
n747_statement_begin_β:                                                       jmp   n743_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n748_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 720]            # src
                        mov              rdx, qword ptr [r9 + 728]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n749_var_α
#-----------------------------------------------------------------------------------------------------------------------
n749_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 704]            # line
                        mov              rdx, qword ptr [r9 + 712]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n750_binop_α
n749_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n747_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n750_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n751_var_α
n750_binop_β:           add              rsp, 16;                             jmp   n749_var_β
#-----------------------------------------------------------------------------------------------------------------------
n751_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 528]            # nl
                        mov              rdx, qword ptr [r9 + 536]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n752_binop_α
n751_var_β:             add              rsp, 16;                             jmp   n750_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n752_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n753_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n753_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 720], rax            # src
                        mov              qword ptr [r9 + 728], rdx;           jmp   n754_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n754_statement_end_α:   add              rsp, 80;                             jmp   n743_statement_begin_α
#=======================================================================================================================
# slurp_done     t0             =  TIME()
#-----------------------------------------------------------------------------------------------------------------------
n755_statement_begin_α:                                                       jmp   n756_call_α
n755_statement_begin_β:                                                       jmp   n759_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n756_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd1594:           .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1594]
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
                        cmp              eax, 104;                            jne   .Lx1593_240
                        add              rsp, 16;                             jmp   n755_statement_begin_β
.Lx1593_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n757_assign_α
n756_call_β:            add              rsp, 16;                             jmp   n755_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n757_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 736], rax            # t0
                        mov              qword ptr [r9 + 744], rdx;           jmp   n758_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n758_statement_end_α:   add              rsp, 16;                             jmp   n759_statement_begin_α
#=======================================================================================================================
#                src            treebank                      :F(main_fail)
#-----------------------------------------------------------------------------------------------------------------------
n759_statement_begin_α:                                                       jmp   n760_var_α
n759_statement_begin_β:                                                       jmp   n783_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n760_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 720]            # src
                        mov              rdx, qword ptr [r9 + 728]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n761_var_α
#-----------------------------------------------------------------------------------------------------------------------
n761_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 672]            # treebank
                        mov              rdx, qword ptr [r9 + 680]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n762_assign_α
n761_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n783_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n762_assign_α:          mov              rsi, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1602_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n763_match_begin_α
n762_assign_β:                                                                jmp   n761_var_β
.Lx1602_0:              .quad            .Lx1602_0_s
.Lx1602_0_s:            .string          "PATV$0"
#-----------------------------------------------------------------------------------------------------------------------
n763_match_begin_α:     mov              rdi, qword ptr [rsp + 16]            # var
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
.Lx1604_0:              mov              r14d, dword ptr [rbp + -40];         jmp   n764_match_defer_α
n763_match_begin_β:     lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx1604_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx1604_1
                                                                              jmp   .Lx1604_0
.Lx1604_1:
n763_match_begin_af:    mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_match_ctx_restore@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   n762_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n764_match_defer_α:     lea              rdi, [rip + .S18]
                        xor              esi, esi
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx1605_14
                        mov              rax, qword ptr [rdx + 0]
.Lx1605_14:             test             rax, rax;                            jz    .Lx1605_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx1605_4]
                        lea              r11, [rip + .Lx1605_5];              jmp   rax
.Lx1605_4:                                                                    jmp   n765_match_end_α
.Lx1605_5:                                                                    jmp   n763_match_begin_β
.Lx1605_0:              push             r14
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
.Lx1605_2:              test             rax, rax;                            je    .Lx1605_3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx1605_7]
                        lea              rdx, [rip + .Lx1605_8];              jmp   rax
.Lx1605_7:              mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx1605_2
.Lx1605_8:              mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx1605_2
.Lx1605_3:              add              rsp, 8
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
                        test             eax, eax;                            js    n763_match_begin_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx1605_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n765_match_end_α
.Lx1605_6:              add              rsp, 16;                             jmp   n763_match_begin_β
n764_match_defer_β:                                                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n765_match_end_α:       push             r14
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
.Lx1607_1:              test             rax, rax;                            je    .Lx1607_2
                        lea              rcx, [rip + .Lx1607_3]
                        lea              rdx, [rip + .Lx1607_4];              jmp   rax
.Lx1607_3:              mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx1607_1
.Lx1607_4:              mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx1607_1
.Lx1607_2:              call             rt_dcap_end_ok_close@PLT
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
                        pop              rbp;                                 jmp   n766_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n766_statement_end_α:   add              rsp, 32;                             jmp   n767_statement_begin_α
#=======================================================================================================================
#                t1             =  TIME()
#-----------------------------------------------------------------------------------------------------------------------
n767_statement_begin_α:                                                       jmp   n768_call_α
n767_statement_begin_β:                                                       jmp   n771_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n768_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd1613:           .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1613]
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
                        cmp              eax, 104;                            jne   .Lx1612_240
                        add              rsp, 16;                             jmp   n767_statement_begin_β
.Lx1612_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n769_assign_α
n768_call_β:            add              rsp, 16;                             jmp   n767_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n769_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 752], rax            # t1
                        mov              qword ptr [r9 + 760], rdx;           jmp   n770_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n770_statement_end_α:   add              rsp, 16;                             jmp   n771_statement_begin_α
#=======================================================================================================================
#                TERMINAL       =  'match_ms=' (t1 - t0)
#-----------------------------------------------------------------------------------------------------------------------
n771_statement_begin_α:                                                       jmp   n772_lit_string_α
n771_statement_begin_β:                                                       jmp   n779_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n772_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Lx1619_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n773_var_α
.Lx1619_0:              .quad            .Lx1619_0_s
.Lx1619_0_s:            .string          "match_ms="
#-----------------------------------------------------------------------------------------------------------------------
n773_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 752]            # t1
                        mov              rdx, qword ptr [r9 + 760]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n774_var_α
n773_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n771_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n774_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 736]            # t0
                        mov              rdx, qword ptr [r9 + 744]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n775_binop_α
n774_var_β:             add              rsp, 16;                             jmp   n773_var_β
#-----------------------------------------------------------------------------------------------------------------------
n775_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx1622_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx1622_7
.Lx1622_2:              and              edx, 1;                              jz    .Lx1622_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              eax, 5;                              je    .Lx1622_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1622_4
.Lx1622_3:              movq             xmm0, rsi
.Lx1622_4:              cmp              ecx, 5;                              je    .Lx1622_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx1622_6
.Lx1622_5:              movq             xmm1, rdi
.Lx1622_6:              subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx1622_7:                                                                    jmp   n776_binop_α
.Lx1622_0:              mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx1622_240
                        add              rsp, 16;                             jmp   n774_var_β
.Lx1622_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n776_binop_α
n775_binop_β:           add              rsp, 16;                             jmp   n774_var_β
#-----------------------------------------------------------------------------------------------------------------------
n776_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n777_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n777_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1624_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n778_statement_end_α
.Lx1624_0:              .quad            .Lx1624_0_s
.Lx1624_0_s:            .string          "TERMINAL"
#-----------------------------------------------------------------------------------------------------------------------
n778_statement_end_α:   add              rsp, 80;                             jmp   n779_statement_begin_α
#=======================================================================================================================
#                dummy          =  pp_bank()                  :(END)
#-----------------------------------------------------------------------------------------------------------------------
n779_statement_begin_α:                                                       jmp   n780_call_α
n779_statement_begin_β:                                                       jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n780_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1630z]
                        lea              rax, [rip + pp_bank_α];              jmp   rax
.Lsig1630z:             .quad            0
                        .quad            .Lx1630_2
                        .quad            .Lx1630_2
.Lx1630_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1630_29
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
.Lx1630_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx1630_240
                        add              rsp, 16;                             jmp   n779_statement_begin_β
.Lx1630_240:                                                                  jmp   n781_assign_α
n780_call_β:                                                                  jmp   n779_statement_begin_β
.Lx1630_0:              .quad            .Lx1630_0_s
.Lx1630_0_s:            .string          "pp_bank"
#-----------------------------------------------------------------------------------------------------------------------
n781_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 560], rax            # dummy
                        mov              qword ptr [r9 + 568], rdx;           jmp   n782_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n782_statement_end_α:   add              rsp, 16;                             jmp   main_γ
#=======================================================================================================================
# main_fail      OUTPUT         =  'Pattern match failed'
#-----------------------------------------------------------------------------------------------------------------------
n783_statement_begin_α:                                                       jmp   n784_lit_string_α
n783_statement_begin_β:                                                       jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n784_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 20
                        mov              rax, qword ptr [rip + .Lx1636_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n785_assign_α
.Lx1636_0:              .quad            .Lx1636_0_s
.Lx1636_0_s:            .string          "Pattern match failed"
#-----------------------------------------------------------------------------------------------------------------------
n785_assign_α:          mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1637_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n786_statement_end_α
.Lx1637_0:              .quad            .Lx1637_0_s
.Lx1637_0_s:            .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n786_statement_end_α:   add              rsp, 16;                             jmp   main_γ
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
.S1:                    .string          "*pop_list"
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
