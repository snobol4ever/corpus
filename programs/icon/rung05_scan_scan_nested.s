                        .intel_syntax    noprefix
                        .text
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        xor              esi, esi
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:
                        sub              rsp, 352
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 0
                        mov              qword ptr [rsp + 40], 0
                        mov              qword ptr [rsp + 48], 0
                        mov              qword ptr [rsp + 56], 0
                        mov              qword ptr [rsp + 64], 0
                        mov              qword ptr [rsp + 72], 0
                        mov              qword ptr [rsp + 80], 0
                        mov              qword ptr [rsp + 88], 0
                        mov              qword ptr [rsp + 96], 0
                        mov              qword ptr [rsp + 104], 0
                        mov              qword ptr [rsp + 112], 0
                        mov              qword ptr [rsp + 120], 0
                        mov              qword ptr [rsp + 128], 0
                        mov              qword ptr [rsp + 136], 0
                        mov              qword ptr [rsp + 144], 0
                        mov              qword ptr [rsp + 152], 0
                        mov              qword ptr [rsp + 160], 0
                        mov              qword ptr [rsp + 168], 0
                        mov              qword ptr [rsp + 176], 0
                        mov              qword ptr [rsp + 184], 0
                        mov              qword ptr [rsp + 192], 0
                        mov              qword ptr [rsp + 200], 0
                        mov              qword ptr [rsp + 208], 0
                        mov              qword ptr [rsp + 216], 0
                        mov              qword ptr [rsp + 224], 0
                        mov              qword ptr [rsp + 232], 0
                        mov              qword ptr [rsp + 240], 0
                        mov              qword ptr [rsp + 248], 0
                        mov              qword ptr [rsp + 256], 0
                        mov              qword ptr [rsp + 264], 0
                        mov              qword ptr [rsp + 272], 0
                        mov              qword ptr [rsp + 280], 0
                        mov              qword ptr [rsp + 288], 0
                        mov              qword ptr [rsp + 296], 0
                        mov              qword ptr [rsp + 304], 0
                        mov              qword ptr [rsp + 312], 0
                        mov              qword ptr [rsp + 320], 0
                        mov              qword ptr [rsp + 328], 0
                        mov              qword ptr [rsp + 336], 0
                        mov              qword ptr [rsp + 344], 0
                        mov              qword ptr [rbp + 384], 2                       # result
                        mov              dword ptr [rbp + 388], 5
                        mov              rax, qword ptr [rip + .Lx16_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n1_assign_α
.Lx16_0:
                        .quad            .Lx16_0_s
.Lx16_0_s:
                        .string          "first"
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n2_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:
                        mov              qword ptr [rbp + 368], 2                       # result
                        mov              dword ptr [rbp + 372], 6
                        mov              rax, qword ptr [rip + .Lx18_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n3_assign_α
.Lx18_0:
                        .quad            .Lx18_0_s
.Lx18_0_s:
                        .string          "second"
#-----------------------------------------------------------------------------------------------------------------------
n3_assign_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n5_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n5_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 336]                     # lo
                        mov              rsi, qword ptr [rbp + 344]                     # hi
                        mov              rdx, r13                                       # sigma
                        mov              rcx, r14                                       # delta
                        mov              r8, r15                                        # Delta
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n6_var_α
#-----------------------------------------------------------------------------------------------------------------------
n6_var_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n7_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n7_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 320]                     # lo
                        mov              rsi, qword ptr [rbp + 328]                     # hi
                        mov              rdx, r13                                       # sigma
                        mov              rcx, r14                                       # delta
                        mov              r8, r15                                        # Delta
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n8_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n8_keyword_icon_α:
                        mov              qword ptr [rbp + 288], 2
                        mov              qword ptr [rbp + 296], r13
                                                                                        jmp   n9_call_builtin_icon_α
n8_keyword_icon_β:
                        add              rsp, 352
                                                                                        jmp   n12_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n9_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 264], rax
                        .section         .rodata
.Lrkfn30:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn30]                          # fn
                        lea              rsi, [rbp + 256]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx29_240
                        add              rsp, 352
                                                                                        jmp   n12_scan_α
.Lx29_240:
                                                                                        jmp   n10_scan_α
n9_call_builtin_icon_β:
                        add              rsp, 352
                                                                                        jmp   n12_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n10_scan_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 216], rax
                        lea              rdi, [rbp + 176]                               # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 176]
                        mov              r14, qword ptr [rbp + 184]
                        mov              r15, qword ptr [rbp + 192]
                                                                                        jmp   n11_scan_α
n10_scan_β:
                        add              rsp, 352
                                                                                        jmp   n13_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n11_scan_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 136], rax
                        lea              rdi, [rbp + 96]                                # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 96]
                        mov              r14, qword ptr [rbp + 104]
                        mov              r15, qword ptr [rbp + 112]
                                                                                        jmp   n14_keyword_icon_α
n11_scan_β:
                        call             rt_scan_reenter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                                                                                        jmp   n10_scan_β
                                                                                        jmp   n14_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n12_scan_α:
                        lea              rdi, [rbp + 176]                               # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 176]
                        mov              r14, qword ptr [rbp + 184]
                        mov              r15, qword ptr [rbp + 192]
                                                                                        jmp   n13_scan_α
n12_scan_β:
                                                                                        jmp   n13_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n13_scan_α:
                        lea              rdi, [rbp + 96]                                # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 96]
                        mov              r14, qword ptr [rbp + 104]
                        mov              r15, qword ptr [rbp + 112]
                                                                                        jmp   n14_keyword_icon_α
n13_scan_β:
                                                                                        jmp   n14_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n14_keyword_icon_α:
                        call             rt_keyword_subject@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                                                                                        jmp   n15_call_builtin_icon_α
n14_keyword_icon_β:
                        add              rsp, 352
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n15_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 24], rax
                        .section         .rodata
.Lrkfn41:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn41]                          # fn
                        lea              rsi, [rbp + 16]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx40_240
                        add              rsp, 352
                                                                                        jmp   main_ω
.Lx40_240:
                        add              rsp, 352
                                                                                        jmp   main_ω
n15_call_builtin_icon_β:
                        add              rsp, 352
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
                        .section         .note.GNU-stack,"",@progbits
