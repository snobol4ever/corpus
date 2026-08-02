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
                        sub              rsp, 432
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
                        mov              qword ptr [rsp + 352], 0
                        mov              qword ptr [rsp + 360], 0
                        mov              qword ptr [rsp + 368], 0
                        mov              qword ptr [rsp + 376], 0
                        mov              qword ptr [rsp + 384], 0
                        mov              qword ptr [rsp + 392], 0
                        mov              qword ptr [rsp + 400], 0
                        mov              qword ptr [rsp + 408], 0
                        mov              qword ptr [rsp + 416], 0
                        mov              qword ptr [rsp + 424], 0
                        mov              qword ptr [rbp + 416], 2                       # result
                        mov              dword ptr [rbp + 420], 5
                        mov              rax, qword ptr [rip + .Lx16_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n1_scan_enter_α
.Lx16_0:
                        .quad            .Lx16_0_s
.Lx16_0_s:
                        .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n1_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 416]                     # lo
                        mov              rsi, qword ptr [rbp + 424]                     # hi
                        mov              rdx, r13                                       # sigma
                        mov              rcx, r14                                       # delta
                        mov              r8, r15                                        # Delta
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n2_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:
                        mov              qword ptr [rbp + 400], 2                       # result
                        mov              dword ptr [rbp + 404], 3
                        mov              rax, qword ptr [rip + .Lx19_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n3_scan_match_α
.Lx19_0:
                        .quad            .Lx19_0_s
.Lx19_0_s:
                        .string          "hel"
#-----------------------------------------------------------------------------------------------------------------------
n3_scan_match_α:
                        sub              rsp, 16
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 3
                                                                                        jge   .Lx21_239
                        add              rsp, 16
                        add              rsp, 432
                                                                                        jmp   n6_scan_α
.Lx21_239:
                        mov              rdi, qword ptr [rip + .Lx21_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 3
                        push             r10
                        call             memcmp@PLT
                        pop              r10
                        test             eax, eax
                                                                                        je    .Lx21_240
                        add              rsp, 16
                        add              rsp, 432
                                                                                        jmp   n6_scan_α
.Lx21_240:
                        mov              qword ptr [rbp + 368], 3
                        mov              rax, r14
                        add              rax, 4
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n4_call_builtin_icon_α
.Lx21_0:
                        .quad            .Lx21_0_s
.Lx21_0_s:
                        .string          "hel"
#-----------------------------------------------------------------------------------------------------------------------
n4_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                        .section         .rodata
.Lrkfn23:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn23]                          # fn
                        lea              rsi, [rbp + 336]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx22_240
                        add              rsp, 432
                                                                                        jmp   n6_scan_α
.Lx22_240:
                                                                                        jmp   n5_scan_α
n4_call_builtin_icon_β:
                        add              rsp, 432
                                                                                        jmp   n6_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n5_scan_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 296], rax
                        lea              rdi, [rbp + 256]                               # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 256]
                        mov              r14, qword ptr [rbp + 264]
                        mov              r15, qword ptr [rbp + 272]
                                                                                        jmp   n7_lit_string_α
n5_scan_β:
                                                                                        jmp   n7_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n6_scan_α:
                        lea              rdi, [rbp + 256]                               # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 256]
                        mov              r14, qword ptr [rbp + 264]
                        mov              r15, qword ptr [rbp + 272]
                                                                                        jmp   n7_lit_string_α
n6_scan_β:
                                                                                        jmp   n7_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:
                        mov              qword ptr [rbp + 224], 2                       # result
                        mov              dword ptr [rbp + 228], 5
                        mov              rax, qword ptr [rip + .Lx28_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n8_scan_enter_α
.Lx28_0:
                        .quad            .Lx28_0_s
.Lx28_0_s:
                        .string          "world"
#-----------------------------------------------------------------------------------------------------------------------
n8_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 224]                     # lo
                        mov              rsi, qword ptr [rbp + 232]                     # hi
                        mov              rdx, r13                                       # sigma
                        mov              rcx, r14                                       # delta
                        mov              r8, r15                                        # Delta
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n9_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n9_disjunction_α:
                        mov              qword ptr [rbp + 128], 0
                        mov              qword ptr [rbp + 136], 0
                        mov              dword ptr [rbp + 144], 0
                                                                                        jmp   n13_lit_string_α
n9_disjunction_as:
                        mov              eax, dword ptr [rbp + 144]
                        cmp              eax, 0
                                                                                        jne   .Lx32_0
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n10_call_builtin_icon_α
.Lx32_0:
                        cmp              eax, 1
                                                                                        jne   .Lx32_1
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n10_call_builtin_icon_α
.Lx32_1:
                                                                                        jmp   n10_call_builtin_icon_α
n9_disjunction_β:
                        mov              eax, dword ptr [rbp + 144]
                        cmp              eax, 0
                                                                                        je    n9_disjunction_af
                                                                                        jmp   n9_disjunction_af
n9_disjunction_af:
                        add              dword ptr [rbp + 144], 1
                        mov              eax, dword ptr [rbp + 144]
                        cmp              eax, 1
                                                                                        je    n12_lit_integer_α
                                                                                        jmp   n15_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n10_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 104], rax
                        .section         .rodata
.Lrkfn34:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn34]                          # fn
                        lea              rsi, [rbp + 96]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 104
                                                                                        je    n9_disjunction_β
                                                                                        jmp   n11_scan_α
n10_call_builtin_icon_β:
                                                                                        jmp   n9_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n11_scan_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 56], rax
                        lea              rdi, [rbp + 16]                                # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 16]
                        mov              r14, qword ptr [rbp + 24]
                        mov              r15, qword ptr [rbp + 32]
                        add              rsp, 432
                                                                                        jmp   main_ω
n11_scan_β:
                        add              rsp, 432
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_integer_α:
                        mov              qword ptr [rbp + 208], 3                       # result
                        mov              rax, qword ptr [rip + .Lx37_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n9_disjunction_as
n12_lit_integer_β:
                                                                                        jmp   n9_disjunction_af
.Lx37_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_string_α:
                        mov              qword ptr [rbp + 192], 2                       # result
                        mov              dword ptr [rbp + 196], 3
                        mov              rax, qword ptr [rip + .Lx38_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n14_scan_match_α
n13_lit_string_β:
                                                                                        jmp   n9_disjunction_af
.Lx38_0:
                        .quad            .Lx38_0_s
.Lx38_0_s:
                        .string          "xyz"
#-----------------------------------------------------------------------------------------------------------------------
n14_scan_match_α:
                        sub              rsp, 16
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 3
                                                                                        jge   .Lx40_239
                        add              rsp, 16
                                                                                        jmp   n9_disjunction_af
.Lx40_239:
                        mov              rdi, qword ptr [rip + .Lx40_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 3
                        push             r10
                        call             memcmp@PLT
                        pop              r10
                        test             eax, eax
                                                                                        je    .Lx40_240
                        add              rsp, 16
                                                                                        jmp   n9_disjunction_af
.Lx40_240:
                        mov              qword ptr [rbp + 160], 3
                        mov              rax, r14
                        add              rax, 4
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n9_disjunction_as
n14_scan_match_β:
                        add              rsp, 16
                                                                                        jmp   n9_disjunction_af
.Lx40_0:
                        .quad            .Lx40_0_s
.Lx40_0_s:
                        .string          "xyz"
#-----------------------------------------------------------------------------------------------------------------------
n15_scan_α:
                        lea              rdi, [rbp + 16]                                # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 16]
                        mov              r14, qword ptr [rbp + 24]
                        mov              r15, qword ptr [rbp + 32]
                                                                                        jmp   main_ω
n15_scan_β:
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
