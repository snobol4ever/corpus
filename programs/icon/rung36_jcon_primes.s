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
n0_lit_integer_α:
                        sub              rsp, 320
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
                        mov              qword ptr [rbp + 48], 3                        # result
                        mov              rax, qword ptr [rip + .Lx22_0]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n1_lit_integer_α
.Lx22_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:
                        mov              qword ptr [rbp + 64], 3                        # result
                        mov              rax, qword ptr [rip + .Lx23_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n2_to_α
.Lx23_0:
                        .quad            100
#-----------------------------------------------------------------------------------------------------------------------
n2_to_α:
                        mov              rdi, qword ptr [rbp + 48]                      # v
                        mov              rsi, qword ptr [rbp + 56]                      # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 48], 3
                        mov              qword ptr [rbp + 56], rax
                        mov              rdi, qword ptr [rbp + 64]                      # v
                        mov              rsi, qword ptr [rbp + 72]                      # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 64], 3
                        mov              qword ptr [rbp + 72], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 32], rax
.Lx25_0:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rcx, qword ptr [rbp + 72]
                        cmp              rax, rcx
                                                                                        jle   .Lx25_240
                        add              rsp, 320
                                                                                        jmp   main_ω
.Lx25_240:
                        mov              qword ptr [rbp + 16], 3
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n3_assign_α
n2_to_β:
                        inc              qword ptr [rbp + 32]
                                                                                        jmp   .Lx25_0
#-----------------------------------------------------------------------------------------------------------------------
n3_assign_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              rdx, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n4_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n4_bound_α:
                        mov              qword ptr [rbp + 80], rsp
                                                                                        jmp   n5_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n5_disjunction_α:
                        mov              qword ptr [rbp + 208], 0
                        mov              qword ptr [rbp + 216], 0
                        mov              dword ptr [rbp + 224], 0
                                                                                        jmp   n9_var_α
n5_disjunction_as:
                        mov              eax, dword ptr [rbp + 224]
                        cmp              eax, 0
                                                                                        jne   .Lx30_0
                                                                                        jmp   n6_var_α
.Lx30_0:
                                                                                        jmp   n6_var_α
n5_disjunction_β:
                        mov              eax, dword ptr [rbp + 224]
                                                                                        jmp   n6_var_α
n5_disjunction_af:
                        add              dword ptr [rbp + 224], 1
                        mov              eax, dword ptr [rbp + 224]
                                                                                        jmp   n6_var_α
#-----------------------------------------------------------------------------------------------------------------------
n6_var_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n7_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n7_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn34:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn34]                          # fn
                        lea              rsi, [rbp + 160]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 104
                                                                                        je    n21_unmark_α
                                                                                        jmp   n8_conjunction_α
n7_call_builtin_icon_β:
                                                                                        jmp   n21_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n8_conjunction_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n21_unmark_α
n8_conjunction_β:
                                                                                        jmp   n21_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n9_var_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n10_lit_integer_α
n9_var_β:
                                                                                        jmp   n5_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_integer_α:
                        mov              qword ptr [rbp + 352], 3                       # result
                        mov              rax, qword ptr [rip + .Lx38_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n11_var_α
.Lx38_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n11_var_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n12_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_integer_α:
                        mov              qword ptr [rbp + 416], 3                       # result
                        mov              rax, qword ptr [rip + .Lx41_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n13_coerce_numeric_α
.Lx41_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n13_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 448]
                        cmp              eax, 5
                                                                                        je    .Lx43_1
                        cmp              eax, 3
                                                                                        jne   .Lx43_0
                        mov              eax, dword ptr [rbp + 416]
                        cmp              eax, 3
                                                                                        jne   .Lx43_0
.Lx43_1:
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n14_binop_α
.Lx43_0:
                        lea              rdi, [rbp + 448]                               # self
                        lea              rsi, [rbp + 416]                               # other
                        lea              rdx, [rbp + 384]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n14_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n14_binop_α:
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 3
                                                                                        jne   .Lx44_0
                        mov              rax, qword ptr [rbp + 392]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rbp + 368], 3
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n15_to_α
.Lx44_0:
                        mov              rdi, qword ptr [rbp + 384]
                        mov              rsi, qword ptr [rbp + 392]
                        mov              rdx, qword ptr [rbp + 416]
                        mov              rcx, qword ptr [rbp + 424]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        je    n5_disjunction_af
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n15_to_α
#-----------------------------------------------------------------------------------------------------------------------
n15_to_α:
                        mov              rdi, qword ptr [rbp + 352]                     # v
                        mov              rsi, qword ptr [rbp + 360]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 352], 3
                        mov              qword ptr [rbp + 360], rax
                        mov              rdi, qword ptr [rbp + 368]                     # v
                        mov              rsi, qword ptr [rbp + 376]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 368], 3
                        mov              qword ptr [rbp + 376], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 336], rax
.Lx46_0:
                        mov              rax, qword ptr [rbp + 336]
                        mov              rcx, qword ptr [rbp + 376]
                        cmp              rax, rcx
                                                                                        jg    n5_disjunction_af
                        mov              qword ptr [rbp + 320], 3
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n16_coerce_numeric_α
n15_to_β:
                        inc              qword ptr [rbp + 336]
                                                                                        jmp   .Lx46_0
#-----------------------------------------------------------------------------------------------------------------------
n16_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 448]
                        cmp              eax, 5
                                                                                        je    .Lx48_1
                        cmp              eax, 3
                                                                                        jne   .Lx48_0
                        mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 3
                                                                                        jne   .Lx48_0
.Lx48_1:
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n17_coerce_numeric_α
.Lx48_0:
                        lea              rdi, [rbp + 448]                               # self
                        lea              rsi, [rbp + 320]                               # other
                        lea              rdx, [rbp + 288]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n17_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n17_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 5
                                                                                        je    .Lx50_1
                        cmp              eax, 3
                                                                                        jne   .Lx50_0
                        mov              eax, dword ptr [rbp + 448]
                        cmp              eax, 3
                                                                                        jne   .Lx50_0
.Lx50_1:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n18_binop_α
.Lx50_0:
                        lea              rdi, [rbp + 320]                               # self
                        lea              rsi, [rbp + 448]                               # other
                        lea              rdx, [rbp + 272]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n18_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n18_binop_α:
                        mov              rdi, qword ptr [rbp + 288]
                        mov              rsi, qword ptr [rbp + 296]
                        mov              rdx, qword ptr [rbp + 272]
                        mov              rcx, qword ptr [rbp + 280]
                        call             rt_mod@PLT
                        cmp              eax, 104
                                                                                        je    n5_disjunction_af
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n19_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_integer_α:
                        mov              qword ptr [rbp + 432], 3                       # result
                        mov              rax, qword ptr [rip + .Lx52_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n20_binop_test_α
.Lx52_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n20_binop_test_α:
                        mov              eax, dword ptr [rbp + 256]
                        cmp              eax, 112
                                                                                        je    .Lx53_0
                        mov              eax, dword ptr [rbp + 432]
                        cmp              eax, 112
                                                                                        je    .Lx53_0
                        mov              eax, dword ptr [rbp + 256]
                        cmp              eax, 3
                                                                                        jne   .Lx53_2
                        mov              eax, dword ptr [rbp + 432]
                        cmp              eax, 3
                                                                                        jne   .Lx53_2
.Lx53_1:
                        mov              rax, qword ptr [rbp + 264]
                        mov              rcx, qword ptr [rbp + 440]
                        cmp              rax, rcx
                                                                                        jne   n15_to_β
                        mov              rcx, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 240], rcx
                        mov              rcx, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 248], rcx
                                                                                        jmp   n21_unmark_α
.Lx53_0:
                        mov              rdi, qword ptr [rbp + 256]                     # a
                        mov              rsi, qword ptr [rbp + 264]                     # a
                        mov              rdx, qword ptr [rbp + 432]                     # b
                        mov              rcx, qword ptr [rbp + 440]                     # b
                        mov              r8d, 9                                         # op
                        lea              r9, [rbp + 240]                                # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx53_1
                        cmp              eax, 1
                                                                                        je    n15_to_β
                                                                                        jmp   n21_unmark_α
.Lx53_2:
                        mov              rdi, qword ptr [rbp + 256]                     # lhs
                        mov              rsi, qword ptr [rbp + 264]                     # lhs
                        mov              rdx, qword ptr [rbp + 432]                     # rhs
                        mov              rcx, qword ptr [rbp + 440]                     # rhs
                        mov              r8d, 9                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n15_to_β
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n21_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n21_unmark_α:
                        mov              rsp, qword ptr [rbp + 80]
                                                                                        jmp   n2_to_β
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
