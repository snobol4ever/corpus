                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_new_sent_α
proc_new_sent_α:
#-----------------------------------------------------------------------------------------------------------------------
n0_save_restore_α:                                                            jmp   n1_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n1_goto_deferred_α:     lea              rax, [rip + new_sent_body];          jmp   rax
                                                                              jmp   n2_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n2_save_restore_α:
new_sent_alpha:         sub              rsp, 48
                        mov              rax, qword ptr [r9 + 0]              # new_sent
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
                        lea              r10, [rip + new_sent_gamma]
                        lea              r11, [rip + new_sent_omega]
                        push             r11
                        push             r10
                        lea              rax, [rip + new_sent_body];          jmp   rax
new_sent_gamma:         mov              rdi, qword ptr [r9 + 0]
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
new_sent_omega:         mov              rcx, qword ptr [rsp + 32]
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
                        .globl           proc_add_tok_α
proc_add_tok_α:
#-----------------------------------------------------------------------------------------------------------------------
n9_save_restore_α:                                                            jmp   n10_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n10_goto_deferred_α:    lea              rax, [rip + add_tok_body];           jmp   rax
                                                                              jmp   n11_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n11_save_restore_α:
add_tok_alpha:          sub              rsp, 48
                        mov              rax, qword ptr [r9 + 16]             # add_tok
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
                        lea              r10, [rip + add_tok_gamma]
                        lea              r11, [rip + add_tok_omega]
                        push             r11
                        push             r10
                        lea              rax, [rip + add_tok_body];           jmp   rax
add_tok_gamma:          mov              rdi, qword ptr [r9 + 16]
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
add_tok_omega:          mov              rcx, qword ptr [rsp + 32]
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
                        .globl           proc_pp_mem_α
proc_pp_mem_α:
#-----------------------------------------------------------------------------------------------------------------------
n18_save_restore_α:                                                           jmp   n19_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n19_goto_deferred_α:    lea              rax, [rip + pp_mem_body];            jmp   rax
                                                                              jmp   n20_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n20_save_restore_α:
pp_mem_alpha:           sub              rsp, 368
                        mov              rax, qword ptr [r9 + 64]             # ssk
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 64], 0
                        mov              qword ptr [r9 + 72], 0
                        mov              rax, qword ptr [r9 + 80]             # si
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 24], rax
                        mov              qword ptr [r9 + 80], 0
                        mov              qword ptr [r9 + 88], 0
                        mov              rax, qword ptr [r9 + 96]             # sentno
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 40], rax
                        mov              qword ptr [r9 + 96], 0
                        mov              qword ptr [r9 + 104], 0
                        mov              rax, qword ptr [r9 + 112]            # wsk
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 112], 0
                        mov              qword ptr [r9 + 120], 0
                        mov              rax, qword ptr [r9 + 128]            # wi
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 72], rax
                        mov              qword ptr [r9 + 128], 0
                        mov              qword ptr [r9 + 136], 0
                        mov              rax, qword ptr [r9 + 144]            # wkey
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 88], rax
                        mov              qword ptr [r9 + 144], 0
                        mov              qword ptr [r9 + 152], 0
                        mov              rax, qword ptr [r9 + 160]            # wq
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 104], rax
                        mov              qword ptr [r9 + 160], 0
                        mov              qword ptr [r9 + 168], 0
                        mov              rax, qword ptr [r9 + 176]            # wrd
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 120], rax
                        mov              qword ptr [r9 + 176], 0
                        mov              qword ptr [r9 + 184], 0
                        mov              rax, qword ptr [r9 + 192]            # tsk
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 136], rax
                        mov              qword ptr [r9 + 192], 0
                        mov              qword ptr [r9 + 200], 0
                        mov              rax, qword ptr [r9 + 208]            # ti
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 152], rax
                        mov              qword ptr [r9 + 208], 0
                        mov              qword ptr [r9 + 216], 0
                        mov              rax, qword ptr [r9 + 224]            # tag
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [r9 + 232]
                        mov              qword ptr [rsp + 168], rax
                        mov              qword ptr [r9 + 224], 0
                        mov              qword ptr [r9 + 232], 0
                        mov              rax, qword ptr [r9 + 240]            # tv
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [r9 + 248]
                        mov              qword ptr [rsp + 184], rax
                        mov              qword ptr [r9 + 240], 0
                        mov              qword ptr [r9 + 248], 0
                        mov              rax, qword ptr [r9 + 256]            # tline
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [r9 + 264]
                        mov              qword ptr [rsp + 200], rax
                        mov              qword ptr [r9 + 256], 0
                        mov              qword ptr [r9 + 264], 0
                        mov              rax, qword ptr [r9 + 272]            # pfx
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [r9 + 280]
                        mov              qword ptr [rsp + 216], rax
                        mov              qword ptr [r9 + 272], 0
                        mov              qword ptr [r9 + 280], 0
                        mov              rax, qword ptr [r9 + 288]            # pad
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [r9 + 296]
                        mov              qword ptr [rsp + 232], rax
                        mov              qword ptr [r9 + 288], 0
                        mov              qword ptr [r9 + 296], 0
                        mov              rax, qword ptr [r9 + 304]            # next_wkey
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [r9 + 312]
                        mov              qword ptr [rsp + 248], rax
                        mov              qword ptr [r9 + 304], 0
                        mov              qword ptr [r9 + 312], 0
                        mov              rax, qword ptr [r9 + 320]            # last_sent
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [r9 + 328]
                        mov              qword ptr [rsp + 264], rax
                        mov              qword ptr [r9 + 320], 0
                        mov              qword ptr [r9 + 328], 0
                        mov              rax, qword ptr [r9 + 336]            # lline
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [r9 + 344]
                        mov              qword ptr [rsp + 280], rax
                        mov              qword ptr [r9 + 336], 0
                        mov              qword ptr [r9 + 344], 0
                        mov              rax, qword ptr [r9 + 352]            # ns
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [r9 + 360]
                        mov              qword ptr [rsp + 296], rax
                        mov              qword ptr [r9 + 352], 0
                        mov              qword ptr [r9 + 360], 0
                        mov              rax, qword ptr [r9 + 32]             # pp_mem
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 312], rax
                        mov              qword ptr [r9 + 32], 0
                        mov              qword ptr [r9 + 40], 0
                        mov              qword ptr [rsp + 320], r10
                        mov              qword ptr [rsp + 328], r11
                        mov              qword ptr [rsp + 336], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 368]
                        cmp              rdx, 0;                              jbe   .Lx26_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 48]             # mem
                        mov              qword ptr [r9 + 48], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 56]
                        mov              qword ptr [r9 + 56], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx26_41
.Lx26_10:               mov              rax, qword ptr [r9 + 48]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 360], rax
                        mov              qword ptr [r9 + 48], 0
                        mov              qword ptr [r9 + 56], 0
.Lx26_41:               lea              r10, [rip + pp_mem_gamma]
                        lea              r11, [rip + pp_mem_omega]
                        push             r11
                        push             r10
                        lea              rax, [rip + pp_mem_body];            jmp   rax
pp_mem_gamma:           mov              rdi, qword ptr [r9 + 32]             # pp_mem
                        mov              rsi, qword ptr [r9 + 40]
                        mov              rcx, qword ptr [rsp + 336]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 368]
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [r9 + 32], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [r9 + 40], rax
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [r9 + 352], rax            # ns
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [r9 + 360], rax
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [r9 + 336], rax            # lline
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [r9 + 344], rax
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [r9 + 320], rax            # last_sent
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [r9 + 328], rax
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [r9 + 304], rax            # next_wkey
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [r9 + 312], rax
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [r9 + 288], rax            # pad
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [r9 + 296], rax
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [r9 + 272], rax            # pfx
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [r9 + 280], rax
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [r9 + 256], rax            # tline
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [r9 + 264], rax
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [r9 + 240], rax            # tv
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [r9 + 248], rax
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [r9 + 224], rax            # tag
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [r9 + 232], rax
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [r9 + 208], rax            # ti
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [r9 + 216], rax
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [r9 + 192], rax            # tsk
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [r9 + 200], rax
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [r9 + 176], rax            # wrd
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [r9 + 184], rax
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [r9 + 160], rax            # wq
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [r9 + 168], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [r9 + 144], rax            # wkey
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [r9 + 152], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [r9 + 128], rax            # wi
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [r9 + 136], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 112], rax            # wsk
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 120], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [r9 + 96], rax             # sentno
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [r9 + 104], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [r9 + 80], rax             # si
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [r9 + 88], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 64], rax             # ssk
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 72], rax
                        cmp              rdx, 0;                              jbe   .Lx26_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 48], rax             # mem
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 56], rax;            jmp   .Lx26_110
.Lx26_80:               mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [r9 + 48], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [r9 + 56], rax
.Lx26_110:              mov              r10, qword ptr [rsp + 320]
                        mov              r11, qword ptr [rsp + 328]
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 368
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
pp_mem_omega:           mov              rcx, qword ptr [rsp + 336]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 368]
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [r9 + 32], rax             # pp_mem
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [r9 + 40], rax
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [r9 + 352], rax            # ns
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [r9 + 360], rax
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [r9 + 336], rax            # lline
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [r9 + 344], rax
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [r9 + 320], rax            # last_sent
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [r9 + 328], rax
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [r9 + 304], rax            # next_wkey
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [r9 + 312], rax
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [r9 + 288], rax            # pad
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [r9 + 296], rax
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [r9 + 272], rax            # pfx
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [r9 + 280], rax
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [r9 + 256], rax            # tline
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [r9 + 264], rax
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [r9 + 240], rax            # tv
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [r9 + 248], rax
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [r9 + 224], rax            # tag
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [r9 + 232], rax
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [r9 + 208], rax            # ti
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [r9 + 216], rax
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [r9 + 192], rax            # tsk
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [r9 + 200], rax
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [r9 + 176], rax            # wrd
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [r9 + 184], rax
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [r9 + 160], rax            # wq
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [r9 + 168], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [r9 + 144], rax            # wkey
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [r9 + 152], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [r9 + 128], rax            # wi
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [r9 + 136], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 112], rax            # wsk
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 120], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [r9 + 96], rax             # sentno
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [r9 + 104], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [r9 + 80], rax             # si
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [r9 + 88], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 64], rax             # ssk
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 72], rax
                        cmp              rdx, 0;                              jbe   .Lx26_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 48], rax             # mem
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 56], rax;            jmp   .Lx26_180
.Lx26_150:              mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [r9 + 48], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [r9 + 56], rax
.Lx26_180:              mov              r10, qword ptr [rsp + 320]
                        mov              r11, qword ptr [rsp + 328]
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 368
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$0_α
proc_PAT$0_α:
proc_PAT$0_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n27_match_pos_α:        mov              rax, 0
                        cmp              r14d, eax;                           jne   proc_PAT$0_ω
                                                                              jmp   n28_match_arbno_α
n27_match_pos_β:                                                              jmp   proc_PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
n28_match_arbno_α:      lea              rdi, [rip + .S1]
                        call             rt_bomb@PLT
                        ud2
n28_match_arbno_β:      lea              rdi, [rip + .S0]
                        call             rt_bomb@PLT
                        ud2
n28_match_arbno_as:
n28_match_arbno_af:
#-----------------------------------------------------------------------------------------------------------------------
n29_match_rpos_α:       mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n28_match_arbno_β
                                                                              jmp   proc_PAT$0_γ
#-----------------------------------------------------------------------------------------------------------------------
n30_match_alternate_α:  sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        lea              rax, [rip + .Lx58_21]
                        mov              qword ptr [rsp + 16], rax;           jmp   n46_match_assign_save_α
.Lx58_21:               lea              rax, [rip + .Lx58_19]
                        mov              qword ptr [rsp + 16], rax;           jmp   n33_match_assign_save_α
n30_match_alternate_s0: lea              rax, [rip + .Lx58_40]
                        mov              qword ptr [rsp + 8], rax;            jmp   n30_match_alternate_as
n30_match_alternate_s1: lea              rax, [rip + .Lx58_41]
                        mov              qword ptr [rsp + 8], rax;            jmp   n30_match_alternate_as
.Lx58_40:                                                                     jmp   n45_goto_β
.Lx58_41:                                                                     jmp   n32_goto_β
n30_match_alternate_as:                                                       jmp   n31_match_span_α
n30_match_alternate_β:  mov              rax, qword ptr [rsp + 8];            jmp   rax
n30_match_alternate_af: mov              r14d, dword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16];           jmp   rax
.Lx58_19:               add              rsp, 32;                             jmp   n28_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n31_match_span_α:       sub              rsp, 16
                        movsxd           rcx, r14d
.Lx60_0:                cmp              ecx, r15d;                           jge   .Lx60_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32;                             je    .Lx60_10
                        cmp              esi, 10;                             je    .Lx60_10
                                                                              jmp   .Lx60_1
.Lx60_10:               add              ecx, 1;                              jmp   .Lx60_0
.Lx60_1:                cmp              ecx, r14d;                           jg    .Lx60_240
                        add              rsp, 16;                             jmp   n30_match_alternate_β
.Lx60_240:              mov              dword ptr [rsp + 4], r14d
                        mov              r14d, ecx;                           jmp   n28_match_arbno_as
n31_match_span_β:       mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16;                             jmp   n30_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
n32_goto_α:                                                                   jmp   n30_match_alternate_af
n32_goto_β:                                                                   jmp   n30_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n33_match_assign_save_α:
                        lea              rdi, [rip + .S2]
                        call             rt_bomb@PLT
                        ud2
#-----------------------------------------------------------------------------------------------------------------------
n34_match_notany_α:     mov              eax, r14d
                        cmp              eax, r15d;                           jge   n33_match_assign_save_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 95;                             je    n33_match_assign_save_β
                        add              r14d, 1;                             jmp   n35_match_break_α
n34_match_notany_β:     sub              r14d, 1;                             jmp   n33_match_assign_save_β
#-----------------------------------------------------------------------------------------------------------------------
n35_match_break_α:      sub              rsp, 16
                        movsxd           rcx, r14d
.Lx66_0:                cmp              ecx, r15d;                           jl    .Lx66_240
                        add              rsp, 16;                             jmp   n34_match_notany_β
.Lx66_240:              movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 95;                             je    .Lx66_1
                        add              ecx, 1;                              jmp   .Lx66_0
.Lx66_1:                mov              dword ptr [rsp + 0], r14d
                        mov              r14d, ecx;                           jmp   n36_match_assign_cond_α
n35_match_break_β:      mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16;                             jmp   n34_match_notany_β
#-----------------------------------------------------------------------------------------------------------------------
n36_match_assign_cond_α:
                        lea              rdi, [rip + .S3]
                        call             rt_bomb@PLT
                        ud2
#-----------------------------------------------------------------------------------------------------------------------
n37_match_lit_α:        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n36_match_assign_cond_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 95;                             jne   n36_match_assign_cond_β
                        add              r14d, 1;                             jmp   n38_match_assign_save_α
n37_match_lit_β:        sub              r14d, 1;                             jmp   n36_match_assign_cond_β
#-----------------------------------------------------------------------------------------------------------------------
n38_match_assign_save_α:
                        lea              rdi, [rip + .S2]
                        call             rt_bomb@PLT
                        ud2
#-----------------------------------------------------------------------------------------------------------------------
n39_match_any_α:        mov              eax, r14d
                        cmp              eax, r15d;                           jge   n38_match_assign_save_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0;               je    n38_match_assign_save_β
                        add              r14d, 1;                             jmp   n40_match_span_α
n39_match_any_β:        sub              r14d, 1;                             jmp   n38_match_assign_save_β
#-----------------------------------------------------------------------------------------------------------------------
n40_match_span_α:       sub              rsp, 16
                        lea              rdi, [rip + .C1]
                        movsxd           rcx, r14d
.Lx76_0:                cmp              ecx, r15d;                           jge   .Lx76_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lx76_1
                        add              ecx, 1;                              jmp   .Lx76_0
.Lx76_1:                cmp              ecx, r14d;                           jg    .Lx76_240
                        add              rsp, 16;                             jmp   n39_match_any_β
.Lx76_240:              mov              dword ptr [rsp + 4], r14d
                        mov              r14d, ecx;                           jmp   n41_match_assign_cond_α
n40_match_span_β:       mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16;                             jmp   n39_match_any_β
#-----------------------------------------------------------------------------------------------------------------------
n41_match_assign_cond_α:
                        lea              rdi, [rip + .S3]
                        call             rt_bomb@PLT
                        ud2
#-----------------------------------------------------------------------------------------------------------------------
n42_match_assign_save_α:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
                        mov              dword ptr [rbp + -8], r14d;          jmp   n43_match_defer_α
n42_match_assign_save_β:
                                                                              jmp   n41_match_assign_cond_β
#-----------------------------------------------------------------------------------------------------------------------
n43_match_defer_α:      mov              rax, qword ptr [r9 + 592]            # PAT$0$V1
                        mov              rdx, qword ptr [r9 + 600]
                        cmp              eax, 8;                              jne   .Lx81_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx81_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx81_10
.Lx81_9:                xor              eax, eax
.Lx81_10:               test             rax, rax;                            jz    .Lx81_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx81_4]
                        lea              r11, [rip + .Lx81_5];                jmp   rax
.Lx81_4:                                                                      jmp   n44_match_assign_cond_α
.Lx81_5:                                                                      jmp   n42_match_assign_save_β
.Lx81_0:                push             r14
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
.Lx81_2:                test             rax, rax;                            je    .Lx81_3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx81_7]
                        lea              rdx, [rip + .Lx81_8];                jmp   rax
.Lx81_7:                mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx81_2
.Lx81_8:                mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx81_2
.Lx81_3:                add              rsp, 8
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
                        test             eax, eax;                            js    n42_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx81_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n44_match_assign_cond_α
.Lx81_6:                add              rsp, 16;                             jmp   n42_match_assign_save_β
n43_match_defer_β:                                                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n44_match_assign_cond_α:
                        mov              eax, dword ptr [rbp + -8]
                        mov              rsp, rbp
                        pop              rbp
                        lea              rcx, [rip + .S5]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n30_match_alternate_s1
n44_match_assign_cond_β:
                        sub              r12, 24;                             jmp   n43_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n45_goto_α:                                                                   jmp   n30_match_alternate_af
n45_goto_β:                                                                   jmp   n30_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n46_match_assign_save_α:
                        lea              rdi, [rip + .S2]
                        call             rt_bomb@PLT
                        ud2
#-----------------------------------------------------------------------------------------------------------------------
n47_match_span_α:       sub              rsp, 16
                        lea              rdi, [rip + .C2]
                        movsxd           rcx, r14d
.Lx88_0:                cmp              ecx, r15d;                           jge   .Lx88_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lx88_1
                        add              ecx, 1;                              jmp   .Lx88_0
.Lx88_1:                cmp              ecx, r14d;                           jg    .Lx88_240
                        add              rsp, 16;                             jmp   n46_match_assign_save_β
.Lx88_240:              mov              dword ptr [rsp + 4], r14d
                        mov              r14d, ecx;                           jmp   n48_match_assign_cond_α
n47_match_span_β:       mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16;                             jmp   n46_match_assign_save_β
#-----------------------------------------------------------------------------------------------------------------------
n48_match_assign_cond_α:
                        lea              rdi, [rip + .S3]
                        call             rt_bomb@PLT
                        ud2
#-----------------------------------------------------------------------------------------------------------------------
n49_match_lit_α:        mov              eax, r14d
                        add              eax, 10
                        cmp              eax, r15d;                           jg    n48_match_assign_cond_β
                        movsxd           rcx, r14d
                        mov              rdx, qword ptr [r13+rcx]
                        movabs           rax, 5791411556081353567
                        cmp              rdx, rax;                            jne   n48_match_assign_cond_β
                        movzx            eax, byte ptr [r13+rcx+8]
                        cmp              eax, 85;                             jne   n48_match_assign_cond_β
                        movzx            eax, byte ptr [r13+rcx+9]
                        cmp              eax, 78;                             jne   n48_match_assign_cond_β
                        add              r14d, 10;                            jmp   n50_match_assign_save_α
n49_match_lit_β:        sub              r14d, 10;                            jmp   n48_match_assign_cond_β
#-----------------------------------------------------------------------------------------------------------------------
n50_match_assign_save_α:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
                        mov              dword ptr [rbp + -8], r14d;          jmp   n51_match_defer_α
n50_match_assign_save_β:
                                                                              jmp   n49_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n51_match_defer_α:      mov              rax, qword ptr [r9 + 576]            # PAT$0$V0
                        mov              rdx, qword ptr [r9 + 584]
                        cmp              eax, 8;                              jne   .Lx95_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx95_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx95_10
.Lx95_9:                xor              eax, eax
.Lx95_10:               test             rax, rax;                            jz    .Lx95_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx95_4]
                        lea              r11, [rip + .Lx95_5];                jmp   rax
.Lx95_4:                                                                      jmp   n52_match_assign_cond_α
.Lx95_5:                                                                      jmp   n50_match_assign_save_β
.Lx95_0:                push             r14
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
.Lx95_2:                test             rax, rax;                            je    .Lx95_3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx95_7]
                        lea              rdx, [rip + .Lx95_8];                jmp   rax
.Lx95_7:                mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx95_2
.Lx95_8:                mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx95_2
.Lx95_3:                add              rsp, 8
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
                        test             eax, eax;                            js    n50_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx95_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n52_match_assign_cond_α
.Lx95_6:                add              rsp, 16;                             jmp   n50_match_assign_save_β
n51_match_defer_β:                                                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n52_match_assign_cond_α:
                        mov              eax, dword ptr [rbp + -8]
                        mov              rsp, rbp
                        pop              rbp
                        lea              rcx, [rip + .S7]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n30_match_alternate_s0
n52_match_assign_cond_β:
                        sub              r12, 24;                             jmp   n51_match_defer_β
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
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "LBL__new_sent"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + new_sent_body]
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
.Lstartup_pname1:       .string          "LBL__add_tok"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + add_tok_body]
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
.Lstartup_pname2:       .string          "LBL__pp_mem"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + pp_mem_body]
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
.Lstartup_pname6:       .string          "PAT$0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_PAT$0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 448
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "new_sent"
.Lgvan1:                .string          "add_tok"
.Lgvan2:                .string          "pp_mem"
.Lgvan3:                .string          "mem"
.Lgvan4:                .string          "ssk"
.Lgvan5:                .string          "si"
.Lgvan6:                .string          "sentno"
.Lgvan7:                .string          "wsk"
.Lgvan8:                .string          "wi"
.Lgvan9:                .string          "wkey"
.Lgvan10:               .string          "wq"
.Lgvan11:               .string          "wrd"
.Lgvan12:               .string          "tsk"
.Lgvan13:               .string          "ti"
.Lgvan14:               .string          "tag"
.Lgvan15:               .string          "tv"
.Lgvan16:               .string          "tline"
.Lgvan17:               .string          "pfx"
.Lgvan18:               .string          "pad"
.Lgvan19:               .string          "next_wkey"
.Lgvan20:               .string          "last_sent"
.Lgvan21:               .string          "lline"
.Lgvan22:               .string          "ns"
.Lgvan23:               .string          "nl"
.Lgvan24:               .string          "DIGITS"
.Lgvan25:               .string          "UCASE"
.Lgvan26:               .string          "num"
.Lgvan27:               .string          "dummy"
.Lgvan28:               .string          "line"
.Lgvan29:               .string          "b1"
.Lgvan30:               .string          "b2"
.Lgvan31:               .string          "src"
.Lgvan32:               .string          "claws"
.Lgvan33:               .string          "epsilon"
.Lgvan34:               .string          "t0"
.Lgvan35:               .string          "t1"
.Lgvan36:               .string          "PAT$0$V0"
.Lgvan37:               .string          "PAT$0$V1"
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
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 38
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 38
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
#                 &ALPHABET       POS(10) LEN(1) . nl
#-----------------------------------------------------------------------------------------------------------------------
n98_statement_begin_α:                                                        jmp   n99_keyword_snobol4_α
n98_statement_begin_β:                                                        jmp   n107_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n99_keyword_snobol4_α:  sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx681_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read_snobol4@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n100_match_begin_α
.Lx681_0:               .quad            .Lx681_0_s
.Lx681_0_s:             .string          "ALPHABET"
#-----------------------------------------------------------------------------------------------------------------------
n100_match_begin_α:     mov              rdi, qword ptr [rsp + 0]             # keyword_snobol4
                        mov              rsi, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 256], rdi
                        mov              qword ptr [rsp + 264], rsi
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
.Lx683_0:               mov              r14d, dword ptr [rbp + -40];         jmp   n101_match_pos_α
n100_match_begin_β:     lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx683_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx683_1
                                                                              jmp   .Lx683_0
.Lx683_1:
n100_match_begin_af:    mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_match_ctx_restore@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   n106_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n101_match_pos_α:       mov              rax, 10
                        cmp              r14d, eax;                           jne   n100_match_begin_β
                                                                              jmp   n102_match_assign_save_α
n101_match_pos_β:                                                             jmp   n100_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n102_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d;           jmp   n103_match_len_α
n102_match_assign_save_β:
                        add              rsp, 16;                             jmp   n100_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n103_match_len_α:       mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jle   .Lx687_240
                        add              rsp, 16;                             jmp   n100_match_begin_β
.Lx687_240:             add              r14d, 1;                             jmp   n104_match_assign_cond_α
n103_match_len_β:       sub              r14d, 1
                        add              rsp, 16;                             jmp   n100_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n104_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 0]
                        lea              rcx, [rip + .S8]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n105_match_end_α
n104_match_assign_cond_β:
                        sub              r12, 24;                             jmp   n103_match_len_β
#-----------------------------------------------------------------------------------------------------------------------
n105_match_end_α:       push             r14
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
.Lx691_1:               test             rax, rax;                            je    .Lx691_2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx691_3]
                        lea              rdx, [rip + .Lx691_4];               jmp   rax
.Lx691_3:               mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx691_1
.Lx691_4:               mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx691_1
.Lx691_2:               call             rt_dcap_end_ok_close@PLT
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
                        pop              rbp;                                 jmp   n106_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n106_statement_end_α:   add              rsp, 16;                             jmp   n107_statement_begin_α
#=======================================================================================================================
#                 DIGITS          =  '0123456789'
#-----------------------------------------------------------------------------------------------------------------------
n107_statement_begin_α:                                                       jmp   n108_lit_string_α
n107_statement_begin_β:                                                       jmp   n111_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n108_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx696_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n109_assign_α
.Lx696_0:               .quad            .Lx696_0_s
.Lx696_0_s:             .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n109_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 384], rax            # DIGITS
                        mov              qword ptr [r9 + 392], rdx;           jmp   n110_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n110_statement_end_α:   add              rsp, 16;                             jmp   n111_statement_begin_α
#=======================================================================================================================
#                 UCASE           =  'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
#-----------------------------------------------------------------------------------------------------------------------
n111_statement_begin_α:                                                       jmp   n112_lit_string_α
n111_statement_begin_β:                                                       jmp   n115_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n112_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 26
                        mov              rax, qword ptr [rip + .Lx702_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n113_assign_α
.Lx702_0:               .quad            .Lx702_0_s
.Lx702_0_s:             .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
#-----------------------------------------------------------------------------------------------------------------------
n113_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 400], rax            # UCASE
                        mov              qword ptr [r9 + 408], rdx;           jmp   n114_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n114_statement_end_α:   add              rsp, 16;                             jmp   n115_statement_begin_α
#=======================================================================================================================
#                 DEFINE('new_sent()')                            :(new_sent_end)
#-----------------------------------------------------------------------------------------------------------------------
n115_statement_begin_α:                                                       jmp   n116_func_activate_α
n115_statement_begin_β:                                                       jmp   n135_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n116_func_activate_α:   mov              rdi, qword ptr [rip + .Lx709_0]
                        mov              rsi, qword ptr [rip + .Lx709_1]
                        mov              edx, 0
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + proc_new_sent_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n117_statement_end_α
n116_func_activate_β:                                                         jmp   n115_statement_begin_β
.Lx709_0:               .quad            .Lx709_0_s
.Lx709_0_s:             .string          "new_sent"
.Lx709_1:               .quad            .Lx709_1_s
.Lx709_1_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n117_statement_end_α:                                                         jmp   n135_statement_begin_α
#=======================================================================================================================
# new_sent        sentno          =  +num
#-----------------------------------------------------------------------------------------------------------------------
new_sent_body:                                                                jmp   n119_var_α
n118_statement_begin_β:                                                       jmp   n123_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n119_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 416]            # num
                        mov              rdx, qword ptr [r9 + 424]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n120_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n120_unop_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # var
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_num_pos@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n121_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n121_assign_α:          mov              rax, qword ptr [rsp + 0]             # unop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # sentno
                        mov              qword ptr [r9 + 104], rdx;           jmp   n122_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n122_statement_end_α:   add              rsp, 32;                             jmp   n123_statement_begin_α
#=======================================================================================================================
#                 mem[sentno]     =  TABLE()
#-----------------------------------------------------------------------------------------------------------------------
n123_statement_begin_α:                                                       jmp   n124_var_α
n123_statement_begin_β:                                                       jmp   n130_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n124_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # mem
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n125_var_α
#-----------------------------------------------------------------------------------------------------------------------
n125_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 96]             # sentno
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n126_subscript_α
n125_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n123_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n126_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx723_240
                        add              rsp, 16;                             jmp   n125_var_β
.Lx723_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n127_call_α
n126_subscript_β:       add              rsp, 16;                             jmp   n125_var_β
#-----------------------------------------------------------------------------------------------------------------------
n127_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd725:            .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd725]
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
                        cmp              eax, 104;                            jne   .Lx724_240
                        add              rsp, 16;                             jmp   n126_subscript_β
.Lx724_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n128_assign_var_α
n127_call_β:            add              rsp, 16;                             jmp   n126_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n128_assign_var_α:      sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx726_240
                        add              rsp, 32;                             jmp   n126_subscript_β
.Lx726_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n129_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n129_statement_end_α:   add              rsp, 80;                             jmp   n130_statement_begin_α
#=======================================================================================================================
#                 new_sent        =  .dummy                       :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n130_statement_begin_α:                                                       jmp   n131_lit_string_α
n130_statement_begin_β:                                                       jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n131_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx731_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n132_call_α
.Lx731_0:               .quad            .Lx731_0_s
.Lx731_0_s:             .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n132_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd733:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd733]
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
                        cmp              eax, 104;                            jne   .Lx732_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n130_statement_begin_β
.Lx732_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n133_assign_α
n132_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n130_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n133_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # new_sent
                        mov              qword ptr [r9 + 8], rdx;             jmp   n134_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n134_statement_end_α:   add              rsp, 32;                             jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n135_statement_begin_α:                                                       jmp   n136_statement_end_α
n135_statement_begin_β:                                                       jmp   n137_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n136_statement_end_α:                                                         jmp   n137_statement_begin_α
#=======================================================================================================================
#                 DEFINE('add_tok()')                             :(add_tok_end)
#-----------------------------------------------------------------------------------------------------------------------
n137_statement_begin_α:                                                       jmp   n138_func_activate_α
n137_statement_begin_β:                                                       jmp   n215_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n138_func_activate_α:   mov              rdi, qword ptr [rip + .Lx744_0]
                        mov              rsi, qword ptr [rip + .Lx744_1]
                        mov              edx, 0
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + proc_add_tok_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n139_statement_end_α
n138_func_activate_β:                                                         jmp   n137_statement_begin_β
.Lx744_0:               .quad            .Lx744_0_s
.Lx744_0_s:             .string          "add_tok"
.Lx744_1:               .quad            .Lx744_1_s
.Lx744_1_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n139_statement_end_α:                                                         jmp   n215_statement_begin_α
#=======================================================================================================================
# add_tok         DIFFER(mem[sentno][wrd])                        :F(new_wrd)
#-----------------------------------------------------------------------------------------------------------------------
add_tok_body:                                                                 jmp   n141_var_α
n140_statement_begin_β:                                                       jmp   n187_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n141_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # mem
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n142_var_α
#-----------------------------------------------------------------------------------------------------------------------
n142_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 96]             # sentno
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n143_subscript_α
n142_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n140_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n143_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx751_240
                        add              rsp, 16;                             jmp   n142_var_β
.Lx751_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n144_deref_α
n143_subscript_β:       add              rsp, 16;                             jmp   n142_var_β
#-----------------------------------------------------------------------------------------------------------------------
n144_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx752_240
                        add              rsp, 16;                             jmp   n143_subscript_β
.Lx752_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n145_var_α
n144_deref_β:           add              rsp, 16;                             jmp   n143_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n145_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # wrd
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n146_subscript_α
n145_var_β:             add              rsp, 16;                             jmp   n144_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n146_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx754_240
                        add              rsp, 16;                             jmp   n145_var_β
.Lx754_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n147_deref_α
n146_subscript_β:       add              rsp, 16;                             jmp   n145_var_β
#-----------------------------------------------------------------------------------------------------------------------
n147_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx755_240
                        add              rsp, 16;                             jmp   n146_subscript_β
.Lx755_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n148_call_α
n147_deref_β:           add              rsp, 16;                             jmp   n146_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n148_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd757:            .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd757]
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
                        cmp              eax, 104;                            jne   .Lx756_240
                        add              rsp, 16;                             jmp   n147_deref_β
.Lx756_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n149_statement_end_α
n148_call_β:            add              rsp, 16;                             jmp   n147_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n149_statement_end_α:   add              rsp, 128;                            jmp   n150_statement_begin_α
#=======================================================================================================================
#                 DIFFER(mem[sentno][wrd][tag])                   :F(new_tag)
#-----------------------------------------------------------------------------------------------------------------------
n150_statement_begin_α:                                                       jmp   n151_var_α
n150_statement_begin_β:                                                       jmp   n197_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n151_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # mem
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n152_var_α
#-----------------------------------------------------------------------------------------------------------------------
n152_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 96]             # sentno
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n153_subscript_α
n152_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n150_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n153_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx764_240
                        add              rsp, 16;                             jmp   n152_var_β
.Lx764_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n154_deref_α
n153_subscript_β:       add              rsp, 16;                             jmp   n152_var_β
#-----------------------------------------------------------------------------------------------------------------------
n154_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx765_240
                        add              rsp, 16;                             jmp   n153_subscript_β
.Lx765_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n155_var_α
n154_deref_β:           add              rsp, 16;                             jmp   n153_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n155_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # wrd
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n156_subscript_α
n155_var_β:             add              rsp, 16;                             jmp   n154_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n156_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx767_240
                        add              rsp, 16;                             jmp   n155_var_β
.Lx767_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n157_deref_α
n156_subscript_β:       add              rsp, 16;                             jmp   n155_var_β
#-----------------------------------------------------------------------------------------------------------------------
n157_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx768_240
                        add              rsp, 16;                             jmp   n156_subscript_β
.Lx768_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n158_var_α
n157_deref_β:           add              rsp, 16;                             jmp   n156_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n158_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 224]            # tag
                        mov              rdx, qword ptr [r9 + 232]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n159_subscript_α
n158_var_β:             add              rsp, 16;                             jmp   n157_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n159_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx770_240
                        add              rsp, 16;                             jmp   n158_var_β
.Lx770_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n160_deref_α
n159_subscript_β:       add              rsp, 16;                             jmp   n158_var_β
#-----------------------------------------------------------------------------------------------------------------------
n160_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx771_240
                        add              rsp, 16;                             jmp   n159_subscript_β
.Lx771_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n161_call_α
n160_deref_β:           add              rsp, 16;                             jmp   n159_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n161_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd773:            .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd773]
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
                        cmp              eax, 104;                            jne   .Lx772_240
                        add              rsp, 16;                             jmp   n160_deref_β
.Lx772_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n162_statement_end_α
n161_call_β:            add              rsp, 16;                             jmp   n160_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n162_statement_end_α:   add              rsp, 176;                            jmp   n163_statement_begin_α
#=======================================================================================================================
#                 mem[sentno][wrd][tag]  =  mem[sentno][wrd][tag] + 1  :(done)
#-----------------------------------------------------------------------------------------------------------------------
n163_statement_begin_α:                                                       jmp   n164_var_α
n163_statement_begin_β:                                                       jmp   n210_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n164_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # mem
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n165_var_α
#-----------------------------------------------------------------------------------------------------------------------
n165_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 96]             # sentno
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n166_subscript_α
n165_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n163_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n166_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx780_240
                        add              rsp, 16;                             jmp   n165_var_β
.Lx780_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n167_deref_α
n166_subscript_β:       add              rsp, 16;                             jmp   n165_var_β
#-----------------------------------------------------------------------------------------------------------------------
n167_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx781_240
                        add              rsp, 16;                             jmp   n166_subscript_β
.Lx781_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n168_var_α
n167_deref_β:           add              rsp, 16;                             jmp   n166_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n168_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # wrd
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n169_subscript_α
n168_var_β:             add              rsp, 16;                             jmp   n167_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n169_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx783_240
                        add              rsp, 16;                             jmp   n168_var_β
.Lx783_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n170_deref_α
n169_subscript_β:       add              rsp, 16;                             jmp   n168_var_β
#-----------------------------------------------------------------------------------------------------------------------
n170_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx784_240
                        add              rsp, 16;                             jmp   n169_subscript_β
.Lx784_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n171_var_α
n170_deref_β:           add              rsp, 16;                             jmp   n169_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n171_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 224]            # tag
                        mov              rdx, qword ptr [r9 + 232]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n172_subscript_α
n171_var_β:             add              rsp, 16;                             jmp   n170_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n172_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx786_240
                        add              rsp, 16;                             jmp   n171_var_β
.Lx786_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n173_var_α
n172_subscript_β:       add              rsp, 16;                             jmp   n171_var_β
#-----------------------------------------------------------------------------------------------------------------------
n173_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # mem
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n174_var_α
n173_var_β:             add              rsp, 16;                             jmp   n172_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n174_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 96]             # sentno
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n175_subscript_α
n174_var_β:             add              rsp, 16;                             jmp   n173_var_β
#-----------------------------------------------------------------------------------------------------------------------
n175_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx789_240
                        add              rsp, 16;                             jmp   n174_var_β
.Lx789_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n176_deref_α
n175_subscript_β:       add              rsp, 16;                             jmp   n174_var_β
#-----------------------------------------------------------------------------------------------------------------------
n176_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx790_240
                        add              rsp, 16;                             jmp   n175_subscript_β
.Lx790_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n177_var_α
n176_deref_β:           add              rsp, 16;                             jmp   n175_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n177_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # wrd
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n178_subscript_α
n177_var_β:             add              rsp, 16;                             jmp   n176_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n178_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx792_240
                        add              rsp, 16;                             jmp   n177_var_β
.Lx792_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n179_deref_α
n178_subscript_β:       add              rsp, 16;                             jmp   n177_var_β
#-----------------------------------------------------------------------------------------------------------------------
n179_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx793_240
                        add              rsp, 16;                             jmp   n178_subscript_β
.Lx793_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n180_var_α
n179_deref_β:           add              rsp, 16;                             jmp   n178_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n180_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 224]            # tag
                        mov              rdx, qword ptr [r9 + 232]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n181_subscript_α
n180_var_β:             add              rsp, 16;                             jmp   n179_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n181_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx795_240
                        add              rsp, 16;                             jmp   n180_var_β
.Lx795_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n182_deref_α
n181_subscript_β:       add              rsp, 16;                             jmp   n180_var_β
#-----------------------------------------------------------------------------------------------------------------------
n182_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx796_240
                        add              rsp, 16;                             jmp   n181_subscript_β
.Lx796_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n183_lit_integer_α
n182_deref_β:           add              rsp, 16;                             jmp   n181_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n183_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx797_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n184_binop_α
n183_lit_integer_β:     add              rsp, 16;                             jmp   n182_deref_β
.Lx797_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n184_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # deref
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx798_240
                        add              rsp, 16;                             jmp   n183_lit_integer_β
.Lx798_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n185_assign_var_α
n184_binop_β:           add              rsp, 16;                             jmp   n183_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n185_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 208]           # subscript
                        mov              rsi, qword ptr [rsp + 216]
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
                        cmp              eax, 104;                            jne   .Lx799_240
                        add              rsp, 16;                             jmp   n184_binop_β
.Lx799_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n186_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n186_statement_end_α:   add              rsp, 352;                            jmp   n210_statement_begin_α
#=======================================================================================================================
# new_wrd         mem[sentno][wrd]       =  TABLE()
#-----------------------------------------------------------------------------------------------------------------------
n187_statement_begin_α:                                                       jmp   n188_var_α
n187_statement_begin_β:                                                       jmp   n197_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n188_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # mem
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n189_var_α
#-----------------------------------------------------------------------------------------------------------------------
n189_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 96]             # sentno
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n190_subscript_α
n189_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n187_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n190_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx806_240
                        add              rsp, 16;                             jmp   n189_var_β
.Lx806_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n191_deref_α
n190_subscript_β:       add              rsp, 16;                             jmp   n189_var_β
#-----------------------------------------------------------------------------------------------------------------------
n191_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx807_240
                        add              rsp, 16;                             jmp   n190_subscript_β
.Lx807_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n192_var_α
n191_deref_β:           add              rsp, 16;                             jmp   n190_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n192_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # wrd
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n193_subscript_α
n192_var_β:             add              rsp, 16;                             jmp   n191_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n193_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx809_240
                        add              rsp, 16;                             jmp   n192_var_β
.Lx809_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n194_call_α
n193_subscript_β:       add              rsp, 16;                             jmp   n192_var_β
#-----------------------------------------------------------------------------------------------------------------------
n194_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd811:            .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd811]
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
                        cmp              eax, 104;                            jne   .Lx810_240
                        add              rsp, 16;                             jmp   n193_subscript_β
.Lx810_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n195_assign_var_α
n194_call_β:            add              rsp, 16;                             jmp   n193_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n195_assign_var_α:      sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx812_240
                        add              rsp, 32;                             jmp   n193_subscript_β
.Lx812_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n196_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n196_statement_end_α:   add              rsp, 128;                            jmp   n197_statement_begin_α
#=======================================================================================================================
# new_tag         mem[sentno][wrd][tag]  =  1
#-----------------------------------------------------------------------------------------------------------------------
n197_statement_begin_α:                                                       jmp   n198_var_α
n197_statement_begin_β:                                                       jmp   n210_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n198_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # mem
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n199_var_α
#-----------------------------------------------------------------------------------------------------------------------
n199_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 96]             # sentno
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n200_subscript_α
n199_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n197_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n200_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx819_240
                        add              rsp, 16;                             jmp   n199_var_β
.Lx819_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n201_deref_α
n200_subscript_β:       add              rsp, 16;                             jmp   n199_var_β
#-----------------------------------------------------------------------------------------------------------------------
n201_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx820_240
                        add              rsp, 16;                             jmp   n200_subscript_β
.Lx820_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n202_var_α
n201_deref_β:           add              rsp, 16;                             jmp   n200_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n202_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # wrd
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n203_subscript_α
n202_var_β:             add              rsp, 16;                             jmp   n201_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n203_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx822_240
                        add              rsp, 16;                             jmp   n202_var_β
.Lx822_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n204_deref_α
n203_subscript_β:       add              rsp, 16;                             jmp   n202_var_β
#-----------------------------------------------------------------------------------------------------------------------
n204_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx823_240
                        add              rsp, 16;                             jmp   n203_subscript_β
.Lx823_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n205_var_α
n204_deref_β:           add              rsp, 16;                             jmp   n203_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n205_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 224]            # tag
                        mov              rdx, qword ptr [r9 + 232]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n206_subscript_α
n205_var_β:             add              rsp, 16;                             jmp   n204_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n206_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx825_240
                        add              rsp, 16;                             jmp   n205_var_β
.Lx825_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n207_lit_integer_α
n206_subscript_β:       add              rsp, 16;                             jmp   n205_var_β
#-----------------------------------------------------------------------------------------------------------------------
n207_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx826_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n208_assign_var_α
n207_lit_integer_β:     add              rsp, 16;                             jmp   n206_subscript_β
.Lx826_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n208_assign_var_α:      sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx827_240
                        add              rsp, 16;                             jmp   n207_lit_integer_β
.Lx827_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n209_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n209_statement_end_α:   add              rsp, 176;                            jmp   n210_statement_begin_α
#=======================================================================================================================
# done            add_tok         =  .dummy                       :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n210_statement_begin_α:                                                       jmp   n211_lit_string_α
n210_statement_begin_β:                                                       jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n211_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx832_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n212_call_α
.Lx832_0:               .quad            .Lx832_0_s
.Lx832_0_s:             .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n212_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd834:            .string          "SNO$NAME"
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
                        add              rsp, 16;                             jmp   n210_statement_begin_β
.Lx833_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n213_assign_α
n212_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n210_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n213_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # add_tok
                        mov              qword ptr [r9 + 24], rdx;            jmp   n214_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n214_statement_end_α:   add              rsp, 32;                             jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n215_statement_begin_α:                                                       jmp   n216_statement_end_α
n215_statement_begin_β:                                                       jmp   n217_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n216_statement_end_α:                                                         jmp   n217_statement_begin_α
#=======================================================================================================================
#                 DEFINE('pp_mem(mem)ssk,si,sentno,wsk,wi,wkey,wq,wrd,tsk,ti,tag,tv,tline,pfx,pad,next_wkey,last_sent,lline,ns') :(pp_mem_end)
#-----------------------------------------------------------------------------------------------------------------------
n217_statement_begin_α:                                                       jmp   n218_func_activate_α
n217_statement_begin_β:                                                       jmp   n560_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n218_func_activate_α:   mov              rdi, qword ptr [rip + .Lx845_0]
                        mov              rsi, qword ptr [rip + .Lx845_1]
                        mov              edx, 20
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + proc_pp_mem_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n219_statement_end_α
n218_func_activate_β:                                                         jmp   n217_statement_begin_β
.Lx845_0:               .quad            .Lx845_0_s
.Lx845_0_s:             .string          "pp_mem"
.Lx845_1:               .quad            .Lx845_1_s
.Lx845_1_s:             .string          "mem,ssk,si,sentno,wsk,wi,wkey,wq,wrd,tsk,ti,tag,tv,tline,pfx,pad,next_wkey,last_sent,lline,ns"
#-----------------------------------------------------------------------------------------------------------------------
n219_statement_end_α:                                                         jmp   n560_statement_begin_α
#=======================================================================================================================
# pp_mem          ssk             =   SORT(mem)
#-----------------------------------------------------------------------------------------------------------------------
pp_mem_body:                                                                  jmp   n221_var_α
n220_statement_begin_β:                                                       jmp   n225_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n221_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # mem
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n222_call_α
#-----------------------------------------------------------------------------------------------------------------------
n222_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lbynamefnzd160:        .string          "SORT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd160]
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
                        add              rsp, 16;                             jmp   n220_statement_begin_β
.Lx851_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n223_assign_α
n222_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n220_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n223_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # ssk
                        mov              qword ptr [r9 + 72], rdx;            jmp   n224_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n224_statement_end_α:   add              rsp, 32;                             jmp   n225_statement_begin_α
#=======================================================================================================================
#                 si              =   0
#-----------------------------------------------------------------------------------------------------------------------
n225_statement_begin_α:                                                       jmp   n226_lit_integer_α
n225_statement_begin_β:                                                       jmp   n229_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n226_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx857_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n227_assign_α
.Lx857_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n227_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # si
                        mov              qword ptr [r9 + 88], rdx;            jmp   n228_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n228_statement_end_α:   add              rsp, 16;                             jmp   n229_statement_begin_α
#=======================================================================================================================
#                 ns              =   0
#-----------------------------------------------------------------------------------------------------------------------
n229_statement_begin_α:                                                       jmp   n230_lit_integer_α
n229_statement_begin_β:                                                       jmp   n233_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n230_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx863_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n231_assign_α
.Lx863_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n231_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 352], rax            # ns
                        mov              qword ptr [r9 + 360], rdx;           jmp   n232_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n232_statement_end_α:   add              rsp, 16;                             jmp   n233_statement_begin_α
#=======================================================================================================================
# pm_cnt_loop     ns              =   ns + 1
#-----------------------------------------------------------------------------------------------------------------------
n233_statement_begin_α:                                                       jmp   n234_var_α
n233_statement_begin_β:                                                       jmp   n239_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n234_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 352]            # ns
                        mov              rdx, qword ptr [r9 + 360]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n235_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n235_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx870_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n236_binop_α
n235_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n233_statement_begin_β
.Lx870_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n236_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx871_240
                        add              rsp, 16;                             jmp   n235_lit_integer_β
.Lx871_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n237_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n237_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 352], rax            # ns
                        mov              qword ptr [r9 + 360], rdx;           jmp   n238_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n238_statement_end_α:   add              rsp, 48;                             jmp   n239_statement_begin_α
#=======================================================================================================================
#                 ssk[ns,1]                                       :S(pm_cnt_loop)
#-----------------------------------------------------------------------------------------------------------------------
n239_statement_begin_α:                                                       jmp   n240_var_α
n239_statement_begin_β:                                                       jmp   n247_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n240_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 64]             # ssk
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n241_var_α
#-----------------------------------------------------------------------------------------------------------------------
n241_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 352]            # ns
                        mov              rdx, qword ptr [r9 + 360]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n242_subscript_α
n241_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n239_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n242_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx879_240
                        add              rsp, 16;                             jmp   n241_var_β
.Lx879_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n243_lit_integer_α
n242_subscript_β:       add              rsp, 16;                             jmp   n241_var_β
#-----------------------------------------------------------------------------------------------------------------------
n243_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx880_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n244_subscript_α
n243_lit_integer_β:     add              rsp, 16;                             jmp   n242_subscript_β
.Lx880_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n244_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # subscript
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
                        cmp              eax, 104;                            jne   .Lx881_240
                        add              rsp, 16;                             jmp   n243_lit_integer_β
.Lx881_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n245_deref_α
n244_subscript_β:       add              rsp, 16;                             jmp   n243_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n245_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx882_240
                        add              rsp, 16;                             jmp   n244_subscript_β
.Lx882_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n246_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n246_statement_end_α:   add              rsp, 96;                             jmp   n233_statement_begin_α
#=======================================================================================================================
#                 ns              =   ns - 1
#-----------------------------------------------------------------------------------------------------------------------
n247_statement_begin_α:                                                       jmp   n248_var_α
n247_statement_begin_β:                                                       jmp   n253_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n248_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 352]            # ns
                        mov              rdx, qword ptr [r9 + 360]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n249_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n249_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx888_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n250_binop_α
n249_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n247_statement_begin_β
.Lx888_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n250_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx889_240
                        add              rsp, 16;                             jmp   n249_lit_integer_β
.Lx889_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n251_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n251_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 352], rax            # ns
                        mov              qword ptr [r9 + 360], rdx;           jmp   n252_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n252_statement_end_α:   add              rsp, 48;                             jmp   n253_statement_begin_α
#=======================================================================================================================
#                 si              =   0
#-----------------------------------------------------------------------------------------------------------------------
n253_statement_begin_α:                                                       jmp   n254_lit_integer_α
n253_statement_begin_β:                                                       jmp   n257_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n254_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx895_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n255_assign_α
.Lx895_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n255_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # si
                        mov              qword ptr [r9 + 88], rdx;            jmp   n256_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n256_statement_end_α:   add              rsp, 16;                             jmp   n257_statement_begin_α
#=======================================================================================================================
# pm_sent_loop    si              =   si + 1
#-----------------------------------------------------------------------------------------------------------------------
n257_statement_begin_α:                                                       jmp   n258_var_α
n257_statement_begin_β:                                                       jmp   n263_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n258_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # si
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n259_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n259_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx902_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n260_binop_α
n259_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n257_statement_begin_β
.Lx902_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n260_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx903_240
                        add              rsp, 16;                             jmp   n259_lit_integer_β
.Lx903_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n261_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n261_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # si
                        mov              qword ptr [r9 + 88], rdx;            jmp   n262_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n262_statement_end_α:   add              rsp, 48;                             jmp   n263_statement_begin_α
#=======================================================================================================================
#                 sentno          =   ssk[si,1]                   :F(pm_done)
#-----------------------------------------------------------------------------------------------------------------------
n263_statement_begin_α:                                                       jmp   n264_var_α
n263_statement_begin_β:                                                       jmp   n555_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n264_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 64]             # ssk
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n265_var_α
#-----------------------------------------------------------------------------------------------------------------------
n265_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # si
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n266_subscript_α
n265_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n263_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n266_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx911_240
                        add              rsp, 16;                             jmp   n265_var_β
.Lx911_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n267_lit_integer_α
n266_subscript_β:       add              rsp, 16;                             jmp   n265_var_β
#-----------------------------------------------------------------------------------------------------------------------
n267_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx912_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n268_subscript_α
n267_lit_integer_β:     add              rsp, 16;                             jmp   n266_subscript_β
.Lx912_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n268_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # subscript
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
                        cmp              eax, 104;                            jne   .Lx913_240
                        add              rsp, 16;                             jmp   n267_lit_integer_β
.Lx913_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n269_deref_α
n268_subscript_β:       add              rsp, 16;                             jmp   n267_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n269_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx914_240
                        add              rsp, 16;                             jmp   n268_subscript_β
.Lx914_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n270_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n270_assign_α:          mov              rax, qword ptr [rsp + 0]             # deref
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # sentno
                        mov              qword ptr [r9 + 104], rdx;           jmp   n271_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n271_statement_end_α:   add              rsp, 96;                             jmp   n272_statement_begin_α
#=======================================================================================================================
#                 last_sent       =   ''
#-----------------------------------------------------------------------------------------------------------------------
n272_statement_begin_α:                                                       jmp   n273_lit_string_α
n272_statement_begin_β:                                                       jmp   n276_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n273_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx920_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n274_assign_α
.Lx920_0:               .quad            .Lx920_0_s
.Lx920_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n274_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 320], rax            # last_sent
                        mov              qword ptr [r9 + 328], rdx;           jmp   n275_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n275_statement_end_α:   add              rsp, 16;                             jmp   n276_statement_begin_α
#=======================================================================================================================
#                 last_sent       =   IDENT(si, ns) 1
#-----------------------------------------------------------------------------------------------------------------------
n276_statement_begin_α:                                                       jmp   n277_var_α
n276_statement_begin_β:                                                       jmp   n284_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n277_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # si
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n278_var_α
#-----------------------------------------------------------------------------------------------------------------------
n278_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 352]            # ns
                        mov              rdx, qword ptr [r9 + 360]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n279_call_α
n278_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n276_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n279_call_α:            sub              rsp, 16
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
.Lrkfnzd929:            .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd929]
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
                        cmp              eax, 104;                            jne   .Lx928_240
                        add              rsp, 16;                             jmp   n278_var_β
.Lx928_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n280_lit_integer_α
n279_call_β:            add              rsp, 16;                             jmp   n278_var_β
#-----------------------------------------------------------------------------------------------------------------------
n280_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx930_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n281_binop_α
n280_lit_integer_β:     add              rsp, 32;                             jmp   n278_var_β
.Lx930_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n281_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n282_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n282_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 320], rax            # last_sent
                        mov              qword ptr [r9 + 328], rdx;           jmp   n283_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n283_statement_end_α:   add              rsp, 80;                             jmp   n284_statement_begin_α
#=======================================================================================================================
#                 pad             =   DUPL(' ', SIZE(sentno) + 4)
#-----------------------------------------------------------------------------------------------------------------------
n284_statement_begin_α:                                                       jmp   n285_lit_string_α
n284_statement_begin_β:                                                       jmp   n293_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n285_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx937_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n286_var_α
.Lx937_0:               .quad            .Lx937_0_s
.Lx937_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n286_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 96]             # sentno
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n287_call_α
n286_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n284_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n287_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd940:            .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd940]
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
                        cmp              eax, 104;                            jne   .Lx939_240
                        add              rsp, 16;                             jmp   n286_var_β
.Lx939_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n288_lit_integer_α
n287_call_β:            add              rsp, 16;                             jmp   n286_var_β
#-----------------------------------------------------------------------------------------------------------------------
n288_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx941_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n289_binop_α
n288_lit_integer_β:     add              rsp, 32;                             jmp   n286_var_β
.Lx941_0:               .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n289_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx942_240
                        add              rsp, 16;                             jmp   n288_lit_integer_β
.Lx942_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n290_call_α
n289_binop_β:           add              rsp, 16;                             jmp   n288_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n290_call_α:            sub              rsp, 16
                        sub              rsp, 32
                        mov              r8, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], r8
                        .section         .rodata
.Lrkfnzd944:            .string          "DUPL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd944]
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
                        cmp              eax, 104;                            jne   .Lx943_240
                        add              rsp, 16;                             jmp   n289_binop_β
.Lx943_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n291_assign_α
n290_call_β:            add              rsp, 16;                             jmp   n289_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n291_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 288], rax            # pad
                        mov              qword ptr [r9 + 296], rdx;           jmp   n292_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n292_statement_end_α:   add              rsp, 96;                             jmp   n293_statement_begin_α
#=======================================================================================================================
#                 pfx             =   EQ(si, 1) '{' sentno ': {'
#-----------------------------------------------------------------------------------------------------------------------
n293_statement_begin_α:                                                       jmp   n294_var_α
n293_statement_begin_β:                                                       jmp   n307_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n294_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # si
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n295_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n295_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx951_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n296_coerce_numeric_α
n295_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n293_statement_begin_β
.Lx951_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n296_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx953_1
                        cmp              eax, 3;                              jne   .Lx953_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              eax, 3;                              jne   .Lx953_0
.Lx953_1:               mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n297_coerce_numeric_α
.Lx953_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 101
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n297_coerce_numeric_α
n296_coerce_numeric_β:  add              rsp, 16;                             jmp   n295_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n297_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              eax, 5;                              je    .Lx955_1
                        cmp              eax, 3;                              jne   .Lx955_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              eax, 3;                              jne   .Lx955_0
.Lx955_1:               mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n298_cmp_test_α
.Lx955_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 102
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n298_cmp_test_α
n297_coerce_numeric_β:  add              rsp, 16;                             jmp   n296_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n298_cmp_test_α:        sub              rsp, 16
                        lea              rdi, [rsp + 32]                      # coerce_numeric
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        test             eax, eax;                            je    .Lx957_240
                        add              rsp, 16;                             jmp   n297_coerce_numeric_β
.Lx957_240:             mov              qword ptr [rsp + 0], 0               # result
                        mov              qword ptr [rsp + 8], 0;              jmp   n299_lit_string_α
n298_cmp_test_β:        add              rsp, 16;                             jmp   n297_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n299_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx958_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n300_binop_α
n299_lit_string_β:      add              rsp, 16;                             jmp   n298_cmp_test_β
.Lx958_0:               .quad            .Lx958_0_s
.Lx958_0_s:             .string          "{"
#-----------------------------------------------------------------------------------------------------------------------
n300_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # cmp_test
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n301_var_α
n300_binop_β:           add              rsp, 16;                             jmp   n299_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n301_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 96]             # sentno
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n302_binop_α
n301_var_β:             add              rsp, 16;                             jmp   n300_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n302_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n303_lit_string_α
n302_binop_β:           add              rsp, 16;                             jmp   n301_var_β
#-----------------------------------------------------------------------------------------------------------------------
n303_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx962_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n304_binop_α
n303_lit_string_β:      add              rsp, 16;                             jmp   n302_binop_β
.Lx962_0:               .quad            .Lx962_0_s
.Lx962_0_s:             .string          ": {"
#-----------------------------------------------------------------------------------------------------------------------
n304_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n305_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n305_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 272], rax            # pfx
                        mov              qword ptr [r9 + 280], rdx;           jmp   n306_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n306_statement_end_α:   add              rsp, 176;                            jmp   n307_statement_begin_α
#=======================================================================================================================
#                 pfx             =   NE(si, 1) ' ' sentno ': {'
#-----------------------------------------------------------------------------------------------------------------------
n307_statement_begin_α:                                                       jmp   n308_var_α
n307_statement_begin_β:                                                       jmp   n321_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n308_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # si
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n309_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n309_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx970_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n310_coerce_numeric_α
n309_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n307_statement_begin_β
.Lx970_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n310_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx972_1
                        cmp              eax, 3;                              jne   .Lx972_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              eax, 3;                              jne   .Lx972_0
.Lx972_1:               mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n311_coerce_numeric_α
.Lx972_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 149
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n311_coerce_numeric_α
n310_coerce_numeric_β:  add              rsp, 16;                             jmp   n309_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n311_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              eax, 5;                              je    .Lx974_1
                        cmp              eax, 3;                              jne   .Lx974_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              eax, 3;                              jne   .Lx974_0
.Lx974_1:               mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n312_cmp_test_α
.Lx974_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 150
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n312_cmp_test_α
n311_coerce_numeric_β:  add              rsp, 16;                             jmp   n310_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n312_cmp_test_α:        sub              rsp, 16
                        lea              rdi, [rsp + 32]                      # coerce_numeric
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        test             eax, eax;                            jne   .Lx976_240
                        add              rsp, 16;                             jmp   n311_coerce_numeric_β
.Lx976_240:             mov              qword ptr [rsp + 0], 0               # result
                        mov              qword ptr [rsp + 8], 0;              jmp   n313_lit_string_α
n312_cmp_test_β:        add              rsp, 16;                             jmp   n311_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n313_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx977_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n314_binop_α
n313_lit_string_β:      add              rsp, 16;                             jmp   n312_cmp_test_β
.Lx977_0:               .quad            .Lx977_0_s
.Lx977_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n314_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # cmp_test
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n315_var_α
n314_binop_β:           add              rsp, 16;                             jmp   n313_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n315_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 96]             # sentno
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n316_binop_α
n315_var_β:             add              rsp, 16;                             jmp   n314_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n316_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n317_lit_string_α
n316_binop_β:           add              rsp, 16;                             jmp   n315_var_β
#-----------------------------------------------------------------------------------------------------------------------
n317_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx981_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n318_binop_α
n317_lit_string_β:      add              rsp, 16;                             jmp   n316_binop_β
.Lx981_0:               .quad            .Lx981_0_s
.Lx981_0_s:             .string          ": {"
#-----------------------------------------------------------------------------------------------------------------------
n318_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n319_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n319_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 272], rax            # pfx
                        mov              qword ptr [r9 + 280], rdx;           jmp   n320_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n320_statement_end_α:   add              rsp, 176;                            jmp   n321_statement_begin_α
#=======================================================================================================================
#                 wsk             =   SORT(mem[sentno])
#-----------------------------------------------------------------------------------------------------------------------
n321_statement_begin_α:                                                       jmp   n322_var_α
n321_statement_begin_β:                                                       jmp   n329_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n322_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # mem
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n323_var_α
#-----------------------------------------------------------------------------------------------------------------------
n323_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 96]             # sentno
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n324_subscript_α
n323_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n321_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n324_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx990_240
                        add              rsp, 16;                             jmp   n323_var_β
.Lx990_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n325_deref_α
n324_subscript_β:       add              rsp, 16;                             jmp   n323_var_β
#-----------------------------------------------------------------------------------------------------------------------
n325_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx991_240
                        add              rsp, 16;                             jmp   n324_subscript_β
.Lx991_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n326_call_α
n325_deref_β:           add              rsp, 16;                             jmp   n324_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n326_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lbynamefnzd264:        .string          "SORT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd264]
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
                        add              rsp, 16;                             jmp   n325_deref_β
.Lx992_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n327_assign_α
n326_call_β:            add              rsp, 16;                             jmp   n325_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n327_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # wsk
                        mov              qword ptr [r9 + 120], rdx;           jmp   n328_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n328_statement_end_α:   add              rsp, 80;                             jmp   n329_statement_begin_α
#=======================================================================================================================
#                 wi              =   0
#-----------------------------------------------------------------------------------------------------------------------
n329_statement_begin_α:                                                       jmp   n330_lit_integer_α
n329_statement_begin_β:                                                       jmp   n333_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n330_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx998_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n331_assign_α
.Lx998_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n331_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # wi
                        mov              qword ptr [r9 + 136], rdx;           jmp   n332_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n332_statement_end_α:   add              rsp, 16;                             jmp   n333_statement_begin_α
#=======================================================================================================================
# pm_wrd_loop     wi              =   wi + 1
#-----------------------------------------------------------------------------------------------------------------------
n333_statement_begin_α:                                                       jmp   n334_var_α
n333_statement_begin_β:                                                       jmp   n339_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n334_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 128]            # wi
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n335_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n335_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1005_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n336_binop_α
n335_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n333_statement_begin_β
.Lx1005_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n336_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx1006_240
                        add              rsp, 16;                             jmp   n335_lit_integer_β
.Lx1006_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n337_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n337_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # wi
                        mov              qword ptr [r9 + 136], rdx;           jmp   n338_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n338_statement_end_α:   add              rsp, 48;                             jmp   n339_statement_begin_α
#=======================================================================================================================
#                 wkey            =   wsk[wi,1]                   :F(pm_sent_loop)
#-----------------------------------------------------------------------------------------------------------------------
n339_statement_begin_α:                                                       jmp   n340_var_α
n339_statement_begin_β:                                                       jmp   n257_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n340_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 112]            # wsk
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n341_var_α
#-----------------------------------------------------------------------------------------------------------------------
n341_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 128]            # wi
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n342_subscript_α
n341_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n339_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n342_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx1014_240
                        add              rsp, 16;                             jmp   n341_var_β
.Lx1014_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n343_lit_integer_α
n342_subscript_β:       add              rsp, 16;                             jmp   n341_var_β
#-----------------------------------------------------------------------------------------------------------------------
n343_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1015_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n344_subscript_α
n343_lit_integer_β:     add              rsp, 16;                             jmp   n342_subscript_β
.Lx1015_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n344_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # subscript
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
                        cmp              eax, 104;                            jne   .Lx1016_240
                        add              rsp, 16;                             jmp   n343_lit_integer_β
.Lx1016_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n345_deref_α
n344_subscript_β:       add              rsp, 16;                             jmp   n343_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n345_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx1017_240
                        add              rsp, 16;                             jmp   n344_subscript_β
.Lx1017_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n346_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n346_assign_α:          mov              rax, qword ptr [rsp + 0]             # deref
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # wkey
                        mov              qword ptr [r9 + 152], rdx;           jmp   n347_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n347_statement_end_α:   add              rsp, 96;                             jmp   n348_statement_begin_α
#=======================================================================================================================
#                 next_wkey       =   ''
#-----------------------------------------------------------------------------------------------------------------------
n348_statement_begin_α:                                                       jmp   n349_lit_string_α
n348_statement_begin_β:                                                       jmp   n352_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n349_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx1023_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n350_assign_α
.Lx1023_0:              .quad            .Lx1023_0_s
.Lx1023_0_s:            .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n350_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 304], rax            # next_wkey
                        mov              qword ptr [r9 + 312], rdx;           jmp   n351_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n351_statement_end_α:   add              rsp, 16;                             jmp   n352_statement_begin_α
#=======================================================================================================================
#                 next_wkey       =   wsk[wi + 1,1]
#-----------------------------------------------------------------------------------------------------------------------
n352_statement_begin_α:                                                       jmp   n353_var_α
n352_statement_begin_β:                                                       jmp   n363_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n353_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 112]            # wsk
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n354_var_α
#-----------------------------------------------------------------------------------------------------------------------
n354_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 128]            # wi
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n355_lit_integer_α
n354_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n352_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n355_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1031_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n356_binop_α
n355_lit_integer_β:     add              rsp, 16;                             jmp   n354_var_β
.Lx1031_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n356_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx1032_240
                        add              rsp, 16;                             jmp   n355_lit_integer_β
.Lx1032_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n357_subscript_α
n356_binop_β:           add              rsp, 16;                             jmp   n355_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n357_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]            # var
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
                        cmp              eax, 104;                            jne   .Lx1033_240
                        add              rsp, 16;                             jmp   n356_binop_β
.Lx1033_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n358_lit_integer_α
n357_subscript_β:       add              rsp, 16;                             jmp   n356_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n358_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1034_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n359_subscript_α
n358_lit_integer_β:     add              rsp, 16;                             jmp   n357_subscript_β
.Lx1034_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n359_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # subscript
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
                        cmp              eax, 104;                            jne   .Lx1035_240
                        add              rsp, 16;                             jmp   n358_lit_integer_β
.Lx1035_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n360_deref_α
n359_subscript_β:       add              rsp, 16;                             jmp   n358_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n360_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx1036_240
                        add              rsp, 16;                             jmp   n359_subscript_β
.Lx1036_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n361_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n361_assign_α:          mov              rax, qword ptr [rsp + 0]             # deref
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 304], rax            # next_wkey
                        mov              qword ptr [r9 + 312], rdx;           jmp   n362_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n362_statement_end_α:   add              rsp, 128;                            jmp   n363_statement_begin_α
#=======================================================================================================================
#                 wrd             =   wkey
#-----------------------------------------------------------------------------------------------------------------------
n363_statement_begin_α:                                                       jmp   n364_var_α
n363_statement_begin_β:                                                       jmp   n367_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n364_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # wkey
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n365_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n365_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # wrd
                        mov              qword ptr [r9 + 184], rdx;           jmp   n366_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n366_statement_end_α:   add              rsp, 16;                             jmp   n367_statement_begin_α
#=======================================================================================================================
#                 wrd             ?   ARB "'"  =  ''              :F(pm_sq)
#-----------------------------------------------------------------------------------------------------------------------
n367_statement_begin_α:                                                       jmp   n368_var_α
n367_statement_begin_β:                                                       jmp   n384_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n368_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # wrd
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n369_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n369_match_begin_α:     mov              rdi, qword ptr [rsp + 0]             # var
                        mov              rsi, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 3344], rdi
                        mov              qword ptr [rsp + 3352], rsi
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
.Lx1050_0:              mov              r14d, dword ptr [rbp + -40];         jmp   n370_match_arb_α
n369_match_begin_β:     lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx1050_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx1050_1
                                                                              jmp   .Lx1050_0
.Lx1050_1:
n369_match_begin_af:    mov              r12, qword ptr [rbp + -8]            # cas_mark
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
                        add              rsp, 16;                             jmp   n384_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n370_match_arb_α:       sub              rsp, 16
                        mov              dword ptr [rsp + 0], 0
                        mov              eax, r14d
                        mov              dword ptr [rsp + 4], eax;            jmp   n371_match_lit_α
n370_match_arb_β:       add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 4]
                        add              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d;                           jg    .Lx1052_0
                        mov              r14d, eax;                           jmp   n371_match_lit_α
.Lx1052_0:              mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16;                             jmp   n369_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n371_match_lit_α:       mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n370_match_arb_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 39;                             jne   n370_match_arb_β
                        add              r14d, 1;                             jmp   n372_match_end_α
n371_match_lit_β:       sub              r14d, 1;                             jmp   n370_match_arb_β
#-----------------------------------------------------------------------------------------------------------------------
n372_match_end_α:       mov              eax, dword ptr [rsp + 16]
                        mov              dword ptr [rsp + 3264], eax
                        mov              qword ptr [rsp + 3288], r14
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
.Lx1056_1:              test             rax, rax;                            je    .Lx1056_2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx1056_3]
                        lea              rdx, [rip + .Lx1056_4];              jmp   rax
.Lx1056_3:              mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx1056_1
.Lx1056_4:              mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx1056_1
.Lx1056_2:              call             rt_dcap_end_ok_close@PLT
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
                        pop              rbp;                                 jmp   n373_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n373_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx1057_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n374_match_replace_α
.Lx1057_0:              .quad            .Lx1057_0_s
.Lx1057_0_s:            .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n374_match_replace_α:   mov              rdi, qword ptr [rip + .Lx1059_0]
                        mov              rsi, qword ptr [rsp + 3360]
                        mov              rdx, qword ptr [rsp + 3368]
                        mov              ecx, dword ptr [rsp + 3232]
                        mov              r8, qword ptr [rsp + 3256]
                        lea              r9, [rsp + 0]                        # lit_string
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_match_replace@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx1059_1
.Lx1059_0:              .quad            .Lx1059_0_s
.Lx1059_0_s:            .string          "wrd"
.Lx1059_1:                                                                    jmp   n375_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n375_statement_end_α:   add              rsp, 16;                             jmp   n376_statement_begin_α
#=======================================================================================================================
#                 wq              =   '"' wkey '"'                :(pm_tdict)
#-----------------------------------------------------------------------------------------------------------------------
n376_statement_begin_α:                                                       jmp   n377_lit_string_α
n376_statement_begin_β:                                                       jmp   n392_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n377_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1064_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n378_var_α
.Lx1064_0:              .quad            .Lx1064_0_s
.Lx1064_0_s:            .string          "\""
#-----------------------------------------------------------------------------------------------------------------------
n378_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # wkey
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n379_binop_α
n378_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n376_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n379_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n380_lit_string_α
n379_binop_β:           add              rsp, 16;                             jmp   n378_var_β
#-----------------------------------------------------------------------------------------------------------------------
n380_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1067_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n381_binop_α
n380_lit_string_β:      add              rsp, 16;                             jmp   n379_binop_β
.Lx1067_0:              .quad            .Lx1067_0_s
.Lx1067_0_s:            .string          "\""
#-----------------------------------------------------------------------------------------------------------------------
n381_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n382_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n382_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # wq
                        mov              qword ptr [r9 + 168], rdx;           jmp   n383_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n383_statement_end_α:   add              rsp, 80;                             jmp   n392_statement_begin_α
#=======================================================================================================================
# pm_sq           wq              =   "'" wkey "'"
#-----------------------------------------------------------------------------------------------------------------------
n384_statement_begin_α:                                                       jmp   n385_lit_string_α
n384_statement_begin_β:                                                       jmp   n392_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n385_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1074_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n386_var_α
.Lx1074_0:              .quad            .Lx1074_0_s
.Lx1074_0_s:            .string          "'"
#-----------------------------------------------------------------------------------------------------------------------
n386_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # wkey
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n387_binop_α
n386_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n384_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n387_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n388_lit_string_α
n387_binop_β:           add              rsp, 16;                             jmp   n386_var_β
#-----------------------------------------------------------------------------------------------------------------------
n388_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1077_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n389_binop_α
n388_lit_string_β:      add              rsp, 16;                             jmp   n387_binop_β
.Lx1077_0:              .quad            .Lx1077_0_s
.Lx1077_0_s:            .string          "'"
#-----------------------------------------------------------------------------------------------------------------------
n389_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n390_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n390_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # wq
                        mov              qword ptr [r9 + 168], rdx;           jmp   n391_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n391_statement_end_α:   add              rsp, 80;                             jmp   n392_statement_begin_α
#=======================================================================================================================
# pm_tdict        tsk             =   SORT(mem[sentno][wkey])
#-----------------------------------------------------------------------------------------------------------------------
n392_statement_begin_α:                                                       jmp   n393_var_α
n392_statement_begin_β:                                                       jmp   n403_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n393_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # mem
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n394_var_α
#-----------------------------------------------------------------------------------------------------------------------
n394_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 96]             # sentno
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n395_subscript_α
n394_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n392_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n395_subscript_α:       sub              rsp, 16
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
                        add              rsp, 16;                             jmp   n394_var_β
.Lx1086_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n396_deref_α
n395_subscript_β:       add              rsp, 16;                             jmp   n394_var_β
#-----------------------------------------------------------------------------------------------------------------------
n396_deref_α:           sub              rsp, 16
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
                        add              rsp, 16;                             jmp   n395_subscript_β
.Lx1087_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n397_var_α
n396_deref_β:           add              rsp, 16;                             jmp   n395_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n397_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # wkey
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n398_subscript_α
n397_var_β:             add              rsp, 16;                             jmp   n396_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n398_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx1089_240
                        add              rsp, 16;                             jmp   n397_var_β
.Lx1089_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n399_deref_α
n398_subscript_β:       add              rsp, 16;                             jmp   n397_var_β
#-----------------------------------------------------------------------------------------------------------------------
n399_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx1090_240
                        add              rsp, 16;                             jmp   n398_subscript_β
.Lx1090_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n400_call_α
n399_deref_β:           add              rsp, 16;                             jmp   n398_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n400_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lbynamefnzd338:        .string          "SORT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd338]
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
                        add              rsp, 16;                             jmp   n399_deref_β
.Lx1091_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n401_assign_α
n400_call_β:            add              rsp, 16;                             jmp   n399_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n401_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # tsk
                        mov              qword ptr [r9 + 200], rdx;           jmp   n402_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n402_statement_end_α:   add              rsp, 128;                            jmp   n403_statement_begin_α
#=======================================================================================================================
#                 ti              =   0
#-----------------------------------------------------------------------------------------------------------------------
n403_statement_begin_α:                                                       jmp   n404_lit_integer_α
n403_statement_begin_β:                                                       jmp   n407_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n404_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1097_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n405_assign_α
.Lx1097_0:              .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n405_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # ti
                        mov              qword ptr [r9 + 216], rdx;           jmp   n406_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n406_statement_end_α:   add              rsp, 16;                             jmp   n407_statement_begin_α
#=======================================================================================================================
#                 tline           =   '{'
#-----------------------------------------------------------------------------------------------------------------------
n407_statement_begin_α:                                                       jmp   n408_lit_string_α
n407_statement_begin_β:                                                       jmp   n411_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n408_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1103_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n409_assign_α
.Lx1103_0:              .quad            .Lx1103_0_s
.Lx1103_0_s:            .string          "{"
#-----------------------------------------------------------------------------------------------------------------------
n409_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 256], rax            # tline
                        mov              qword ptr [r9 + 264], rdx;           jmp   n410_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n410_statement_end_α:   add              rsp, 16;                             jmp   n411_statement_begin_α
#=======================================================================================================================
# pm_tag_loop     ti              =   ti + 1
#-----------------------------------------------------------------------------------------------------------------------
n411_statement_begin_α:                                                       jmp   n412_var_α
n411_statement_begin_β:                                                       jmp   n417_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n412_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 208]            # ti
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n413_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n413_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1110_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n414_binop_α
n413_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n411_statement_begin_β
.Lx1110_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n414_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx1111_240
                        add              rsp, 16;                             jmp   n413_lit_integer_β
.Lx1111_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n415_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n415_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # ti
                        mov              qword ptr [r9 + 216], rdx;           jmp   n416_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n416_statement_end_α:   add              rsp, 48;                             jmp   n417_statement_begin_α
#=======================================================================================================================
#                 tag             =   tsk[ti,1]                   :F(pm_tag_close)
#-----------------------------------------------------------------------------------------------------------------------
n417_statement_begin_α:                                                       jmp   n418_var_α
n417_statement_begin_β:                                                       jmp   n470_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n418_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 192]            # tsk
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n419_var_α
#-----------------------------------------------------------------------------------------------------------------------
n419_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 208]            # ti
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n420_subscript_α
n419_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n417_statement_begin_β
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
                        cmp              eax, 104;                            jne   .Lx1119_240
                        add              rsp, 16;                             jmp   n419_var_β
.Lx1119_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n421_lit_integer_α
n420_subscript_β:       add              rsp, 16;                             jmp   n419_var_β
#-----------------------------------------------------------------------------------------------------------------------
n421_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1120_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n422_subscript_α
n421_lit_integer_β:     add              rsp, 16;                             jmp   n420_subscript_β
.Lx1120_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n422_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # subscript
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
                        cmp              eax, 104;                            jne   .Lx1121_240
                        add              rsp, 16;                             jmp   n421_lit_integer_β
.Lx1121_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n423_deref_α
n422_subscript_β:       add              rsp, 16;                             jmp   n421_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n423_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx1122_240
                        add              rsp, 16;                             jmp   n422_subscript_β
.Lx1122_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n424_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n424_assign_α:          mov              rax, qword ptr [rsp + 0]             # deref
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 224], rax            # tag
                        mov              qword ptr [r9 + 232], rdx;           jmp   n425_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n425_statement_end_α:   add              rsp, 96;                             jmp   n426_statement_begin_α
#=======================================================================================================================
#                 tv              =   mem[sentno][wkey][tag]
#-----------------------------------------------------------------------------------------------------------------------
n426_statement_begin_α:                                                       jmp   n427_var_α
n426_statement_begin_β:                                                       jmp   n439_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n427_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # mem
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n428_var_α
#-----------------------------------------------------------------------------------------------------------------------
n428_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 96]             # sentno
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n429_subscript_α
n428_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n426_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n429_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx1130_240
                        add              rsp, 16;                             jmp   n428_var_β
.Lx1130_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n430_deref_α
n429_subscript_β:       add              rsp, 16;                             jmp   n428_var_β
#-----------------------------------------------------------------------------------------------------------------------
n430_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx1131_240
                        add              rsp, 16;                             jmp   n429_subscript_β
.Lx1131_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n431_var_α
n430_deref_β:           add              rsp, 16;                             jmp   n429_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n431_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # wkey
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n432_subscript_α
n431_var_β:             add              rsp, 16;                             jmp   n430_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n432_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx1133_240
                        add              rsp, 16;                             jmp   n431_var_β
.Lx1133_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n433_deref_α
n432_subscript_β:       add              rsp, 16;                             jmp   n431_var_β
#-----------------------------------------------------------------------------------------------------------------------
n433_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx1134_240
                        add              rsp, 16;                             jmp   n432_subscript_β
.Lx1134_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n434_var_α
n433_deref_β:           add              rsp, 16;                             jmp   n432_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n434_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 224]            # tag
                        mov              rdx, qword ptr [r9 + 232]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n435_subscript_α
n434_var_β:             add              rsp, 16;                             jmp   n433_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n435_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx1136_240
                        add              rsp, 16;                             jmp   n434_var_β
.Lx1136_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n436_deref_α
n435_subscript_β:       add              rsp, 16;                             jmp   n434_var_β
#-----------------------------------------------------------------------------------------------------------------------
n436_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx1137_240
                        add              rsp, 16;                             jmp   n435_subscript_β
.Lx1137_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n437_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n437_assign_α:          mov              rax, qword ptr [rsp + 0]             # deref
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 240], rax            # tv
                        mov              qword ptr [r9 + 248], rdx;           jmp   n438_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n438_statement_end_α:   add              rsp, 160;                            jmp   n439_statement_begin_α
#=======================================================================================================================
#                 IDENT(tline, '{')                               :F(pm_tag_sep)
#-----------------------------------------------------------------------------------------------------------------------
n439_statement_begin_α:                                                       jmp   n440_var_α
n439_statement_begin_β:                                                       jmp   n456_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n440_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 256]            # tline
                        mov              rdx, qword ptr [r9 + 264]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n441_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n441_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1144_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n442_call_α
n441_lit_string_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n439_statement_begin_β
.Lx1144_0:              .quad            .Lx1144_0_s
.Lx1144_0_s:            .string          "{"
#-----------------------------------------------------------------------------------------------------------------------
n442_call_α:            sub              rsp, 16
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
.Lrkfnzd1146:           .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1146]
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
                        cmp              eax, 104;                            jne   .Lx1145_240
                        add              rsp, 16;                             jmp   n441_lit_string_β
.Lx1145_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n443_statement_end_α
n442_call_β:            add              rsp, 16;                             jmp   n441_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n443_statement_end_α:   add              rsp, 48;                             jmp   n444_statement_begin_α
#=======================================================================================================================
#                 tline           =   tline "'" tag "': " tv      :(pm_tag_loop)
#-----------------------------------------------------------------------------------------------------------------------
n444_statement_begin_α:                                                       jmp   n445_var_α
n444_statement_begin_β:                                                       jmp   n411_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n445_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 256]            # tline
                        mov              rdx, qword ptr [r9 + 264]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n446_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n446_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1152_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n447_binop_α
n446_lit_string_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n444_statement_begin_β
.Lx1152_0:              .quad            .Lx1152_0_s
.Lx1152_0_s:            .string          "'"
#-----------------------------------------------------------------------------------------------------------------------
n447_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n448_var_α
n447_binop_β:           add              rsp, 16;                             jmp   n446_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n448_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 224]            # tag
                        mov              rdx, qword ptr [r9 + 232]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n449_binop_α
n448_var_β:             add              rsp, 16;                             jmp   n447_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n449_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n450_lit_string_α
n449_binop_β:           add              rsp, 16;                             jmp   n448_var_β
#-----------------------------------------------------------------------------------------------------------------------
n450_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx1156_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n451_binop_α
n450_lit_string_β:      add              rsp, 16;                             jmp   n449_binop_β
.Lx1156_0:              .quad            .Lx1156_0_s
.Lx1156_0_s:            .string          "': "
#-----------------------------------------------------------------------------------------------------------------------
n451_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n452_var_α
n451_binop_β:           add              rsp, 16;                             jmp   n450_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n452_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 240]            # tv
                        mov              rdx, qword ptr [r9 + 248]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n453_binop_α
n452_var_β:             add              rsp, 16;                             jmp   n451_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n453_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n454_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n454_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 256], rax            # tline
                        mov              qword ptr [r9 + 264], rdx;           jmp   n455_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n455_statement_end_α:   add              rsp, 144;                            jmp   n411_statement_begin_α
#=======================================================================================================================
# pm_tag_sep      tline           =   tline ', ' "'" tag "': " tv :(pm_tag_loop)
#-----------------------------------------------------------------------------------------------------------------------
n456_statement_begin_α:                                                       jmp   n457_var_α
n456_statement_begin_β:                                                       jmp   n411_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n457_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 256]            # tline
                        mov              rdx, qword ptr [r9 + 264]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n458_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n458_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx1166_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n459_binop_α
n458_lit_string_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n456_statement_begin_β
.Lx1166_0:              .quad            .Lx1166_0_s
.Lx1166_0_s:            .string          ", "
#-----------------------------------------------------------------------------------------------------------------------
n459_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n460_lit_string_α
n459_binop_β:           add              rsp, 16;                             jmp   n458_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n460_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1168_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n461_binop_α
n460_lit_string_β:      add              rsp, 16;                             jmp   n459_binop_β
.Lx1168_0:              .quad            .Lx1168_0_s
.Lx1168_0_s:            .string          "'"
#-----------------------------------------------------------------------------------------------------------------------
n461_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n462_var_α
n461_binop_β:           add              rsp, 16;                             jmp   n460_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n462_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 224]            # tag
                        mov              rdx, qword ptr [r9 + 232]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n463_binop_α
n462_var_β:             add              rsp, 16;                             jmp   n461_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n463_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n464_lit_string_α
n463_binop_β:           add              rsp, 16;                             jmp   n462_var_β
#-----------------------------------------------------------------------------------------------------------------------
n464_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx1172_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n465_binop_α
n464_lit_string_β:      add              rsp, 16;                             jmp   n463_binop_β
.Lx1172_0:              .quad            .Lx1172_0_s
.Lx1172_0_s:            .string          "': "
#-----------------------------------------------------------------------------------------------------------------------
n465_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n466_var_α
n465_binop_β:           add              rsp, 16;                             jmp   n464_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n466_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 240]            # tv
                        mov              rdx, qword ptr [r9 + 248]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n467_binop_α
n466_var_β:             add              rsp, 16;                             jmp   n465_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n467_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n468_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n468_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 256], rax            # tline
                        mov              qword ptr [r9 + 264], rdx;           jmp   n469_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n469_statement_end_α:   add              rsp, 176;                            jmp   n411_statement_begin_α
#=======================================================================================================================
# pm_tag_close    tline           =   tline '}'
#-----------------------------------------------------------------------------------------------------------------------
n470_statement_begin_α:                                                       jmp   n471_var_α
n470_statement_begin_β:                                                       jmp   n476_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n471_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 256]            # tline
                        mov              rdx, qword ptr [r9 + 264]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n472_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n472_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1182_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n473_binop_α
n472_lit_string_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n470_statement_begin_β
.Lx1182_0:              .quad            .Lx1182_0_s
.Lx1182_0_s:            .string          "}"
#-----------------------------------------------------------------------------------------------------------------------
n473_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n474_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n474_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 256], rax            # tline
                        mov              qword ptr [r9 + 264], rdx;           jmp   n475_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n475_statement_end_α:   add              rsp, 48;                             jmp   n476_statement_begin_α
#=======================================================================================================================
#                 GT(SIZE(next_wkey), 0)                          :F(pm_last_wrd)
#-----------------------------------------------------------------------------------------------------------------------
n476_statement_begin_α:                                                       jmp   n477_var_α
n476_statement_begin_β:                                                       jmp   n513_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n477_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 304]            # next_wkey
                        mov              rdx, qword ptr [r9 + 312]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n478_call_α
#-----------------------------------------------------------------------------------------------------------------------
n478_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1191:           .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1191]
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
                        cmp              eax, 104;                            jne   .Lx1190_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n476_statement_begin_β
.Lx1190_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n479_lit_integer_α
n478_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n476_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n479_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1192_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n480_coerce_numeric_α
n479_lit_integer_β:     add              rsp, 16
                        add              rsp, 32;                             jmp   n476_statement_begin_β
.Lx1192_0:              .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n480_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        cmp              eax, 5;                              je    .Lx1194_1
                        cmp              eax, 3;                              jne   .Lx1194_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              eax, 3;                              jne   .Lx1194_0
.Lx1194_1:              mov              rax, qword ptr [rsp + 32]            # call
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              qword ptr [rsp + 8], rax;            jmp   n481_coerce_numeric_α
.Lx1194_0:              lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n481_coerce_numeric_α
n480_coerce_numeric_β:  add              rsp, 16;                             jmp   n479_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n481_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              eax, 5;                              je    .Lx1196_1
                        cmp              eax, 3;                              jne   .Lx1196_0
                        mov              eax, dword ptr [rsp + 48]            # call
                        cmp              eax, 3;                              jne   .Lx1196_0
.Lx1196_1:              mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n482_cmp_test_α
.Lx1196_0:              lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n482_cmp_test_α
n481_coerce_numeric_β:  add              rsp, 16;                             jmp   n480_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n482_cmp_test_α:        sub              rsp, 16
                        lea              rdi, [rsp + 32]                      # coerce_numeric
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        test             eax, eax;                            jg    .Lx1198_240
                        add              rsp, 16;                             jmp   n481_coerce_numeric_β
.Lx1198_240:                                                                  jmp   n483_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n483_statement_end_α:   add              rsp, 96;                             jmp   n484_statement_begin_α
#=======================================================================================================================
#                 IDENT(wi, 1)                                    :F(pm_mid_wrd)
#-----------------------------------------------------------------------------------------------------------------------
n484_statement_begin_α:                                                       jmp   n485_var_α
n484_statement_begin_β:                                                       jmp   n501_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n485_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 128]            # wi
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n486_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n486_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1204_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n487_call_α
n486_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n484_statement_begin_β
.Lx1204_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n487_call_α:            sub              rsp, 16
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
.Lrkfnzd1206:           .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1206]
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
                        cmp              eax, 104;                            jne   .Lx1205_240
                        add              rsp, 16;                             jmp   n486_lit_integer_β
.Lx1205_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n488_statement_end_α
n487_call_β:            add              rsp, 16;                             jmp   n486_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n488_statement_end_α:   add              rsp, 48;                             jmp   n489_statement_begin_α
#=======================================================================================================================
#                 OUTPUT          =   pfx wq ': ' tline ','       :(pm_wrd_loop)
#-----------------------------------------------------------------------------------------------------------------------
n489_statement_begin_α:                                                       jmp   n490_var_α
n489_statement_begin_β:                                                       jmp   n333_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n490_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 272]            # pfx
                        mov              rdx, qword ptr [r9 + 280]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n491_var_α
#-----------------------------------------------------------------------------------------------------------------------
n491_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # wq
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n492_binop_α
n491_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n489_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n492_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n493_lit_string_α
n492_binop_β:           add              rsp, 16;                             jmp   n491_var_β
#-----------------------------------------------------------------------------------------------------------------------
n493_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx1214_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n494_binop_α
n493_lit_string_β:      add              rsp, 16;                             jmp   n492_binop_β
.Lx1214_0:              .quad            .Lx1214_0_s
.Lx1214_0_s:            .string          ": "
#-----------------------------------------------------------------------------------------------------------------------
n494_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n495_var_α
n494_binop_β:           add              rsp, 16;                             jmp   n493_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n495_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 256]            # tline
                        mov              rdx, qword ptr [r9 + 264]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n496_binop_α
n495_var_β:             add              rsp, 16;                             jmp   n494_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n496_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n497_lit_string_α
n496_binop_β:           add              rsp, 16;                             jmp   n495_var_β
#-----------------------------------------------------------------------------------------------------------------------
n497_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1218_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n498_binop_α
n497_lit_string_β:      add              rsp, 16;                             jmp   n496_binop_β
.Lx1218_0:              .quad            .Lx1218_0_s
.Lx1218_0_s:            .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n498_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n499_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n499_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1220_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n500_statement_end_α
.Lx1220_0:              .quad            .Lx1220_0_s
.Lx1220_0_s:            .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n500_statement_end_α:   add              rsp, 144;                            jmp   n333_statement_begin_α
#=======================================================================================================================
# pm_mid_wrd      OUTPUT          =   pad wq ': ' tline ','       :(pm_wrd_loop)
#-----------------------------------------------------------------------------------------------------------------------
n501_statement_begin_α:                                                       jmp   n502_var_α
n501_statement_begin_β:                                                       jmp   n333_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n502_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 288]            # pad
                        mov              rdx, qword ptr [r9 + 296]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n503_var_α
#-----------------------------------------------------------------------------------------------------------------------
n503_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # wq
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n504_binop_α
n503_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n501_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n504_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n505_lit_string_α
n504_binop_β:           add              rsp, 16;                             jmp   n503_var_β
#-----------------------------------------------------------------------------------------------------------------------
n505_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx1228_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n506_binop_α
n505_lit_string_β:      add              rsp, 16;                             jmp   n504_binop_β
.Lx1228_0:              .quad            .Lx1228_0_s
.Lx1228_0_s:            .string          ": "
#-----------------------------------------------------------------------------------------------------------------------
n506_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n507_var_α
n506_binop_β:           add              rsp, 16;                             jmp   n505_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n507_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 256]            # tline
                        mov              rdx, qword ptr [r9 + 264]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n508_binop_α
n507_var_β:             add              rsp, 16;                             jmp   n506_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n508_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n509_lit_string_α
n508_binop_β:           add              rsp, 16;                             jmp   n507_var_β
#-----------------------------------------------------------------------------------------------------------------------
n509_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1232_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n510_binop_α
n509_lit_string_β:      add              rsp, 16;                             jmp   n508_binop_β
.Lx1232_0:              .quad            .Lx1232_0_s
.Lx1232_0_s:            .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n510_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n511_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n511_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1234_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n512_statement_end_α
.Lx1234_0:              .quad            .Lx1234_0_s
.Lx1234_0_s:            .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n512_statement_end_α:   add              rsp, 144;                            jmp   n333_statement_begin_α
#=======================================================================================================================
# pm_last_wrd     IDENT(wi, 1)                                    :F(pm_last_mid)
#-----------------------------------------------------------------------------------------------------------------------
n513_statement_begin_α:                                                       jmp   n514_var_α
n513_statement_begin_β:                                                       jmp   n528_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n514_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 128]            # wi
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n515_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n515_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1240_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n516_call_α
n515_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n513_statement_begin_β
.Lx1240_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n516_call_α:            sub              rsp, 16
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
.Lrkfnzd1242:           .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1242]
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
                        cmp              eax, 104;                            jne   .Lx1241_240
                        add              rsp, 16;                             jmp   n515_lit_integer_β
.Lx1241_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n517_statement_end_α
n516_call_β:            add              rsp, 16;                             jmp   n515_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n517_statement_end_α:   add              rsp, 48;                             jmp   n518_statement_begin_α
#=======================================================================================================================
#                 lline           =   pfx wq ': ' tline           :(pm_last_emit)
#-----------------------------------------------------------------------------------------------------------------------
n518_statement_begin_α:                                                       jmp   n519_var_α
n518_statement_begin_β:                                                       jmp   n538_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n519_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 272]            # pfx
                        mov              rdx, qword ptr [r9 + 280]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n520_var_α
#-----------------------------------------------------------------------------------------------------------------------
n520_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # wq
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n521_binop_α
n520_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n518_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n521_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n522_lit_string_α
n521_binop_β:           add              rsp, 16;                             jmp   n520_var_β
#-----------------------------------------------------------------------------------------------------------------------
n522_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx1250_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n523_binop_α
n522_lit_string_β:      add              rsp, 16;                             jmp   n521_binop_β
.Lx1250_0:              .quad            .Lx1250_0_s
.Lx1250_0_s:            .string          ": "
#-----------------------------------------------------------------------------------------------------------------------
n523_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n524_var_α
n523_binop_β:           add              rsp, 16;                             jmp   n522_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n524_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 256]            # tline
                        mov              rdx, qword ptr [r9 + 264]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n525_binop_α
n524_var_β:             add              rsp, 16;                             jmp   n523_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n525_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n526_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n526_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 336], rax            # lline
                        mov              qword ptr [r9 + 344], rdx;           jmp   n527_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n527_statement_end_α:   add              rsp, 112;                            jmp   n538_statement_begin_α
#=======================================================================================================================
# pm_last_mid     lline           =   pad wq ': ' tline
#-----------------------------------------------------------------------------------------------------------------------
n528_statement_begin_α:                                                       jmp   n529_var_α
n528_statement_begin_β:                                                       jmp   n538_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n529_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 288]            # pad
                        mov              rdx, qword ptr [r9 + 296]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n530_var_α
#-----------------------------------------------------------------------------------------------------------------------
n530_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # wq
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n531_binop_α
n530_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n528_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n531_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n532_lit_string_α
n531_binop_β:           add              rsp, 16;                             jmp   n530_var_β
#-----------------------------------------------------------------------------------------------------------------------
n532_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx1262_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n533_binop_α
n532_lit_string_β:      add              rsp, 16;                             jmp   n531_binop_β
.Lx1262_0:              .quad            .Lx1262_0_s
.Lx1262_0_s:            .string          ": "
#-----------------------------------------------------------------------------------------------------------------------
n533_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n534_var_α
n533_binop_β:           add              rsp, 16;                             jmp   n532_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n534_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 256]            # tline
                        mov              rdx, qword ptr [r9 + 264]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n535_binop_α
n534_var_β:             add              rsp, 16;                             jmp   n533_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n535_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n536_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n536_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 336], rax            # lline
                        mov              qword ptr [r9 + 344], rdx;           jmp   n537_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n537_statement_end_α:   add              rsp, 112;                            jmp   n538_statement_begin_α
#=======================================================================================================================
# pm_last_emit    IDENT(last_sent, 1)                             :F(pm_last_mid2)
#-----------------------------------------------------------------------------------------------------------------------
n538_statement_begin_α:                                                       jmp   n539_var_α
n538_statement_begin_β:                                                       jmp   n549_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n539_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 320]            # last_sent
                        mov              rdx, qword ptr [r9 + 328]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n540_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n540_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1272_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n541_call_α
n540_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n538_statement_begin_β
.Lx1272_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n541_call_α:            sub              rsp, 16
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
.Lrkfnzd1274:           .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1274]
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
                        cmp              eax, 104;                            jne   .Lx1273_240
                        add              rsp, 16;                             jmp   n540_lit_integer_β
.Lx1273_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n542_statement_end_α
n541_call_β:            add              rsp, 16;                             jmp   n540_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n542_statement_end_α:   add              rsp, 48;                             jmp   n543_statement_begin_α
#=======================================================================================================================
#                 OUTPUT          =   lline '}}'                  :(pm_sent_loop)
#-----------------------------------------------------------------------------------------------------------------------
n543_statement_begin_α:                                                       jmp   n544_var_α
n543_statement_begin_β:                                                       jmp   n257_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n544_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 336]            # lline
                        mov              rdx, qword ptr [r9 + 344]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n545_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n545_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx1280_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n546_binop_α
n545_lit_string_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n543_statement_begin_β
.Lx1280_0:              .quad            .Lx1280_0_s
.Lx1280_0_s:            .string          "}}"
#-----------------------------------------------------------------------------------------------------------------------
n546_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n547_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n547_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1282_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n548_statement_end_α
.Lx1282_0:              .quad            .Lx1282_0_s
.Lx1282_0_s:            .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n548_statement_end_α:   add              rsp, 48;                             jmp   n257_statement_begin_α
#=======================================================================================================================
# pm_last_mid2    OUTPUT          =   lline '},'                  :(pm_sent_loop)
#-----------------------------------------------------------------------------------------------------------------------
n549_statement_begin_α:                                                       jmp   n550_var_α
n549_statement_begin_β:                                                       jmp   n257_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n550_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 336]            # lline
                        mov              rdx, qword ptr [r9 + 344]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n551_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n551_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx1288_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n552_binop_α
n551_lit_string_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n549_statement_begin_β
.Lx1288_0:              .quad            .Lx1288_0_s
.Lx1288_0_s:            .string          "},"
#-----------------------------------------------------------------------------------------------------------------------
n552_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n553_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n553_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1290_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n554_statement_end_α
.Lx1290_0:              .quad            .Lx1290_0_s
.Lx1290_0_s:            .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n554_statement_end_α:   add              rsp, 48;                             jmp   n257_statement_begin_α
#=======================================================================================================================
# pm_done         pp_mem          =   .dummy                      :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n555_statement_begin_α:                                                       jmp   n556_lit_string_α
n555_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n556_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1295_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n557_call_α
.Lx1295_0:              .quad            .Lx1295_0_s
.Lx1295_0_s:            .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n557_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1297:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1297]
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
                        cmp              eax, 104;                            jne   .Lx1296_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n555_statement_begin_β
.Lx1296_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n558_assign_α
n557_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n555_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n558_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # pp_mem
                        mov              qword ptr [r9 + 40], rdx;            jmp   n559_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n559_statement_end_α:   add              rsp, 32;                             jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n560_statement_begin_α:                                                       jmp   n561_statement_end_α
n560_statement_begin_β:                                                       jmp   n562_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n561_statement_end_α:                                                         jmp   n562_statement_begin_α
#=======================================================================================================================
#                 &TRIM           =   0
#-----------------------------------------------------------------------------------------------------------------------
n562_statement_begin_α:                                                       jmp   n563_lit_string_α
n562_statement_begin_β:                                                       jmp   n567_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n563_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx1307_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n564_lit_integer_α
.Lx1307_0:              .quad            .Lx1307_0_s
.Lx1307_0_s:            .string          "TRIM"
#-----------------------------------------------------------------------------------------------------------------------
n564_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1308_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n565_call_α
n564_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n562_statement_begin_β
.Lx1308_0:              .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n565_call_α:            sub              rsp, 16
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
.Lrkfnzd1310:           .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1310]
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
                        cmp              eax, 104;                            jne   .Lx1309_240
                        add              rsp, 16;                             jmp   n564_lit_integer_β
.Lx1309_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n566_statement_end_α
n565_call_β:            add              rsp, 16;                             jmp   n564_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n566_statement_end_α:   add              rsp, 48;                             jmp   n567_statement_begin_α
#=======================================================================================================================
#                 nl              =   CHAR(10)
#-----------------------------------------------------------------------------------------------------------------------
n567_statement_begin_α:                                                       jmp   n568_lit_integer_α
n567_statement_begin_β:                                                       jmp   n572_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n568_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1315_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n569_call_α
.Lx1315_0:              .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n569_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lbynamefnzd507:        .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd507]
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
                        cmp              eax, 104;                            jne   .Lx1316_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n567_statement_begin_β
.Lx1316_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n570_assign_α
n569_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n567_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n570_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 368], rax            # nl
                        mov              qword ptr [r9 + 376], rdx;           jmp   n571_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n571_statement_end_α:   add              rsp, 32;                             jmp   n572_statement_begin_α
#=======================================================================================================================
# slurp           line            =   INPUT                       :F(slurp_f)
#-----------------------------------------------------------------------------------------------------------------------
n572_statement_begin_α:                                                       jmp   n573_var_α
n572_statement_begin_β:                                                       jmp   n620_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n573_var_α:             sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx1322_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx1322_240
                        add              rsp, 16;                             jmp   n572_statement_begin_β
.Lx1322_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n574_assign_α
.Lx1322_0:              .quad            .Lx1322_0_s
.Lx1322_0_s:            .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n574_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 448], rax            # line
                        mov              qword ptr [r9 + 456], rdx;           jmp   n575_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n575_statement_end_α:   add              rsp, 16;                             jmp   n576_statement_begin_α
#=======================================================================================================================
#                 b1              =   b1 line nl
#-----------------------------------------------------------------------------------------------------------------------
n576_statement_begin_α:                                                       jmp   n577_var_α
n576_statement_begin_β:                                                       jmp   n584_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n577_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 464]            # b1
                        mov              rdx, qword ptr [r9 + 472]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n578_var_α
#-----------------------------------------------------------------------------------------------------------------------
n578_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 448]            # line
                        mov              rdx, qword ptr [r9 + 456]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n579_binop_α
n578_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n576_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n579_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n580_var_α
n579_binop_β:           add              rsp, 16;                             jmp   n578_var_β
#-----------------------------------------------------------------------------------------------------------------------
n580_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 368]            # nl
                        mov              rdx, qword ptr [r9 + 376]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n581_binop_α
n580_var_β:             add              rsp, 16;                             jmp   n579_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n581_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n582_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n582_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 464], rax            # b1
                        mov              qword ptr [r9 + 472], rdx;           jmp   n583_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n583_statement_end_α:   add              rsp, 80;                             jmp   n584_statement_begin_α
#=======================================================================================================================
#                 GT(SIZE(b1), 8192)                              :F(slurp)
#-----------------------------------------------------------------------------------------------------------------------
n584_statement_begin_α:                                                       jmp   n585_var_α
n584_statement_begin_β:                                                       jmp   n572_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n585_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 464]            # b1
                        mov              rdx, qword ptr [r9 + 472]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n586_call_α
#-----------------------------------------------------------------------------------------------------------------------
n586_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1340:           .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1340]
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
                        cmp              eax, 104;                            jne   .Lx1339_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n584_statement_begin_β
.Lx1339_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n587_lit_integer_α
n586_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n584_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n587_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1341_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n588_coerce_numeric_α
n587_lit_integer_β:     add              rsp, 16
                        add              rsp, 32;                             jmp   n584_statement_begin_β
.Lx1341_0:              .quad            8192
#-----------------------------------------------------------------------------------------------------------------------
n588_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        cmp              eax, 5;                              je    .Lx1343_1
                        cmp              eax, 3;                              jne   .Lx1343_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              eax, 3;                              jne   .Lx1343_0
.Lx1343_1:              mov              rax, qword ptr [rsp + 32]            # call
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              qword ptr [rsp + 8], rax;            jmp   n589_coerce_numeric_α
.Lx1343_0:              lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n589_coerce_numeric_α
n588_coerce_numeric_β:  add              rsp, 16;                             jmp   n587_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n589_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              eax, 5;                              je    .Lx1345_1
                        cmp              eax, 3;                              jne   .Lx1345_0
                        mov              eax, dword ptr [rsp + 48]            # call
                        cmp              eax, 3;                              jne   .Lx1345_0
.Lx1345_1:              mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n590_cmp_test_α
.Lx1345_0:              lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n590_cmp_test_α
n589_coerce_numeric_β:  add              rsp, 16;                             jmp   n588_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n590_cmp_test_α:        sub              rsp, 16
                        lea              rdi, [rsp + 32]                      # coerce_numeric
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        test             eax, eax;                            jg    .Lx1347_240
                        add              rsp, 16;                             jmp   n589_coerce_numeric_β
.Lx1347_240:                                                                  jmp   n591_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n591_statement_end_α:   add              rsp, 96;                             jmp   n592_statement_begin_α
#=======================================================================================================================
#                 b2              =   b2 b1
#-----------------------------------------------------------------------------------------------------------------------
n592_statement_begin_α:                                                       jmp   n593_var_α
n592_statement_begin_β:                                                       jmp   n598_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n593_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 480]            # b2
                        mov              rdx, qword ptr [r9 + 488]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n594_var_α
#-----------------------------------------------------------------------------------------------------------------------
n594_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 464]            # b1
                        mov              rdx, qword ptr [r9 + 472]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n595_binop_α
n594_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n592_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n595_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n596_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n596_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 480], rax            # b2
                        mov              qword ptr [r9 + 488], rdx;           jmp   n597_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n597_statement_end_α:   add              rsp, 48;                             jmp   n598_statement_begin_α
#=======================================================================================================================
#                 b1              =
#-----------------------------------------------------------------------------------------------------------------------
n598_statement_begin_α:                                                       jmp   n599_lit_string_α
n598_statement_begin_β:                                                       jmp   n602_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n599_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx1360_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n600_assign_α
.Lx1360_0:              .quad            .Lx1360_0_s
.Lx1360_0_s:            .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n600_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 464], rax            # b1
                        mov              qword ptr [r9 + 472], rdx;           jmp   n601_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n601_statement_end_α:   add              rsp, 16;                             jmp   n602_statement_begin_α
#=======================================================================================================================
#                 GT(SIZE(b2), 262144)                            :F(slurp)
#-----------------------------------------------------------------------------------------------------------------------
n602_statement_begin_α:                                                       jmp   n603_var_α
n602_statement_begin_β:                                                       jmp   n572_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n603_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 480]            # b2
                        mov              rdx, qword ptr [r9 + 488]
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
.Lrkfnzd1368:           .string          "SIZE"
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
                        add              rsp, 16;                             jmp   n602_statement_begin_β
.Lx1367_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n605_lit_integer_α
n604_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n602_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n605_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1369_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n606_coerce_numeric_α
n605_lit_integer_β:     add              rsp, 16
                        add              rsp, 32;                             jmp   n602_statement_begin_β
.Lx1369_0:              .quad            262144
#-----------------------------------------------------------------------------------------------------------------------
n606_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        cmp              eax, 5;                              je    .Lx1371_1
                        cmp              eax, 3;                              jne   .Lx1371_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              eax, 3;                              jne   .Lx1371_0
.Lx1371_1:              mov              rax, qword ptr [rsp + 32]            # call
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              qword ptr [rsp + 8], rax;            jmp   n607_coerce_numeric_α
.Lx1371_0:              lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n607_coerce_numeric_α
n606_coerce_numeric_β:  add              rsp, 16;                             jmp   n605_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n607_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              eax, 5;                              je    .Lx1373_1
                        cmp              eax, 3;                              jne   .Lx1373_0
                        mov              eax, dword ptr [rsp + 48]            # call
                        cmp              eax, 3;                              jne   .Lx1373_0
.Lx1373_1:              mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n608_cmp_test_α
.Lx1373_0:              lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n608_cmp_test_α
n607_coerce_numeric_β:  add              rsp, 16;                             jmp   n606_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n608_cmp_test_α:        sub              rsp, 16
                        lea              rdi, [rsp + 32]                      # coerce_numeric
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        test             eax, eax;                            jg    .Lx1375_240
                        add              rsp, 16;                             jmp   n607_coerce_numeric_β
.Lx1375_240:                                                                  jmp   n609_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n609_statement_end_α:   add              rsp, 96;                             jmp   n610_statement_begin_α
#=======================================================================================================================
#                 src             =   src b2
#-----------------------------------------------------------------------------------------------------------------------
n610_statement_begin_α:                                                       jmp   n611_var_α
n610_statement_begin_β:                                                       jmp   n616_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n611_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 496]            # src
                        mov              rdx, qword ptr [r9 + 504]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n612_var_α
#-----------------------------------------------------------------------------------------------------------------------
n612_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 480]            # b2
                        mov              rdx, qword ptr [r9 + 488]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n613_binop_α
n612_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n610_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n613_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n614_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n614_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 496], rax            # src
                        mov              qword ptr [r9 + 504], rdx;           jmp   n615_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n615_statement_end_α:   add              rsp, 48;                             jmp   n616_statement_begin_α
#=======================================================================================================================
#                 b2              =                               :(slurp)
#-----------------------------------------------------------------------------------------------------------------------
n616_statement_begin_α:                                                       jmp   n617_lit_string_α
n616_statement_begin_β:                                                       jmp   n572_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n617_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx1388_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n618_assign_α
.Lx1388_0:              .quad            .Lx1388_0_s
.Lx1388_0_s:            .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n618_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 480], rax            # b2
                        mov              qword ptr [r9 + 488], rdx;           jmp   n619_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n619_statement_end_α:   add              rsp, 16;                             jmp   n572_statement_begin_α
#=======================================================================================================================
# slurp_f         src             =   src b2 b1
#-----------------------------------------------------------------------------------------------------------------------
n620_statement_begin_α:                                                       jmp   n621_var_α
n620_statement_begin_β:                                                       jmp   n628_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n621_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 496]            # src
                        mov              rdx, qword ptr [r9 + 504]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n622_var_α
#-----------------------------------------------------------------------------------------------------------------------
n622_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 480]            # b2
                        mov              rdx, qword ptr [r9 + 488]
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
                        mov              rax, qword ptr [r9 + 464]            # b1
                        mov              rdx, qword ptr [r9 + 472]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n625_binop_α
n624_var_β:             add              rsp, 16;                             jmp   n623_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n625_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n626_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n626_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 496], rax            # src
                        mov              qword ptr [r9 + 504], rdx;           jmp   n627_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n627_statement_end_α:                                                         jmp   n628_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n628_statement_begin_α:                                                       jmp   n629_statement_end_α
n628_statement_begin_β: add              rsp, 80;                             jmp   n630_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n629_statement_end_α:   add              rsp, 80;                             jmp   n630_statement_begin_α
#=======================================================================================================================
#                 mem             =   TABLE()
#-----------------------------------------------------------------------------------------------------------------------
n630_statement_begin_α:                                                       jmp   n631_call_α
n630_statement_begin_β:                                                       jmp   n634_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n631_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd1409:           .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1409]
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
                        cmp              eax, 104;                            jne   .Lx1408_240
                        add              rsp, 16;                             jmp   n630_statement_begin_β
.Lx1408_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n632_assign_α
n631_call_β:            add              rsp, 16;                             jmp   n630_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n632_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # mem
                        mov              qword ptr [r9 + 56], rdx;            jmp   n633_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n633_statement_end_α:   add              rsp, 16;                             jmp   n634_statement_begin_α
#=======================================================================================================================
#                 claws           =
#-----------------------------------------------------------------------------------------------------------------------
n634_statement_begin_α:                                                       jmp   n635_var_α
n634_statement_begin_β:                                                       jmp   n643_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n635_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 528]            # epsilon
                        mov              rdx, qword ptr [r9 + 536]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n636_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n636_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 592], rax            # PAT$0$V1
                        mov              qword ptr [r9 + 600], rdx;           jmp   n637_var_α
#-----------------------------------------------------------------------------------------------------------------------
n637_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 528]            # epsilon
                        mov              rdx, qword ptr [r9 + 536]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n638_assign_α
n637_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n634_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n638_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 576], rax            # PAT$0$V0
                        mov              qword ptr [r9 + 584], rdx;           jmp   n639_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n639_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1419_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n640_call_α
n639_lit_string_β:      add              rsp, 16;                             jmp   n637_var_β
.Lx1419_0:              .quad            .Lx1419_0_s
.Lx1419_0_s:            .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n640_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1421:           .string          "SNO$MKPAT"
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
                        add              rsp, 16;                             jmp   n639_lit_string_β
.Lx1420_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n641_assign_α
n640_call_β:            add              rsp, 16;                             jmp   n639_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n641_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 512], rax            # claws
                        mov              qword ptr [r9 + 520], rdx;           jmp   n642_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n642_statement_end_α:   add              rsp, 64;                             jmp   n643_statement_begin_α
#=======================================================================================================================
#                 t0              =   TIME()
#-----------------------------------------------------------------------------------------------------------------------
n643_statement_begin_α:                                                       jmp   n644_call_α
n643_statement_begin_β:                                                       jmp   n647_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n644_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd1428:           .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1428]
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
                        cmp              eax, 104;                            jne   .Lx1427_240
                        add              rsp, 16;                             jmp   n643_statement_begin_β
.Lx1427_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n645_assign_α
n644_call_β:            add              rsp, 16;                             jmp   n643_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n645_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 544], rax            # t0
                        mov              qword ptr [r9 + 552], rdx;           jmp   n646_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n646_statement_end_α:   add              rsp, 16;                             jmp   n647_statement_begin_α
#=======================================================================================================================
#                 src             claws                           :F(fail)
#-----------------------------------------------------------------------------------------------------------------------
n647_statement_begin_α:                                                       jmp   n648_var_α
n647_statement_begin_β:                                                       jmp   n671_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n648_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 496]            # src
                        mov              rdx, qword ptr [r9 + 504]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n649_var_α
#-----------------------------------------------------------------------------------------------------------------------
n649_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 512]            # claws
                        mov              rdx, qword ptr [r9 + 520]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n650_assign_α
n649_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n671_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n650_assign_α:          mov              rsi, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1436_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n651_match_begin_α
n650_assign_β:                                                                jmp   n649_var_β
.Lx1436_0:              .quad            .Lx1436_0_s
.Lx1436_0_s:            .string          "PATV$0"
#-----------------------------------------------------------------------------------------------------------------------
n651_match_begin_α:     mov              rdi, qword ptr [rsp + 16]            # var
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
.Lx1438_0:              mov              r14d, dword ptr [rbp + -40];         jmp   n652_match_defer_α
n651_match_begin_β:     lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx1438_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx1438_1
                                                                              jmp   .Lx1438_0
.Lx1438_1:
n651_match_begin_af:    mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_match_ctx_restore@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   n650_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n652_match_defer_α:     lea              rdi, [rip + .S9]
                        xor              esi, esi
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_get_pat_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            jz    .Lx1439_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx1439_4]
                        lea              r11, [rip + .Lx1439_5];              jmp   rax
.Lx1439_4:                                                                    jmp   n653_match_end_α
.Lx1439_5:                                                                    jmp   n651_match_begin_β
.Lx1439_0:              push             r14
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
.Lx1439_2:              test             rax, rax;                            je    .Lx1439_3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx1439_7]
                        lea              rdx, [rip + .Lx1439_8];              jmp   rax
.Lx1439_7:              mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx1439_2
.Lx1439_8:              mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx1439_2
.Lx1439_3:              add              rsp, 8
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
                        test             eax, eax;                            js    n651_match_begin_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx1439_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n653_match_end_α
.Lx1439_6:              add              rsp, 16;                             jmp   n651_match_begin_β
n652_match_defer_β:                                                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n653_match_end_α:       push             r14
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
.Lx1441_1:              test             rax, rax;                            je    .Lx1441_2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx1441_3]
                        lea              rdx, [rip + .Lx1441_4];              jmp   rax
.Lx1441_3:              mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx1441_1
.Lx1441_4:              mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx1441_1
.Lx1441_2:              call             rt_dcap_end_ok_close@PLT
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
                        pop              rbp;                                 jmp   n654_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n654_statement_end_α:   add              rsp, 32;                             jmp   n655_statement_begin_α
#=======================================================================================================================
#                 t1              =   TIME()
#-----------------------------------------------------------------------------------------------------------------------
n655_statement_begin_α:                                                       jmp   n656_call_α
n655_statement_begin_β:                                                       jmp   n659_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n656_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd1447:           .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1447]
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
                        cmp              eax, 104;                            jne   .Lx1446_240
                        add              rsp, 16;                             jmp   n655_statement_begin_β
.Lx1446_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n657_assign_α
n656_call_β:            add              rsp, 16;                             jmp   n655_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n657_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 560], rax            # t1
                        mov              qword ptr [r9 + 568], rdx;           jmp   n658_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n658_statement_end_α:   add              rsp, 16;                             jmp   n659_statement_begin_α
#=======================================================================================================================
#                 TERMINAL        =   'match_ms=' (t1 - t0)
#-----------------------------------------------------------------------------------------------------------------------
n659_statement_begin_α:                                                       jmp   n660_lit_string_α
n659_statement_begin_β:                                                       jmp   n667_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n660_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Lx1453_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n661_var_α
.Lx1453_0:              .quad            .Lx1453_0_s
.Lx1453_0_s:            .string          "match_ms="
#-----------------------------------------------------------------------------------------------------------------------
n661_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 560]            # t1
                        mov              rdx, qword ptr [r9 + 568]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n662_var_α
n661_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n659_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n662_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 544]            # t0
                        mov              rdx, qword ptr [r9 + 552]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n663_binop_α
n662_var_β:             add              rsp, 16;                             jmp   n661_var_β
#-----------------------------------------------------------------------------------------------------------------------
n663_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx1456_240
                        add              rsp, 16;                             jmp   n662_var_β
.Lx1456_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n664_binop_α
n663_binop_β:           add              rsp, 16;                             jmp   n662_var_β
#-----------------------------------------------------------------------------------------------------------------------
n664_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n665_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n665_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1458_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n666_statement_end_α
.Lx1458_0:              .quad            .Lx1458_0_s
.Lx1458_0_s:            .string          "TERMINAL"
#-----------------------------------------------------------------------------------------------------------------------
n666_statement_end_α:   add              rsp, 80;                             jmp   n667_statement_begin_α
#=======================================================================================================================
#                 pp_mem(mem)                                     :(END)
#-----------------------------------------------------------------------------------------------------------------------
n667_statement_begin_α:                                                       jmp   n668_var_α
n667_statement_begin_β:                                                       jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n668_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # mem
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n669_call_α
#-----------------------------------------------------------------------------------------------------------------------
n669_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1465z]
                        lea              rax, [rip + pp_mem_alpha];           jmp   rax
.Lsig1465z:             .quad            1
                        .quad            .Lx1465_2
                        .quad            .Lx1465_2
                        .quad            16
.Lx1465_2:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx1465_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n667_statement_begin_β
.Lx1465_240:                                                                  jmp   n670_statement_end_α
n669_call_β:                                                                  jmp   n667_statement_begin_β
.Lx1465_0:              .quad            .Lx1465_0_s
.Lx1465_0_s:            .string          "pp_mem"
#-----------------------------------------------------------------------------------------------------------------------
n670_statement_end_α:   add              rsp, 32;                             jmp   main_γ
#=======================================================================================================================
# fail            OUTPUT          =  'Pattern match failed'
#-----------------------------------------------------------------------------------------------------------------------
n671_statement_begin_α:                                                       jmp   n672_lit_string_α
n671_statement_begin_β:                                                       jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n672_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 20
                        mov              rax, qword ptr [rip + .Lx1470_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n673_assign_α
.Lx1470_0:              .quad            .Lx1470_0_s
.Lx1470_0_s:            .string          "Pattern match failed"
#-----------------------------------------------------------------------------------------------------------------------
n673_assign_α:          mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1471_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n674_statement_end_α
.Lx1471_0:              .quad            .Lx1471_0_s
.Lx1471_0_s:            .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n674_statement_end_α:   add              rsp, 16;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
RETURN:                 pop              rcx
                        add              rsp, 8;                              jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FRETURN:                add              rsp, 8
                        pop              rcx;                                 jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
NRETURN:                mov              qword ptr [rsp + 32], 2              # result
                        mov              dword ptr [rsp + 36], 0
                        mov              rax, qword ptr [rip + .Lx1478_0]
                        mov              qword ptr [rsp + 40], rax;           jmp   n678_call_α
.Lx1478_0:              .quad            .Lx1478_0_s
.Lx1478_0_s:            .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n678_call_α:            mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 72], rax
                        .section         .rodata
.Lrkfn1480:             .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1480]
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
n678_call_β:                                                                  jmp   FRETURN
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
.S0:                    .string          "IR_MATCH_ARBNO: unreachable beta (defer-unsafe decline)"
.S1:                    .string          "IR_MATCH_ARBNO: body contains a suspend-capable DEFER (pat_static=0) -- anchor-relative slot not yet implemented (W-4)"
.S2:                    .string          "IR_MATCH_CAPTURE_SAVE: neither op_zres nor op_cap_anchor granted a home -- the legacy C rt_cap_push array this used to fall back to is deliberately not rebuilt (s83)"
.S3:                    .string          "IR_MATCH_CAPTURE_COND: neither op_zres nor op_cap_anchor granted a home -- the legacy C rt_cap_top array this used to fall back to is deliberately not rebuilt (s83)"
.S4:                    .string          "PAT$0$V1"
.S5:                    .string          "*add_tok"
.S6:                    .string          "PAT$0$V0"
.S7:                    .string          "*new_sent"
.S8:                    .string          "nl"
.S9:                    .string          "PATV$0"
                        .text
                        .section         .rodata
.C0:                    .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
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
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.C1:                    .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0
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
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.C2:                    .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
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
