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
                        sub              rsp, 568
                        mov              rdi, rsp
                        mov              ecx, 568
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 560], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:
                        mov              qword ptr [rbp + 496], 1
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
                        mov              qword ptr [rbp + 480], 6
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
                        lea              rdi, [rip + .Lrkfn33]
                        lea              rsi, [rbp + 448]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
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
                        mov              qword ptr [rbp + 128], 6
                        mov              rax, qword ptr [rip + .Lx35_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n6_lit_integer_α
.Lx35_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_integer_α:
                        mov              qword ptr [rbp + 144], 6
                        mov              rax, qword ptr [rip + .Lx36_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n7_to_α
.Lx36_0:
                        .quad            40000
#-----------------------------------------------------------------------------------------------------------------------
n7_to_α:
                        mov              rdi, qword ptr [rbp + 128]
                        mov              rsi, qword ptr [rbp + 136]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 128], 6
                        mov              qword ptr [rbp + 136], rax
                        mov              rdi, qword ptr [rbp + 144]
                        mov              rsi, qword ptr [rbp + 152]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 144], 6
                        mov              qword ptr [rbp + 152], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 112], rax
.Lx38_0:
                        mov              rax, qword ptr [rbp + 112]
                        mov              rcx, qword ptr [rbp + 152]
                        cmp              rax, rcx
                                                                                        jg    n26_var_α
                        mov              qword ptr [rbp + 96], 6
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
                        mov              qword ptr [rbp + 416], 1
                        mov              dword ptr [rbp + 420], 1
                        mov              rax, qword ptr [rip + .Lx44_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n13_binop_α
.Lx44_0:
                        .quad            .Lx44_0_s
.Lx44_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n12_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 544]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n14_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n13_binop_α:
                        mov              rdi, qword ptr [rbp + 512]
                        mov              rsi, qword ptr [rbp + 520]
                        mov              rdx, qword ptr [rbp + 416]
                        mov              rcx, qword ptr [rbp + 424]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n15_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_string_α:
                        mov              qword ptr [rbp + 256], 1
                        mov              dword ptr [rbp + 260], 1
                        mov              rax, qword ptr [rip + .Lx48_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n16_var_α
.Lx48_0:
                        .quad            .Lx48_0_s
.Lx48_0_s:
                        .string          "k"
#-----------------------------------------------------------------------------------------------------------------------
n15_assign_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   n12_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n16_var_α:
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n17_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_integer_α:
                        mov              qword ptr [rbp + 320], 6
                        mov              rax, qword ptr [rip + .Lx52_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n19_op75_α
.Lx52_0:
                        .quad            97
#-----------------------------------------------------------------------------------------------------------------------
n18_unmark_α:
                        mov              rsp, qword ptr [rbp + 160]
                                                                                        jmp   n7_to_β
#-----------------------------------------------------------------------------------------------------------------------
n19_op75_α:
                        mov              eax, dword ptr [rbp + 528]
                        cmp              eax, 7
                                                                                        je    .Lx56_1
                        cmp              eax, 6
                                                                                        jne   .Lx56_0
                        mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 6
                                                                                        jne   .Lx56_0
.Lx56_1:
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n20_binop_α
.Lx56_0:
                        lea              rdi, [rbp + 528]
                        lea              rsi, [rbp + 320]
                        lea              rdx, [rbp + 288]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n20_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n20_binop_α:
                        mov              rdi, qword ptr [rbp + 288]
                        mov              rsi, qword ptr [rbp + 296]
                        mov              rdx, qword ptr [rbp + 320]
                        mov              rcx, qword ptr [rbp + 328]
                        call             rt_mod@PLT
                        cmp              eax, 99
                                                                                        je    n18_unmark_α
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n21_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n21_binop_α:
                        mov              rdi, qword ptr [rbp + 256]
                        mov              rsi, qword ptr [rbp + 264]
                        mov              rdx, qword ptr [rbp + 272]
                        mov              rcx, qword ptr [rbp + 280]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n22_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n22_subscript_α:
                        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        mov              rdx, qword ptr [rbp + 240]
                        mov              rcx, qword ptr [rbp + 248]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n18_unmark_α
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n23_var_α
#-----------------------------------------------------------------------------------------------------------------------
n23_var_α:
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n24_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n24_assign_var_α:
                        mov              rdi, qword ptr [rbp + 336]
                        mov              rsi, qword ptr [rbp + 344]
                        mov              rdx, qword ptr [rbp + 368]
                        mov              rcx, qword ptr [rbp + 376]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n18_unmark_α
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n25_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n25_conjunction_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n18_unmark_α
n25_conjunction_β:
                                                                                        jmp   n18_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n26_var_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n27_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n27_unop_α:
                        mov              rdi, qword ptr [rbp + 512]
                        mov              rsi, qword ptr [rbp + 520]
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
                        lea              rdi, [rip + .Lrkfn68]
                        lea              rsi, [rbp + 16]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   main_ω
n28_call_builtin_icon_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 560]
                        add              rsp, 568
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 560]
                        add              rsp, 568
                        ret
                        .section         .note.GNU-stack,"",@progbits
