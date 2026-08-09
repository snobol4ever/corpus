                        .intel_syntax    noprefix
                        .text
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        mov              r12, qword ptr [0x70000000]
                        xor              esi, esi
                        xor              r14d, r14d
                        lea              rcx, [rip + .Lmain_zf_γ]
                        lea              rdx, [rip + .Lmain_zf_ω]
                                                                                        jmp   main_α
.Lmain_zf_γ:
                        xor              edi, edi
                        call             exit@PLT
.Lmain_zf_ω:
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 608
                        mov              qword ptr [rsp + 584], rcx
                        mov              qword ptr [rsp + 592], rdx
                        mov              qword ptr [rsp + 600], rbp
                        mov              rbp, rsp
                        lea              rdi, [rbp + 0]
                        xor              eax, eax
                        mov              ecx, 576
                        rep stosb
                        mov              rdi, rbp
                        mov              esi, 0
                        mov              edx, 3
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:
                        mov              qword ptr [rbp + 496], 2                       # result
                        mov              dword ptr [rbp + 500], 0
                        mov              rax, qword ptr [rip + .Lx29_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n1_assign_α
.Lx29_0:
                        .quad            .Lx29_0_s
.Lx29_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   n2_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:
                        mov              qword ptr [rbp + 480], 3                       # result
                        mov              rax, qword ptr [rip + .Lx31_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n3_call_builtin_icon_α
.Lx31_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n3_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                        .section         .rodata
.Lrkfn33:               .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn33]                          # fn
                        lea              rsi, [rbp + 448]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 104
                                                                                        je    n5_lit_integer_α
                                                                                        jmp   n4_assign_α
n3_call_builtin_icon_β:
                                                                                        jmp   n5_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n4_assign_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n5_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_integer_α:
                        mov              qword ptr [rbp + 128], 3                       # result
                        mov              rax, qword ptr [rip + .Lx35_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n6_lit_integer_α
.Lx35_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_integer_α:
                        mov              qword ptr [rbp + 144], 3                       # result
                        mov              rax, qword ptr [rip + .Lx36_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n7_to_α
.Lx36_0:
                        .quad            40000
#-----------------------------------------------------------------------------------------------------------------------
n7_to_α:
                        mov              rdi, qword ptr [rbp + 128]                     # v
                        mov              rsi, qword ptr [rbp + 136]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 128], 3
                        mov              qword ptr [rbp + 136], rax
                        mov              rdi, qword ptr [rbp + 144]                     # v
                        mov              rsi, qword ptr [rbp + 152]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 144], 3
                        mov              qword ptr [rbp + 152], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 112], rax
.Lx38_0:
                        mov              rax, qword ptr [rbp + 112]
                        mov              rcx, qword ptr [rbp + 152]
                        cmp              rax, rcx
                                                                                        jg    n26_var_α
                        mov              qword ptr [rbp + 96], 3
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n8_assign_α
n7_to_β:
                        inc              qword ptr [rbp + 112]
                                                                                        jmp   .Lx38_0
#-----------------------------------------------------------------------------------------------------------------------
n8_assign_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              rdx, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n9_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n9_bound_α:
                        mov              qword ptr [rbp + 160], rsp
                                                                                        jmp   n10_var_α
#-----------------------------------------------------------------------------------------------------------------------
n10_var_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n11_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:
                        mov              qword ptr [rbp + 416], 2                       # result
                        mov              dword ptr [rbp + 420], 1
                        mov              rax, qword ptr [rip + .Lx44_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n12_binop_α
.Lx44_0:
                        .quad            .Lx44_0_s
.Lx44_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n12_binop_α:
                        mov              rdi, qword ptr [rbp + 512]                     # a
                        mov              rsi, qword ptr [rbp + 520]                     # a
                        mov              rdx, qword ptr [rbp + 416]                     # b
                        mov              rcx, qword ptr [rbp + 424]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n13_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n13_assign_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   n14_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n14_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 544]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n15_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:
                        mov              qword ptr [rbp + 256], 2                       # result
                        mov              dword ptr [rbp + 260], 1
                        mov              rax, qword ptr [rip + .Lx49_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n16_var_α
.Lx49_0:
                        .quad            .Lx49_0_s
.Lx49_0_s:
                        .string          "k"
#-----------------------------------------------------------------------------------------------------------------------
n16_var_α:
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n17_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_integer_α:
                        mov              qword ptr [rbp + 320], 3                       # result
                        mov              rax, qword ptr [rip + .Lx52_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n18_coerce_numeric_α
.Lx52_0:
                        .quad            97
#-----------------------------------------------------------------------------------------------------------------------
n18_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 528]
                        cmp              eax, 5
                                                                                        je    .Lx54_1
                        cmp              eax, 3
                                                                                        jne   .Lx54_0
                        mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 3
                                                                                        jne   .Lx54_0
.Lx54_1:
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n19_binop_α
.Lx54_0:
                        lea              rdi, [rbp + 528]                               # self
                        lea              rsi, [rbp + 320]                               # other
                        lea              rdx, [rbp + 288]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n19_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n19_binop_α:
                        mov              rdi, qword ptr [rbp + 288]
                        mov              rsi, qword ptr [rbp + 296]
                        mov              rdx, qword ptr [rbp + 320]
                        mov              rcx, qword ptr [rbp + 328]
                        call             rt_mod@PLT
                        cmp              eax, 104
                                                                                        je    n25_unmark_α
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n20_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n20_binop_α:
                        mov              rdi, qword ptr [rbp + 256]                     # a
                        mov              rsi, qword ptr [rbp + 264]                     # a
                        mov              rdx, qword ptr [rbp + 272]                     # b
                        mov              rcx, qword ptr [rbp + 280]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n21_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n21_subscript_α:
                        mov              rdi, qword ptr [rbp + 224]                     # base
                        mov              rsi, qword ptr [rbp + 232]                     # base
                        mov              rdx, qword ptr [rbp + 240]                     # idx
                        mov              rcx, qword ptr [rbp + 248]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n25_unmark_α
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n22_var_α
#-----------------------------------------------------------------------------------------------------------------------
n22_var_α:
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n23_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n23_assign_var_α:
                        mov              rdi, qword ptr [rbp + 336]                     # var
                        mov              rsi, qword ptr [rbp + 344]                     # var
                        mov              rdx, qword ptr [rbp + 368]                     # val
                        mov              rcx, qword ptr [rbp + 376]                     # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n25_unmark_α
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n24_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n24_conjunction_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n25_unmark_α
n24_conjunction_β:
                                                                                        jmp   n25_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n25_unmark_α:
                        mov              rsp, qword ptr [rbp + 160]
                                                                                        jmp   n7_to_β
#-----------------------------------------------------------------------------------------------------------------------
n26_var_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n27_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n27_unop_α:
                        mov              rdi, qword ptr [rbp + 512]                     # lo
                        mov              rsi, qword ptr [rbp + 520]                     # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                                                                                        jmp   n28_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n28_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 24], rax
                        .section         .rodata
.Lrkfn68:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn68]                          # fn
                        lea              rsi, [rbp + 16]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 104
                                                                                        je    main_ω
                                                                                        jmp   main_γ
n28_call_builtin_icon_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 608]
                        mov              rcx, qword ptr [rbp + 584]
                        mov              rbp, qword ptr [rbp + 600]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        lea              rsp, [rbp + 608]
                        mov              rcx, qword ptr [rbp + 592]
                        mov              rbp, qword ptr [rbp + 600]
                                                                                        jmp   rcx
                        .section         .note.GNU-stack,"",@progbits
