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
n0_call_builtin_icon_α:
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
                        .section         .rodata
.Lrkfn26:               .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn26]                          # fn
                        lea              rsi, [rsp + 496]                               # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                        cmp              eax, 104
                                                                                        je    n2_var_ref_α
                                                                                        jmp   n1_assign_α
n0_call_builtin_icon_β:
                                                                                        jmp   n2_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:
                        mov              rax, qword ptr [rsp + 480]
                        mov              rdx, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                                                                                        jmp   n2_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rsp + 512]
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                                                                                        jmp   n3_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:
                        mov              qword ptr [rsp + 352], 2                       # result
                        mov              dword ptr [rsp + 356], 1
                        mov              rax, qword ptr [rip + .Lx30_0]
                        mov              qword ptr [rsp + 360], rax
                                                                                        jmp   n4_subscript_α
.Lx30_0:
                        .quad            .Lx30_0_s
.Lx30_0_s:
                        .string          "p"
#-----------------------------------------------------------------------------------------------------------------------
n4_subscript_α:
                        mov              rdi, qword ptr [rsp + 336]                     # base
                        mov              rsi, qword ptr [rsp + 344]                     # base
                        mov              rdx, qword ptr [rsp + 352]                     # idx
                        mov              rcx, qword ptr [rsp + 360]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n7_var_ref_α
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                                                                                        jmp   n5_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_integer_α:
                        mov              qword ptr [rsp + 400], 3                       # result
                        mov              rax, qword ptr [rip + .Lx32_0]
                        mov              qword ptr [rsp + 408], rax
                                                                                        jmp   n6_assign_var_α
.Lx32_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n6_assign_var_α:
                        mov              rdi, qword ptr [rsp + 368]                     # var
                        mov              rsi, qword ptr [rsp + 376]                     # var
                        mov              rdx, qword ptr [rsp + 400]                     # val
                        mov              rcx, qword ptr [rsp + 408]                     # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n7_var_ref_α
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                                                                                        jmp   n7_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n7_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rsp + 512]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                                                                                        jmp   n8_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:
                        mov              qword ptr [rsp + 272], 2                       # result
                        mov              dword ptr [rsp + 276], 1
                        mov              rax, qword ptr [rip + .Lx36_0]
                        mov              qword ptr [rsp + 280], rax
                                                                                        jmp   n9_subscript_α
.Lx36_0:
                        .quad            .Lx36_0_s
.Lx36_0_s:
                        .string          "q"
#-----------------------------------------------------------------------------------------------------------------------
n9_subscript_α:
                        mov              rdi, qword ptr [rsp + 256]                     # base
                        mov              rsi, qword ptr [rsp + 264]                     # base
                        mov              rdx, qword ptr [rsp + 272]                     # idx
                        mov              rcx, qword ptr [rsp + 280]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n12_var_ref_α
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                                                                                        jmp   n10_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_integer_α:
                        mov              qword ptr [rsp + 320], 3                       # result
                        mov              rax, qword ptr [rip + .Lx38_0]
                        mov              qword ptr [rsp + 328], rax
                                                                                        jmp   n11_assign_var_α
.Lx38_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n11_assign_var_α:
                        mov              rdi, qword ptr [rsp + 288]                     # var
                        mov              rsi, qword ptr [rsp + 296]                     # var
                        mov              rdx, qword ptr [rsp + 320]                     # val
                        mov              rcx, qword ptr [rsp + 328]                     # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n12_var_ref_α
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                                                                                        jmp   n12_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n12_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rsp + 512]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                                                                                        jmp   n13_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_string_α:
                        mov              qword ptr [rsp + 208], 2                       # result
                        mov              dword ptr [rsp + 212], 1
                        mov              rax, qword ptr [rip + .Lx42_0]
                        mov              qword ptr [rsp + 216], rax
                                                                                        jmp   n14_subscript_α
.Lx42_0:
                        .quad            .Lx42_0_s
.Lx42_0_s:
                        .string          "p"
#-----------------------------------------------------------------------------------------------------------------------
n14_subscript_α:
                        mov              rdi, qword ptr [rsp + 192]                     # base
                        mov              rsi, qword ptr [rsp + 200]                     # base
                        mov              rdx, qword ptr [rsp + 208]                     # idx
                        mov              rcx, qword ptr [rsp + 216]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n17_var_ref_α
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                                                                                        jmp   n15_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n15_deref_α:
                        mov              rdi, qword ptr [rsp + 224]                     # d
                        mov              rsi, qword ptr [rsp + 232]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n17_var_ref_α
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                                                                                        jmp   n16_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n16_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 168], rax
                        .section         .rodata
.Lrkfn46:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn46]                          # fn
                        lea              rsi, [rsp + 160]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              eax, 104
                                                                                        je    n17_var_ref_α
                                                                                        jmp   n17_var_ref_α
n16_call_builtin_icon_β:
                                                                                        jmp   n17_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n17_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rsp + 512]
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                                                                                        jmp   n18_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_string_α:
                        mov              qword ptr [rsp + 96], 2                        # result
                        mov              dword ptr [rsp + 100], 1
                        mov              rax, qword ptr [rip + .Lx49_0]
                        mov              qword ptr [rsp + 104], rax
                                                                                        jmp   n19_subscript_α
.Lx49_0:
                        .quad            .Lx49_0_s
.Lx49_0_s:
                        .string          "q"
#-----------------------------------------------------------------------------------------------------------------------
n19_subscript_α:
                        mov              rdi, qword ptr [rsp + 80]                      # base
                        mov              rsi, qword ptr [rsp + 88]                      # base
                        mov              rdx, qword ptr [rsp + 96]                      # idx
                        mov              rcx, qword ptr [rsp + 104]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n22_var_α
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                                                                                        jmp   n20_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n20_deref_α:
                        mov              rdi, qword ptr [rsp + 112]                     # d
                        mov              rsi, qword ptr [rsp + 120]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n22_var_α
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                                                                                        jmp   n21_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n21_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 56], rax
                        .section         .rodata
.Lrkfn53:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn53]                          # fn
                        lea              rsi, [rsp + 48]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              eax, 104
                                                                                        je    n22_var_α
                                                                                        jmp   n22_var_α
n21_call_builtin_icon_β:
                                                                                        jmp   n22_var_α
#-----------------------------------------------------------------------------------------------------------------------
n22_var_α:
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 24], rax
                                                                                        jmp   n23_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n23_unop_α:
                        mov              rdi, qword ptr [rsp + 512]                     # lo
                        mov              rsi, qword ptr [rsp + 520]                     # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n24_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n24_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lrkfn58:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn58]                          # fn
                        lea              rsi, [rsp + 16]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx57_240
                        add              rsp, 432
                                                                                        jmp   main_ω
.Lx57_240:
                        add              rsp, 432
                                                                                        jmp   main_ω
n24_call_builtin_icon_β:
                        add              rsp, 432
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
