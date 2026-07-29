                        .intel_syntax    noprefix
                        .text
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        xor              esi, esi
                        call             main_α
                        xor              eax, eax
                        add              rsp, 24
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        .global          main_α
                        .global          main_β
                        .global          main_γ
                        .global          main_ω
                        sub              rsp, 472
                        mov              rdi, rsp
                        mov              ecx, 472
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 464], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_integer_α:
                        mov              qword ptr [rbp + 48], 6
                        mov              rax, qword ptr [rip + .Lx22_0]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n1_lit_integer_α
.Lx22_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:
                        mov              qword ptr [rbp + 64], 6
                        mov              rax, qword ptr [rip + .Lx23_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n2_to_α
.Lx23_0:
                        .quad            100
#-----------------------------------------------------------------------------------------------------------------------
n2_to_α:
                        mov              rdi, qword ptr [rbp + 48]
                        mov              rsi, qword ptr [rbp + 56]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 48], 6
                        mov              qword ptr [rbp + 56], rax
                        mov              rdi, qword ptr [rbp + 64]
                        mov              rsi, qword ptr [rbp + 72]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 64], 6
                        mov              qword ptr [rbp + 72], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 32], rax
.Lx25_0:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rcx, qword ptr [rbp + 72]
                        cmp              rax, rcx
                                                                                        jg    main_ω
                        mov              qword ptr [rbp + 16], 6
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
                                                                                        jmp   n7_var_α
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
                                                                                        jmp   n8_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n7_var_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n10_lit_integer_α
n7_var_β:
                                                                                        jmp   n5_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n8_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn36:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn36]
                        lea              rsi, [rbp + 160]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n9_unmark_α
                                                                                        jmp   n11_conjunction_α
n8_call_builtin_icon_β:
                                                                                        jmp   n9_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n9_unmark_α:
                        mov              rsp, qword ptr [rbp + 80]
                                                                                        jmp   n2_to_β
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_integer_α:
                        mov              qword ptr [rbp + 352], 6
                        mov              rax, qword ptr [rip + .Lx39_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n12_var_α
.Lx39_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n11_conjunction_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n9_unmark_α
n11_conjunction_β:
                                                                                        jmp   n9_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n12_var_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n13_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_integer_α:
                        mov              qword ptr [rbp + 416], 6
                        mov              rax, qword ptr [rip + .Lx43_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n14_op75_α
.Lx43_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n14_op75_α:
                        mov              eax, dword ptr [rbp + 448]
                        cmp              eax, 7
                                                                                        je    .Lx45_1
                        cmp              eax, 6
                                                                                        jne   .Lx45_0
                        mov              eax, dword ptr [rbp + 416]
                        cmp              eax, 6
                                                                                        jne   .Lx45_0
.Lx45_1:
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n15_binop_α
.Lx45_0:
                        lea              rdi, [rbp + 448]
                        lea              rsi, [rbp + 416]
                        lea              rdx, [rbp + 384]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n15_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n15_binop_α:
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 6
                                                                                        jne   .Lx46_0
                        mov              rax, qword ptr [rbp + 392]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rbp + 368], 6
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n16_to_α
.Lx46_0:
                        mov              rdi, qword ptr [rbp + 384]
                        mov              rsi, qword ptr [rbp + 392]
                        mov              rdx, qword ptr [rbp + 416]
                        mov              rcx, qword ptr [rbp + 424]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        je    n5_disjunction_af
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n16_to_α
#-----------------------------------------------------------------------------------------------------------------------
n16_to_α:
                        mov              rdi, qword ptr [rbp + 352]
                        mov              rsi, qword ptr [rbp + 360]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 352], 6
                        mov              qword ptr [rbp + 360], rax
                        mov              rdi, qword ptr [rbp + 368]
                        mov              rsi, qword ptr [rbp + 376]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 368], 6
                        mov              qword ptr [rbp + 376], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 336], rax
.Lx48_0:
                        mov              rax, qword ptr [rbp + 336]
                        mov              rcx, qword ptr [rbp + 376]
                        cmp              rax, rcx
                                                                                        jg    n5_disjunction_af
                        mov              qword ptr [rbp + 320], 6
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n17_op75_α
n16_to_β:
                        inc              qword ptr [rbp + 336]
                                                                                        jmp   .Lx48_0
#-----------------------------------------------------------------------------------------------------------------------
n17_op75_α:
                        mov              eax, dword ptr [rbp + 448]
                        cmp              eax, 7
                                                                                        je    .Lx50_1
                        cmp              eax, 6
                                                                                        jne   .Lx50_0
                        mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 6
                                                                                        jne   .Lx50_0
.Lx50_1:
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n18_op75_α
.Lx50_0:
                        lea              rdi, [rbp + 448]
                        lea              rsi, [rbp + 320]
                        lea              rdx, [rbp + 288]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n18_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n18_op75_α:
                        mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 7
                                                                                        je    .Lx52_1
                        cmp              eax, 6
                                                                                        jne   .Lx52_0
                        mov              eax, dword ptr [rbp + 448]
                        cmp              eax, 6
                                                                                        jne   .Lx52_0
.Lx52_1:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n19_binop_α
.Lx52_0:
                        lea              rdi, [rbp + 320]
                        lea              rsi, [rbp + 448]
                        lea              rdx, [rbp + 272]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n19_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n19_binop_α:
                        mov              rdi, qword ptr [rbp + 288]
                        mov              rsi, qword ptr [rbp + 296]
                        mov              rdx, qword ptr [rbp + 272]
                        mov              rcx, qword ptr [rbp + 280]
                        call             rt_mod@PLT
                        cmp              eax, 99
                                                                                        je    n5_disjunction_af
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n20_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_integer_α:
                        mov              qword ptr [rbp + 432], 6
                        mov              rax, qword ptr [rip + .Lx54_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n21_binop_test_α
.Lx54_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n21_binop_test_α:
                        mov              eax, dword ptr [rbp + 256]
                        cmp              eax, 100
                                                                                        je    .Lx55_0
                        mov              eax, dword ptr [rbp + 432]
                        cmp              eax, 100
                                                                                        je    .Lx55_0
                        mov              eax, dword ptr [rbp + 256]
                        cmp              eax, 6
                                                                                        jne   .Lx55_2
                        mov              eax, dword ptr [rbp + 432]
                        cmp              eax, 6
                                                                                        jne   .Lx55_2
.Lx55_1:
                        mov              rax, qword ptr [rbp + 264]
                        mov              rcx, qword ptr [rbp + 440]
                        cmp              rax, rcx
                                                                                        jne   n16_to_β
                        mov              rcx, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 240], rcx
                        mov              rcx, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 248], rcx
                                                                                        jmp   n9_unmark_α
.Lx55_0:
                        mov              rdi, qword ptr [rbp + 256]
                        mov              rsi, qword ptr [rbp + 264]
                        mov              rdx, qword ptr [rbp + 432]
                        mov              rcx, qword ptr [rbp + 440]
                        mov              r8d, 9
                        lea              r9, [rbp + 240]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx55_1
                        cmp              eax, 1
                                                                                        je    n16_to_β
                                                                                        jmp   n9_unmark_α
.Lx55_2:
                        mov              rdi, qword ptr [rbp + 256]
                        mov              rsi, qword ptr [rbp + 264]
                        mov              rdx, qword ptr [rbp + 432]
                        mov              rcx, qword ptr [rbp + 440]
                        mov              r8d, 9
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n16_to_β
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n9_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 464]
                        add              rsp, 472
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 464]
                        add              rsp, 472
                        ret
                        .section         .note.GNU-stack,"",@progbits
