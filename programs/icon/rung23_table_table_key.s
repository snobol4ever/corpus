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
                        sub              rsp, 496
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
                        mov              qword ptr [rsp + 432], 0
                        mov              qword ptr [rsp + 440], 0
                        mov              qword ptr [rsp + 448], 0
                        mov              qword ptr [rsp + 456], 0
                        mov              qword ptr [rsp + 464], 0
                        mov              qword ptr [rsp + 472], 0
                        mov              qword ptr [rsp + 480], 0
                        mov              qword ptr [rsp + 488], 0
                        mov              qword ptr [rbp + 544], 3                       # result
                        mov              rax, qword ptr [rip + .Lx32_0]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n1_call_builtin_icon_α
.Lx32_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n1_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 520], rax
                        .section         .rodata
.Lrkfn34:               .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn34]                          # fn
                        lea              rsi, [rbp + 512]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 104
                                                                                        je    n3_var_ref_α
                                                                                        jmp   n2_assign_α
n1_call_builtin_icon_β:
                                                                                        jmp   n3_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n2_assign_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n3_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n3_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 576]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n4_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_integer_α:
                        mov              qword ptr [rbp + 432], 3                       # result
                        mov              rax, qword ptr [rip + .Lx38_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n5_subscript_α
.Lx38_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n5_subscript_α:
                        mov              rdi, qword ptr [rbp + 416]                     # base
                        mov              rsi, qword ptr [rbp + 424]                     # base
                        mov              rdx, qword ptr [rbp + 432]                     # idx
                        mov              rcx, qword ptr [rbp + 440]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n8_var_ref_α
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n6_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_integer_α:
                        mov              qword ptr [rbp + 480], 3                       # result
                        mov              rax, qword ptr [rip + .Lx40_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n7_assign_var_α
.Lx40_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n7_assign_var_α:
                        mov              rdi, qword ptr [rbp + 448]                     # var
                        mov              rsi, qword ptr [rbp + 456]                     # var
                        mov              rdx, qword ptr [rbp + 480]                     # val
                        mov              rcx, qword ptr [rbp + 488]                     # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n8_var_ref_α
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n8_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n8_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 576]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n9_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_integer_α:
                        mov              qword ptr [rbp + 352], 3                       # result
                        mov              rax, qword ptr [rip + .Lx44_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n10_subscript_α
.Lx44_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n10_subscript_α:
                        mov              rdi, qword ptr [rbp + 336]                     # base
                        mov              rsi, qword ptr [rbp + 344]                     # base
                        mov              rdx, qword ptr [rbp + 352]                     # idx
                        mov              rcx, qword ptr [rbp + 360]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n13_var_ref_α
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n11_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_integer_α:
                        mov              qword ptr [rbp + 400], 3                       # result
                        mov              rax, qword ptr [rip + .Lx46_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n12_assign_var_α
.Lx46_0:
                        .quad            20
#-----------------------------------------------------------------------------------------------------------------------
n12_assign_var_α:
                        mov              rdi, qword ptr [rbp + 368]                     # var
                        mov              rsi, qword ptr [rbp + 376]                     # var
                        mov              rdx, qword ptr [rbp + 400]                     # val
                        mov              rcx, qword ptr [rbp + 408]                     # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n13_var_ref_α
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n13_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n13_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 576]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n14_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_integer_α:
                        mov              qword ptr [rbp + 272], 3                       # result
                        mov              rax, qword ptr [rip + .Lx50_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n15_subscript_α
.Lx50_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n15_subscript_α:
                        mov              rdi, qword ptr [rbp + 256]                     # base
                        mov              rsi, qword ptr [rbp + 264]                     # base
                        mov              rdx, qword ptr [rbp + 272]                     # idx
                        mov              rcx, qword ptr [rbp + 280]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n18_lit_integer_α
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n16_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_integer_α:
                        mov              qword ptr [rbp + 320], 3                       # result
                        mov              rax, qword ptr [rip + .Lx52_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n17_assign_var_α
.Lx52_0:
                        .quad            30
#-----------------------------------------------------------------------------------------------------------------------
n17_assign_var_α:
                        mov              rdi, qword ptr [rbp + 288]                     # var
                        mov              rsi, qword ptr [rbp + 296]                     # var
                        mov              rdx, qword ptr [rbp + 320]                     # val
                        mov              rcx, qword ptr [rbp + 328]                     # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n18_lit_integer_α
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n18_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_integer_α:
                        mov              qword ptr [rbp + 240], 3                       # result
                        mov              rax, qword ptr [rip + .Lx54_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n19_assign_α
.Lx54_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n19_assign_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n20_var_α
#-----------------------------------------------------------------------------------------------------------------------
n20_var_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n21_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n21_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 576]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n22_var_α
#-----------------------------------------------------------------------------------------------------------------------
n22_var_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n23_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n23_iterate_α:
                        mov              qword ptr [rbp + 176], 0
.Lx63_0:
                        mov              rdi, qword ptr [rbp + 192]                     # obj
                        mov              rsi, qword ptr [rbp + 200]                     # obj
                        mov              rdx, qword ptr [rbp + 176]                     # idx
                        call             rt_list_bang_key_at@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              rax, 99
                                                                                        jne   .Lx63_240
                        add              rsp, 496
                                                                                        jmp   n30_var_α
.Lx63_240:
                                                                                        jmp   n24_subscript_α
n23_iterate_β:
                        inc              qword ptr [rbp + 176]
                                                                                        jmp   .Lx63_0
#-----------------------------------------------------------------------------------------------------------------------
n24_subscript_α:
                        mov              rdi, qword ptr [rbp + 144]                     # base
                        mov              rsi, qword ptr [rbp + 152]                     # base
                        mov              rdx, qword ptr [rbp + 160]                     # idx
                        mov              rcx, qword ptr [rbp + 168]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n23_iterate_β
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n25_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n25_deref_α:
                        mov              rdi, qword ptr [rbp + 208]                     # d
                        mov              rsi, qword ptr [rbp + 216]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n23_iterate_β
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n26_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n26_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 560]
                        cmp              eax, 5
                                                                                        je    .Lx67_1
                        cmp              eax, 3
                                                                                        jne   .Lx67_0
                        mov              eax, dword ptr [rbp + 224]
                        cmp              eax, 3
                                                                                        jne   .Lx67_0
.Lx67_1:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n27_coerce_numeric_α
.Lx67_0:
                        lea              rdi, [rbp + 560]                               # self
                        lea              rsi, [rbp + 224]                               # other
                        lea              rdx, [rbp + 112]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n27_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n27_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 224]
                        cmp              eax, 5
                                                                                        je    .Lx69_1
                        cmp              eax, 3
                                                                                        jne   .Lx69_0
                        mov              eax, dword ptr [rbp + 560]
                        cmp              eax, 3
                                                                                        jne   .Lx69_0
.Lx69_1:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n28_binop_α
.Lx69_0:
                        lea              rdi, [rbp + 224]                               # self
                        lea              rsi, [rbp + 560]                               # other
                        lea              rdx, [rbp + 96]                                # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n28_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n28_binop_α:
                        mov              eax, dword ptr [rbp + 112]
                        cmp              eax, 3
                                                                                        jne   .Lx70_0
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 3
                                                                                        jne   .Lx70_0
                        mov              rax, qword ptr [rbp + 120]
                        mov              rcx, qword ptr [rbp + 104]
                        add              rax, rcx
                        mov              qword ptr [rbp + 80], 3
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n29_assign_α
.Lx70_0:
                        mov              rdi, qword ptr [rbp + 112]
                        mov              rsi, qword ptr [rbp + 120]
                        mov              rdx, qword ptr [rbp + 96]
                        mov              rcx, qword ptr [rbp + 104]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx70_240
                        add              rsp, 496
                                                                                        jmp   n30_var_α
.Lx70_240:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n29_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n29_assign_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              rdx, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n23_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n30_var_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n31_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n31_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 24], rax
                        .section         .rodata
.Lrkfn75:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn75]                          # fn
                        lea              rsi, [rbp + 16]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 104
                                                                                        je    main_ω
                                                                                        jmp   main_ω
n31_call_builtin_icon_β:
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
