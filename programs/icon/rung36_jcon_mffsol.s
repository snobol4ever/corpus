                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_cart_α
proc_cart_α:
proc_cart_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_integer_α:
                        sub              rsp, 656
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
                        mov              qword ptr [rsp + 496], 0
                        mov              qword ptr [rsp + 504], 0
                        mov              qword ptr [rsp + 512], 0
                        mov              qword ptr [rsp + 520], 0
                        mov              qword ptr [rsp + 528], 0
                        mov              qword ptr [rsp + 536], 0
                        mov              qword ptr [rsp + 544], 0
                        mov              qword ptr [rsp + 552], 0
                        mov              qword ptr [rsp + 560], 0
                        mov              qword ptr [rsp + 568], 0
                        mov              qword ptr [rsp + 576], 0
                        mov              qword ptr [rsp + 584], 0
                        mov              qword ptr [rsp + 592], 0
                        mov              qword ptr [rsp + 600], 0
                        mov              qword ptr [rsp + 608], 0
                        mov              qword ptr [rsp + 616], 0
                        mov              qword ptr [rsp + 624], 0
                        mov              qword ptr [rsp + 632], 0
                        mov              qword ptr [rsp + 640], 0
                        mov              qword ptr [rsp + 648], 0
                        mov              qword ptr [rsp + 496], 3                       # result
                        mov              rax, qword ptr [rip + .Lx35_0]
                        mov              qword ptr [rsp + 504], rax
                                                                                        jmp   n1_var_α
.Lx35_0:
                        .quad            50
#-----------------------------------------------------------------------------------------------------------------------
n1_var_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 568], rax
                                                                                        jmp   n2_var_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 632], rax
                                                                                        jmp   n3_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n3_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 600], rax
                        .section         .rodata
.Lrkfn41:               .string          "cos"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn41]                          # fn
                        lea              rsi, [rsp + 592]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        cmp              eax, 104
                                                                                        je    n15_lit_integer_α
                                                                                        jmp   n4_coerce_numeric_α
n3_call_builtin_icon_β:
                                                                                        jmp   n15_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n4_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 5
                                                                                        je    .Lx43_1
                        cmp              eax, 3
                                                                                        jne   .Lx43_0
                        mov              eax, dword ptr [rsp + 576]
                        cmp              eax, 3
                                                                                        jne   .Lx43_0
.Lx43_1:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 552], rax
                                                                                        jmp   n5_coerce_numeric_α
.Lx43_0:
                        lea              rdi, [rsp + 16]                                # self
                        lea              rsi, [rsp + 576]                               # other
                        lea              rdx, [rsp + 544]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n5_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n5_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 576]
                        cmp              eax, 5
                                                                                        je    .Lx45_1
                        cmp              eax, 3
                                                                                        jne   .Lx45_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3
                                                                                        jne   .Lx45_0
.Lx45_1:
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 536], rax
                                                                                        jmp   n6_binop_α
.Lx45_0:
                        lea              rdi, [rsp + 576]                               # self
                        lea              rsi, [rsp + 16]                                # other
                        lea              rdx, [rsp + 528]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n6_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n6_binop_α:
                        mov              eax, dword ptr [rsp + 544]
                        cmp              eax, 3
                                                                                        jne   .Lx46_0
                        mov              eax, dword ptr [rsp + 528]
                        cmp              eax, 3
                                                                                        jne   .Lx46_0
                        mov              rax, qword ptr [rsp + 552]
                        mov              rcx, qword ptr [rsp + 536]
                        imul             rax, rcx
                        mov              qword ptr [rsp + 512], 3
                        mov              qword ptr [rsp + 520], rax
                                                                                        jmp   n7_coerce_numeric_α
.Lx46_0:
                        mov              rdi, qword ptr [rsp + 544]
                        mov              rsi, qword ptr [rsp + 552]
                        mov              rdx, qword ptr [rsp + 528]
                        mov              rcx, qword ptr [rsp + 536]
                        call             rt_mul@PLT
                        cmp              eax, 104
                                                                                        je    n15_lit_integer_α
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                                                                                        jmp   n7_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n7_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 512]
                        cmp              eax, 5
                                                                                        je    .Lx48_1
                        cmp              eax, 3
                                                                                        jne   .Lx48_0
                        mov              eax, dword ptr [rsp + 496]
                        cmp              eax, 3
                                                                                        jne   .Lx48_0
.Lx48_1:
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 488], rax
                                                                                        jmp   n8_binop_α
.Lx48_0:
                        lea              rdi, [rsp + 512]                               # self
                        lea              rsi, [rsp + 496]                               # other
                        lea              rdx, [rsp + 480]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n8_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n8_binop_α:
                        mov              eax, dword ptr [rsp + 480]
                        cmp              eax, 3
                                                                                        jne   .Lx49_0
                        mov              rax, 50
                        mov              rcx, qword ptr [rsp + 488]
                        add              rax, rcx
                        mov              qword ptr [rsp + 464], 3
                        mov              qword ptr [rsp + 472], rax
                                                                                        jmp   n9_var_α
.Lx49_0:
                        mov              rdi, qword ptr [rsp + 496]
                        mov              rsi, qword ptr [rsp + 504]
                        mov              rdx, qword ptr [rsp + 480]
                        mov              rcx, qword ptr [rsp + 488]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n15_lit_integer_α
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                                                                                        jmp   n9_var_α
#-----------------------------------------------------------------------------------------------------------------------
n9_var_α:
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 648], rax
                                                                                        jmp   n10_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n10_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 464]
                        cmp              eax, 5
                                                                                        je    .Lx53_1
                        cmp              eax, 3
                                                                                        jne   .Lx53_0
                        mov              eax, dword ptr [rsp + 64]
                        cmp              eax, 3
                                                                                        jne   .Lx53_0
.Lx53_1:
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 456], rax
                                                                                        jmp   n11_coerce_numeric_α
.Lx53_0:
                        lea              rdi, [rsp + 464]                               # self
                        lea              rsi, [rsp + 64]                                # other
                        lea              rdx, [rsp + 448]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n11_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n11_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 64]
                        cmp              eax, 5
                                                                                        je    .Lx55_1
                        cmp              eax, 3
                                                                                        jne   .Lx55_0
                        mov              eax, dword ptr [rsp + 464]
                        cmp              eax, 3
                                                                                        jne   .Lx55_0
.Lx55_1:
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 440], rax
                                                                                        jmp   n12_binop_α
.Lx55_0:
                        lea              rdi, [rsp + 64]                                # self
                        lea              rsi, [rsp + 464]                               # other
                        lea              rdx, [rsp + 432]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n12_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n12_binop_α:
                        mov              eax, dword ptr [rsp + 448]
                        cmp              eax, 3
                                                                                        jne   .Lx56_0
                        mov              eax, dword ptr [rsp + 432]
                        cmp              eax, 3
                                                                                        jne   .Lx56_0
                        mov              rax, qword ptr [rsp + 456]
                        mov              rcx, qword ptr [rsp + 440]
                        add              rax, rcx
                        mov              qword ptr [rsp + 416], 3
                        mov              qword ptr [rsp + 424], rax
                                                                                        jmp   n13_call_proc_staged_α
.Lx56_0:
                        mov              rdi, qword ptr [rsp + 448]
                        mov              rsi, qword ptr [rsp + 456]
                        mov              rdx, qword ptr [rsp + 432]
                        mov              rcx, qword ptr [rsp + 440]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n15_lit_integer_α
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                                                                                        jmp   n13_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n13_call_proc_staged_α:
                        lea              rsi, [rsp + 416]
                        call             proc_pct_dcα
                                                                                        jmp   .Lx58_2
.Lx58_2:
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        cmp              eax, 104
                                                                                        je    n15_lit_integer_α
                                                                                        jmp   n14_assign_α
n13_call_proc_staged_β:
                                                                                        jmp   n15_lit_integer_α
.Lx58_0:
                        .quad            .Lx58_0_s
.Lx58_0_s:
                        .string          "pct"
#-----------------------------------------------------------------------------------------------------------------------
n14_assign_α:
                        mov              rax, qword ptr [rsp + 368]
                        mov              rdx, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx
                                                                                        jmp   n15_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_integer_α:
                        mov              qword ptr [rsp + 208], 3                       # result
                        mov              rax, qword ptr [rip + .Lx60_0]
                        mov              qword ptr [rsp + 216], rax
                                                                                        jmp   n16_var_α
.Lx60_0:
                        .quad            50
#-----------------------------------------------------------------------------------------------------------------------
n16_var_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 280], rax
                                                                                        jmp   n17_var_α
#-----------------------------------------------------------------------------------------------------------------------
n17_var_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 344], rax
                                                                                        jmp   n18_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n18_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 312], rax
                        .section         .rodata
.Lrkfn66:               .string          "sin"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn66]                          # fn
                        lea              rsi, [rsp + 304]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              eax, 104
                                                                                        je    n30_var_α
                                                                                        jmp   n19_coerce_numeric_α
n18_call_builtin_icon_β:
                                                                                        jmp   n30_var_α
#-----------------------------------------------------------------------------------------------------------------------
n19_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 5
                                                                                        je    .Lx68_1
                        cmp              eax, 3
                                                                                        jne   .Lx68_0
                        mov              eax, dword ptr [rsp + 288]
                        cmp              eax, 3
                                                                                        jne   .Lx68_0
.Lx68_1:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 264], rax
                                                                                        jmp   n20_coerce_numeric_α
.Lx68_0:
                        lea              rdi, [rsp + 16]                                # self
                        lea              rsi, [rsp + 288]                               # other
                        lea              rdx, [rsp + 256]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n20_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n20_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 288]
                        cmp              eax, 5
                                                                                        je    .Lx70_1
                        cmp              eax, 3
                                                                                        jne   .Lx70_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3
                                                                                        jne   .Lx70_0
.Lx70_1:
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 248], rax
                                                                                        jmp   n21_binop_α
.Lx70_0:
                        lea              rdi, [rsp + 288]                               # self
                        lea              rsi, [rsp + 16]                                # other
                        lea              rdx, [rsp + 240]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n21_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n21_binop_α:
                        mov              eax, dword ptr [rsp + 256]
                        cmp              eax, 3
                                                                                        jne   .Lx71_0
                        mov              eax, dword ptr [rsp + 240]
                        cmp              eax, 3
                                                                                        jne   .Lx71_0
                        mov              rax, qword ptr [rsp + 264]
                        mov              rcx, qword ptr [rsp + 248]
                        imul             rax, rcx
                        mov              qword ptr [rsp + 224], 3
                        mov              qword ptr [rsp + 232], rax
                                                                                        jmp   n22_coerce_numeric_α
.Lx71_0:
                        mov              rdi, qword ptr [rsp + 256]
                        mov              rsi, qword ptr [rsp + 264]
                        mov              rdx, qword ptr [rsp + 240]
                        mov              rcx, qword ptr [rsp + 248]
                        call             rt_mul@PLT
                        cmp              eax, 104
                                                                                        je    n30_var_α
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                                                                                        jmp   n22_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n22_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 224]
                        cmp              eax, 5
                                                                                        je    .Lx73_1
                        cmp              eax, 3
                                                                                        jne   .Lx73_0
                        mov              eax, dword ptr [rsp + 208]
                        cmp              eax, 3
                                                                                        jne   .Lx73_0
.Lx73_1:
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 200], rax
                                                                                        jmp   n23_binop_α
.Lx73_0:
                        lea              rdi, [rsp + 224]                               # self
                        lea              rsi, [rsp + 208]                               # other
                        lea              rdx, [rsp + 192]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n23_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n23_binop_α:
                        mov              eax, dword ptr [rsp + 192]
                        cmp              eax, 3
                                                                                        jne   .Lx74_0
                        mov              rax, 50
                        mov              rcx, qword ptr [rsp + 200]
                        add              rax, rcx
                        mov              qword ptr [rsp + 176], 3
                        mov              qword ptr [rsp + 184], rax
                                                                                        jmp   n24_var_α
.Lx74_0:
                        mov              rdi, qword ptr [rsp + 208]
                        mov              rsi, qword ptr [rsp + 216]
                        mov              rdx, qword ptr [rsp + 192]
                        mov              rcx, qword ptr [rsp + 200]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n30_var_α
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                                                                                        jmp   n24_var_α
#-----------------------------------------------------------------------------------------------------------------------
n24_var_α:
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 360], rax
                                                                                        jmp   n25_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n25_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 176]
                        cmp              eax, 5
                                                                                        je    .Lx78_1
                        cmp              eax, 3
                                                                                        jne   .Lx78_0
                        mov              eax, dword ptr [rsp + 64]
                        cmp              eax, 3
                                                                                        jne   .Lx78_0
.Lx78_1:
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 168], rax
                                                                                        jmp   n26_coerce_numeric_α
.Lx78_0:
                        lea              rdi, [rsp + 176]                               # self
                        lea              rsi, [rsp + 64]                                # other
                        lea              rdx, [rsp + 160]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n26_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n26_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 64]
                        cmp              eax, 5
                                                                                        je    .Lx80_1
                        cmp              eax, 3
                                                                                        jne   .Lx80_0
                        mov              eax, dword ptr [rsp + 176]
                        cmp              eax, 3
                                                                                        jne   .Lx80_0
.Lx80_1:
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 152], rax
                                                                                        jmp   n27_binop_α
.Lx80_0:
                        lea              rdi, [rsp + 64]                                # self
                        lea              rsi, [rsp + 176]                               # other
                        lea              rdx, [rsp + 144]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n27_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n27_binop_α:
                        mov              eax, dword ptr [rsp + 160]
                        cmp              eax, 3
                                                                                        jne   .Lx81_0
                        mov              eax, dword ptr [rsp + 144]
                        cmp              eax, 3
                                                                                        jne   .Lx81_0
                        mov              rax, qword ptr [rsp + 168]
                        mov              rcx, qword ptr [rsp + 152]
                        add              rax, rcx
                        mov              qword ptr [rsp + 128], 3
                        mov              qword ptr [rsp + 136], rax
                                                                                        jmp   n28_call_proc_staged_α
.Lx81_0:
                        mov              rdi, qword ptr [rsp + 160]
                        mov              rsi, qword ptr [rsp + 168]
                        mov              rdx, qword ptr [rsp + 144]
                        mov              rcx, qword ptr [rsp + 152]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n30_var_α
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                                                                                        jmp   n28_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n28_call_proc_staged_α:
                        lea              rsi, [rsp + 128]
                        call             proc_pct_dcα
                                                                                        jmp   .Lx83_2
.Lx83_2:
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              eax, 104
                                                                                        je    n30_var_α
                                                                                        jmp   n29_assign_α
n28_call_proc_staged_β:
                                                                                        jmp   n30_var_α
.Lx83_0:
                        .quad            .Lx83_0_s
.Lx83_0_s:
                        .string          "pct"
#-----------------------------------------------------------------------------------------------------------------------
n29_assign_α:
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx
                                                                                        jmp   n30_var_α
#-----------------------------------------------------------------------------------------------------------------------
n30_var_α:
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n31_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_string_α:
                        mov              qword ptr [rsp + 16], 2                        # result
                        mov              dword ptr [rsp + 20], 1
                        mov              rax, qword ptr [rip + .Lx87_0]
                        mov              qword ptr [rsp + 24], rax
                                                                                        jmp   n32_var_α
.Lx87_0:
                        .quad            .Lx87_0_s
.Lx87_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n32_var_α:
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 40], rax
                                                                                        jmp   n33_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_string_α:
                        mov              qword ptr [rsp + 48], 2                        # result
                        mov              dword ptr [rsp + 52], 1
                        mov              rax, qword ptr [rip + .Lx90_0]
                        mov              qword ptr [rsp + 56], rax
                                                                                        jmp   n34_call_builtin_icon_α
.Lx90_0:
                        .quad            .Lx90_0_s
.Lx90_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n34_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 104], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 120], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 136], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 152], rax
                        .section         .rodata
.Lrkfn92:               .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn92]                          # fn
                        lea              rsi, [rsp + 96]                                # args
                        mov              edx, 4                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx91_240
                        add              rsp, 656
                                                                                        jmp   proc_cart_ω
.Lx91_240:
                        add              rsp, 656
                                                                                        jmp   proc_cart_ω
n34_call_builtin_icon_β:
                        add              rsp, 656
                                                                                        jmp   proc_cart_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_cart_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_cart_β:
                                                                                        jmp   proc_cart_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_cart_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_cart_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_cart_dcα:
                        pop              r11
                        sub              rsp, 928
                        mov              qword ptr [rsp + 904], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 880], r11
                        lea              rax, [rip + .Lx93_2]
                        mov              qword ptr [rsp + 888], rax
                        lea              rax, [rip + .Lx93_3]
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 16], rsi
                        mov              qword ptr [rsp + 24], rdx
                        mov              qword ptr [rsp + 32], rcx
                        mov              qword ptr [rsp + 40], r8
                        mov              rdi, rbp                                       # fb
                        mov              esi, 832                                       # suffix_off
                        mov              edx, 880                                       # region_bytes
                        mov              ecx, 4                                         # np
                        mov              r8d, 4                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_cart_α_body
.Lx93_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -912
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx93_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -912
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pct_α
proc_pct_α:
proc_pct_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n94_var_α:
                        sub              rsp, 128
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
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 88], rax
                                                                                        jmp   n95_var_α
#-----------------------------------------------------------------------------------------------------------------------
n95_var_α:
                        mov              rax, qword ptr [1879052288]                    # range
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 96], rax                      # result
                        mov              qword ptr [rsp + 104], rdx
                                                                                        jmp   n96_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n96_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 5
                                                                                        je    .Lx109_1
                        cmp              eax, 3
                                                                                        jne   .Lx109_0
                        mov              eax, dword ptr [rsp + 96]
                        cmp              eax, 3
                                                                                        jne   .Lx109_0
.Lx109_1:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 72], rax
                                                                                        jmp   n97_coerce_numeric_α
.Lx109_0:
                        lea              rdi, [rsp + 16]                                # self
                        lea              rsi, [rsp + 96]                                # other
                        lea              rdx, [rsp + 64]                                # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n97_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n97_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 96]
                        cmp              eax, 5
                                                                                        je    .Lx111_1
                        cmp              eax, 3
                                                                                        jne   .Lx111_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3
                                                                                        jne   .Lx111_0
.Lx111_1:
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 56], rax
                                                                                        jmp   n98_binop_α
.Lx111_0:
                        lea              rdi, [rsp + 96]                                # self
                        lea              rsi, [rsp + 16]                                # other
                        lea              rdx, [rsp + 48]                                # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n98_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n98_binop_α:
                        mov              eax, dword ptr [rsp + 64]
                        cmp              eax, 3
                                                                                        jne   .Lx112_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 3
                                                                                        jne   .Lx112_0
                        mov              rax, qword ptr [rsp + 72]
                        mov              rcx, qword ptr [rsp + 56]
                        imul             rax, rcx
                        mov              qword ptr [rsp + 32], 3
                        mov              qword ptr [rsp + 40], rax
                                                                                        jmp   n99_lit_integer_α
.Lx112_0:
                        mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 48]
                        mov              rcx, qword ptr [rsp + 56]
                        call             rt_mul@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx112_240
                        add              rsp, 128
                                                                                        jmp   proc_pct_ω
.Lx112_240:
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                                                                                        jmp   n99_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n99_lit_integer_α:
                        mov              qword ptr [rsp + 112], 3                       # result
                        mov              rax, qword ptr [rip + .Lx113_0]
                        mov              qword ptr [rsp + 120], rax
                                                                                        jmp   n100_coerce_numeric_α
.Lx113_0:
                        .quad            100
#-----------------------------------------------------------------------------------------------------------------------
n100_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 5
                                                                                        je    .Lx115_1
                        cmp              eax, 3
                                                                                        jne   .Lx115_0
                        mov              eax, dword ptr [rsp + 112]
                        cmp              eax, 3
                                                                                        jne   .Lx115_0
.Lx115_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 24], rax
                                                                                        jmp   n101_binop_α
.Lx115_0:
                        lea              rdi, [rsp + 32]                                # self
                        lea              rsi, [rsp + 112]                               # other
                        lea              rdx, [rsp + 16]                                # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n101_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n101_binop_α:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 112]
                        mov              rcx, qword ptr [rsp + 120]
                        call             rt_div@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx116_240
                        add              rsp, 128
                                                                                        jmp   proc_pct_ω
.Lx116_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n102_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n102_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 104], rax
                        .section         .rodata
.Lrkfn118:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn118]                         # fn
                        lea              rsi, [rsp + 96]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx117_240
                        add              rsp, 128
                                                                                        jmp   proc_pct_ω
.Lx117_240:
                                                                                        jmp   n103_call_builtin_icon_α
n102_call_builtin_icon_β:
                        add              rsp, 128
                                                                                        jmp   proc_pct_ω
#-----------------------------------------------------------------------------------------------------------------------
n103_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 56], rax
                        .section         .rodata
.Lrkfn120:              .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn120]                         # fn
                        lea              rsi, [rsp + 48]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx119_240
                        add              rsp, 128
                                                                                        jmp   proc_pct_ω
.Lx119_240:
                                                                                        jmp   n104_return_α
n103_call_builtin_icon_β:
                        add              rsp, 128
                                                                                        jmp   proc_pct_ω
#-----------------------------------------------------------------------------------------------------------------------
n104_return_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 128
                                                                                        jmp   proc_pct_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_pct_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_pct_β:
                                                                                        jmp   proc_pct_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_pct_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_pct_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_pct_dcα:
                        pop              r11
                        sub              rsp, 320
                        mov              qword ptr [rsp + 296], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 272], r11
                        lea              rax, [rip + .Lx122_2]
                        mov              qword ptr [rsp + 280], rax
                        lea              rax, [rip + .Lx122_3]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 16], rsi
                        mov              rdi, rbp                                       # fb
                        mov              esi, 256                                       # suffix_off
                        mov              edx, 272                                       # region_bytes
                        mov              ecx, 1                                         # np
                        mov              r8d, 1                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_pct_α_body
.Lx122_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -304
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx122_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -304
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_newcolor_α
proc_newcolor_α:
proc_newcolor_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n123_var_α:
                        sub              rsp, 736
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
                        mov              qword ptr [rsp + 496], 0
                        mov              qword ptr [rsp + 504], 0
                        mov              qword ptr [rsp + 512], 0
                        mov              qword ptr [rsp + 520], 0
                        mov              qword ptr [rsp + 528], 0
                        mov              qword ptr [rsp + 536], 0
                        mov              qword ptr [rsp + 544], 0
                        mov              qword ptr [rsp + 552], 0
                        mov              qword ptr [rsp + 560], 0
                        mov              qword ptr [rsp + 568], 0
                        mov              qword ptr [rsp + 576], 0
                        mov              qword ptr [rsp + 584], 0
                        mov              qword ptr [rsp + 592], 0
                        mov              qword ptr [rsp + 600], 0
                        mov              qword ptr [rsp + 608], 0
                        mov              qword ptr [rsp + 616], 0
                        mov              qword ptr [rsp + 624], 0
                        mov              qword ptr [rsp + 632], 0
                        mov              qword ptr [rsp + 640], 0
                        mov              qword ptr [rsp + 648], 0
                        mov              qword ptr [rsp + 656], 0
                        mov              qword ptr [rsp + 664], 0
                        mov              qword ptr [rsp + 672], 0
                        mov              qword ptr [rsp + 680], 0
                        mov              qword ptr [rsp + 688], 0
                        mov              qword ptr [rsp + 696], 0
                        mov              qword ptr [rsp + 704], 0
                        mov              qword ptr [rsp + 712], 0
                        mov              qword ptr [rsp + 720], 0
                        mov              qword ptr [rsp + 728], 0
                        mov              rax, qword ptr [1879052304]                    # red
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 704], rax                     # result
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n124_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n124_lit_integer_α:
                        mov              qword ptr [rbp + 720], 3                       # result
                        mov              rax, qword ptr [rip + .Lx173_0]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n125_coerce_numeric_α
.Lx173_0:
                        .quad            103
#-----------------------------------------------------------------------------------------------------------------------
n125_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 704]
                        cmp              eax, 5
                                                                                        je    .Lx175_1
                        cmp              eax, 3
                                                                                        jne   .Lx175_0
                        mov              eax, dword ptr [rbp + 720]
                        cmp              eax, 3
                                                                                        jne   .Lx175_0
.Lx175_1:
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n126_binop_α
.Lx175_0:
                        lea              rdi, [rbp + 704]                               # self
                        lea              rsi, [rbp + 720]                               # other
                        lea              rdx, [rbp + 688]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n126_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n126_binop_α:
                        mov              eax, dword ptr [rbp + 688]
                        cmp              eax, 3
                                                                                        jne   .Lx176_0
                        mov              rax, qword ptr [rbp + 696]
                        mov              rcx, 103
                        add              rax, rcx
                        mov              qword ptr [rbp + 672], 3
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n127_lit_integer_α
.Lx176_0:
                        mov              rdi, qword ptr [rbp + 688]
                        mov              rsi, qword ptr [rbp + 696]
                        mov              rdx, qword ptr [rbp + 720]
                        mov              rcx, qword ptr [rbp + 728]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n131_var_α
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n127_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_integer_α:
                        mov              qword ptr [rbp + 736], 3                       # result
                        mov              rax, qword ptr [rip + .Lx177_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n128_coerce_numeric_α
.Lx177_0:
                        .quad            256
#-----------------------------------------------------------------------------------------------------------------------
n128_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 5
                                                                                        je    .Lx179_1
                        cmp              eax, 3
                                                                                        jne   .Lx179_0
                        mov              eax, dword ptr [rbp + 736]
                        cmp              eax, 3
                                                                                        jne   .Lx179_0
.Lx179_1:
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n129_binop_α
.Lx179_0:
                        lea              rdi, [rbp + 672]                               # self
                        lea              rsi, [rbp + 736]                               # other
                        lea              rdx, [rbp + 656]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n129_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n129_binop_α:
                        mov              rdi, qword ptr [rbp + 656]
                        mov              rsi, qword ptr [rbp + 664]
                        mov              rdx, qword ptr [rbp + 736]
                        mov              rcx, qword ptr [rbp + 744]
                        call             rt_mod@PLT
                        cmp              eax, 104
                                                                                        je    n131_var_α
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n130_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n130_assign_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              rdx, qword ptr [rbp + 648]
                        mov              qword ptr [1879052304], rax                    # red
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n131_var_α
#-----------------------------------------------------------------------------------------------------------------------
n131_var_α:
                        mov              rax, qword ptr [1879052320]                    # green
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rbp + 592], rax                     # result
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n132_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n132_lit_integer_α:
                        mov              qword ptr [rbp + 608], 3                       # result
                        mov              rax, qword ptr [rip + .Lx183_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n133_coerce_numeric_α
.Lx183_0:
                        .quad            211
#-----------------------------------------------------------------------------------------------------------------------
n133_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 592]
                        cmp              eax, 5
                                                                                        je    .Lx185_1
                        cmp              eax, 3
                                                                                        jne   .Lx185_0
                        mov              eax, dword ptr [rbp + 608]
                        cmp              eax, 3
                                                                                        jne   .Lx185_0
.Lx185_1:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n134_binop_α
.Lx185_0:
                        lea              rdi, [rbp + 592]                               # self
                        lea              rsi, [rbp + 608]                               # other
                        lea              rdx, [rbp + 576]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n134_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n134_binop_α:
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 3
                                                                                        jne   .Lx186_0
                        mov              rax, qword ptr [rbp + 584]
                        mov              rcx, 211
                        add              rax, rcx
                        mov              qword ptr [rbp + 560], 3
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n135_lit_integer_α
.Lx186_0:
                        mov              rdi, qword ptr [rbp + 576]
                        mov              rsi, qword ptr [rbp + 584]
                        mov              rdx, qword ptr [rbp + 608]
                        mov              rcx, qword ptr [rbp + 616]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n139_var_α
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n135_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n135_lit_integer_α:
                        mov              qword ptr [rbp + 624], 3                       # result
                        mov              rax, qword ptr [rip + .Lx187_0]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n136_coerce_numeric_α
.Lx187_0:
                        .quad            256
#-----------------------------------------------------------------------------------------------------------------------
n136_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 560]
                        cmp              eax, 5
                                                                                        je    .Lx189_1
                        cmp              eax, 3
                                                                                        jne   .Lx189_0
                        mov              eax, dword ptr [rbp + 624]
                        cmp              eax, 3
                                                                                        jne   .Lx189_0
.Lx189_1:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n137_binop_α
.Lx189_0:
                        lea              rdi, [rbp + 560]                               # self
                        lea              rsi, [rbp + 624]                               # other
                        lea              rdx, [rbp + 544]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n137_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n137_binop_α:
                        mov              rdi, qword ptr [rbp + 544]
                        mov              rsi, qword ptr [rbp + 552]
                        mov              rdx, qword ptr [rbp + 624]
                        mov              rcx, qword ptr [rbp + 632]
                        call             rt_mod@PLT
                        cmp              eax, 104
                                                                                        je    n139_var_α
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n138_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n138_assign_α:
                        mov              rax, qword ptr [rbp + 528]
                        mov              rdx, qword ptr [rbp + 536]
                        mov              qword ptr [1879052320], rax                    # green
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n139_var_α
#-----------------------------------------------------------------------------------------------------------------------
n139_var_α:
                        mov              rax, qword ptr [1879052336]                    # blue
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 480], rax                     # result
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n140_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n140_lit_integer_α:
                        mov              qword ptr [rbp + 496], 3                       # result
                        mov              rax, qword ptr [rip + .Lx193_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n141_coerce_numeric_α
.Lx193_0:
                        .quad            71
#-----------------------------------------------------------------------------------------------------------------------
n141_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 5
                                                                                        je    .Lx195_1
                        cmp              eax, 3
                                                                                        jne   .Lx195_0
                        mov              eax, dword ptr [rbp + 496]
                        cmp              eax, 3
                                                                                        jne   .Lx195_0
.Lx195_1:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n142_binop_α
.Lx195_0:
                        lea              rdi, [rbp + 480]                               # self
                        lea              rsi, [rbp + 496]                               # other
                        lea              rdx, [rbp + 464]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n142_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n142_binop_α:
                        mov              eax, dword ptr [rbp + 464]
                        cmp              eax, 3
                                                                                        jne   .Lx196_0
                        mov              rax, qword ptr [rbp + 472]
                        mov              rcx, 71
                        add              rax, rcx
                        mov              qword ptr [rbp + 448], 3
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n143_lit_integer_α
.Lx196_0:
                        mov              rdi, qword ptr [rbp + 464]
                        mov              rsi, qword ptr [rbp + 472]
                        mov              rdx, qword ptr [rbp + 496]
                        mov              rcx, qword ptr [rbp + 504]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n147_lit_real_α
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n143_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n143_lit_integer_α:
                        mov              qword ptr [rbp + 512], 3                       # result
                        mov              rax, qword ptr [rip + .Lx197_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n144_coerce_numeric_α
.Lx197_0:
                        .quad            256
#-----------------------------------------------------------------------------------------------------------------------
n144_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 448]
                        cmp              eax, 5
                                                                                        je    .Lx199_1
                        cmp              eax, 3
                                                                                        jne   .Lx199_0
                        mov              eax, dword ptr [rbp + 512]
                        cmp              eax, 3
                                                                                        jne   .Lx199_0
.Lx199_1:
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n145_binop_α
.Lx199_0:
                        lea              rdi, [rbp + 448]                               # self
                        lea              rsi, [rbp + 512]                               # other
                        lea              rdx, [rbp + 432]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n145_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n145_binop_α:
                        mov              rdi, qword ptr [rbp + 432]
                        mov              rsi, qword ptr [rbp + 440]
                        mov              rdx, qword ptr [rbp + 512]
                        mov              rcx, qword ptr [rbp + 520]
                        call             rt_mod@PLT
                        cmp              eax, 104
                                                                                        je    n147_lit_real_α
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n146_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n146_assign_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        mov              qword ptr [1879052336], rax                    # blue
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n147_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n147_lit_real_α:
                        mov              qword ptr [rbp + 256], 5                       # result
                        mov              rax, qword ptr [rip + .Lx202_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n148_var_α
.Lx202_0:
                        .quad            4599075939470750515
#-----------------------------------------------------------------------------------------------------------------------
n148_var_α:
                        mov              rax, qword ptr [1879052304]                    # red
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 272], rax                     # result
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n149_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n149_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 272]
                        cmp              eax, 5
                                                                                        je    .Lx205_1
                        cmp              eax, 3
                                                                                        jne   .Lx205_0
                        mov              eax, dword ptr [rbp + 256]
                        cmp              eax, 3
                                                                                        jne   .Lx205_0
.Lx205_1:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n150_binop_α
.Lx205_0:
                        lea              rdi, [rbp + 272]                               # self
                        lea              rsi, [rbp + 256]                               # other
                        lea              rdx, [rbp + 240]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n150_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n150_binop_α:
                        mov              rdi, qword ptr [rbp + 256]
                        mov              rsi, qword ptr [rbp + 264]
                        mov              rdx, qword ptr [rbp + 240]
                        mov              rcx, qword ptr [rbp + 248]
                        call             rt_mul@PLT
                        cmp              eax, 104
                                                                                        je    n166_disjunction_α
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n151_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n151_lit_real_α:
                        mov              qword ptr [rbp + 320], 5                       # result
                        mov              rax, qword ptr [rip + .Lx207_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n152_var_α
.Lx207_0:
                        .quad            4603489467105573601
#-----------------------------------------------------------------------------------------------------------------------
n152_var_α:
                        mov              rax, qword ptr [1879052320]                    # green
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rbp + 336], rax                     # result
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n153_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n153_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 336]
                        cmp              eax, 5
                                                                                        je    .Lx210_1
                        cmp              eax, 3
                                                                                        jne   .Lx210_0
                        mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 3
                                                                                        jne   .Lx210_0
.Lx210_1:
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n154_binop_α
.Lx210_0:
                        lea              rdi, [rbp + 336]                               # self
                        lea              rsi, [rbp + 320]                               # other
                        lea              rdx, [rbp + 304]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n154_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n154_binop_α:
                        mov              rdi, qword ptr [rbp + 320]
                        mov              rsi, qword ptr [rbp + 328]
                        mov              rdx, qword ptr [rbp + 304]
                        mov              rcx, qword ptr [rbp + 312]
                        call             rt_mul@PLT
                        cmp              eax, 104
                                                                                        je    n166_disjunction_α
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n155_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n155_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 224]
                        cmp              eax, 5
                                                                                        je    .Lx213_1
                        cmp              eax, 3
                                                                                        jne   .Lx213_0
                        mov              eax, dword ptr [rbp + 288]
                        cmp              eax, 3
                                                                                        jne   .Lx213_0
.Lx213_1:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n156_coerce_numeric_α
.Lx213_0:
                        lea              rdi, [rbp + 224]                               # self
                        lea              rsi, [rbp + 288]                               # other
                        lea              rdx, [rbp + 208]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n156_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n156_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 288]
                        cmp              eax, 5
                                                                                        je    .Lx215_1
                        cmp              eax, 3
                                                                                        jne   .Lx215_0
                        mov              eax, dword ptr [rbp + 224]
                        cmp              eax, 3
                                                                                        jne   .Lx215_0
.Lx215_1:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n157_binop_α
.Lx215_0:
                        lea              rdi, [rbp + 288]                               # self
                        lea              rsi, [rbp + 224]                               # other
                        lea              rdx, [rbp + 192]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n157_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n157_binop_α:
                        mov              eax, dword ptr [rbp + 208]
                        cmp              eax, 3
                                                                                        jne   .Lx216_0
                        mov              eax, dword ptr [rbp + 192]
                        cmp              eax, 3
                                                                                        jne   .Lx216_0
                        mov              rax, qword ptr [rbp + 216]
                        mov              rcx, qword ptr [rbp + 200]
                        add              rax, rcx
                        mov              qword ptr [rbp + 176], 3
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n158_lit_real_α
.Lx216_0:
                        mov              rdi, qword ptr [rbp + 208]
                        mov              rsi, qword ptr [rbp + 216]
                        mov              rdx, qword ptr [rbp + 192]
                        mov              rcx, qword ptr [rbp + 200]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n166_disjunction_α
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n158_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n158_lit_real_α:
                        mov              qword ptr [rbp + 384], 5                       # result
                        mov              rax, qword ptr [rip + .Lx217_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n159_var_α
.Lx217_0:
                        .quad            4592590756007337001
#-----------------------------------------------------------------------------------------------------------------------
n159_var_α:
                        mov              rax, qword ptr [1879052336]                    # blue
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 400], rax                     # result
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n160_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n160_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 400]
                        cmp              eax, 5
                                                                                        je    .Lx220_1
                        cmp              eax, 3
                                                                                        jne   .Lx220_0
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 3
                                                                                        jne   .Lx220_0
.Lx220_1:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n161_binop_α
.Lx220_0:
                        lea              rdi, [rbp + 400]                               # self
                        lea              rsi, [rbp + 384]                               # other
                        lea              rdx, [rbp + 368]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n161_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n161_binop_α:
                        mov              rdi, qword ptr [rbp + 384]
                        mov              rsi, qword ptr [rbp + 392]
                        mov              rdx, qword ptr [rbp + 368]
                        mov              rcx, qword ptr [rbp + 376]
                        call             rt_mul@PLT
                        cmp              eax, 104
                                                                                        je    n166_disjunction_α
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n162_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n162_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 176]
                        cmp              eax, 5
                                                                                        je    .Lx223_1
                        cmp              eax, 3
                                                                                        jne   .Lx223_0
                        mov              eax, dword ptr [rbp + 352]
                        cmp              eax, 3
                                                                                        jne   .Lx223_0
.Lx223_1:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n163_coerce_numeric_α
.Lx223_0:
                        lea              rdi, [rbp + 176]                               # self
                        lea              rsi, [rbp + 352]                               # other
                        lea              rdx, [rbp + 160]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n163_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n163_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 352]
                        cmp              eax, 5
                                                                                        je    .Lx225_1
                        cmp              eax, 3
                                                                                        jne   .Lx225_0
                        mov              eax, dword ptr [rbp + 176]
                        cmp              eax, 3
                                                                                        jne   .Lx225_0
.Lx225_1:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n164_binop_α
.Lx225_0:
                        lea              rdi, [rbp + 352]                               # self
                        lea              rsi, [rbp + 176]                               # other
                        lea              rdx, [rbp + 144]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n164_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n164_binop_α:
                        mov              eax, dword ptr [rbp + 160]
                        cmp              eax, 3
                                                                                        jne   .Lx226_0
                        mov              eax, dword ptr [rbp + 144]
                        cmp              eax, 3
                                                                                        jne   .Lx226_0
                        mov              rax, qword ptr [rbp + 168]
                        mov              rcx, qword ptr [rbp + 152]
                        add              rax, rcx
                        mov              qword ptr [rbp + 128], 3
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n165_assign_α
.Lx226_0:
                        mov              rdi, qword ptr [rbp + 160]
                        mov              rsi, qword ptr [rbp + 168]
                        mov              rdx, qword ptr [rbp + 144]
                        mov              rcx, qword ptr [rbp + 152]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n166_disjunction_α
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                                                                                        jmp   n165_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n165_assign_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n166_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n166_disjunction_α:
                        mov              qword ptr [rbp + 32], 0
                        mov              qword ptr [rbp + 40], 0
                        mov              dword ptr [rbp + 48], 0
                                                                                        jmp   n168_var_α
n166_disjunction_as:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 0
                                                                                        jne   .Lx229_0
                                                                                        jmp   n167_conjunction_α
.Lx229_0:
                                                                                        jmp   n167_conjunction_α
n166_disjunction_β:
                        mov              eax, dword ptr [rbp + 48]
                                                                                        jmp   n123_var_α
n166_disjunction_af:
                        add              dword ptr [rbp + 48], 1
                        mov              eax, dword ptr [rbp + 48]
                                                                                        jmp   n123_var_α
#-----------------------------------------------------------------------------------------------------------------------
n167_conjunction_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n123_var_α
n167_conjunction_β:
                                                                                        jmp   n123_var_α
#-----------------------------------------------------------------------------------------------------------------------
n168_var_α:
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n169_lit_integer_α
n168_var_β:
                                                                                        jmp   n166_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n169_lit_integer_α:
                        mov              qword ptr [rbp + 96], 3                        # result
                        mov              rax, qword ptr [rip + .Lx233_0]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n170_binop_test_α
.Lx233_0:
                        .quad            96
#-----------------------------------------------------------------------------------------------------------------------
n170_binop_test_α:
                        mov              eax, dword ptr [rbp + 752]
                        cmp              eax, 112
                                                                                        je    .Lx234_0
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 112
                                                                                        je    .Lx234_0
                        mov              eax, dword ptr [rbp + 752]
                        cmp              eax, 3
                                                                                        jne   .Lx234_2
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 3
                                                                                        jne   .Lx234_2
.Lx234_1:
                        mov              rax, qword ptr [rbp + 760]
                        mov              rcx, qword ptr [rbp + 104]
                        cmp              rax, rcx
                                                                                        jle   n166_disjunction_af
                        mov              rcx, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 64], rcx
                        mov              rcx, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 72], rcx
                                                                                        jmp   n171_return_α
.Lx234_0:
                        mov              rdi, qword ptr [rbp + 752]                     # a
                        mov              rsi, qword ptr [rbp + 760]                     # a
                        mov              rdx, qword ptr [rbp + 96]                      # b
                        mov              rcx, qword ptr [rbp + 104]                     # b
                        mov              r8d, 7                                         # op
                        lea              r9, [rbp + 64]                                 # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx234_1
                        cmp              eax, 1
                                                                                        je    n166_disjunction_af
                                                                                        jmp   n171_return_α
.Lx234_2:
                        mov              rdi, qword ptr [rbp + 752]                     # lhs
                        mov              rsi, qword ptr [rbp + 760]                     # lhs
                        mov              rdx, qword ptr [rbp + 96]                      # rhs
                        mov              rcx, qword ptr [rbp + 104]                     # rhs
                        mov              r8d, 7                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n166_disjunction_af
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n171_return_α
#-----------------------------------------------------------------------------------------------------------------------
n171_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_newcolor_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_newcolor_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_newcolor_β:
                                                                                        jmp   proc_newcolor_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_newcolor_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_newcolor_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_newcolor_dcα:
                        pop              r11
                        sub              rsp, 832
                        mov              qword ptr [rsp + 808], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 784], r11
                        lea              rax, [rip + .Lx236_2]
                        mov              qword ptr [rbp + 792], rax
                        lea              rax, [rip + .Lx236_3]
                        mov              qword ptr [rbp + 800], rax
                        mov              rdi, rbp                                       # fb
                        mov              esi, 752                                       # suffix_off
                        mov              edx, 784                                       # region_bytes
                        mov              ecx, 0                                         # np
                        mov              r8d, 0                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_newcolor_α_body
.Lx236_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -816
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx236_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -816
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "cart"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_cart_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 4
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 864
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_cart_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "pct"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_pct_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 256
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_pct_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "newcolor"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_newcolor_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 768
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_newcolor_dcα]
                        call             rt_proc_set_dcfn@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "range"
.Lgvan1:                .string          "red"
.Lgvan2:                .string          "green"
.Lgvan3:                .string          "blue"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .quad            .Lgvan3
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 4
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 4
                        call             gva_register@PLT
                        mov              rdi, qword ptr [rsp]
                        add              rdi, 8
                        mov              esi, dword ptr [rsp + 8]
                        sub              esi, 1
                        call             rt_main_args_stage@PLT
                        xor              esi, esi
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n237_lit_integer_α:
                        sub              rsp, 7104
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
                        mov              qword ptr [rsp + 496], 0
                        mov              qword ptr [rsp + 504], 0
                        mov              qword ptr [rsp + 512], 0
                        mov              qword ptr [rsp + 520], 0
                        mov              qword ptr [rsp + 528], 0
                        mov              qword ptr [rsp + 536], 0
                        mov              qword ptr [rsp + 544], 0
                        mov              qword ptr [rsp + 552], 0
                        mov              qword ptr [rsp + 560], 0
                        mov              qword ptr [rsp + 568], 0
                        mov              qword ptr [rsp + 576], 0
                        mov              qword ptr [rsp + 584], 0
                        mov              qword ptr [rsp + 592], 0
                        mov              qword ptr [rsp + 600], 0
                        mov              qword ptr [rsp + 608], 0
                        mov              qword ptr [rsp + 616], 0
                        mov              qword ptr [rsp + 624], 0
                        mov              qword ptr [rsp + 632], 0
                        mov              qword ptr [rsp + 640], 0
                        mov              qword ptr [rsp + 648], 0
                        mov              qword ptr [rsp + 656], 0
                        mov              qword ptr [rsp + 664], 0
                        mov              qword ptr [rsp + 672], 0
                        mov              qword ptr [rsp + 680], 0
                        mov              qword ptr [rsp + 688], 0
                        mov              qword ptr [rsp + 696], 0
                        mov              qword ptr [rsp + 704], 0
                        mov              qword ptr [rsp + 712], 0
                        mov              qword ptr [rsp + 720], 0
                        mov              qword ptr [rsp + 728], 0
                        mov              qword ptr [rsp + 736], 0
                        mov              qword ptr [rsp + 744], 0
                        mov              qword ptr [rsp + 752], 0
                        mov              qword ptr [rsp + 760], 0
                        mov              qword ptr [rsp + 768], 0
                        mov              qword ptr [rsp + 776], 0
                        mov              qword ptr [rsp + 784], 0
                        mov              qword ptr [rsp + 792], 0
                        mov              qword ptr [rsp + 800], 0
                        mov              qword ptr [rsp + 808], 0
                        mov              qword ptr [rsp + 816], 0
                        mov              qword ptr [rsp + 824], 0
                        mov              qword ptr [rsp + 832], 0
                        mov              qword ptr [rsp + 840], 0
                        mov              qword ptr [rsp + 848], 0
                        mov              qword ptr [rsp + 856], 0
                        mov              qword ptr [rsp + 864], 0
                        mov              qword ptr [rsp + 872], 0
                        mov              qword ptr [rsp + 880], 0
                        mov              qword ptr [rsp + 888], 0
                        mov              qword ptr [rsp + 896], 0
                        mov              qword ptr [rsp + 904], 0
                        mov              qword ptr [rsp + 912], 0
                        mov              qword ptr [rsp + 920], 0
                        mov              qword ptr [rsp + 928], 0
                        mov              qword ptr [rsp + 936], 0
                        mov              qword ptr [rsp + 944], 0
                        mov              qword ptr [rsp + 952], 0
                        mov              qword ptr [rsp + 960], 0
                        mov              qword ptr [rsp + 968], 0
                        mov              qword ptr [rsp + 976], 0
                        mov              qword ptr [rsp + 984], 0
                        mov              qword ptr [rsp + 992], 0
                        mov              qword ptr [rsp + 1000], 0
                        mov              qword ptr [rsp + 1008], 0
                        mov              qword ptr [rsp + 1016], 0
                        mov              qword ptr [rsp + 1024], 0
                        mov              qword ptr [rsp + 1032], 0
                        mov              qword ptr [rsp + 1040], 0
                        mov              qword ptr [rsp + 1048], 0
                        mov              qword ptr [rsp + 1056], 0
                        mov              qword ptr [rsp + 1064], 0
                        mov              qword ptr [rsp + 1072], 0
                        mov              qword ptr [rsp + 1080], 0
                        mov              qword ptr [rsp + 1088], 0
                        mov              qword ptr [rsp + 1096], 0
                        mov              qword ptr [rsp + 1104], 0
                        mov              qword ptr [rsp + 1112], 0
                        mov              qword ptr [rsp + 1120], 0
                        mov              qword ptr [rsp + 1128], 0
                        mov              qword ptr [rsp + 1136], 0
                        mov              qword ptr [rsp + 1144], 0
                        mov              qword ptr [rsp + 1152], 0
                        mov              qword ptr [rsp + 1160], 0
                        mov              qword ptr [rsp + 1168], 0
                        mov              qword ptr [rsp + 1176], 0
                        mov              qword ptr [rsp + 1184], 0
                        mov              qword ptr [rsp + 1192], 0
                        mov              qword ptr [rsp + 1200], 0
                        mov              qword ptr [rsp + 1208], 0
                        mov              qword ptr [rsp + 1216], 0
                        mov              qword ptr [rsp + 1224], 0
                        mov              qword ptr [rsp + 1232], 0
                        mov              qword ptr [rsp + 1240], 0
                        mov              qword ptr [rsp + 1248], 0
                        mov              qword ptr [rsp + 1256], 0
                        mov              qword ptr [rsp + 1264], 0
                        mov              qword ptr [rsp + 1272], 0
                        mov              qword ptr [rsp + 1280], 0
                        mov              qword ptr [rsp + 1288], 0
                        mov              qword ptr [rsp + 1296], 0
                        mov              qword ptr [rsp + 1304], 0
                        mov              qword ptr [rsp + 1312], 0
                        mov              qword ptr [rsp + 1320], 0
                        mov              qword ptr [rsp + 1328], 0
                        mov              qword ptr [rsp + 1336], 0
                        mov              qword ptr [rsp + 1344], 0
                        mov              qword ptr [rsp + 1352], 0
                        mov              qword ptr [rsp + 1360], 0
                        mov              qword ptr [rsp + 1368], 0
                        mov              qword ptr [rsp + 1376], 0
                        mov              qword ptr [rsp + 1384], 0
                        mov              qword ptr [rsp + 1392], 0
                        mov              qword ptr [rsp + 1400], 0
                        mov              qword ptr [rsp + 1408], 0
                        mov              qword ptr [rsp + 1416], 0
                        mov              qword ptr [rsp + 1424], 0
                        mov              qword ptr [rsp + 1432], 0
                        mov              qword ptr [rsp + 1440], 0
                        mov              qword ptr [rsp + 1448], 0
                        mov              qword ptr [rsp + 1456], 0
                        mov              qword ptr [rsp + 1464], 0
                        mov              qword ptr [rsp + 1472], 0
                        mov              qword ptr [rsp + 1480], 0
                        mov              qword ptr [rsp + 1488], 0
                        mov              qword ptr [rsp + 1496], 0
                        mov              qword ptr [rsp + 1504], 0
                        mov              qword ptr [rsp + 1512], 0
                        mov              qword ptr [rsp + 1520], 0
                        mov              qword ptr [rsp + 1528], 0
                        mov              qword ptr [rsp + 1536], 0
                        mov              qword ptr [rsp + 1544], 0
                        mov              qword ptr [rsp + 1552], 0
                        mov              qword ptr [rsp + 1560], 0
                        mov              qword ptr [rsp + 1568], 0
                        mov              qword ptr [rsp + 1576], 0
                        mov              qword ptr [rsp + 1584], 0
                        mov              qword ptr [rsp + 1592], 0
                        mov              qword ptr [rsp + 1600], 0
                        mov              qword ptr [rsp + 1608], 0
                        mov              qword ptr [rsp + 1616], 0
                        mov              qword ptr [rsp + 1624], 0
                        mov              qword ptr [rsp + 1632], 0
                        mov              qword ptr [rsp + 1640], 0
                        mov              qword ptr [rsp + 1648], 0
                        mov              qword ptr [rsp + 1656], 0
                        mov              qword ptr [rsp + 1664], 0
                        mov              qword ptr [rsp + 1672], 0
                        mov              qword ptr [rsp + 1680], 0
                        mov              qword ptr [rsp + 1688], 0
                        mov              qword ptr [rsp + 1696], 0
                        mov              qword ptr [rsp + 1704], 0
                        mov              qword ptr [rsp + 1712], 0
                        mov              qword ptr [rsp + 1720], 0
                        mov              qword ptr [rsp + 1728], 0
                        mov              qword ptr [rsp + 1736], 0
                        mov              qword ptr [rsp + 1744], 0
                        mov              qword ptr [rsp + 1752], 0
                        mov              qword ptr [rsp + 1760], 0
                        mov              qword ptr [rsp + 1768], 0
                        mov              qword ptr [rsp + 1776], 0
                        mov              qword ptr [rsp + 1784], 0
                        mov              qword ptr [rsp + 1792], 0
                        mov              qword ptr [rsp + 1800], 0
                        mov              qword ptr [rsp + 1808], 0
                        mov              qword ptr [rsp + 1816], 0
                        mov              qword ptr [rsp + 1824], 0
                        mov              qword ptr [rsp + 1832], 0
                        mov              qword ptr [rsp + 1840], 0
                        mov              qword ptr [rsp + 1848], 0
                        mov              qword ptr [rsp + 1856], 0
                        mov              qword ptr [rsp + 1864], 0
                        mov              qword ptr [rsp + 1872], 0
                        mov              qword ptr [rsp + 1880], 0
                        mov              qword ptr [rsp + 1888], 0
                        mov              qword ptr [rsp + 1896], 0
                        mov              qword ptr [rsp + 1904], 0
                        mov              qword ptr [rsp + 1912], 0
                        mov              qword ptr [rsp + 1920], 0
                        mov              qword ptr [rsp + 1928], 0
                        mov              qword ptr [rsp + 1936], 0
                        mov              qword ptr [rsp + 1944], 0
                        mov              qword ptr [rsp + 1952], 0
                        mov              qword ptr [rsp + 1960], 0
                        mov              qword ptr [rsp + 1968], 0
                        mov              qword ptr [rsp + 1976], 0
                        mov              qword ptr [rsp + 1984], 0
                        mov              qword ptr [rsp + 1992], 0
                        mov              qword ptr [rsp + 2000], 0
                        mov              qword ptr [rsp + 2008], 0
                        mov              qword ptr [rsp + 2016], 0
                        mov              qword ptr [rsp + 2024], 0
                        mov              qword ptr [rsp + 2032], 0
                        mov              qword ptr [rsp + 2040], 0
                        mov              qword ptr [rsp + 2048], 0
                        mov              qword ptr [rsp + 2056], 0
                        mov              qword ptr [rsp + 2064], 0
                        mov              qword ptr [rsp + 2072], 0
                        mov              qword ptr [rsp + 2080], 0
                        mov              qword ptr [rsp + 2088], 0
                        mov              qword ptr [rsp + 2096], 0
                        mov              qword ptr [rsp + 2104], 0
                        mov              qword ptr [rsp + 2112], 0
                        mov              qword ptr [rsp + 2120], 0
                        mov              qword ptr [rsp + 2128], 0
                        mov              qword ptr [rsp + 2136], 0
                        mov              qword ptr [rsp + 2144], 0
                        mov              qword ptr [rsp + 2152], 0
                        mov              qword ptr [rsp + 2160], 0
                        mov              qword ptr [rsp + 2168], 0
                        mov              qword ptr [rsp + 2176], 0
                        mov              qword ptr [rsp + 2184], 0
                        mov              qword ptr [rsp + 2192], 0
                        mov              qword ptr [rsp + 2200], 0
                        mov              qword ptr [rsp + 2208], 0
                        mov              qword ptr [rsp + 2216], 0
                        mov              qword ptr [rsp + 2224], 0
                        mov              qword ptr [rsp + 2232], 0
                        mov              qword ptr [rsp + 2240], 0
                        mov              qword ptr [rsp + 2248], 0
                        mov              qword ptr [rsp + 2256], 0
                        mov              qword ptr [rsp + 2264], 0
                        mov              qword ptr [rsp + 2272], 0
                        mov              qword ptr [rsp + 2280], 0
                        mov              qword ptr [rsp + 2288], 0
                        mov              qword ptr [rsp + 2296], 0
                        mov              qword ptr [rsp + 2304], 0
                        mov              qword ptr [rsp + 2312], 0
                        mov              qword ptr [rsp + 2320], 0
                        mov              qword ptr [rsp + 2328], 0
                        mov              qword ptr [rsp + 2336], 0
                        mov              qword ptr [rsp + 2344], 0
                        mov              qword ptr [rsp + 2352], 0
                        mov              qword ptr [rsp + 2360], 0
                        mov              qword ptr [rsp + 2368], 0
                        mov              qword ptr [rsp + 2376], 0
                        mov              qword ptr [rsp + 2384], 0
                        mov              qword ptr [rsp + 2392], 0
                        mov              qword ptr [rsp + 2400], 0
                        mov              qword ptr [rsp + 2408], 0
                        mov              qword ptr [rsp + 2416], 0
                        mov              qword ptr [rsp + 2424], 0
                        mov              qword ptr [rsp + 2432], 0
                        mov              qword ptr [rsp + 2440], 0
                        mov              qword ptr [rsp + 2448], 0
                        mov              qword ptr [rsp + 2456], 0
                        mov              qword ptr [rsp + 2464], 0
                        mov              qword ptr [rsp + 2472], 0
                        mov              qword ptr [rsp + 2480], 0
                        mov              qword ptr [rsp + 2488], 0
                        mov              qword ptr [rsp + 2496], 0
                        mov              qword ptr [rsp + 2504], 0
                        mov              qword ptr [rsp + 2512], 0
                        mov              qword ptr [rsp + 2520], 0
                        mov              qword ptr [rsp + 2528], 0
                        mov              qword ptr [rsp + 2536], 0
                        mov              qword ptr [rsp + 2544], 0
                        mov              qword ptr [rsp + 2552], 0
                        mov              qword ptr [rsp + 2560], 0
                        mov              qword ptr [rsp + 2568], 0
                        mov              qword ptr [rsp + 2576], 0
                        mov              qword ptr [rsp + 2584], 0
                        mov              qword ptr [rsp + 2592], 0
                        mov              qword ptr [rsp + 2600], 0
                        mov              qword ptr [rsp + 2608], 0
                        mov              qword ptr [rsp + 2616], 0
                        mov              qword ptr [rsp + 2624], 0
                        mov              qword ptr [rsp + 2632], 0
                        mov              qword ptr [rsp + 2640], 0
                        mov              qword ptr [rsp + 2648], 0
                        mov              qword ptr [rsp + 2656], 0
                        mov              qword ptr [rsp + 2664], 0
                        mov              qword ptr [rsp + 2672], 0
                        mov              qword ptr [rsp + 2680], 0
                        mov              qword ptr [rsp + 2688], 0
                        mov              qword ptr [rsp + 2696], 0
                        mov              qword ptr [rsp + 2704], 0
                        mov              qword ptr [rsp + 2712], 0
                        mov              qword ptr [rsp + 2720], 0
                        mov              qword ptr [rsp + 2728], 0
                        mov              qword ptr [rsp + 2736], 0
                        mov              qword ptr [rsp + 2744], 0
                        mov              qword ptr [rsp + 2752], 0
                        mov              qword ptr [rsp + 2760], 0
                        mov              qword ptr [rsp + 2768], 0
                        mov              qword ptr [rsp + 2776], 0
                        mov              qword ptr [rsp + 2784], 0
                        mov              qword ptr [rsp + 2792], 0
                        mov              qword ptr [rsp + 2800], 0
                        mov              qword ptr [rsp + 2808], 0
                        mov              qword ptr [rsp + 2816], 0
                        mov              qword ptr [rsp + 2824], 0
                        mov              qword ptr [rsp + 2832], 0
                        mov              qword ptr [rsp + 2840], 0
                        mov              qword ptr [rsp + 2848], 0
                        mov              qword ptr [rsp + 2856], 0
                        mov              qword ptr [rsp + 2864], 0
                        mov              qword ptr [rsp + 2872], 0
                        mov              qword ptr [rsp + 2880], 0
                        mov              qword ptr [rsp + 2888], 0
                        mov              qword ptr [rsp + 2896], 0
                        mov              qword ptr [rsp + 2904], 0
                        mov              qword ptr [rsp + 2912], 0
                        mov              qword ptr [rsp + 2920], 0
                        mov              qword ptr [rsp + 2928], 0
                        mov              qword ptr [rsp + 2936], 0
                        mov              qword ptr [rsp + 2944], 0
                        mov              qword ptr [rsp + 2952], 0
                        mov              qword ptr [rsp + 2960], 0
                        mov              qword ptr [rsp + 2968], 0
                        mov              qword ptr [rsp + 2976], 0
                        mov              qword ptr [rsp + 2984], 0
                        mov              qword ptr [rsp + 2992], 0
                        mov              qword ptr [rsp + 3000], 0
                        mov              qword ptr [rsp + 3008], 0
                        mov              qword ptr [rsp + 3016], 0
                        mov              qword ptr [rsp + 3024], 0
                        mov              qword ptr [rsp + 3032], 0
                        mov              qword ptr [rsp + 3040], 0
                        mov              qword ptr [rsp + 3048], 0
                        mov              qword ptr [rsp + 3056], 0
                        mov              qword ptr [rsp + 3064], 0
                        mov              qword ptr [rsp + 3072], 0
                        mov              qword ptr [rsp + 3080], 0
                        mov              qword ptr [rsp + 3088], 0
                        mov              qword ptr [rsp + 3096], 0
                        mov              qword ptr [rsp + 3104], 0
                        mov              qword ptr [rsp + 3112], 0
                        mov              qword ptr [rsp + 3120], 0
                        mov              qword ptr [rsp + 3128], 0
                        mov              qword ptr [rsp + 3136], 0
                        mov              qword ptr [rsp + 3144], 0
                        mov              qword ptr [rsp + 3152], 0
                        mov              qword ptr [rsp + 3160], 0
                        mov              qword ptr [rsp + 3168], 0
                        mov              qword ptr [rsp + 3176], 0
                        mov              qword ptr [rsp + 3184], 0
                        mov              qword ptr [rsp + 3192], 0
                        mov              qword ptr [rsp + 3200], 0
                        mov              qword ptr [rsp + 3208], 0
                        mov              qword ptr [rsp + 3216], 0
                        mov              qword ptr [rsp + 3224], 0
                        mov              qword ptr [rsp + 3232], 0
                        mov              qword ptr [rsp + 3240], 0
                        mov              qword ptr [rsp + 3248], 0
                        mov              qword ptr [rsp + 3256], 0
                        mov              qword ptr [rsp + 3264], 0
                        mov              qword ptr [rsp + 3272], 0
                        mov              qword ptr [rsp + 3280], 0
                        mov              qword ptr [rsp + 3288], 0
                        mov              qword ptr [rsp + 3296], 0
                        mov              qword ptr [rsp + 3304], 0
                        mov              qword ptr [rsp + 3312], 0
                        mov              qword ptr [rsp + 3320], 0
                        mov              qword ptr [rsp + 3328], 0
                        mov              qword ptr [rsp + 3336], 0
                        mov              qword ptr [rsp + 3344], 0
                        mov              qword ptr [rsp + 3352], 0
                        mov              qword ptr [rsp + 3360], 0
                        mov              qword ptr [rsp + 3368], 0
                        mov              qword ptr [rsp + 3376], 0
                        mov              qword ptr [rsp + 3384], 0
                        mov              qword ptr [rsp + 3392], 0
                        mov              qword ptr [rsp + 3400], 0
                        mov              qword ptr [rsp + 3408], 0
                        mov              qword ptr [rsp + 3416], 0
                        mov              qword ptr [rsp + 3424], 0
                        mov              qword ptr [rsp + 3432], 0
                        mov              qword ptr [rsp + 3440], 0
                        mov              qword ptr [rsp + 3448], 0
                        mov              qword ptr [rsp + 3456], 0
                        mov              qword ptr [rsp + 3464], 0
                        mov              qword ptr [rsp + 3472], 0
                        mov              qword ptr [rsp + 3480], 0
                        mov              qword ptr [rsp + 3488], 0
                        mov              qword ptr [rsp + 3496], 0
                        mov              qword ptr [rsp + 3504], 0
                        mov              qword ptr [rsp + 3512], 0
                        mov              qword ptr [rsp + 3520], 0
                        mov              qword ptr [rsp + 3528], 0
                        mov              qword ptr [rsp + 3536], 0
                        mov              qword ptr [rsp + 3544], 0
                        mov              qword ptr [rsp + 3552], 0
                        mov              qword ptr [rsp + 3560], 0
                        mov              qword ptr [rsp + 3568], 0
                        mov              qword ptr [rsp + 3576], 0
                        mov              qword ptr [rsp + 3584], 0
                        mov              qword ptr [rsp + 3592], 0
                        mov              qword ptr [rsp + 3600], 0
                        mov              qword ptr [rsp + 3608], 0
                        mov              qword ptr [rsp + 3616], 0
                        mov              qword ptr [rsp + 3624], 0
                        mov              qword ptr [rsp + 3632], 0
                        mov              qword ptr [rsp + 3640], 0
                        mov              qword ptr [rsp + 3648], 0
                        mov              qword ptr [rsp + 3656], 0
                        mov              qword ptr [rsp + 3664], 0
                        mov              qword ptr [rsp + 3672], 0
                        mov              qword ptr [rsp + 3680], 0
                        mov              qword ptr [rsp + 3688], 0
                        mov              qword ptr [rsp + 3696], 0
                        mov              qword ptr [rsp + 3704], 0
                        mov              qword ptr [rsp + 3712], 0
                        mov              qword ptr [rsp + 3720], 0
                        mov              qword ptr [rsp + 3728], 0
                        mov              qword ptr [rsp + 3736], 0
                        mov              qword ptr [rsp + 3744], 0
                        mov              qword ptr [rsp + 3752], 0
                        mov              qword ptr [rsp + 3760], 0
                        mov              qword ptr [rsp + 3768], 0
                        mov              qword ptr [rsp + 3776], 0
                        mov              qword ptr [rsp + 3784], 0
                        mov              qword ptr [rsp + 3792], 0
                        mov              qword ptr [rsp + 3800], 0
                        mov              qword ptr [rsp + 3808], 0
                        mov              qword ptr [rsp + 3816], 0
                        mov              qword ptr [rsp + 3824], 0
                        mov              qword ptr [rsp + 3832], 0
                        mov              qword ptr [rsp + 3840], 0
                        mov              qword ptr [rsp + 3848], 0
                        mov              qword ptr [rsp + 3856], 0
                        mov              qword ptr [rsp + 3864], 0
                        mov              qword ptr [rsp + 3872], 0
                        mov              qword ptr [rsp + 3880], 0
                        mov              qword ptr [rsp + 3888], 0
                        mov              qword ptr [rsp + 3896], 0
                        mov              qword ptr [rsp + 3904], 0
                        mov              qword ptr [rsp + 3912], 0
                        mov              qword ptr [rsp + 3920], 0
                        mov              qword ptr [rsp + 3928], 0
                        mov              qword ptr [rsp + 3936], 0
                        mov              qword ptr [rsp + 3944], 0
                        mov              qword ptr [rsp + 3952], 0
                        mov              qword ptr [rsp + 3960], 0
                        mov              qword ptr [rsp + 3968], 0
                        mov              qword ptr [rsp + 3976], 0
                        mov              qword ptr [rsp + 3984], 0
                        mov              qword ptr [rsp + 3992], 0
                        mov              qword ptr [rsp + 4000], 0
                        mov              qword ptr [rsp + 4008], 0
                        mov              qword ptr [rsp + 4016], 0
                        mov              qword ptr [rsp + 4024], 0
                        mov              qword ptr [rsp + 4032], 0
                        mov              qword ptr [rsp + 4040], 0
                        mov              qword ptr [rsp + 4048], 0
                        mov              qword ptr [rsp + 4056], 0
                        mov              qword ptr [rsp + 4064], 0
                        mov              qword ptr [rsp + 4072], 0
                        mov              qword ptr [rsp + 4080], 0
                        mov              qword ptr [rsp + 4088], 0
                        mov              qword ptr [rsp + 4096], 0
                        mov              qword ptr [rsp + 4104], 0
                        mov              qword ptr [rsp + 4112], 0
                        mov              qword ptr [rsp + 4120], 0
                        mov              qword ptr [rsp + 4128], 0
                        mov              qword ptr [rsp + 4136], 0
                        mov              qword ptr [rsp + 4144], 0
                        mov              qword ptr [rsp + 4152], 0
                        mov              qword ptr [rsp + 4160], 0
                        mov              qword ptr [rsp + 4168], 0
                        mov              qword ptr [rsp + 4176], 0
                        mov              qword ptr [rsp + 4184], 0
                        mov              qword ptr [rsp + 4192], 0
                        mov              qword ptr [rsp + 4200], 0
                        mov              qword ptr [rsp + 4208], 0
                        mov              qword ptr [rsp + 4216], 0
                        mov              qword ptr [rsp + 4224], 0
                        mov              qword ptr [rsp + 4232], 0
                        mov              qword ptr [rsp + 4240], 0
                        mov              qword ptr [rsp + 4248], 0
                        mov              qword ptr [rsp + 4256], 0
                        mov              qword ptr [rsp + 4264], 0
                        mov              qword ptr [rsp + 4272], 0
                        mov              qword ptr [rsp + 4280], 0
                        mov              qword ptr [rsp + 4288], 0
                        mov              qword ptr [rsp + 4296], 0
                        mov              qword ptr [rsp + 4304], 0
                        mov              qword ptr [rsp + 4312], 0
                        mov              qword ptr [rsp + 4320], 0
                        mov              qword ptr [rsp + 4328], 0
                        mov              qword ptr [rsp + 4336], 0
                        mov              qword ptr [rsp + 4344], 0
                        mov              qword ptr [rsp + 4352], 0
                        mov              qword ptr [rsp + 4360], 0
                        mov              qword ptr [rsp + 4368], 0
                        mov              qword ptr [rsp + 4376], 0
                        mov              qword ptr [rsp + 4384], 0
                        mov              qword ptr [rsp + 4392], 0
                        mov              qword ptr [rsp + 4400], 0
                        mov              qword ptr [rsp + 4408], 0
                        mov              qword ptr [rsp + 4416], 0
                        mov              qword ptr [rsp + 4424], 0
                        mov              qword ptr [rsp + 4432], 0
                        mov              qword ptr [rsp + 4440], 0
                        mov              qword ptr [rsp + 4448], 0
                        mov              qword ptr [rsp + 4456], 0
                        mov              qword ptr [rsp + 4464], 0
                        mov              qword ptr [rsp + 4472], 0
                        mov              qword ptr [rsp + 4480], 0
                        mov              qword ptr [rsp + 4488], 0
                        mov              qword ptr [rsp + 4496], 0
                        mov              qword ptr [rsp + 4504], 0
                        mov              qword ptr [rsp + 4512], 0
                        mov              qword ptr [rsp + 4520], 0
                        mov              qword ptr [rsp + 4528], 0
                        mov              qword ptr [rsp + 4536], 0
                        mov              qword ptr [rsp + 4544], 0
                        mov              qword ptr [rsp + 4552], 0
                        mov              qword ptr [rsp + 4560], 0
                        mov              qword ptr [rsp + 4568], 0
                        mov              qword ptr [rsp + 4576], 0
                        mov              qword ptr [rsp + 4584], 0
                        mov              qword ptr [rsp + 4592], 0
                        mov              qword ptr [rsp + 4600], 0
                        mov              qword ptr [rsp + 4608], 0
                        mov              qword ptr [rsp + 4616], 0
                        mov              qword ptr [rsp + 4624], 0
                        mov              qword ptr [rsp + 4632], 0
                        mov              qword ptr [rsp + 4640], 0
                        mov              qword ptr [rsp + 4648], 0
                        mov              qword ptr [rsp + 4656], 0
                        mov              qword ptr [rsp + 4664], 0
                        mov              qword ptr [rsp + 4672], 0
                        mov              qword ptr [rsp + 4680], 0
                        mov              qword ptr [rsp + 4688], 0
                        mov              qword ptr [rsp + 4696], 0
                        mov              qword ptr [rsp + 4704], 0
                        mov              qword ptr [rsp + 4712], 0
                        mov              qword ptr [rsp + 4720], 0
                        mov              qword ptr [rsp + 4728], 0
                        mov              qword ptr [rsp + 4736], 0
                        mov              qword ptr [rsp + 4744], 0
                        mov              qword ptr [rsp + 4752], 0
                        mov              qword ptr [rsp + 4760], 0
                        mov              qword ptr [rsp + 4768], 0
                        mov              qword ptr [rsp + 4776], 0
                        mov              qword ptr [rsp + 4784], 0
                        mov              qword ptr [rsp + 4792], 0
                        mov              qword ptr [rsp + 4800], 0
                        mov              qword ptr [rsp + 4808], 0
                        mov              qword ptr [rsp + 4816], 0
                        mov              qword ptr [rsp + 4824], 0
                        mov              qword ptr [rsp + 4832], 0
                        mov              qword ptr [rsp + 4840], 0
                        mov              qword ptr [rsp + 4848], 0
                        mov              qword ptr [rsp + 4856], 0
                        mov              qword ptr [rsp + 4864], 0
                        mov              qword ptr [rsp + 4872], 0
                        mov              qword ptr [rsp + 4880], 0
                        mov              qword ptr [rsp + 4888], 0
                        mov              qword ptr [rsp + 4896], 0
                        mov              qword ptr [rsp + 4904], 0
                        mov              qword ptr [rsp + 4912], 0
                        mov              qword ptr [rsp + 4920], 0
                        mov              qword ptr [rsp + 4928], 0
                        mov              qword ptr [rsp + 4936], 0
                        mov              qword ptr [rsp + 4944], 0
                        mov              qword ptr [rsp + 4952], 0
                        mov              qword ptr [rsp + 4960], 0
                        mov              qword ptr [rsp + 4968], 0
                        mov              qword ptr [rsp + 4976], 0
                        mov              qword ptr [rsp + 4984], 0
                        mov              qword ptr [rsp + 4992], 0
                        mov              qword ptr [rsp + 5000], 0
                        mov              qword ptr [rsp + 5008], 0
                        mov              qword ptr [rsp + 5016], 0
                        mov              qword ptr [rsp + 5024], 0
                        mov              qword ptr [rsp + 5032], 0
                        mov              qword ptr [rsp + 5040], 0
                        mov              qword ptr [rsp + 5048], 0
                        mov              qword ptr [rsp + 5056], 0
                        mov              qword ptr [rsp + 5064], 0
                        mov              qword ptr [rsp + 5072], 0
                        mov              qword ptr [rsp + 5080], 0
                        mov              qword ptr [rsp + 5088], 0
                        mov              qword ptr [rsp + 5096], 0
                        mov              qword ptr [rsp + 5104], 0
                        mov              qword ptr [rsp + 5112], 0
                        mov              qword ptr [rsp + 5120], 0
                        mov              qword ptr [rsp + 5128], 0
                        mov              qword ptr [rsp + 5136], 0
                        mov              qword ptr [rsp + 5144], 0
                        mov              qword ptr [rsp + 5152], 0
                        mov              qword ptr [rsp + 5160], 0
                        mov              qword ptr [rsp + 5168], 0
                        mov              qword ptr [rsp + 5176], 0
                        mov              qword ptr [rsp + 5184], 0
                        mov              qword ptr [rsp + 5192], 0
                        mov              qword ptr [rsp + 5200], 0
                        mov              qword ptr [rsp + 5208], 0
                        mov              qword ptr [rsp + 5216], 0
                        mov              qword ptr [rsp + 5224], 0
                        mov              qword ptr [rsp + 5232], 0
                        mov              qword ptr [rsp + 5240], 0
                        mov              qword ptr [rsp + 5248], 0
                        mov              qword ptr [rsp + 5256], 0
                        mov              qword ptr [rsp + 5264], 0
                        mov              qword ptr [rsp + 5272], 0
                        mov              qword ptr [rsp + 5280], 0
                        mov              qword ptr [rsp + 5288], 0
                        mov              qword ptr [rsp + 5296], 0
                        mov              qword ptr [rsp + 5304], 0
                        mov              qword ptr [rsp + 5312], 0
                        mov              qword ptr [rsp + 5320], 0
                        mov              qword ptr [rsp + 5328], 0
                        mov              qword ptr [rsp + 5336], 0
                        mov              qword ptr [rsp + 5344], 0
                        mov              qword ptr [rsp + 5352], 0
                        mov              qword ptr [rsp + 5360], 0
                        mov              qword ptr [rsp + 5368], 0
                        mov              qword ptr [rsp + 5376], 0
                        mov              qword ptr [rsp + 5384], 0
                        mov              qword ptr [rsp + 5392], 0
                        mov              qword ptr [rsp + 5400], 0
                        mov              qword ptr [rsp + 5408], 0
                        mov              qword ptr [rsp + 5416], 0
                        mov              qword ptr [rsp + 5424], 0
                        mov              qword ptr [rsp + 5432], 0
                        mov              qword ptr [rsp + 5440], 0
                        mov              qword ptr [rsp + 5448], 0
                        mov              qword ptr [rsp + 5456], 0
                        mov              qword ptr [rsp + 5464], 0
                        mov              qword ptr [rsp + 5472], 0
                        mov              qword ptr [rsp + 5480], 0
                        mov              qword ptr [rsp + 5488], 0
                        mov              qword ptr [rsp + 5496], 0
                        mov              qword ptr [rsp + 5504], 0
                        mov              qword ptr [rsp + 5512], 0
                        mov              qword ptr [rsp + 5520], 0
                        mov              qword ptr [rsp + 5528], 0
                        mov              qword ptr [rsp + 5536], 0
                        mov              qword ptr [rsp + 5544], 0
                        mov              qword ptr [rsp + 5552], 0
                        mov              qword ptr [rsp + 5560], 0
                        mov              qword ptr [rsp + 5568], 0
                        mov              qword ptr [rsp + 5576], 0
                        mov              qword ptr [rsp + 5584], 0
                        mov              qword ptr [rsp + 5592], 0
                        mov              qword ptr [rsp + 5600], 0
                        mov              qword ptr [rsp + 5608], 0
                        mov              qword ptr [rsp + 5616], 0
                        mov              qword ptr [rsp + 5624], 0
                        mov              qword ptr [rsp + 5632], 0
                        mov              qword ptr [rsp + 5640], 0
                        mov              qword ptr [rsp + 5648], 0
                        mov              qword ptr [rsp + 5656], 0
                        mov              qword ptr [rsp + 5664], 0
                        mov              qword ptr [rsp + 5672], 0
                        mov              qword ptr [rsp + 5680], 0
                        mov              qword ptr [rsp + 5688], 0
                        mov              qword ptr [rsp + 5696], 0
                        mov              qword ptr [rsp + 5704], 0
                        mov              qword ptr [rsp + 5712], 0
                        mov              qword ptr [rsp + 5720], 0
                        mov              qword ptr [rsp + 5728], 0
                        mov              qword ptr [rsp + 5736], 0
                        mov              qword ptr [rsp + 5744], 0
                        mov              qword ptr [rsp + 5752], 0
                        mov              qword ptr [rsp + 5760], 0
                        mov              qword ptr [rsp + 5768], 0
                        mov              qword ptr [rsp + 5776], 0
                        mov              qword ptr [rsp + 5784], 0
                        mov              qword ptr [rsp + 5792], 0
                        mov              qword ptr [rsp + 5800], 0
                        mov              qword ptr [rsp + 5808], 0
                        mov              qword ptr [rsp + 5816], 0
                        mov              qword ptr [rsp + 5824], 0
                        mov              qword ptr [rsp + 5832], 0
                        mov              qword ptr [rsp + 5840], 0
                        mov              qword ptr [rsp + 5848], 0
                        mov              qword ptr [rsp + 5856], 0
                        mov              qword ptr [rsp + 5864], 0
                        mov              qword ptr [rsp + 5872], 0
                        mov              qword ptr [rsp + 5880], 0
                        mov              qword ptr [rsp + 5888], 0
                        mov              qword ptr [rsp + 5896], 0
                        mov              qword ptr [rsp + 5904], 0
                        mov              qword ptr [rsp + 5912], 0
                        mov              qword ptr [rsp + 5920], 0
                        mov              qword ptr [rsp + 5928], 0
                        mov              qword ptr [rsp + 5936], 0
                        mov              qword ptr [rsp + 5944], 0
                        mov              qword ptr [rsp + 5952], 0
                        mov              qword ptr [rsp + 5960], 0
                        mov              qword ptr [rsp + 5968], 0
                        mov              qword ptr [rsp + 5976], 0
                        mov              qword ptr [rsp + 5984], 0
                        mov              qword ptr [rsp + 5992], 0
                        mov              qword ptr [rsp + 6000], 0
                        mov              qword ptr [rsp + 6008], 0
                        mov              qword ptr [rsp + 6016], 0
                        mov              qword ptr [rsp + 6024], 0
                        mov              qword ptr [rsp + 6032], 0
                        mov              qword ptr [rsp + 6040], 0
                        mov              qword ptr [rsp + 6048], 0
                        mov              qword ptr [rsp + 6056], 0
                        mov              qword ptr [rsp + 6064], 0
                        mov              qword ptr [rsp + 6072], 0
                        mov              qword ptr [rsp + 6080], 0
                        mov              qword ptr [rsp + 6088], 0
                        mov              qword ptr [rsp + 6096], 0
                        mov              qword ptr [rsp + 6104], 0
                        mov              qword ptr [rsp + 6112], 0
                        mov              qword ptr [rsp + 6120], 0
                        mov              qword ptr [rsp + 6128], 0
                        mov              qword ptr [rsp + 6136], 0
                        mov              qword ptr [rsp + 6144], 0
                        mov              qword ptr [rsp + 6152], 0
                        mov              qword ptr [rsp + 6160], 0
                        mov              qword ptr [rsp + 6168], 0
                        mov              qword ptr [rsp + 6176], 0
                        mov              qword ptr [rsp + 6184], 0
                        mov              qword ptr [rsp + 6192], 0
                        mov              qword ptr [rsp + 6200], 0
                        mov              qword ptr [rsp + 6208], 0
                        mov              qword ptr [rsp + 6216], 0
                        mov              qword ptr [rsp + 6224], 0
                        mov              qword ptr [rsp + 6232], 0
                        mov              qword ptr [rsp + 6240], 0
                        mov              qword ptr [rsp + 6248], 0
                        mov              qword ptr [rsp + 6256], 0
                        mov              qword ptr [rsp + 6264], 0
                        mov              qword ptr [rsp + 6272], 0
                        mov              qword ptr [rsp + 6280], 0
                        mov              qword ptr [rsp + 6288], 0
                        mov              qword ptr [rsp + 6296], 0
                        mov              qword ptr [rsp + 6304], 0
                        mov              qword ptr [rsp + 6312], 0
                        mov              qword ptr [rsp + 6320], 0
                        mov              qword ptr [rsp + 6328], 0
                        mov              qword ptr [rsp + 6336], 0
                        mov              qword ptr [rsp + 6344], 0
                        mov              qword ptr [rsp + 6352], 0
                        mov              qword ptr [rsp + 6360], 0
                        mov              qword ptr [rsp + 6368], 0
                        mov              qword ptr [rsp + 6376], 0
                        mov              qword ptr [rsp + 6384], 0
                        mov              qword ptr [rsp + 6392], 0
                        mov              qword ptr [rsp + 6400], 0
                        mov              qword ptr [rsp + 6408], 0
                        mov              qword ptr [rsp + 6416], 0
                        mov              qword ptr [rsp + 6424], 0
                        mov              qword ptr [rsp + 6432], 0
                        mov              qword ptr [rsp + 6440], 0
                        mov              qword ptr [rsp + 6448], 0
                        mov              qword ptr [rsp + 6456], 0
                        mov              qword ptr [rsp + 6464], 0
                        mov              qword ptr [rsp + 6472], 0
                        mov              qword ptr [rsp + 6480], 0
                        mov              qword ptr [rsp + 6488], 0
                        mov              qword ptr [rsp + 6496], 0
                        mov              qword ptr [rsp + 6504], 0
                        mov              qword ptr [rsp + 6512], 0
                        mov              qword ptr [rsp + 6520], 0
                        mov              qword ptr [rsp + 6528], 0
                        mov              qword ptr [rsp + 6536], 0
                        mov              qword ptr [rsp + 6544], 0
                        mov              qword ptr [rsp + 6552], 0
                        mov              qword ptr [rsp + 6560], 0
                        mov              qword ptr [rsp + 6568], 0
                        mov              qword ptr [rsp + 6576], 0
                        mov              qword ptr [rsp + 6584], 0
                        mov              qword ptr [rsp + 6592], 0
                        mov              qword ptr [rsp + 6600], 0
                        mov              qword ptr [rsp + 6608], 0
                        mov              qword ptr [rsp + 6616], 0
                        mov              qword ptr [rsp + 6624], 0
                        mov              qword ptr [rsp + 6632], 0
                        mov              qword ptr [rsp + 6640], 0
                        mov              qword ptr [rsp + 6648], 0
                        mov              qword ptr [rsp + 6656], 0
                        mov              qword ptr [rsp + 6664], 0
                        mov              qword ptr [rsp + 6672], 0
                        mov              qword ptr [rsp + 6680], 0
                        mov              qword ptr [rsp + 6688], 0
                        mov              qword ptr [rsp + 6696], 0
                        mov              qword ptr [rsp + 6704], 0
                        mov              qword ptr [rsp + 6712], 0
                        mov              qword ptr [rsp + 6720], 0
                        mov              qword ptr [rsp + 6728], 0
                        mov              qword ptr [rsp + 6736], 0
                        mov              qword ptr [rsp + 6744], 0
                        mov              qword ptr [rsp + 6752], 0
                        mov              qword ptr [rsp + 6760], 0
                        mov              qword ptr [rsp + 6768], 0
                        mov              qword ptr [rsp + 6776], 0
                        mov              qword ptr [rsp + 6784], 0
                        mov              qword ptr [rsp + 6792], 0
                        mov              qword ptr [rsp + 6800], 0
                        mov              qword ptr [rsp + 6808], 0
                        mov              qword ptr [rsp + 6816], 0
                        mov              qword ptr [rsp + 6824], 0
                        mov              qword ptr [rsp + 6832], 0
                        mov              qword ptr [rsp + 6840], 0
                        mov              qword ptr [rsp + 6848], 0
                        mov              qword ptr [rsp + 6856], 0
                        mov              qword ptr [rsp + 6864], 0
                        mov              qword ptr [rsp + 6872], 0
                        mov              qword ptr [rsp + 6880], 0
                        mov              qword ptr [rsp + 6888], 0
                        mov              qword ptr [rsp + 6896], 0
                        mov              qword ptr [rsp + 6904], 0
                        mov              qword ptr [rsp + 6912], 0
                        mov              qword ptr [rsp + 6920], 0
                        mov              qword ptr [rsp + 6928], 0
                        mov              qword ptr [rsp + 6936], 0
                        mov              qword ptr [rsp + 6944], 0
                        mov              qword ptr [rsp + 6952], 0
                        mov              qword ptr [rsp + 6960], 0
                        mov              qword ptr [rsp + 6968], 0
                        mov              qword ptr [rsp + 6976], 0
                        mov              qword ptr [rsp + 6984], 0
                        mov              qword ptr [rsp + 6992], 0
                        mov              qword ptr [rsp + 7000], 0
                        mov              qword ptr [rsp + 7008], 0
                        mov              qword ptr [rsp + 7016], 0
                        mov              qword ptr [rsp + 7024], 0
                        mov              qword ptr [rsp + 7032], 0
                        mov              qword ptr [rsp + 7040], 0
                        mov              qword ptr [rsp + 7048], 0
                        mov              qword ptr [rsp + 7056], 0
                        mov              qword ptr [rsp + 7064], 0
                        mov              qword ptr [rsp + 7072], 0
                        mov              qword ptr [rsp + 7080], 0
                        mov              qword ptr [rsp + 7088], 0
                        mov              qword ptr [rsp + 7096], 0
                        mov              qword ptr [rbp + 7472], 3                      # result
                        mov              rax, qword ptr [rip + .Lx568_0]
                        mov              qword ptr [rbp + 7480], rax
                                                                                        jmp   n238_assign_α
.Lx568_0:
                        .quad            1000
#-----------------------------------------------------------------------------------------------------------------------
n238_assign_α:
                        mov              rax, qword ptr [rbp + 7472]
                        mov              rdx, qword ptr [rbp + 7480]
                        mov              qword ptr [1879052288], rax                    # range
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n239_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n239_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx570_0]                # sval
                        call             rt_keyword_read@PLT
                        cmp              eax, 104
                                                                                        je    n252_lit_charset_α
                        mov              qword ptr [rbp + 7440], rax
                        mov              qword ptr [rbp + 7448], rdx
                                                                                        jmp   n240_scan_enter_α
n239_keyword_icon_β:
                                                                                        jmp   n252_lit_charset_α
.Lx570_0:
                        .quad            .Lx570_0_s
.Lx570_0_s:
                        .string          "&ascii"
#-----------------------------------------------------------------------------------------------------------------------
n240_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 7440]                    # lo
                        mov              rsi, qword ptr [rbp + 7448]                    # hi
                        mov              rdx, r13                                       # sigma
                        mov              rcx, r14                                       # delta
                        mov              r8, r15                                        # Delta
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n241_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n241_lit_charset_α:
                        mov              qword ptr [rbp + 7424], 2                      # result
                        mov              dword ptr [rbp + 7428], -1
                        mov              rax, qword ptr [rip + .Lx573_0]
                        mov              qword ptr [rbp + 7432], rax
                                                                                        jmp   n242_scan_upto_α
.Lx573_0:
                        .quad            .Lx573_0_s
.Lx573_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n242_scan_upto_α:
                        mov              qword ptr [rbp + 7408], r14
.Lx575_0:
                        mov              rax, qword ptr [rbp + 7408]
                        cmp              rax, r15
                                                                                        jl    .Lx575_240
                        add              rsp, 7104
                                                                                        jmp   n567_scan_α
.Lx575_240:
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx575_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx575_1
                        mov              qword ptr [rbp + 7392], 3
                        add              rax, 1
                        mov              qword ptr [rbp + 7400], rax
                                                                                        jmp   n243_scan_tab_α
.Lx575_1:
                        inc              qword ptr [rbp + 7408]
                                                                                        jmp   .Lx575_0
n242_scan_upto_β:
                        inc              qword ptr [rbp + 7408]
                                                                                        jmp   .Lx575_0
.Lx575_2:
                        .quad            .Lx575_2_s
.Lx575_2_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n243_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 7400]
                        cmp              rax, 1
                                                                                        jge   .Lx577_0
                        add              rax, r15
                        add              rax, 1
.Lx577_0:
                        cmp              rax, 1
                                                                                        jge   .Lx577_239
                        add              rsp, 16
                                                                                        jmp   n242_scan_upto_β
.Lx577_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx577_240
                        add              rsp, 16
                                                                                        jmp   n242_scan_upto_β
.Lx577_240:
                        mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        call             rt_substr@PLT
                        pop              r10
                        pop              r10
                        mov              qword ptr [rbp + 7360], rax
                        mov              qword ptr [rbp + 7368], rdx
                                                                                        jmp   n244_lit_integer_α
n243_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n242_scan_upto_β
#-----------------------------------------------------------------------------------------------------------------------
n244_lit_integer_α:
                        mov              qword ptr [rbp + 7344], 3                      # result
                        mov              rax, qword ptr [rip + .Lx578_0]
                        mov              qword ptr [rbp + 7352], rax
                                                                                        jmp   n245_scan_move_α
.Lx578_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n245_scan_move_α:
                        sub              rsp, 16
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1
                                                                                        jge   .Lx580_239
                        add              rsp, 16
                                                                                        jmp   n242_scan_upto_β
.Lx580_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx580_240
                        add              rsp, 16
                                                                                        jmp   n242_scan_upto_β
.Lx580_240:
                        mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        call             rt_substr@PLT
                        pop              r10
                        pop              r10
                        mov              qword ptr [rbp + 7312], rax
                        mov              qword ptr [rbp + 7320], rdx
                                                                                        jmp   n246_lit_integer_α
n245_scan_move_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n242_scan_upto_β
#-----------------------------------------------------------------------------------------------------------------------
n246_lit_integer_α:
                        mov              qword ptr [rbp + 7296], 3                      # result
                        mov              rax, qword ptr [rip + .Lx581_0]
                        mov              qword ptr [rbp + 7304], rax
                                                                                        jmp   n247_scan_move_α
.Lx581_0:
                        .quad            94
#-----------------------------------------------------------------------------------------------------------------------
n247_scan_move_α:
                        sub              rsp, 16
                        mov              rax, 94
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1
                                                                                        jge   .Lx583_239
                        add              rsp, 16
                                                                                        jmp   n242_scan_upto_β
.Lx583_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx583_240
                        add              rsp, 16
                                                                                        jmp   n242_scan_upto_β
.Lx583_240:
                        mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        call             rt_substr@PLT
                        pop              r10
                        pop              r10
                        mov              qword ptr [rbp + 7264], rax
                        mov              qword ptr [rbp + 7272], rdx
                                                                                        jmp   n248_conjunction_α
n247_scan_move_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n242_scan_upto_β
#-----------------------------------------------------------------------------------------------------------------------
n248_conjunction_α:
                        mov              rax, qword ptr [rbp + 7264]
                        mov              qword ptr [rbp + 7248], rax
                        mov              rax, qword ptr [rbp + 7272]
                        mov              qword ptr [rbp + 7256], rax
                                                                                        jmp   n249_scan_α
n248_conjunction_β:
                                                                                        jmp   n567_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n249_scan_α:
                        mov              rax, qword ptr [rbp + 7248]
                        mov              qword ptr [rbp + 7216], rax
                        mov              rax, qword ptr [rbp + 7256]
                        mov              qword ptr [rbp + 7224], rax
                        lea              rdi, [rbp + 7184]                              # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 7184]
                        mov              r14, qword ptr [rbp + 7192]
                        mov              r15, qword ptr [rbp + 7200]
                                                                                        jmp   n250_call_builtin_icon_α
n249_scan_β:
                                                                                        jmp   n252_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n250_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 7216]
                        mov              qword ptr [rbp + 7136], rax
                        mov              rax, qword ptr [rbp + 7224]
                        mov              qword ptr [rbp + 7144], rax
                        .section         .rodata
.Lrkfn588:              .string          "cset"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn588]                         # fn
                        lea              rsi, [rbp + 7136]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 7120], rax
                        mov              qword ptr [rbp + 7128], rdx
                        cmp              eax, 104
                                                                                        je    n252_lit_charset_α
                                                                                        jmp   n251_assign_α
n250_call_builtin_icon_β:
                                                                                        jmp   n252_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n251_assign_α:
                        mov              rax, qword ptr [rbp + 7120]
                        mov              rdx, qword ptr [rbp + 7128]
                        mov              qword ptr [rbp + 7568], rax
                        mov              qword ptr [rbp + 7576], rdx
                                                                                        jmp   n252_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n252_lit_charset_α:
                        mov              qword ptr [rbp + 7104], 2                      # result
                        mov              dword ptr [rbp + 7108], -1
                        mov              rax, qword ptr [rip + .Lx590_0]
                        mov              qword ptr [rbp + 7112], rax
                                                                                        jmp   n253_assign_α
.Lx590_0:
                        .quad            .Lx590_0_s
.Lx590_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n253_assign_α:
                        mov              rax, qword ptr [rbp + 7104]
                        mov              rdx, qword ptr [rbp + 7112]
                        mov              qword ptr [rbp + 7488], rax
                        mov              qword ptr [rbp + 7496], rdx
                                                                                        jmp   n254_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n254_lit_string_α:
                        mov              qword ptr [rbp + 7088], 2                      # result
                        mov              dword ptr [rbp + 7092], 0
                        mov              rax, qword ptr [rip + .Lx592_0]
                        mov              qword ptr [rbp + 7096], rax
                                                                                        jmp   n255_assign_α
.Lx592_0:
                        .quad            .Lx592_0_s
.Lx592_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n255_assign_α:
                        mov              rax, qword ptr [rbp + 7088]
                        mov              rdx, qword ptr [rbp + 7096]
                        mov              qword ptr [rbp + 7664], rax
                        mov              qword ptr [rbp + 7672], rdx
                                                                                        jmp   n256_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n256_make_list_α:
                        lea              rdi, [rbp + 7088]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 7072], rax
                        mov              qword ptr [rbp + 7080], rdx
                                                                                        jmp   n257_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n257_assign_α:
                        mov              rax, qword ptr [rbp + 7072]
                        mov              rdx, qword ptr [rbp + 7080]
                        mov              qword ptr [rbp + 7504], rax
                        mov              qword ptr [rbp + 7512], rdx
                                                                                        jmp   n258_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n258_lit_integer_α:
                        mov              qword ptr [rbp + 7056], 3                      # result
                        mov              rax, qword ptr [rip + .Lx597_0]
                        mov              qword ptr [rbp + 7064], rax
                                                                                        jmp   n259_assign_α
.Lx597_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n259_assign_α:
                        mov              rax, qword ptr [rbp + 7056]
                        mov              rdx, qword ptr [rbp + 7064]
                        mov              qword ptr [rbp + 7520], rax
                        mov              qword ptr [rbp + 7528], rdx
                                                                                        jmp   n260_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n260_disjunction_α:
                        mov              qword ptr [rbp + 6608], 0
                        mov              qword ptr [rbp + 6616], 0
                        mov              dword ptr [rbp + 6624], 0
                                                                                        jmp   n550_var_α
n260_disjunction_as:
                        mov              eax, dword ptr [rbp + 6624]
                        cmp              eax, 0
                                                                                        jne   .Lx600_0
                        mov              rax, qword ptr [rbp + 6640]
                        mov              qword ptr [rbp + 6608], rax
                        mov              rax, qword ptr [rbp + 6648]
                        mov              qword ptr [rbp + 6616], rax
                                                                                        jmp   n261_var_α
.Lx600_0:
                        cmp              eax, 1
                                                                                        jne   .Lx600_1
                        mov              rax, qword ptr [rbp + 7008]
                        mov              qword ptr [rbp + 6608], rax
                        mov              rax, qword ptr [rbp + 7016]
                        mov              qword ptr [rbp + 6616], rax
                                                                                        jmp   n261_var_α
.Lx600_1:
                                                                                        jmp   n261_var_α
n260_disjunction_β:
                        mov              eax, dword ptr [rbp + 6624]
                        cmp              eax, 0
                                                                                        je    n554_disjunction_β
                                                                                        jmp   n261_var_α
n260_disjunction_af:
                        add              dword ptr [rbp + 6624], 1
                        mov              eax, dword ptr [rbp + 6624]
                        cmp              eax, 1
                                                                                        je    n548_keyword_icon_α
                                                                                        jmp   n261_var_α
#-----------------------------------------------------------------------------------------------------------------------
n261_var_α:
                        mov              rax, qword ptr [rbp + 7728]
                        mov              qword ptr [rbp + 5728], rax
                        mov              rax, qword ptr [rbp + 7736]
                        mov              qword ptr [rbp + 5736], rax
                                                                                        jmp   n262_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n262_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 5728]
                        mov              qword ptr [rbp + 5696], rax
                        mov              rax, qword ptr [rbp + 5736]
                        mov              qword ptr [rbp + 5704], rax
                        .section         .rodata
.Lrkfn604:              .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn604]                         # fn
                        lea              rsi, [rbp + 5696]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5680], rax
                        mov              qword ptr [rbp + 5688], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx603_240
                        add              rsp, 7104
                                                                                        jmp   n303_disjunction_α
.Lx603_240:
                                                                                        jmp   n263_assign_α
n262_call_builtin_icon_β:
                        add              rsp, 7104
                                                                                        jmp   n303_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n263_assign_α:
                        mov              rax, qword ptr [rbp + 5680]
                        mov              rdx, qword ptr [rbp + 5688]
                        mov              qword ptr [rbp + 7712], rax
                        mov              qword ptr [rbp + 7720], rdx
                                                                                        jmp   n264_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n264_disjunction_α:
                        mov              qword ptr [rbp + 5744], 0
                        mov              qword ptr [rbp + 5752], 0
                        mov              dword ptr [rbp + 5760], 0
                                                                                        jmp   n266_var_ref_α
n264_disjunction_as:
                        mov              eax, dword ptr [rbp + 5760]
                        cmp              eax, 0
                                                                                        jne   .Lx607_0
                        mov              rax, qword ptr [rbp + 5840]
                        mov              qword ptr [rbp + 5744], rax
                        mov              rax, qword ptr [rbp + 5848]
                        mov              qword ptr [rbp + 5752], rax
                                                                                        jmp   n261_var_α
.Lx607_0:
                                                                                        jmp   n261_var_α
n264_disjunction_β:
                        mov              eax, dword ptr [rbp + 5760]
                                                                                        jmp   n261_var_α
n264_disjunction_af:
                        add              dword ptr [rbp + 5760], 1
                        mov              eax, dword ptr [rbp + 5760]
                                                                                        jmp   n261_var_α
#-----------------------------------------------------------------------------------------------------------------------
n265_conjunction_α:
                                                                                        jmp   n264_disjunction_as
n265_conjunction_β:
                                                                                        jmp   n261_var_α
#-----------------------------------------------------------------------------------------------------------------------
n266_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7712]
                        mov              qword ptr [rbp + 6528], rax
                        mov              qword ptr [rbp + 6536], rdx
                                                                                        jmp   n267_lit_integer_α
n266_var_ref_β:
                                                                                        jmp   n264_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n267_lit_integer_α:
                        mov              qword ptr [rbp + 6544], 3                      # result
                        mov              rax, qword ptr [rip + .Lx611_0]
                        mov              qword ptr [rbp + 6552], rax
                                                                                        jmp   n268_subscript_α
.Lx611_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n268_subscript_α:
                        mov              rdi, qword ptr [rbp + 6528]                    # base
                        mov              rsi, qword ptr [rbp + 6536]                    # base
                        mov              rdx, qword ptr [rbp + 6544]                    # idx
                        mov              rcx, qword ptr [rbp + 6552]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n264_disjunction_af
                        mov              qword ptr [rbp + 6560], rax
                        mov              qword ptr [rbp + 6568], rdx
                                                                                        jmp   n269_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n269_deref_α:
                        mov              rdi, qword ptr [rbp + 6560]                    # d
                        mov              rsi, qword ptr [rbp + 6568]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n264_disjunction_af
                        mov              qword ptr [rbp + 6576], rax
                        mov              qword ptr [rbp + 6584], rdx
                                                                                        jmp   n270_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n270_lit_string_α:
                        mov              qword ptr [rbp + 6592], 2                      # result
                        mov              dword ptr [rbp + 6596], 1
                        mov              rax, qword ptr [rip + .Lx614_0]
                        mov              qword ptr [rbp + 6600], rax
                                                                                        jmp   n271_binop_test_α
.Lx614_0:
                        .quad            .Lx614_0_s
.Lx614_0_s:
                        .string          "["
#-----------------------------------------------------------------------------------------------------------------------
n271_binop_test_α:
                        mov              rdi, qword ptr [rbp + 6576]                    # lhs
                        mov              rsi, qword ptr [rbp + 6584]                    # lhs
                        mov              rdx, qword ptr [rbp + 6592]                    # rhs
                        mov              rcx, qword ptr [rbp + 6600]                    # rhs
                        mov              r8d, 17                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n264_disjunction_af
                        mov              rdi, qword ptr [rbp + 6592]                    # d
                        mov              rsi, qword ptr [rbp + 6600]                    # d
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 6512], rax
                        mov              qword ptr [rbp + 6520], rdx
                                                                                        jmp   n272_var_α
#-----------------------------------------------------------------------------------------------------------------------
n272_var_α:
                        mov              rax, qword ptr [rbp + 7568]
                        mov              qword ptr [rbp + 6480], rax
                        mov              rax, qword ptr [rbp + 7576]
                        mov              qword ptr [rbp + 6488], rax
                                                                                        jmp   n273_var_α
#-----------------------------------------------------------------------------------------------------------------------
n273_var_α:
                        mov              rax, qword ptr [rbp + 7712]
                        mov              qword ptr [rbp + 6496], rax
                        mov              rax, qword ptr [rbp + 7720]
                        mov              qword ptr [rbp + 6504], rax
                                                                                        jmp   n274_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n274_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 6480]
                        mov              qword ptr [rbp + 6432], rax
                        mov              rax, qword ptr [rbp + 6488]
                        mov              qword ptr [rbp + 6440], rax
                        mov              rax, qword ptr [rbp + 6496]
                        mov              qword ptr [rbp + 6448], rax
                        mov              rax, qword ptr [rbp + 6504]
                        mov              qword ptr [rbp + 6456], rax
                        mov              qword ptr [rbp + 6464], 0
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
.Lx620_60:
                        .section         .rodata
.Lbynamegenfn133:       .string          "upto"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn133]                  # fn
                        lea              rsi, [rbp + 6432]                              # args
                        mov              edx, 2                                         # nargs
                        lea              rcx, [rbp + 6464]                              # resume
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 6416], rax
                        mov              qword ptr [rbp + 6424], rdx
                        cmp              eax, 104
                                                                                        je    n264_disjunction_af
                                                                                        jmp   n275_conjunction_α
n274_call_builtin_gen_β:
                                                                                        jmp   .Lx620_60
#-----------------------------------------------------------------------------------------------------------------------
n275_conjunction_α:
                                                                                        jmp   n276_var_α
n275_conjunction_β:
                                                                                        jmp   n264_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n276_var_α:
                        mov              rax, qword ptr [rbp + 7504]
                        mov              qword ptr [rbp + 6368], rax
                        mov              rax, qword ptr [rbp + 7512]
                        mov              qword ptr [rbp + 6376], rax
                                                                                        jmp   n277_var_α
#-----------------------------------------------------------------------------------------------------------------------
n277_var_α:
                        mov              rax, qword ptr [rbp + 7712]
                        mov              qword ptr [rbp + 6384], rax
                        mov              rax, qword ptr [rbp + 7720]
                        mov              qword ptr [rbp + 6392], rax
                                                                                        jmp   n278_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n278_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 6368]
                        mov              qword ptr [rbp + 6320], rax
                        mov              rax, qword ptr [rbp + 6376]
                        mov              qword ptr [rbp + 6328], rax
                        mov              rax, qword ptr [rbp + 6384]
                        mov              qword ptr [rbp + 6336], rax
                        mov              rax, qword ptr [rbp + 6392]
                        mov              qword ptr [rbp + 6344], rax
                        .section         .rodata
.Lrkfn627:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn627]                         # fn
                        lea              rsi, [rbp + 6320]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 6304], rax
                        mov              qword ptr [rbp + 6312], rdx
                        cmp              eax, 104
                                                                                        je    n279_var_α
                                                                                        jmp   n279_var_α
n278_call_builtin_icon_β:
                                                                                        jmp   n279_var_α
#-----------------------------------------------------------------------------------------------------------------------
n279_var_α:
                        mov              rax, qword ptr [rbp + 7712]
                        mov              qword ptr [rbp + 6288], rax
                        mov              rax, qword ptr [rbp + 7720]
                        mov              qword ptr [rbp + 6296], rax
                                                                                        jmp   n280_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n280_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 6288]                    # lo
                        mov              rsi, qword ptr [rbp + 6296]                    # hi
                        mov              rdx, r13                                       # sigma
                        mov              rcx, r14                                       # delta
                        mov              r8, r15                                        # Delta
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n281_var_α
#-----------------------------------------------------------------------------------------------------------------------
n281_var_α:
                        mov              rax, qword ptr [rbp + 7568]
                        mov              qword ptr [rbp + 5936], rax
                        mov              rax, qword ptr [rbp + 7576]
                        mov              qword ptr [rbp + 5944], rax
                                                                                        jmp   n282_scan_upto_α
#-----------------------------------------------------------------------------------------------------------------------
n282_scan_upto_α:
                        mov              qword ptr [rbp + 5920], r14
.Lx635_0:
                        mov              rax, qword ptr [rbp + 5920]
                        cmp              rax, r15
                                                                                        jge   n302_scan_α
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rbp + 5944]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx635_1
                        mov              qword ptr [rbp + 5904], 3
                        add              rax, 1
                        mov              qword ptr [rbp + 5912], rax
                                                                                        jmp   n283_scan_tab_α
.Lx635_1:
                        inc              qword ptr [rbp + 5920]
                                                                                        jmp   .Lx635_0
n282_scan_upto_β:
                        inc              qword ptr [rbp + 5920]
                                                                                        jmp   .Lx635_0
#-----------------------------------------------------------------------------------------------------------------------
n283_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 5912]
                        cmp              rax, 1
                                                                                        jge   .Lx637_0
                        add              rax, r15
                        add              rax, 1
.Lx637_0:
                        cmp              rax, 1
                                                                                        jge   .Lx637_239
                        add              rsp, 16
                                                                                        jmp   n282_scan_upto_β
.Lx637_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx637_240
                        add              rsp, 16
                                                                                        jmp   n282_scan_upto_β
.Lx637_240:
                        mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        call             rt_substr@PLT
                        pop              r10
                        pop              r10
                        mov              qword ptr [rbp + 5872], rax
                        mov              qword ptr [rbp + 5880], rdx
                                                                                        jmp   n284_lit_integer_α
n283_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n282_scan_upto_β
#-----------------------------------------------------------------------------------------------------------------------
n284_lit_integer_α:
                        mov              qword ptr [rbp + 6272], 3                      # result
                        mov              rax, qword ptr [rip + .Lx638_0]
                        mov              qword ptr [rbp + 6280], rax
                                                                                        jmp   n285_scan_move_α
.Lx638_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n285_scan_move_α:
                        sub              rsp, 16
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1
                                                                                        jge   .Lx640_239
                        add              rsp, 16
                                                                                        jmp   n287_disjunction_α
.Lx640_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx640_240
                        add              rsp, 16
                                                                                        jmp   n287_disjunction_α
.Lx640_240:
                        mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        call             rt_substr@PLT
                        pop              r10
                        pop              r10
                        mov              qword ptr [rbp + 6240], rax
                        mov              qword ptr [rbp + 6248], rdx
                                                                                        jmp   n286_assign_α
n285_scan_move_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n287_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n286_assign_α:
                        mov              rax, qword ptr [rbp + 6240]
                        mov              rdx, qword ptr [rbp + 6248]
                        mov              qword ptr [rbp + 7648], rax
                        mov              qword ptr [rbp + 7656], rdx
                                                                                        jmp   n287_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n287_disjunction_α:
                        mov              qword ptr [rbp + 5968], 0
                        mov              qword ptr [rbp + 5976], 0
                        mov              dword ptr [rbp + 5984], 0
                                                                                        jmp   n289_var_α
n287_disjunction_as:
                        mov              eax, dword ptr [rbp + 5984]
                        cmp              eax, 0
                                                                                        jne   .Lx643_0
                        mov              rax, qword ptr [rbp + 6016]
                        mov              qword ptr [rbp + 5968], rax
                        mov              rax, qword ptr [rbp + 6024]
                        mov              qword ptr [rbp + 5976], rax
                                                                                        jmp   n288_conjunction_α
.Lx643_0:
                                                                                        jmp   n288_conjunction_α
n287_disjunction_β:
                        mov              eax, dword ptr [rbp + 5984]
                                                                                        jmp   n281_var_α
n287_disjunction_af:
                        add              dword ptr [rbp + 5984], 1
                        mov              eax, dword ptr [rbp + 5984]
                                                                                        jmp   n281_var_α
#-----------------------------------------------------------------------------------------------------------------------
n288_conjunction_α:
                        mov              rax, qword ptr [rbp + 5968]
                        mov              qword ptr [rbp + 5952], rax
                        mov              rax, qword ptr [rbp + 5976]
                        mov              qword ptr [rbp + 5960], rax
                                                                                        jmp   n281_var_α
n288_conjunction_β:
                                                                                        jmp   n281_var_α
#-----------------------------------------------------------------------------------------------------------------------
n289_var_α:
                        mov              rax, qword ptr [rbp + 7488]
                        mov              qword ptr [rbp + 6208], rax
                        mov              rax, qword ptr [rbp + 7496]
                        mov              qword ptr [rbp + 6216], rax
                                                                                        jmp   n290_var_α
n289_var_β:
                                                                                        jmp   n292_var_α
#-----------------------------------------------------------------------------------------------------------------------
n290_var_α:
                        mov              rax, qword ptr [rbp + 7648]
                        mov              qword ptr [rbp + 6224], rax
                        mov              rax, qword ptr [rbp + 7656]
                        mov              qword ptr [rbp + 6232], rax
                                                                                        jmp   n291_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n291_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 6208]
                        mov              qword ptr [rbp + 6160], rax
                        mov              rax, qword ptr [rbp + 6216]
                        mov              qword ptr [rbp + 6168], rax
                        mov              rax, qword ptr [rbp + 6224]
                        mov              qword ptr [rbp + 6176], rax
                        mov              rax, qword ptr [rbp + 6232]
                        mov              qword ptr [rbp + 6184], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn150:          .string          "any"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn150]                     # fn
                        lea              rsi, [rbp + 6160]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 6144], rax
                        mov              qword ptr [rbp + 6152], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104
                                                                                        je    n292_var_α
                                                                                        jmp   n287_disjunction_af
n291_call_builtin_icon_β:
                                                                                        jmp   n292_var_α
#-----------------------------------------------------------------------------------------------------------------------
n292_var_α:
                        mov              qword ptr [rbp + 6128], 0
                        mov              qword ptr [rbp + 6136], 0
                                                                                        jmp   n293_var_α
n292_var_β:
                                                                                        jmp   n287_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n293_var_α:
                        mov              rax, qword ptr [rbp + 7488]
                        mov              qword ptr [rbp + 6096], rax
                        mov              rax, qword ptr [rbp + 7496]
                        mov              qword ptr [rbp + 6104], rax
                                                                                        jmp   n294_var_α
#-----------------------------------------------------------------------------------------------------------------------
n294_var_α:
                        mov              rax, qword ptr [rbp + 7648]
                        mov              qword ptr [rbp + 6112], rax
                        mov              rax, qword ptr [rbp + 7656]
                        mov              qword ptr [rbp + 6120], rax
                                                                                        jmp   n295_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n295_binop_α:
                        mov              rdi, qword ptr [rbp + 6096]
                        mov              rsi, qword ptr [rbp + 6104]
                        mov              rdx, qword ptr [rbp + 6112]
                        mov              rcx, qword ptr [rbp + 6120]
                        call             rt_cunion@PLT
                        cmp              eax, 104
                                                                                        je    n297_var_α
                        mov              qword ptr [rbp + 6080], rax
                        mov              qword ptr [rbp + 6088], rdx
                                                                                        jmp   n296_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n296_assign_α:
                        mov              rax, qword ptr [rbp + 6080]
                        mov              rdx, qword ptr [rbp + 6088]
                        mov              qword ptr [rbp + 7488], rax
                        mov              qword ptr [rbp + 7496], rdx
                                                                                        jmp   n297_var_α
#-----------------------------------------------------------------------------------------------------------------------
n297_var_α:
                        mov              rax, qword ptr [rbp + 7664]
                        mov              qword ptr [rbp + 6048], rax
                        mov              rax, qword ptr [rbp + 7672]
                        mov              qword ptr [rbp + 6056], rax
                                                                                        jmp   n298_var_α
#-----------------------------------------------------------------------------------------------------------------------
n298_var_α:
                        mov              rax, qword ptr [rbp + 7648]
                        mov              qword ptr [rbp + 6064], rax
                        mov              rax, qword ptr [rbp + 7656]
                        mov              qword ptr [rbp + 6072], rax
                                                                                        jmp   n299_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n299_binop_α:
                        mov              rdi, qword ptr [rbp + 7664]                    # a
                        mov              rsi, qword ptr [rbp + 7672]                    # a
                        mov              rdx, qword ptr [rbp + 7648]                    # b
                        mov              rcx, qword ptr [rbp + 7656]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 6032], rax
                        mov              qword ptr [rbp + 6040], rdx
                                                                                        jmp   n300_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n300_assign_α:
                        mov              rax, qword ptr [rbp + 6032]
                        mov              rdx, qword ptr [rbp + 6040]
                        mov              qword ptr [rbp + 7664], rax
                        mov              qword ptr [rbp + 7672], rdx
                        mov              qword ptr [rbp + 6016], rax
                        mov              qword ptr [rbp + 6024], rdx
                                                                                        jmp   n301_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n301_conjunction_α:
                        mov              rax, qword ptr [rbp + 6016]
                        mov              qword ptr [rbp + 6000], rax
                        mov              rax, qword ptr [rbp + 6024]
                        mov              qword ptr [rbp + 6008], rax
                                                                                        jmp   n287_disjunction_as
n301_conjunction_β:
                                                                                        jmp   n281_var_α
#-----------------------------------------------------------------------------------------------------------------------
n302_scan_α:
                        lea              rdi, [rbp + 5808]                              # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 5808]
                        mov              r14, qword ptr [rbp + 5816]
                        mov              r15, qword ptr [rbp + 5824]
                                                                                        jmp   n261_var_α
n302_scan_β:
                                                                                        jmp   n261_var_α
#-----------------------------------------------------------------------------------------------------------------------
n303_disjunction_α:
                        mov              qword ptr [rbp + 5392], 0
                        mov              qword ptr [rbp + 5400], 0
                        mov              dword ptr [rbp + 5408], 0
                                                                                        jmp   n304_var_α
n303_disjunction_as:
                        mov              eax, dword ptr [rbp + 5408]
                        cmp              eax, 0
                                                                                        jne   .Lx667_0
                        mov              rax, qword ptr [rbp + 5424]
                        mov              qword ptr [rbp + 5392], rax
                        mov              rax, qword ptr [rbp + 5432]
                        mov              qword ptr [rbp + 5400], rax
                                                                                        jmp   n316_lit_string_α
.Lx667_0:
                                                                                        jmp   n316_lit_string_α
n303_disjunction_β:
                        mov              eax, dword ptr [rbp + 5408]
                                                                                        jmp   n316_lit_string_α
n303_disjunction_af:
                        add              dword ptr [rbp + 5408], 1
                        mov              eax, dword ptr [rbp + 5408]
                                                                                        jmp   n316_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n304_var_α:
                        mov              rax, qword ptr [rbp + 7664]
                        mov              qword ptr [rbp + 5616], rax
                        mov              rax, qword ptr [rbp + 7672]
                        mov              qword ptr [rbp + 5624], rax
                                                                                        jmp   n305_lit_charset_α
n304_var_β:
                                                                                        jmp   n303_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n305_lit_charset_α:
                        mov              qword ptr [rbp + 5632], 2                      # result
                        mov              dword ptr [rbp + 5636], -1
                        mov              rax, qword ptr [rip + .Lx670_0]
                        mov              qword ptr [rbp + 5640], rax
                                                                                        jmp   n306_binop_α
.Lx670_0:
                        .quad            .Lx670_0_s
.Lx670_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
#-----------------------------------------------------------------------------------------------------------------------
n306_binop_α:
                        mov              rdi, qword ptr [rbp + 5616]
                        mov              rsi, qword ptr [rbp + 5624]
                        mov              rdx, qword ptr [rbp + 5632]
                        mov              rcx, qword ptr [rbp + 5640]
                        call             rt_cdiff@PLT
                        cmp              eax, 104
                                                                                        je    n303_disjunction_af
                        mov              qword ptr [rbp + 5600], rax
                        mov              qword ptr [rbp + 5608], rdx
                                                                                        jmp   n307_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n307_lit_charset_α:
                        mov              qword ptr [rbp + 5648], 2                      # result
                        mov              dword ptr [rbp + 5652], -1
                        mov              rax, qword ptr [rip + .Lx672_0]
                        mov              qword ptr [rbp + 5656], rax
                                                                                        jmp   n308_binop_α
.Lx672_0:
                        .quad            .Lx672_0_s
.Lx672_0_s:
                        .string          "abcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n308_binop_α:
                        mov              rdi, qword ptr [rbp + 5600]
                        mov              rsi, qword ptr [rbp + 5608]
                        mov              rdx, qword ptr [rbp + 5648]
                        mov              rcx, qword ptr [rbp + 5656]
                        call             rt_cdiff@PLT
                        cmp              eax, 104
                                                                                        je    n303_disjunction_af
                        mov              qword ptr [rbp + 5584], rax
                        mov              qword ptr [rbp + 5592], rdx
                                                                                        jmp   n309_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n309_unop_α:
                        mov              rdi, qword ptr [rbp + 5584]                    # lo
                        mov              rsi, qword ptr [rbp + 5592]                    # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 5568], rax
                        mov              qword ptr [rbp + 5576], rdx
                                                                                        jmp   n310_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n310_lit_integer_α:
                        mov              qword ptr [rbp + 5664], 3                      # result
                        mov              rax, qword ptr [rip + .Lx675_0]
                        mov              qword ptr [rbp + 5672], rax
                                                                                        jmp   n311_binop_test_α
.Lx675_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n311_binop_test_α:
                        mov              eax, dword ptr [rbp + 5568]
                        cmp              eax, 112
                                                                                        je    .Lx676_0
                        mov              eax, dword ptr [rbp + 5664]
                        cmp              eax, 112
                                                                                        je    .Lx676_0
                        mov              eax, dword ptr [rbp + 5568]
                        cmp              eax, 3
                                                                                        jne   .Lx676_2
                        mov              eax, dword ptr [rbp + 5664]
                        cmp              eax, 3
                                                                                        jne   .Lx676_2
.Lx676_1:
                        mov              rax, qword ptr [rbp + 5576]
                        mov              rcx, qword ptr [rbp + 5672]
                        cmp              rax, rcx
                                                                                        jne   n303_disjunction_af
                        mov              rcx, qword ptr [rbp + 5664]
                        mov              qword ptr [rbp + 5552], rcx
                        mov              rcx, qword ptr [rbp + 5672]
                        mov              qword ptr [rbp + 5560], rcx
                                                                                        jmp   n312_var_α
.Lx676_0:
                        mov              rdi, qword ptr [rbp + 5568]                    # a
                        mov              rsi, qword ptr [rbp + 5576]                    # a
                        mov              rdx, qword ptr [rbp + 5664]                    # b
                        mov              rcx, qword ptr [rbp + 5672]                    # b
                        mov              r8d, 9                                         # op
                        lea              r9, [rbp + 5552]                               # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx676_1
                        cmp              eax, 1
                                                                                        je    n303_disjunction_af
                                                                                        jmp   n312_var_α
.Lx676_2:
                        mov              rdi, qword ptr [rbp + 5568]                    # lhs
                        mov              rsi, qword ptr [rbp + 5576]                    # lhs
                        mov              rdx, qword ptr [rbp + 5664]                    # rhs
                        mov              rcx, qword ptr [rbp + 5672]                    # rhs
                        mov              r8d, 9                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n303_disjunction_af
                        mov              rax, qword ptr [rbp + 5664]
                        mov              qword ptr [rbp + 5552], rax
                        mov              rax, qword ptr [rbp + 5672]
                        mov              qword ptr [rbp + 5560], rax
                                                                                        jmp   n312_var_α
#-----------------------------------------------------------------------------------------------------------------------
n312_var_α:
                        mov              rax, qword ptr [rbp + 7664]
                        mov              qword ptr [rbp + 5536], rax
                        mov              rax, qword ptr [rbp + 7672]
                        mov              qword ptr [rbp + 5544], rax
                                                                                        jmp   n313_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n313_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 5536]
                        mov              qword ptr [rbp + 5504], rax
                        mov              rax, qword ptr [rbp + 5544]
                        mov              qword ptr [rbp + 5512], rax
                        .section         .rodata
.Lrkfn680:              .string          "cset"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn680]                         # fn
                        lea              rsi, [rbp + 5504]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5488], rax
                        mov              qword ptr [rbp + 5496], rdx
                        cmp              eax, 104
                                                                                        je    n316_lit_string_α
                                                                                        jmp   n314_call_builtin_icon_α
n313_call_builtin_icon_β:
                                                                                        jmp   n316_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n314_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 5488]
                        mov              qword ptr [rbp + 5456], rax
                        mov              rax, qword ptr [rbp + 5496]
                        mov              qword ptr [rbp + 5464], rax
                        .section         .rodata
.Lrkfn682:              .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn682]                         # fn
                        lea              rsi, [rbp + 5456]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5440], rax
                        mov              qword ptr [rbp + 5448], rdx
                        cmp              eax, 104
                                                                                        je    n316_lit_string_α
                                                                                        jmp   n315_assign_α
n314_call_builtin_icon_β:
                                                                                        jmp   n316_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n315_assign_α:
                        mov              rax, qword ptr [rbp + 5440]
                        mov              rdx, qword ptr [rbp + 5448]
                        mov              qword ptr [rbp + 7664], rax
                        mov              qword ptr [rbp + 7672], rdx
                        mov              qword ptr [rbp + 5424], rax
                        mov              qword ptr [rbp + 5432], rdx
                                                                                        jmp   n303_disjunction_as
n315_assign_β:
                                                                                        jmp   n316_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n316_lit_string_α:
                        mov              qword ptr [rbp + 5216], 2                      # result
                        mov              dword ptr [rbp + 5220], 11
                        mov              rax, qword ptr [rip + .Lx684_0]
                        mov              qword ptr [rbp + 5224], rax
                                                                                        jmp   n317_lit_integer_α
.Lx684_0:
                        .quad            .Lx684_0_s
.Lx684_0_s:
                        .string          "1 metafile "
#-----------------------------------------------------------------------------------------------------------------------
n317_lit_integer_α:
                        mov              qword ptr [rbp + 5280], 3                      # result
                        mov              rax, qword ptr [rip + .Lx685_0]
                        mov              qword ptr [rbp + 5288], rax
                                                                                        jmp   n318_call_proc_staged_α
.Lx685_0:
                        .quad            125
#-----------------------------------------------------------------------------------------------------------------------
n318_call_proc_staged_α:
                        lea              rsi, [rbp + 5280]
                        call             proc_pct_dcα
                                                                                        jmp   .Lx687_2
.Lx687_2:
                        mov              qword ptr [rbp + 5232], rax
                        mov              qword ptr [rbp + 5240], rdx
                        cmp              eax, 104
                                                                                        je    n324_call_builtin_icon_α
                                                                                        jmp   n319_lit_string_α
n318_call_proc_staged_β:
                                                                                        jmp   n324_call_builtin_icon_α
.Lx687_0:
                        .quad            .Lx687_0_s
.Lx687_0_s:
                        .string          "pct"
#-----------------------------------------------------------------------------------------------------------------------
n319_lit_string_α:
                        mov              qword ptr [rbp + 5296], 2                      # result
                        mov              dword ptr [rbp + 5300], 1
                        mov              rax, qword ptr [rip + .Lx688_0]
                        mov              qword ptr [rbp + 5304], rax
                                                                                        jmp   n320_lit_integer_α
.Lx688_0:
                        .quad            .Lx688_0_s
.Lx688_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n320_lit_integer_α:
                        mov              qword ptr [rbp + 5360], 3                      # result
                        mov              rax, qword ptr [rip + .Lx689_0]
                        mov              qword ptr [rbp + 5368], rax
                                                                                        jmp   n321_call_proc_staged_α
.Lx689_0:
                        .quad            100
#-----------------------------------------------------------------------------------------------------------------------
n321_call_proc_staged_α:
                        lea              rsi, [rbp + 5360]
                        call             proc_pct_dcα
                                                                                        jmp   .Lx691_2
.Lx691_2:
                        mov              qword ptr [rbp + 5312], rax
                        mov              qword ptr [rbp + 5320], rdx
                        cmp              eax, 104
                                                                                        je    n324_call_builtin_icon_α
                                                                                        jmp   n322_lit_string_α
n321_call_proc_staged_β:
                                                                                        jmp   n324_call_builtin_icon_α
.Lx691_0:
                        .quad            .Lx691_0_s
.Lx691_0_s:
                        .string          "pct"
#-----------------------------------------------------------------------------------------------------------------------
n322_lit_string_α:
                        mov              qword ptr [rbp + 5376], 2                      # result
                        mov              dword ptr [rbp + 5380], 11
                        mov              rax, qword ptr [rip + .Lx692_0]
                        mov              qword ptr [rbp + 5384], rax
                                                                                        jmp   n323_call_builtin_icon_α
.Lx692_0:
                        .quad            .Lx692_0_s
.Lx692_0_s:
                        .string          " 0 0 0 init"
#-----------------------------------------------------------------------------------------------------------------------
n323_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 5216]
                        mov              qword ptr [rbp + 5120], rax
                        mov              rax, qword ptr [rbp + 5224]
                        mov              qword ptr [rbp + 5128], rax
                        mov              rax, qword ptr [rbp + 5232]
                        mov              qword ptr [rbp + 5136], rax
                        mov              rax, qword ptr [rbp + 5240]
                        mov              qword ptr [rbp + 5144], rax
                        mov              rax, qword ptr [rbp + 5296]
                        mov              qword ptr [rbp + 5152], rax
                        mov              rax, qword ptr [rbp + 5304]
                        mov              qword ptr [rbp + 5160], rax
                        mov              rax, qword ptr [rbp + 5312]
                        mov              qword ptr [rbp + 5168], rax
                        mov              rax, qword ptr [rbp + 5320]
                        mov              qword ptr [rbp + 5176], rax
                        mov              rax, qword ptr [rbp + 5376]
                        mov              qword ptr [rbp + 5184], rax
                        mov              rax, qword ptr [rbp + 5384]
                        mov              qword ptr [rbp + 5192], rax
                        .section         .rodata
.Lrkfn694:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn694]                         # fn
                        lea              rsi, [rbp + 5120]                              # args
                        mov              edx, 5                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5104], rax
                        mov              qword ptr [rbp + 5112], rdx
                        cmp              eax, 104
                                                                                        je    n324_call_builtin_icon_α
                                                                                        jmp   n324_call_builtin_icon_α
n323_call_builtin_icon_β:
                                                                                        jmp   n324_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n324_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn696:              .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn696]                         # fn
                        lea              rsi, [rbp + 5088]                              # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5072], rax
                        mov              qword ptr [rbp + 5080], rdx
                        cmp              eax, 104
                                                                                        je    n326_lit_real_α
                                                                                        jmp   n325_assign_α
n324_call_builtin_icon_β:
                                                                                        jmp   n326_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n325_assign_α:
                        mov              rax, qword ptr [rbp + 5072]
                        mov              rdx, qword ptr [rbp + 5080]
                        mov              qword ptr [rbp + 7584], rax
                        mov              qword ptr [rbp + 7592], rdx
                                                                                        jmp   n326_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n326_lit_real_α:
                        mov              qword ptr [rbp + 5024], 5                      # result
                        mov              rax, qword ptr [rip + .Lx698_0]
                        mov              qword ptr [rbp + 5032], rax
                                                                                        jmp   n327_var_α
.Lx698_0:
                        .quad            4618760250204063342
#-----------------------------------------------------------------------------------------------------------------------
n327_var_α:
                        mov              rax, qword ptr [rbp + 7488]
                        mov              qword ptr [rbp + 5056], rax
                        mov              rax, qword ptr [rbp + 7496]
                        mov              qword ptr [rbp + 5064], rax
                                                                                        jmp   n328_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n328_unop_α:
                        mov              rdi, qword ptr [rbp + 7488]                    # lo
                        mov              rsi, qword ptr [rbp + 7496]                    # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 5040], rax
                        mov              qword ptr [rbp + 5048], rdx
                                                                                        jmp   n329_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n329_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 5040]
                        cmp              eax, 5
                                                                                        je    .Lx703_1
                        cmp              eax, 3
                                                                                        jne   .Lx703_0
                        mov              eax, dword ptr [rbp + 5024]
                        cmp              eax, 3
                                                                                        jne   .Lx703_0
.Lx703_1:
                        mov              rax, qword ptr [rbp + 5040]
                        mov              qword ptr [rbp + 5008], rax
                        mov              rax, qword ptr [rbp + 5048]
                        mov              qword ptr [rbp + 5016], rax
                                                                                        jmp   n330_binop_α
.Lx703_0:
                        lea              rdi, [rbp + 5040]                              # self
                        lea              rsi, [rbp + 5024]                              # other
                        lea              rdx, [rbp + 5008]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n330_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n330_binop_α:
                        mov              rdi, qword ptr [rbp + 5024]
                        mov              rsi, qword ptr [rbp + 5032]
                        mov              rdx, qword ptr [rbp + 5008]
                        mov              rcx, qword ptr [rbp + 5016]
                        call             rt_div@PLT
                        cmp              eax, 104
                                                                                        je    n332_lit_real_α
                        mov              qword ptr [rbp + 4992], rax
                        mov              qword ptr [rbp + 5000], rdx
                                                                                        jmp   n331_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n331_assign_α:
                        mov              rax, qword ptr [rbp + 4992]
                        mov              rdx, qword ptr [rbp + 5000]
                        mov              qword ptr [rbp + 7696], rax
                        mov              qword ptr [rbp + 7704], rdx
                                                                                        jmp   n332_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n332_lit_real_α:
                        mov              qword ptr [rbp + 4912], 5                      # result
                        mov              rax, qword ptr [rip + .Lx706_0]
                        mov              qword ptr [rbp + 4920], rax
                                                                                        jmp   n333_var_α
.Lx706_0:
                        .quad            4609753050949322350
#-----------------------------------------------------------------------------------------------------------------------
n333_var_α:
                        mov              rax, qword ptr [rbp + 7696]
                        mov              qword ptr [rbp + 4960], rax
                        mov              rax, qword ptr [rbp + 7704]
                        mov              qword ptr [rbp + 4968], rax
                                                                                        jmp   n334_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n334_lit_integer_α:
                        mov              qword ptr [rbp + 4976], 3                      # result
                        mov              rax, qword ptr [rip + .Lx709_0]
                        mov              qword ptr [rbp + 4984], rax
                                                                                        jmp   n335_coerce_numeric_α
.Lx709_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n335_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 7696]
                        cmp              eax, 5
                                                                                        je    .Lx711_1
                        cmp              eax, 3
                                                                                        jne   .Lx711_0
                        mov              eax, dword ptr [rbp + 4976]
                        cmp              eax, 3
                                                                                        jne   .Lx711_0
.Lx711_1:
                        mov              rax, qword ptr [rbp + 7696]
                        mov              qword ptr [rbp + 4944], rax
                        mov              rax, qword ptr [rbp + 7704]
                        mov              qword ptr [rbp + 4952], rax
                                                                                        jmp   n336_binop_α
.Lx711_0:
                        lea              rdi, [rbp + 7696]                              # self
                        lea              rsi, [rbp + 4976]                              # other
                        lea              rdx, [rbp + 4944]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n336_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n336_binop_α:
                        mov              rdi, qword ptr [rbp + 4944]
                        mov              rsi, qword ptr [rbp + 4952]
                        mov              rdx, qword ptr [rbp + 4976]
                        mov              rcx, qword ptr [rbp + 4984]
                        call             rt_div@PLT
                        cmp              eax, 104
                                                                                        je    n340_var_α
                        mov              qword ptr [rbp + 4928], rax
                        mov              qword ptr [rbp + 4936], rdx
                                                                                        jmp   n337_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n337_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 4928]
                        cmp              eax, 5
                                                                                        je    .Lx714_1
                        cmp              eax, 3
                                                                                        jne   .Lx714_0
                        mov              eax, dword ptr [rbp + 4912]
                        cmp              eax, 3
                                                                                        jne   .Lx714_0
.Lx714_1:
                        mov              rax, qword ptr [rbp + 4928]
                        mov              qword ptr [rbp + 4896], rax
                        mov              rax, qword ptr [rbp + 4936]
                        mov              qword ptr [rbp + 4904], rax
                                                                                        jmp   n338_binop_α
.Lx714_0:
                        lea              rdi, [rbp + 4928]                              # self
                        lea              rsi, [rbp + 4912]                              # other
                        lea              rdx, [rbp + 4896]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n338_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n338_binop_α:
                        mov              rdi, qword ptr [rbp + 4912]
                        mov              rsi, qword ptr [rbp + 4920]
                        mov              rdx, qword ptr [rbp + 4896]
                        mov              rcx, qword ptr [rbp + 4904]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        je    n340_var_α
                        mov              qword ptr [rbp + 4880], rax
                        mov              qword ptr [rbp + 4888], rdx
                                                                                        jmp   n339_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n339_assign_α:
                        mov              rax, qword ptr [rbp + 4880]
                        mov              rdx, qword ptr [rbp + 4888]
                        mov              qword ptr [rbp + 7680], rax
                        mov              qword ptr [rbp + 7688], rdx
                                                                                        jmp   n340_var_α
#-----------------------------------------------------------------------------------------------------------------------
n340_var_α:
                        mov              rax, qword ptr [rbp + 7664]
                        mov              qword ptr [rbp + 4336], rax
                        mov              rax, qword ptr [rbp + 7672]
                        mov              qword ptr [rbp + 4344], rax
                                                                                        jmp   n341_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n341_iterate_α:
                        mov              qword ptr [rbp + 4320], 0
.Lx720_0:
                        mov              rdi, qword ptr [rbp + 4336]                    # obj
                        mov              rsi, qword ptr [rbp + 4344]                    # obj
                        mov              rdx, qword ptr [rbp + 4320]                    # idx
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 4304], rax
                        mov              qword ptr [rbp + 4312], rdx
                        cmp              rax, 99
                                                                                        je    n366_lit_integer_α
                                                                                        jmp   n342_assign_α
n341_iterate_β:
                        inc              qword ptr [rbp + 4320]
                                                                                        jmp   .Lx720_0
#-----------------------------------------------------------------------------------------------------------------------
n342_assign_α:
                        mov              rax, qword ptr [rbp + 4304]
                        mov              rdx, qword ptr [rbp + 4312]
                        mov              qword ptr [rbp + 7648], rax
                        mov              qword ptr [rbp + 7656], rdx
                                                                                        jmp   n343_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n343_bound_α:
                        mov              qword ptr [rbp + 4352], rsp
                                                                                        jmp   n344_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n344_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7584]
                        mov              qword ptr [rbp + 4800], rax
                        mov              qword ptr [rbp + 4808], rdx
                                                                                        jmp   n345_var_α
#-----------------------------------------------------------------------------------------------------------------------
n345_var_α:
                        mov              rax, qword ptr [rbp + 7648]
                        mov              qword ptr [rbp + 4816], rax
                        mov              rax, qword ptr [rbp + 7656]
                        mov              qword ptr [rbp + 4824], rax
                                                                                        jmp   n346_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n346_subscript_α:
                        mov              rdi, qword ptr [rbp + 4800]                    # base
                        mov              rsi, qword ptr [rbp + 4808]                    # base
                        mov              rdx, qword ptr [rbp + 4816]                    # idx
                        mov              rcx, qword ptr [rbp + 4824]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n349_lit_integer_α
                        mov              qword ptr [rbp + 4832], rax
                        mov              qword ptr [rbp + 4840], rdx
                                                                                        jmp   n347_var_α
#-----------------------------------------------------------------------------------------------------------------------
n347_var_α:
                        mov              rax, qword ptr [rbp + 7680]
                        mov              qword ptr [rbp + 4864], rax
                        mov              rax, qword ptr [rbp + 7688]
                        mov              qword ptr [rbp + 4872], rax
                                                                                        jmp   n348_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n348_assign_var_α:
                        mov              rdi, qword ptr [rbp + 4832]                    # var
                        mov              rsi, qword ptr [rbp + 4840]                    # var
                        mov              rdx, qword ptr [rbp + 4864]                    # val
                        mov              rcx, qword ptr [rbp + 4872]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n349_lit_integer_α
                        mov              qword ptr [rbp + 4848], rax
                        mov              qword ptr [rbp + 4856], rdx
                                                                                        jmp   n349_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n349_lit_integer_α:
                        mov              qword ptr [rbp + 4736], 3                      # result
                        mov              rax, qword ptr [rip + .Lx732_0]
                        mov              qword ptr [rbp + 4744], rax
                                                                                        jmp   n350_var_α
.Lx732_0:
                        .quad            47
#-----------------------------------------------------------------------------------------------------------------------
n350_var_α:
                        mov              rax, qword ptr [rbp + 7680]
                        mov              qword ptr [rbp + 4752], rax
                        mov              rax, qword ptr [rbp + 7688]
                        mov              qword ptr [rbp + 4760], rax
                                                                                        jmp   n351_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n351_lit_integer_α:
                        mov              qword ptr [rbp + 4768], 3                      # result
                        mov              rax, qword ptr [rip + .Lx735_0]
                        mov              qword ptr [rbp + 4776], rax
                                                                                        jmp   n352_lit_integer_α
.Lx735_0:
                        .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n352_lit_integer_α:
                        mov              qword ptr [rbp + 4784], 3                      # result
                        mov              rax, qword ptr [rip + .Lx736_0]
                        mov              qword ptr [rbp + 4792], rax
                                                                                        jmp   n353_call_proc_staged_α
.Lx736_0:
                        .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n353_call_proc_staged_α:
                        lea              rsi, [rbp + 4736]
                        lea              rdx, [rbp + 4752]
                        lea              rcx, [rbp + 4768]
                        lea              r8, [rbp + 4784]
                        call             proc_cart_dcα
                                                                                        jmp   .Lx738_2
.Lx738_2:
                        mov              qword ptr [rbp + 4640], rax
                        mov              qword ptr [rbp + 4648], rdx
                        cmp              eax, 104
                                                                                        je    n354_lit_string_α
                                                                                        jmp   n354_lit_string_α
n353_call_proc_staged_β:
                                                                                        jmp   n354_lit_string_α
.Lx738_0:
                        .quad            .Lx738_0_s
.Lx738_0_s:
                        .string          "cart"
#-----------------------------------------------------------------------------------------------------------------------
n354_lit_string_α:
                        mov              qword ptr [rbp + 4592], 2                      # result
                        mov              dword ptr [rbp + 4596], 1
                        mov              rax, qword ptr [rip + .Lx739_0]
                        mov              qword ptr [rbp + 4600], rax
                                                                                        jmp   n355_var_α
.Lx739_0:
                        .quad            .Lx739_0_s
.Lx739_0_s:
                        .string          "("
#-----------------------------------------------------------------------------------------------------------------------
n355_var_α:
                        mov              rax, qword ptr [rbp + 7648]
                        mov              qword ptr [rbp + 4608], rax
                        mov              rax, qword ptr [rbp + 7656]
                        mov              qword ptr [rbp + 4616], rax
                                                                                        jmp   n356_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n356_lit_string_α:
                        mov              qword ptr [rbp + 4624], 2                      # result
                        mov              dword ptr [rbp + 4628], 6
                        mov              rax, qword ptr [rip + .Lx742_0]
                        mov              qword ptr [rbp + 4632], rax
                                                                                        jmp   n357_call_builtin_icon_α
.Lx742_0:
                        .quad            .Lx742_0_s
.Lx742_0_s:
                        .string          ") text"
#-----------------------------------------------------------------------------------------------------------------------
n357_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 4592]
                        mov              qword ptr [rbp + 4528], rax
                        mov              rax, qword ptr [rbp + 4600]
                        mov              qword ptr [rbp + 4536], rax
                        mov              rax, qword ptr [rbp + 4608]
                        mov              qword ptr [rbp + 4544], rax
                        mov              rax, qword ptr [rbp + 4616]
                        mov              qword ptr [rbp + 4552], rax
                        mov              rax, qword ptr [rbp + 4624]
                        mov              qword ptr [rbp + 4560], rax
                        mov              rax, qword ptr [rbp + 4632]
                        mov              qword ptr [rbp + 4568], rax
                        .section         .rodata
.Lrkfn744:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn744]                         # fn
                        lea              rsi, [rbp + 4528]                              # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4512], rax
                        mov              qword ptr [rbp + 4520], rdx
                        cmp              eax, 104
                                                                                        je    n358_var_α
                                                                                        jmp   n358_var_α
n357_call_builtin_icon_β:
                                                                                        jmp   n358_var_α
#-----------------------------------------------------------------------------------------------------------------------
n358_var_α:
                        mov              rax, qword ptr [rbp + 7680]
                        mov              qword ptr [rbp + 4480], rax
                        mov              rax, qword ptr [rbp + 7688]
                        mov              qword ptr [rbp + 4488], rax
                                                                                        jmp   n359_var_α
#-----------------------------------------------------------------------------------------------------------------------
n359_var_α:
                        mov              rax, qword ptr [rbp + 7696]
                        mov              qword ptr [rbp + 4496], rax
                        mov              rax, qword ptr [rbp + 7704]
                        mov              qword ptr [rbp + 4504], rax
                                                                                        jmp   n360_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n360_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 7680]
                        cmp              eax, 5
                                                                                        je    .Lx750_1
                        cmp              eax, 3
                                                                                        jne   .Lx750_0
                        mov              eax, dword ptr [rbp + 7696]
                        cmp              eax, 3
                                                                                        jne   .Lx750_0
.Lx750_1:
                        mov              rax, qword ptr [rbp + 7680]
                        mov              qword ptr [rbp + 4464], rax
                        mov              rax, qword ptr [rbp + 7688]
                        mov              qword ptr [rbp + 4472], rax
                                                                                        jmp   n361_coerce_numeric_α
.Lx750_0:
                        lea              rdi, [rbp + 7680]                              # self
                        lea              rsi, [rbp + 7696]                              # other
                        lea              rdx, [rbp + 4464]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n361_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n361_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 7696]
                        cmp              eax, 5
                                                                                        je    .Lx752_1
                        cmp              eax, 3
                                                                                        jne   .Lx752_0
                        mov              eax, dword ptr [rbp + 7680]
                        cmp              eax, 3
                                                                                        jne   .Lx752_0
.Lx752_1:
                        mov              rax, qword ptr [rbp + 7696]
                        mov              qword ptr [rbp + 4448], rax
                        mov              rax, qword ptr [rbp + 7704]
                        mov              qword ptr [rbp + 4456], rax
                                                                                        jmp   n362_binop_α
.Lx752_0:
                        lea              rdi, [rbp + 7696]                              # self
                        lea              rsi, [rbp + 7680]                              # other
                        lea              rdx, [rbp + 4448]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n362_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n362_binop_α:
                        mov              eax, dword ptr [rbp + 4464]
                        cmp              eax, 3
                                                                                        jne   .Lx753_0
                        mov              eax, dword ptr [rbp + 4448]
                        cmp              eax, 3
                                                                                        jne   .Lx753_0
                        mov              rax, qword ptr [rbp + 4472]
                        mov              rcx, qword ptr [rbp + 4456]
                        sub              rax, rcx
                        mov              qword ptr [rbp + 4432], 3
                        mov              qword ptr [rbp + 4440], rax
                                                                                        jmp   n363_assign_α
.Lx753_0:
                        mov              rdi, qword ptr [rbp + 4464]
                        mov              rsi, qword ptr [rbp + 4472]
                        mov              rdx, qword ptr [rbp + 4448]
                        mov              rcx, qword ptr [rbp + 4456]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        je    n365_unmark_α
                        mov              qword ptr [rbp + 4432], rax
                        mov              qword ptr [rbp + 4440], rdx
                                                                                        jmp   n363_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n363_assign_α:
                        mov              rax, qword ptr [rbp + 4432]
                        mov              rdx, qword ptr [rbp + 4440]
                        mov              qword ptr [rbp + 7680], rax
                        mov              qword ptr [rbp + 7688], rdx
                        mov              qword ptr [rbp + 4416], rax
                        mov              qword ptr [rbp + 4424], rdx
                                                                                        jmp   n364_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n364_conjunction_α:
                        mov              rax, qword ptr [rbp + 4416]
                        mov              qword ptr [rbp + 4400], rax
                        mov              rax, qword ptr [rbp + 4424]
                        mov              qword ptr [rbp + 4408], rax
                                                                                        jmp   n365_unmark_α
n364_conjunction_β:
                                                                                        jmp   n365_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n365_unmark_α:
                        mov              rsp, qword ptr [rbp + 4352]
                                                                                        jmp   n341_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n366_lit_integer_α:
                        mov              qword ptr [rbp + 4288], 3                      # result
                        mov              rax, qword ptr [rip + .Lx758_0]
                        mov              qword ptr [rbp + 4296], rax
                                                                                        jmp   n367_assign_α
.Lx758_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n367_assign_α:
                        mov              rax, qword ptr [rbp + 4288]
                        mov              rdx, qword ptr [rbp + 4296]
                        mov              qword ptr [rbp + 7552], rax
                        mov              qword ptr [rbp + 7560], rdx
                                                                                        jmp   n368_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n368_lit_integer_α:
                        mov              qword ptr [rbp + 4272], 3                      # result
                        mov              rax, qword ptr [rip + .Lx760_0]
                        mov              qword ptr [rbp + 4280], rax
                                                                                        jmp   n369_assign_α
.Lx760_0:
                        .quad            250
#-----------------------------------------------------------------------------------------------------------------------
n369_assign_α:
                        mov              rax, qword ptr [rbp + 4272]
                        mov              rdx, qword ptr [rbp + 4280]
                        mov              qword ptr [1879052304], rax                    # red
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n370_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n370_lit_integer_α:
                        mov              qword ptr [rbp + 4256], 3                      # result
                        mov              rax, qword ptr [rip + .Lx762_0]
                        mov              qword ptr [rbp + 4264], rax
                                                                                        jmp   n371_assign_α
.Lx762_0:
                        .quad            255
#-----------------------------------------------------------------------------------------------------------------------
n371_assign_α:
                        mov              rax, qword ptr [rbp + 4256]
                        mov              rdx, qword ptr [rbp + 4264]
                        mov              qword ptr [1879052320], rax                    # green
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n372_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n372_lit_integer_α:
                        mov              qword ptr [rbp + 4240], 3                      # result
                        mov              rax, qword ptr [rip + .Lx764_0]
                        mov              qword ptr [rbp + 4248], rax
                                                                                        jmp   n373_assign_α
.Lx764_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n373_assign_α:
                        mov              rax, qword ptr [rbp + 4240]
                        mov              rdx, qword ptr [rbp + 4248]
                        mov              qword ptr [1879052336], rax                    # blue
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n374_var_α
#-----------------------------------------------------------------------------------------------------------------------
n374_var_α:
                        mov              rax, qword ptr [rbp + 7504]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 7512]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n375_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n375_iterate_α:
                        mov              qword ptr [rbp + 416], 0
.Lx769_0:
                        mov              rdi, qword ptr [rbp + 432]                     # obj
                        mov              rsi, qword ptr [rbp + 440]                     # obj
                        mov              rdx, qword ptr [rbp + 416]                     # idx
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              rax, 99
                                                                                        je    n536_lit_string_α
                                                                                        jmp   n376_assign_α
n375_iterate_β:
                        inc              qword ptr [rbp + 416]
                                                                                        jmp   .Lx769_0
#-----------------------------------------------------------------------------------------------------------------------
n376_assign_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              rdx, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 7536], rax
                        mov              qword ptr [rbp + 7544], rdx
                                                                                        jmp   n377_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n377_bound_α:
                        mov              qword ptr [rbp + 448], rsp
                                                                                        jmp   n378_var_α
#-----------------------------------------------------------------------------------------------------------------------
n378_var_α:
                        mov              rax, qword ptr [1879052304]                    # red
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 4144], rax                    # result
                        mov              qword ptr [rbp + 4152], rdx
                                                                                        jmp   n379_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n379_lit_string_α:
                        mov              qword ptr [rbp + 4160], 2                      # result
                        mov              dword ptr [rbp + 4164], 1
                        mov              rax, qword ptr [rip + .Lx774_0]
                        mov              qword ptr [rbp + 4168], rax
                                                                                        jmp   n380_var_α
.Lx774_0:
                        .quad            .Lx774_0_s
.Lx774_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n380_var_α:
                        mov              rax, qword ptr [1879052320]                    # green
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rbp + 4176], rax                    # result
                        mov              qword ptr [rbp + 4184], rdx
                                                                                        jmp   n381_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n381_lit_string_α:
                        mov              qword ptr [rbp + 4192], 2                      # result
                        mov              dword ptr [rbp + 4196], 1
                        mov              rax, qword ptr [rip + .Lx776_0]
                        mov              qword ptr [rbp + 4200], rax
                                                                                        jmp   n382_var_α
.Lx776_0:
                        .quad            .Lx776_0_s
.Lx776_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n382_var_α:
                        mov              rax, qword ptr [1879052336]                    # blue
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 4208], rax                    # result
                        mov              qword ptr [rbp + 4216], rdx
                                                                                        jmp   n383_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n383_lit_string_α:
                        mov              qword ptr [rbp + 4224], 2                      # result
                        mov              dword ptr [rbp + 4228], 6
                        mov              rax, qword ptr [rip + .Lx778_0]
                        mov              qword ptr [rbp + 4232], rax
                                                                                        jmp   n384_call_builtin_icon_α
.Lx778_0:
                        .quad            .Lx778_0_s
.Lx778_0_s:
                        .string          " color"
#-----------------------------------------------------------------------------------------------------------------------
n384_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 4144]
                        mov              qword ptr [rbp + 4032], rax
                        mov              rax, qword ptr [rbp + 4152]
                        mov              qword ptr [rbp + 4040], rax
                        mov              rax, qword ptr [rbp + 4160]
                        mov              qword ptr [rbp + 4048], rax
                        mov              rax, qword ptr [rbp + 4168]
                        mov              qword ptr [rbp + 4056], rax
                        mov              rax, qword ptr [rbp + 4176]
                        mov              qword ptr [rbp + 4064], rax
                        mov              rax, qword ptr [rbp + 4184]
                        mov              qword ptr [rbp + 4072], rax
                        mov              rax, qword ptr [rbp + 4192]
                        mov              qword ptr [rbp + 4080], rax
                        mov              rax, qword ptr [rbp + 4200]
                        mov              qword ptr [rbp + 4088], rax
                        mov              rax, qword ptr [rbp + 4208]
                        mov              qword ptr [rbp + 4096], rax
                        mov              rax, qword ptr [rbp + 4216]
                        mov              qword ptr [rbp + 4104], rax
                        mov              rax, qword ptr [rbp + 4224]
                        mov              qword ptr [rbp + 4112], rax
                        mov              rax, qword ptr [rbp + 4232]
                        mov              qword ptr [rbp + 4120], rax
                        .section         .rodata
.Lrkfn780:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn780]                         # fn
                        lea              rsi, [rbp + 4032]                              # args
                        mov              edx, 6                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4016], rax
                        mov              qword ptr [rbp + 4024], rdx
                        cmp              eax, 104
                                                                                        je    n385_lit_integer_α
                                                                                        jmp   n385_lit_integer_α
n384_call_builtin_icon_β:
                                                                                        jmp   n385_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n385_lit_integer_α:
                        mov              qword ptr [rbp + 4000], 3                      # result
                        mov              rax, qword ptr [rip + .Lx781_0]
                        mov              qword ptr [rbp + 4008], rax
                                                                                        jmp   n386_call_proc_staged_α
.Lx781_0:
                        .quad            110
#-----------------------------------------------------------------------------------------------------------------------
n386_call_proc_staged_α:
                        lea              rsi, [rbp + 4000]
                        call             proc_pct_dcα
                                                                                        jmp   .Lx783_2
.Lx783_2:
                        mov              qword ptr [rbp + 3952], rax
                        mov              qword ptr [rbp + 3960], rdx
                        cmp              eax, 104
                                                                                        je    n388_lit_integer_α
                                                                                        jmp   n387_assign_α
n386_call_proc_staged_β:
                                                                                        jmp   n388_lit_integer_α
.Lx783_0:
                        .quad            .Lx783_0_s
.Lx783_0_s:
                        .string          "pct"
#-----------------------------------------------------------------------------------------------------------------------
n387_assign_α:
                        mov              rax, qword ptr [rbp + 3952]
                        mov              rdx, qword ptr [rbp + 3960]
                        mov              qword ptr [rbp + 7616], rax
                        mov              qword ptr [rbp + 7624], rdx
                                                                                        jmp   n388_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n388_lit_integer_α:
                        mov              qword ptr [rbp + 3872], 3                      # result
                        mov              rax, qword ptr [rip + .Lx785_0]
                        mov              qword ptr [rbp + 3880], rax
                                                                                        jmp   n389_lit_integer_α
.Lx785_0:
                        .quad            100
#-----------------------------------------------------------------------------------------------------------------------
n389_lit_integer_α:
                        mov              qword ptr [rbp + 3920], 3                      # result
                        mov              rax, qword ptr [rip + .Lx786_0]
                        mov              qword ptr [rbp + 3928], rax
                                                                                        jmp   n390_var_α
.Lx786_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n390_var_α:
                        mov              rax, qword ptr [rbp + 7552]
                        mov              qword ptr [rbp + 3936], rax
                        mov              rax, qword ptr [rbp + 7560]
                        mov              qword ptr [rbp + 3944], rax
                                                                                        jmp   n391_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n391_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 7552]
                        cmp              eax, 5
                                                                                        je    .Lx790_1
                        cmp              eax, 3
                                                                                        jne   .Lx790_0
                        mov              eax, dword ptr [rbp + 3920]
                        cmp              eax, 3
                                                                                        jne   .Lx790_0
.Lx790_1:
                        mov              rax, qword ptr [rbp + 7552]
                        mov              qword ptr [rbp + 3904], rax
                        mov              rax, qword ptr [rbp + 7560]
                        mov              qword ptr [rbp + 3912], rax
                                                                                        jmp   n392_binop_α
.Lx790_0:
                        lea              rdi, [rbp + 7552]                              # self
                        lea              rsi, [rbp + 3920]                              # other
                        lea              rdx, [rbp + 3904]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n392_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n392_binop_α:
                        mov              eax, dword ptr [rbp + 3904]
                        cmp              eax, 3
                                                                                        jne   .Lx791_0
                        mov              rax, 4
                        mov              rcx, qword ptr [rbp + 3912]
                        imul             rax, rcx
                        mov              qword ptr [rbp + 3888], 3
                        mov              qword ptr [rbp + 3896], rax
                                                                                        jmp   n393_coerce_numeric_α
.Lx791_0:
                        mov              rdi, qword ptr [rbp + 3920]
                        mov              rsi, qword ptr [rbp + 3928]
                        mov              rdx, qword ptr [rbp + 3904]
                        mov              rcx, qword ptr [rbp + 3912]
                        call             rt_mul@PLT
                        cmp              eax, 104
                                                                                        je    n397_disjunction_α
                        mov              qword ptr [rbp + 3888], rax
                        mov              qword ptr [rbp + 3896], rdx
                                                                                        jmp   n393_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n393_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 3888]
                        cmp              eax, 5
                                                                                        je    .Lx793_1
                        cmp              eax, 3
                                                                                        jne   .Lx793_0
                        mov              eax, dword ptr [rbp + 3872]
                        cmp              eax, 3
                                                                                        jne   .Lx793_0
.Lx793_1:
                        mov              rax, qword ptr [rbp + 3888]
                        mov              qword ptr [rbp + 3856], rax
                        mov              rax, qword ptr [rbp + 3896]
                        mov              qword ptr [rbp + 3864], rax
                                                                                        jmp   n394_binop_α
.Lx793_0:
                        lea              rdi, [rbp + 3888]                              # self
                        lea              rsi, [rbp + 3872]                              # other
                        lea              rdx, [rbp + 3856]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n394_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n394_binop_α:
                        mov              eax, dword ptr [rbp + 3856]
                        cmp              eax, 3
                                                                                        jne   .Lx794_0
                        mov              rax, 100
                        mov              rcx, qword ptr [rbp + 3864]
                        sub              rax, rcx
                        mov              qword ptr [rbp + 3840], 3
                        mov              qword ptr [rbp + 3848], rax
                                                                                        jmp   n395_call_proc_staged_α
.Lx794_0:
                        mov              rdi, qword ptr [rbp + 3872]
                        mov              rsi, qword ptr [rbp + 3880]
                        mov              rdx, qword ptr [rbp + 3856]
                        mov              rcx, qword ptr [rbp + 3864]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        je    n397_disjunction_α
                        mov              qword ptr [rbp + 3840], rax
                        mov              qword ptr [rbp + 3848], rdx
                                                                                        jmp   n395_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n395_call_proc_staged_α:
                        lea              rsi, [rbp + 3840]
                        call             proc_pct_dcα
                                                                                        jmp   .Lx796_2
.Lx796_2:
                        mov              qword ptr [rbp + 3792], rax
                        mov              qword ptr [rbp + 3800], rdx
                        cmp              eax, 104
                                                                                        je    n397_disjunction_α
                                                                                        jmp   n396_assign_α
n395_call_proc_staged_β:
                                                                                        jmp   n397_disjunction_α
.Lx796_0:
                        .quad            .Lx796_0_s
.Lx796_0_s:
                        .string          "pct"
#-----------------------------------------------------------------------------------------------------------------------
n396_assign_α:
                        mov              rax, qword ptr [rbp + 3792]
                        mov              rdx, qword ptr [rbp + 3800]
                        mov              qword ptr [rbp + 7632], rax
                        mov              qword ptr [rbp + 7640], rdx
                                                                                        jmp   n397_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n397_disjunction_α:
                        mov              qword ptr [rbp + 3488], 0
                        mov              qword ptr [rbp + 3496], 0
                        mov              dword ptr [rbp + 3504], 0
                                                                                        jmp   n398_var_α
n397_disjunction_as:
                        mov              eax, dword ptr [rbp + 3504]
                        cmp              eax, 0
                                                                                        jne   .Lx799_0
                        mov              rax, qword ptr [rbp + 3520]
                        mov              qword ptr [rbp + 3488], rax
                        mov              rax, qword ptr [rbp + 3528]
                        mov              qword ptr [rbp + 3496], rax
                                                                                        jmp   n408_var_α
.Lx799_0:
                                                                                        jmp   n408_var_α
n397_disjunction_β:
                        mov              eax, dword ptr [rbp + 3504]
                                                                                        jmp   n408_var_α
n397_disjunction_af:
                        add              dword ptr [rbp + 3504], 1
                        mov              eax, dword ptr [rbp + 3504]
                                                                                        jmp   n408_var_α
#-----------------------------------------------------------------------------------------------------------------------
n398_var_α:
                        mov              rax, qword ptr [rbp + 7632]
                        mov              qword ptr [rbp + 3760], rax
                        mov              rax, qword ptr [rbp + 7640]
                        mov              qword ptr [rbp + 3768], rax
                                                                                        jmp   n399_lit_integer_α
n398_var_β:
                                                                                        jmp   n397_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n399_lit_integer_α:
                        mov              qword ptr [rbp + 3776], 3                      # result
                        mov              rax, qword ptr [rip + .Lx802_0]
                        mov              qword ptr [rbp + 3784], rax
                                                                                        jmp   n400_binop_test_α
.Lx802_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n400_binop_test_α:
                        mov              eax, dword ptr [rbp + 7632]
                        cmp              eax, 112
                                                                                        je    .Lx803_0
                        mov              eax, dword ptr [rbp + 3776]
                        cmp              eax, 112
                                                                                        je    .Lx803_0
                        mov              eax, dword ptr [rbp + 7632]
                        cmp              eax, 3
                                                                                        jne   .Lx803_2
                        mov              eax, dword ptr [rbp + 3776]
                        cmp              eax, 3
                                                                                        jne   .Lx803_2
.Lx803_1:
                        mov              rax, qword ptr [rbp + 7640]
                        mov              rcx, qword ptr [rbp + 3784]
                        cmp              rax, rcx
                                                                                        jle   n397_disjunction_af
                        mov              rcx, qword ptr [rbp + 3776]
                        mov              qword ptr [rbp + 3744], rcx
                        mov              rcx, qword ptr [rbp + 3784]
                        mov              qword ptr [rbp + 3752], rcx
                                                                                        jmp   n401_var_α
.Lx803_0:
                        mov              rdi, qword ptr [rbp + 7632]                    # a
                        mov              rsi, qword ptr [rbp + 7640]                    # a
                        mov              rdx, qword ptr [rbp + 3776]                    # b
                        mov              rcx, qword ptr [rbp + 3784]                    # b
                        mov              r8d, 7                                         # op
                        lea              r9, [rbp + 3744]                               # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx803_1
                        cmp              eax, 1
                                                                                        je    n397_disjunction_af
                                                                                        jmp   n401_var_α
.Lx803_2:
                        mov              rdi, qword ptr [rbp + 7632]                    # lhs
                        mov              rsi, qword ptr [rbp + 7640]                    # lhs
                        mov              rdx, qword ptr [rbp + 3776]                    # rhs
                        mov              rcx, qword ptr [rbp + 3784]                    # rhs
                        mov              r8d, 7                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n397_disjunction_af
                        mov              rax, qword ptr [rbp + 3776]
                        mov              qword ptr [rbp + 3744], rax
                        mov              rax, qword ptr [rbp + 3784]
                        mov              qword ptr [rbp + 3752], rax
                                                                                        jmp   n401_var_α
#-----------------------------------------------------------------------------------------------------------------------
n401_var_α:
                        mov              rax, qword ptr [rbp + 7616]
                        mov              qword ptr [rbp + 3648], rax
                        mov              rax, qword ptr [rbp + 7624]
                        mov              qword ptr [rbp + 3656], rax
                                                                                        jmp   n402_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n402_lit_string_α:
                        mov              qword ptr [rbp + 3664], 2                      # result
                        mov              dword ptr [rbp + 3668], 1
                        mov              rax, qword ptr [rip + .Lx806_0]
                        mov              qword ptr [rbp + 3672], rax
                                                                                        jmp   n403_var_α
.Lx806_0:
                        .quad            .Lx806_0_s
.Lx806_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n403_var_α:
                        mov              rax, qword ptr [rbp + 7632]
                        mov              qword ptr [rbp + 3680], rax
                        mov              rax, qword ptr [rbp + 7640]
                        mov              qword ptr [rbp + 3688], rax
                                                                                        jmp   n404_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n404_lit_string_α:
                        mov              qword ptr [rbp + 3696], 2                      # result
                        mov              dword ptr [rbp + 3700], 2
                        mov              rax, qword ptr [rip + .Lx809_0]
                        mov              qword ptr [rbp + 3704], rax
                                                                                        jmp   n405_var_α
.Lx809_0:
                        .quad            .Lx809_0_s
.Lx809_0_s:
                        .string          " ("
#-----------------------------------------------------------------------------------------------------------------------
n405_var_α:
                        mov              rax, qword ptr [rbp + 7552]
                        mov              qword ptr [rbp + 3712], rax
                        mov              rax, qword ptr [rbp + 7560]
                        mov              qword ptr [rbp + 3720], rax
                                                                                        jmp   n406_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n406_lit_string_α:
                        mov              qword ptr [rbp + 3728], 2                      # result
                        mov              dword ptr [rbp + 3732], 6
                        mov              rax, qword ptr [rip + .Lx812_0]
                        mov              qword ptr [rbp + 3736], rax
                                                                                        jmp   n407_call_builtin_icon_α
.Lx812_0:
                        .quad            .Lx812_0_s
.Lx812_0_s:
                        .string          ") text"
#-----------------------------------------------------------------------------------------------------------------------
n407_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3648]
                        mov              qword ptr [rbp + 3536], rax
                        mov              rax, qword ptr [rbp + 3656]
                        mov              qword ptr [rbp + 3544], rax
                        mov              rax, qword ptr [rbp + 3664]
                        mov              qword ptr [rbp + 3552], rax
                        mov              rax, qword ptr [rbp + 3672]
                        mov              qword ptr [rbp + 3560], rax
                        mov              rax, qword ptr [rbp + 3680]
                        mov              qword ptr [rbp + 3568], rax
                        mov              rax, qword ptr [rbp + 3688]
                        mov              qword ptr [rbp + 3576], rax
                        mov              rax, qword ptr [rbp + 3696]
                        mov              qword ptr [rbp + 3584], rax
                        mov              rax, qword ptr [rbp + 3704]
                        mov              qword ptr [rbp + 3592], rax
                        mov              rax, qword ptr [rbp + 3712]
                        mov              qword ptr [rbp + 3600], rax
                        mov              rax, qword ptr [rbp + 3720]
                        mov              qword ptr [rbp + 3608], rax
                        mov              rax, qword ptr [rbp + 3728]
                        mov              qword ptr [rbp + 3616], rax
                        mov              rax, qword ptr [rbp + 3736]
                        mov              qword ptr [rbp + 3624], rax
                        .section         .rodata
.Lrkfn814:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn814]                         # fn
                        lea              rsi, [rbp + 3536]                              # args
                        mov              edx, 6                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3520], rax
                        mov              qword ptr [rbp + 3528], rdx
                        cmp              eax, 104
                                                                                        je    n408_var_α
                                                                                        jmp   n397_disjunction_as
n407_call_builtin_icon_β:
                                                                                        jmp   n408_var_α
#-----------------------------------------------------------------------------------------------------------------------
n408_var_α:
                        mov              rax, qword ptr [rbp + 7536]
                        mov              qword ptr [rbp + 3472], rax
                        mov              rax, qword ptr [rbp + 7544]
                        mov              qword ptr [rbp + 3480], rax
                                                                                        jmp   n409_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n409_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 3472]                    # lo
                        mov              rsi, qword ptr [rbp + 3480]                    # hi
                        mov              rdx, r13                                       # sigma
                        mov              rcx, r14                                       # delta
                        mov              r8, r15                                        # Delta
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n410_var_α
#-----------------------------------------------------------------------------------------------------------------------
n410_var_α:
                        mov              rax, qword ptr [rbp + 7568]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 7576]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n411_scan_upto_α
#-----------------------------------------------------------------------------------------------------------------------
n411_scan_upto_α:
                        mov              qword ptr [rbp + 720], r14
.Lx822_0:
                        mov              rax, qword ptr [rbp + 720]
                        cmp              rax, r15
                                                                                        jge   n527_scan_α
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rbp + 744]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx822_1
                        mov              qword ptr [rbp + 704], 3
                        add              rax, 1
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n412_scan_tab_α
.Lx822_1:
                        inc              qword ptr [rbp + 720]
                                                                                        jmp   .Lx822_0
n411_scan_upto_β:
                        inc              qword ptr [rbp + 720]
                                                                                        jmp   .Lx822_0
#-----------------------------------------------------------------------------------------------------------------------
n412_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 712]
                        cmp              rax, 1
                                                                                        jge   .Lx824_0
                        add              rax, r15
                        add              rax, 1
.Lx824_0:
                        cmp              rax, 1
                                                                                        jge   .Lx824_239
                        add              rsp, 16
                                                                                        jmp   n411_scan_upto_β
.Lx824_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx824_240
                        add              rsp, 16
                                                                                        jmp   n411_scan_upto_β
.Lx824_240:
                        mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        call             rt_substr@PLT
                        pop              r10
                        pop              r10
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n413_var_α
n412_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n411_scan_upto_β
#-----------------------------------------------------------------------------------------------------------------------
n413_var_α:
                        mov              rax, qword ptr [rbp + 7568]
                        mov              qword ptr [rbp + 3456], rax
                        mov              rax, qword ptr [rbp + 7576]
                        mov              qword ptr [rbp + 3464], rax
                                                                                        jmp   n414_scan_many_α
#-----------------------------------------------------------------------------------------------------------------------
n414_scan_many_α:
                        mov              eax, r14d
.Lx828_0:
                        cmp              eax, r15d
                                                                                        jge   .Lx828_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rbp + 3464]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx828_1
                        add              eax, 1
                                                                                        jmp   .Lx828_0
.Lx828_1:
                        cmp              eax, r14d
                                                                                        je    n417_lit_integer_α
                        mov              qword ptr [rbp + 3440], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rbp + 3448], rcx
                                                                                        jmp   n415_scan_tab_α
n414_scan_many_β:
                                                                                        jmp   n417_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n415_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 3448]
                        cmp              rax, 1
                                                                                        jge   .Lx830_0
                        add              rax, r15
                        add              rax, 1
.Lx830_0:
                        cmp              rax, 1
                                                                                        jge   .Lx830_239
                        add              rsp, 16
                                                                                        jmp   n417_lit_integer_α
.Lx830_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx830_240
                        add              rsp, 16
                                                                                        jmp   n417_lit_integer_α
.Lx830_240:
                        mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        call             rt_substr@PLT
                        pop              r10
                        pop              r10
                        mov              qword ptr [rbp + 3408], rax
                        mov              qword ptr [rbp + 3416], rdx
                                                                                        jmp   n416_assign_α
n415_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n417_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n416_assign_α:
                        mov              rax, qword ptr [rbp + 3408]
                        mov              rdx, qword ptr [rbp + 3416]
                        mov              qword ptr [rbp + 7600], rax
                        mov              qword ptr [rbp + 7608], rdx
                                                                                        jmp   n417_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n417_lit_integer_α:
                        mov              qword ptr [rbp + 3248], 3                      # result
                        mov              rax, qword ptr [rip + .Lx832_0]
                        mov              qword ptr [rbp + 3256], rax
                                                                                        jmp   n418_var_ref_α
.Lx832_0:
                        .quad            45
#-----------------------------------------------------------------------------------------------------------------------
n418_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7584]
                        mov              qword ptr [rbp + 3264], rax
                        mov              qword ptr [rbp + 3272], rdx
                                                                                        jmp   n419_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n419_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7600]
                        mov              qword ptr [rbp + 3280], rax
                        mov              qword ptr [rbp + 3288], rdx
                                                                                        jmp   n420_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n420_lit_integer_α:
                        mov              qword ptr [rbp + 3296], 3                      # result
                        mov              rax, qword ptr [rip + .Lx837_0]
                        mov              qword ptr [rbp + 3304], rax
                                                                                        jmp   n421_subscript_α
.Lx837_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n421_subscript_α:
                        mov              rdi, qword ptr [rbp + 3280]                    # base
                        mov              rsi, qword ptr [rbp + 3288]                    # base
                        mov              rdx, qword ptr [rbp + 3296]                    # idx
                        mov              rcx, qword ptr [rbp + 3304]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n428_lit_string_α
                        mov              qword ptr [rbp + 3312], rax
                        mov              qword ptr [rbp + 3320], rdx
                                                                                        jmp   n422_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n422_deref_α:
                        mov              rdi, qword ptr [rbp + 3312]                    # d
                        mov              rsi, qword ptr [rbp + 3320]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n428_lit_string_α
                        mov              qword ptr [rbp + 3328], rax
                        mov              qword ptr [rbp + 3336], rdx
                                                                                        jmp   n423_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n423_subscript_α:
                        mov              rdi, qword ptr [rbp + 3264]                    # base
                        mov              rsi, qword ptr [rbp + 3272]                    # base
                        mov              rdx, qword ptr [rbp + 3328]                    # idx
                        mov              rcx, qword ptr [rbp + 3336]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n428_lit_string_α
                        mov              qword ptr [rbp + 3344], rax
                        mov              qword ptr [rbp + 3352], rdx
                                                                                        jmp   n424_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n424_deref_α:
                        mov              rdi, qword ptr [rbp + 3344]                    # d
                        mov              rsi, qword ptr [rbp + 3352]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n428_lit_string_α
                        mov              qword ptr [rbp + 3360], rax
                        mov              qword ptr [rbp + 3368], rdx
                                                                                        jmp   n425_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n425_lit_integer_α:
                        mov              qword ptr [rbp + 3376], 3                      # result
                        mov              rax, qword ptr [rip + .Lx842_0]
                        mov              qword ptr [rbp + 3384], rax
                                                                                        jmp   n426_lit_integer_α
.Lx842_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n426_lit_integer_α:
                        mov              qword ptr [rbp + 3392], 3                      # result
                        mov              rax, qword ptr [rip + .Lx843_0]
                        mov              qword ptr [rbp + 3400], rax
                                                                                        jmp   n427_call_proc_staged_α
.Lx843_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n427_call_proc_staged_α:
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        lea              rsi, [rbp + 3248]
                        lea              rdx, [rbp + 3360]
                        lea              rcx, [rbp + 3376]
                        lea              r8, [rbp + 3392]
                        call             proc_cart_dcα
                                                                                        jmp   .Lx845_2
.Lx845_2:
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        mov              qword ptr [rbp + 3152], rax
                        mov              qword ptr [rbp + 3160], rdx
                        cmp              eax, 104
                                                                                        je    n428_lit_string_α
                                                                                        jmp   n428_lit_string_α
n427_call_proc_staged_β:
                                                                                        jmp   n428_lit_string_α
.Lx845_0:
                        .quad            .Lx845_0_s
.Lx845_0_s:
                        .string          "cart"
#-----------------------------------------------------------------------------------------------------------------------
n428_lit_string_α:
                        mov              qword ptr [rbp + 3136], 2                      # result
                        mov              dword ptr [rbp + 3140], 6
                        mov              rax, qword ptr [rip + .Lx846_0]
                        mov              qword ptr [rbp + 3144], rax
                                                                                        jmp   n429_call_builtin_icon_α
.Lx846_0:
                        .quad            .Lx846_0_s
.Lx846_0_s:
                        .string          "begin "
#-----------------------------------------------------------------------------------------------------------------------
n429_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3136]
                        mov              qword ptr [rbp + 3104], rax
                        mov              rax, qword ptr [rbp + 3144]
                        mov              qword ptr [rbp + 3112], rax
                        .section         .rodata
.Lrkfn848:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn848]                         # fn
                        lea              rsi, [rbp + 3104]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3088], rax
                        mov              qword ptr [rbp + 3096], rdx
                        cmp              eax, 104
                                                                                        je    n430_lit_integer_α
                                                                                        jmp   n430_lit_integer_α
n429_call_builtin_icon_β:
                                                                                        jmp   n430_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n430_lit_integer_α:
                        mov              qword ptr [rbp + 2928], 3                      # result
                        mov              rax, qword ptr [rip + .Lx849_0]
                        mov              qword ptr [rbp + 2936], rax
                                                                                        jmp   n431_var_ref_α
.Lx849_0:
                        .quad            45
#-----------------------------------------------------------------------------------------------------------------------
n431_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7584]
                        mov              qword ptr [rbp + 2944], rax
                        mov              qword ptr [rbp + 2952], rdx
                                                                                        jmp   n432_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n432_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7600]
                        mov              qword ptr [rbp + 2960], rax
                        mov              qword ptr [rbp + 2968], rdx
                                                                                        jmp   n433_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n433_lit_integer_α:
                        mov              qword ptr [rbp + 2976], 3                      # result
                        mov              rax, qword ptr [rip + .Lx854_0]
                        mov              qword ptr [rbp + 2984], rax
                                                                                        jmp   n434_subscript_α
.Lx854_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n434_subscript_α:
                        mov              rdi, qword ptr [rbp + 2960]                    # base
                        mov              rsi, qword ptr [rbp + 2968]                    # base
                        mov              rdx, qword ptr [rbp + 2976]                    # idx
                        mov              rcx, qword ptr [rbp + 2984]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n441_lit_string_α
                        mov              qword ptr [rbp + 2992], rax
                        mov              qword ptr [rbp + 3000], rdx
                                                                                        jmp   n435_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n435_deref_α:
                        mov              rdi, qword ptr [rbp + 2992]                    # d
                        mov              rsi, qword ptr [rbp + 3000]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n441_lit_string_α
                        mov              qword ptr [rbp + 3008], rax
                        mov              qword ptr [rbp + 3016], rdx
                                                                                        jmp   n436_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n436_subscript_α:
                        mov              rdi, qword ptr [rbp + 2944]                    # base
                        mov              rsi, qword ptr [rbp + 2952]                    # base
                        mov              rdx, qword ptr [rbp + 3008]                    # idx
                        mov              rcx, qword ptr [rbp + 3016]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n441_lit_string_α
                        mov              qword ptr [rbp + 3024], rax
                        mov              qword ptr [rbp + 3032], rdx
                                                                                        jmp   n437_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n437_deref_α:
                        mov              rdi, qword ptr [rbp + 3024]                    # d
                        mov              rsi, qword ptr [rbp + 3032]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n441_lit_string_α
                        mov              qword ptr [rbp + 3040], rax
                        mov              qword ptr [rbp + 3048], rdx
                                                                                        jmp   n438_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n438_lit_integer_α:
                        mov              qword ptr [rbp + 3056], 3                      # result
                        mov              rax, qword ptr [rip + .Lx859_0]
                        mov              qword ptr [rbp + 3064], rax
                                                                                        jmp   n439_lit_integer_α
.Lx859_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n439_lit_integer_α:
                        mov              qword ptr [rbp + 3072], 3                      # result
                        mov              rax, qword ptr [rip + .Lx860_0]
                        mov              qword ptr [rbp + 3080], rax
                                                                                        jmp   n440_call_proc_staged_α
.Lx860_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n440_call_proc_staged_α:
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        lea              rsi, [rbp + 2928]
                        lea              rdx, [rbp + 3040]
                        lea              rcx, [rbp + 3056]
                        lea              r8, [rbp + 3072]
                        call             proc_cart_dcα
                                                                                        jmp   .Lx862_2
.Lx862_2:
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        mov              qword ptr [rbp + 2832], rax
                        mov              qword ptr [rbp + 2840], rdx
                        cmp              eax, 104
                                                                                        je    n441_lit_string_α
                                                                                        jmp   n441_lit_string_α
n440_call_proc_staged_β:
                                                                                        jmp   n441_lit_string_α
.Lx862_0:
                        .quad            .Lx862_0_s
.Lx862_0_s:
                        .string          "cart"
#-----------------------------------------------------------------------------------------------------------------------
n441_lit_string_α:
                        mov              qword ptr [rbp + 2816], 2                      # result
                        mov              dword ptr [rbp + 2820], 5
                        mov              rax, qword ptr [rip + .Lx863_0]
                        mov              qword ptr [rbp + 2824], rax
                                                                                        jmp   n442_call_builtin_icon_α
.Lx863_0:
                        .quad            .Lx863_0_s
.Lx863_0_s:
                        .string          "line "
#-----------------------------------------------------------------------------------------------------------------------
n442_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2816]
                        mov              qword ptr [rbp + 2784], rax
                        mov              rax, qword ptr [rbp + 2824]
                        mov              qword ptr [rbp + 2792], rax
                        .section         .rodata
.Lrkfn865:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn865]                         # fn
                        lea              rsi, [rbp + 2784]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2768], rax
                        mov              qword ptr [rbp + 2776], rdx
                        cmp              eax, 104
                                                                                        je    n443_lit_integer_α
                                                                                        jmp   n443_lit_integer_α
n442_call_builtin_icon_β:
                                                                                        jmp   n443_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n443_lit_integer_α:
                        mov              qword ptr [rbp + 2608], 3                      # result
                        mov              rax, qword ptr [rip + .Lx866_0]
                        mov              qword ptr [rbp + 2616], rax
                                                                                        jmp   n444_var_ref_α
.Lx866_0:
                        .quad            45
#-----------------------------------------------------------------------------------------------------------------------
n444_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7584]
                        mov              qword ptr [rbp + 2624], rax
                        mov              qword ptr [rbp + 2632], rdx
                                                                                        jmp   n445_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n445_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7600]
                        mov              qword ptr [rbp + 2640], rax
                        mov              qword ptr [rbp + 2648], rdx
                                                                                        jmp   n446_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n446_lit_integer_α:
                        mov              qword ptr [rbp + 2656], 3                      # result
                        mov              rax, qword ptr [rip + .Lx871_0]
                        mov              qword ptr [rbp + 2664], rax
                                                                                        jmp   n447_subscript_α
.Lx871_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n447_subscript_α:
                        mov              rdi, qword ptr [rbp + 2640]                    # base
                        mov              rsi, qword ptr [rbp + 2648]                    # base
                        mov              rdx, qword ptr [rbp + 2656]                    # idx
                        mov              rcx, qword ptr [rbp + 2664]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n454_lit_string_α
                        mov              qword ptr [rbp + 2672], rax
                        mov              qword ptr [rbp + 2680], rdx
                                                                                        jmp   n448_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n448_deref_α:
                        mov              rdi, qword ptr [rbp + 2672]                    # d
                        mov              rsi, qword ptr [rbp + 2680]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n454_lit_string_α
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                                                                                        jmp   n449_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n449_subscript_α:
                        mov              rdi, qword ptr [rbp + 2624]                    # base
                        mov              rsi, qword ptr [rbp + 2632]                    # base
                        mov              rdx, qword ptr [rbp + 2688]                    # idx
                        mov              rcx, qword ptr [rbp + 2696]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n454_lit_string_α
                        mov              qword ptr [rbp + 2704], rax
                        mov              qword ptr [rbp + 2712], rdx
                                                                                        jmp   n450_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n450_deref_α:
                        mov              rdi, qword ptr [rbp + 2704]                    # d
                        mov              rsi, qword ptr [rbp + 2712]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n454_lit_string_α
                        mov              qword ptr [rbp + 2720], rax
                        mov              qword ptr [rbp + 2728], rdx
                                                                                        jmp   n451_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n451_lit_integer_α:
                        mov              qword ptr [rbp + 2736], 3                      # result
                        mov              rax, qword ptr [rip + .Lx876_0]
                        mov              qword ptr [rbp + 2744], rax
                                                                                        jmp   n452_lit_integer_α
.Lx876_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n452_lit_integer_α:
                        mov              qword ptr [rbp + 2752], 3                      # result
                        mov              rax, qword ptr [rip + .Lx877_0]
                        mov              qword ptr [rbp + 2760], rax
                                                                                        jmp   n453_call_proc_staged_α
.Lx877_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n453_call_proc_staged_α:
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        lea              rsi, [rbp + 2608]
                        lea              rdx, [rbp + 2720]
                        lea              rcx, [rbp + 2736]
                        lea              r8, [rbp + 2752]
                        call             proc_cart_dcα
                                                                                        jmp   .Lx879_2
.Lx879_2:
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        mov              qword ptr [rbp + 2512], rax
                        mov              qword ptr [rbp + 2520], rdx
                        cmp              eax, 104
                                                                                        je    n454_lit_string_α
                                                                                        jmp   n454_lit_string_α
n453_call_proc_staged_β:
                                                                                        jmp   n454_lit_string_α
.Lx879_0:
                        .quad            .Lx879_0_s
.Lx879_0_s:
                        .string          "cart"
#-----------------------------------------------------------------------------------------------------------------------
n454_lit_string_α:
                        mov              qword ptr [rbp + 2496], 2                      # result
                        mov              dword ptr [rbp + 2500], 5
                        mov              rax, qword ptr [rip + .Lx880_0]
                        mov              qword ptr [rbp + 2504], rax
                                                                                        jmp   n455_call_builtin_icon_α
.Lx880_0:
                        .quad            .Lx880_0_s
.Lx880_0_s:
                        .string          "line "
#-----------------------------------------------------------------------------------------------------------------------
n455_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2496]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 2504]
                        mov              qword ptr [rbp + 2472], rax
                        .section         .rodata
.Lrkfn882:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn882]                         # fn
                        lea              rsi, [rbp + 2464]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx
                        cmp              eax, 104
                                                                                        je    n456_lit_integer_α
                                                                                        jmp   n456_lit_integer_α
n455_call_builtin_icon_β:
                                                                                        jmp   n456_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n456_lit_integer_α:
                        mov              qword ptr [rbp + 2288], 3                      # result
                        mov              rax, qword ptr [rip + .Lx883_0]
                        mov              qword ptr [rbp + 2296], rax
                                                                                        jmp   n457_var_ref_α
.Lx883_0:
                        .quad            45
#-----------------------------------------------------------------------------------------------------------------------
n457_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7584]
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx
                                                                                        jmp   n458_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n458_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7600]
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx
                                                                                        jmp   n459_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n459_lit_integer_α:
                        mov              qword ptr [rbp + 2336], 3                      # result
                        mov              rax, qword ptr [rip + .Lx888_0]
                        mov              qword ptr [rbp + 2344], rax
                                                                                        jmp   n460_subscript_α
.Lx888_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n460_subscript_α:
                        mov              rdi, qword ptr [rbp + 2320]                    # base
                        mov              rsi, qword ptr [rbp + 2328]                    # base
                        mov              rdx, qword ptr [rbp + 2336]                    # idx
                        mov              rcx, qword ptr [rbp + 2344]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n467_lit_string_α
                        mov              qword ptr [rbp + 2352], rax
                        mov              qword ptr [rbp + 2360], rdx
                                                                                        jmp   n461_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n461_deref_α:
                        mov              rdi, qword ptr [rbp + 2352]                    # d
                        mov              rsi, qword ptr [rbp + 2360]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n467_lit_string_α
                        mov              qword ptr [rbp + 2368], rax
                        mov              qword ptr [rbp + 2376], rdx
                                                                                        jmp   n462_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n462_subscript_α:
                        mov              rdi, qword ptr [rbp + 2304]                    # base
                        mov              rsi, qword ptr [rbp + 2312]                    # base
                        mov              rdx, qword ptr [rbp + 2368]                    # idx
                        mov              rcx, qword ptr [rbp + 2376]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n467_lit_string_α
                        mov              qword ptr [rbp + 2384], rax
                        mov              qword ptr [rbp + 2392], rdx
                                                                                        jmp   n463_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n463_deref_α:
                        mov              rdi, qword ptr [rbp + 2384]                    # d
                        mov              rsi, qword ptr [rbp + 2392]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n467_lit_string_α
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx
                                                                                        jmp   n464_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n464_lit_integer_α:
                        mov              qword ptr [rbp + 2416], 3                      # result
                        mov              rax, qword ptr [rip + .Lx893_0]
                        mov              qword ptr [rbp + 2424], rax
                                                                                        jmp   n465_lit_integer_α
.Lx893_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n465_lit_integer_α:
                        mov              qword ptr [rbp + 2432], 3                      # result
                        mov              rax, qword ptr [rip + .Lx894_0]
                        mov              qword ptr [rbp + 2440], rax
                                                                                        jmp   n466_call_proc_staged_α
.Lx894_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n466_call_proc_staged_α:
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        lea              rsi, [rbp + 2288]
                        lea              rdx, [rbp + 2400]
                        lea              rcx, [rbp + 2416]
                        lea              r8, [rbp + 2432]
                        call             proc_cart_dcα
                                                                                        jmp   .Lx896_2
.Lx896_2:
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx
                        cmp              eax, 104
                                                                                        je    n467_lit_string_α
                                                                                        jmp   n467_lit_string_α
n466_call_proc_staged_β:
                                                                                        jmp   n467_lit_string_α
.Lx896_0:
                        .quad            .Lx896_0_s
.Lx896_0_s:
                        .string          "cart"
#-----------------------------------------------------------------------------------------------------------------------
n467_lit_string_α:
                        mov              qword ptr [rbp + 2176], 2                      # result
                        mov              dword ptr [rbp + 2180], 5
                        mov              rax, qword ptr [rip + .Lx897_0]
                        mov              qword ptr [rbp + 2184], rax
                                                                                        jmp   n468_call_builtin_icon_α
.Lx897_0:
                        .quad            .Lx897_0_s
.Lx897_0_s:
                        .string          "line "
#-----------------------------------------------------------------------------------------------------------------------
n468_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 2144], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 2152], rax
                        .section         .rodata
.Lrkfn899:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn899]                         # fn
                        lea              rsi, [rbp + 2144]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 2136], rdx
                        cmp              eax, 104
                                                                                        je    n469_lit_integer_α
                                                                                        jmp   n469_lit_integer_α
n468_call_builtin_icon_β:
                                                                                        jmp   n469_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n469_lit_integer_α:
                        mov              qword ptr [rbp + 1968], 3                      # result
                        mov              rax, qword ptr [rip + .Lx900_0]
                        mov              qword ptr [rbp + 1976], rax
                                                                                        jmp   n470_var_ref_α
.Lx900_0:
                        .quad            45
#-----------------------------------------------------------------------------------------------------------------------
n470_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7584]
                        mov              qword ptr [rbp + 1984], rax
                        mov              qword ptr [rbp + 1992], rdx
                                                                                        jmp   n471_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n471_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7600]
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx
                                                                                        jmp   n472_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n472_lit_integer_α:
                        mov              qword ptr [rbp + 2016], 3                      # result
                        mov              rax, qword ptr [rip + .Lx905_0]
                        mov              qword ptr [rbp + 2024], rax
                                                                                        jmp   n473_subscript_α
.Lx905_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n473_subscript_α:
                        mov              rdi, qword ptr [rbp + 2000]                    # base
                        mov              rsi, qword ptr [rbp + 2008]                    # base
                        mov              rdx, qword ptr [rbp + 2016]                    # idx
                        mov              rcx, qword ptr [rbp + 2024]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n480_lit_string_α
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx
                                                                                        jmp   n474_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n474_deref_α:
                        mov              rdi, qword ptr [rbp + 2032]                    # d
                        mov              rsi, qword ptr [rbp + 2040]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n480_lit_string_α
                        mov              qword ptr [rbp + 2048], rax
                        mov              qword ptr [rbp + 2056], rdx
                                                                                        jmp   n475_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n475_subscript_α:
                        mov              rdi, qword ptr [rbp + 1984]                    # base
                        mov              rsi, qword ptr [rbp + 1992]                    # base
                        mov              rdx, qword ptr [rbp + 2048]                    # idx
                        mov              rcx, qword ptr [rbp + 2056]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n480_lit_string_α
                        mov              qword ptr [rbp + 2064], rax
                        mov              qword ptr [rbp + 2072], rdx
                                                                                        jmp   n476_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n476_deref_α:
                        mov              rdi, qword ptr [rbp + 2064]                    # d
                        mov              rsi, qword ptr [rbp + 2072]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n480_lit_string_α
                        mov              qword ptr [rbp + 2080], rax
                        mov              qword ptr [rbp + 2088], rdx
                                                                                        jmp   n477_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n477_lit_integer_α:
                        mov              qword ptr [rbp + 2096], 3                      # result
                        mov              rax, qword ptr [rip + .Lx910_0]
                        mov              qword ptr [rbp + 2104], rax
                                                                                        jmp   n478_lit_integer_α
.Lx910_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n478_lit_integer_α:
                        mov              qword ptr [rbp + 2112], 3                      # result
                        mov              rax, qword ptr [rip + .Lx911_0]
                        mov              qword ptr [rbp + 2120], rax
                                                                                        jmp   n479_call_proc_staged_α
.Lx911_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n479_call_proc_staged_α:
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        lea              rsi, [rbp + 1968]
                        lea              rdx, [rbp + 2080]
                        lea              rcx, [rbp + 2096]
                        lea              r8, [rbp + 2112]
                        call             proc_cart_dcα
                                                                                        jmp   .Lx913_2
.Lx913_2:
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                        cmp              eax, 104
                                                                                        je    n480_lit_string_α
                                                                                        jmp   n480_lit_string_α
n479_call_proc_staged_β:
                                                                                        jmp   n480_lit_string_α
.Lx913_0:
                        .quad            .Lx913_0_s
.Lx913_0_s:
                        .string          "cart"
#-----------------------------------------------------------------------------------------------------------------------
n480_lit_string_α:
                        mov              qword ptr [rbp + 1856], 2                      # result
                        mov              dword ptr [rbp + 1860], 4
                        mov              rax, qword ptr [rip + .Lx914_0]
                        mov              qword ptr [rbp + 1864], rax
                                                                                        jmp   n481_call_builtin_icon_α
.Lx914_0:
                        .quad            .Lx914_0_s
.Lx914_0_s:
                        .string          "line"
#-----------------------------------------------------------------------------------------------------------------------
n481_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1856]
                        mov              qword ptr [rbp + 1824], rax
                        mov              rax, qword ptr [rbp + 1864]
                        mov              qword ptr [rbp + 1832], rax
                        .section         .rodata
.Lrkfn916:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn916]                         # fn
                        lea              rsi, [rbp + 1824]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                        cmp              eax, 104
                                                                                        je    n482_lit_integer_α
                                                                                        jmp   n482_lit_integer_α
n481_call_builtin_icon_β:
                                                                                        jmp   n482_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n482_lit_integer_α:
                        mov              qword ptr [rbp + 1648], 3                      # result
                        mov              rax, qword ptr [rip + .Lx917_0]
                        mov              qword ptr [rbp + 1656], rax
                                                                                        jmp   n483_var_ref_α
.Lx917_0:
                        .quad            45
#-----------------------------------------------------------------------------------------------------------------------
n483_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7584]
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                                                                                        jmp   n484_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n484_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7600]
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
                                                                                        jmp   n485_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n485_lit_integer_α:
                        mov              qword ptr [rbp + 1696], 3                      # result
                        mov              rax, qword ptr [rip + .Lx922_0]
                        mov              qword ptr [rbp + 1704], rax
                                                                                        jmp   n486_subscript_α
.Lx922_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n486_subscript_α:
                        mov              rdi, qword ptr [rbp + 1680]                    # base
                        mov              rsi, qword ptr [rbp + 1688]                    # base
                        mov              rdx, qword ptr [rbp + 1696]                    # idx
                        mov              rcx, qword ptr [rbp + 1704]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n493_lit_string_α
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                                                                                        jmp   n487_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n487_deref_α:
                        mov              rdi, qword ptr [rbp + 1712]                    # d
                        mov              rsi, qword ptr [rbp + 1720]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n493_lit_string_α
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx
                                                                                        jmp   n488_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n488_subscript_α:
                        mov              rdi, qword ptr [rbp + 1664]                    # base
                        mov              rsi, qword ptr [rbp + 1672]                    # base
                        mov              rdx, qword ptr [rbp + 1728]                    # idx
                        mov              rcx, qword ptr [rbp + 1736]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n493_lit_string_α
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                                                                                        jmp   n489_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n489_deref_α:
                        mov              rdi, qword ptr [rbp + 1744]                    # d
                        mov              rsi, qword ptr [rbp + 1752]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n493_lit_string_α
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx
                                                                                        jmp   n490_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n490_lit_integer_α:
                        mov              qword ptr [rbp + 1776], 3                      # result
                        mov              rax, qword ptr [rip + .Lx927_0]
                        mov              qword ptr [rbp + 1784], rax
                                                                                        jmp   n491_lit_integer_α
.Lx927_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n491_lit_integer_α:
                        mov              qword ptr [rbp + 1792], 3                      # result
                        mov              rax, qword ptr [rip + .Lx928_0]
                        mov              qword ptr [rbp + 1800], rax
                                                                                        jmp   n492_call_proc_staged_α
.Lx928_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n492_call_proc_staged_α:
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        lea              rsi, [rbp + 1648]
                        lea              rdx, [rbp + 1760]
                        lea              rcx, [rbp + 1776]
                        lea              r8, [rbp + 1792]
                        call             proc_cart_dcα
                                                                                        jmp   .Lx930_2
.Lx930_2:
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                        cmp              eax, 104
                                                                                        je    n493_lit_string_α
                                                                                        jmp   n493_lit_string_α
n492_call_proc_staged_β:
                                                                                        jmp   n493_lit_string_α
.Lx930_0:
                        .quad            .Lx930_0_s
.Lx930_0_s:
                        .string          "cart"
#-----------------------------------------------------------------------------------------------------------------------
n493_lit_string_α:
                        mov              qword ptr [rbp + 1536], 2                      # result
                        mov              dword ptr [rbp + 1540], 12
                        mov              rax, qword ptr [rip + .Lx931_0]
                        mov              qword ptr [rbp + 1544], rax
                                                                                        jmp   n494_call_builtin_icon_α
.Lx931_0:
                        .quad            .Lx931_0_s
.Lx931_0_s:
                        .string          "line stroke "
#-----------------------------------------------------------------------------------------------------------------------
n494_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 1512], rax
                        .section         .rodata
.Lrkfn933:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn933]                         # fn
                        lea              rsi, [rbp + 1504]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                        cmp              eax, 104
                                                                                        je    n495_lit_integer_α
                                                                                        jmp   n495_lit_integer_α
n494_call_builtin_icon_β:
                                                                                        jmp   n495_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n495_lit_integer_α:
                        mov              qword ptr [rbp + 1328], 3                      # result
                        mov              rax, qword ptr [rip + .Lx934_0]
                        mov              qword ptr [rbp + 1336], rax
                                                                                        jmp   n496_var_ref_α
.Lx934_0:
                        .quad            45
#-----------------------------------------------------------------------------------------------------------------------
n496_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7584]
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                                                                                        jmp   n497_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n497_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7600]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                                                                                        jmp   n498_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n498_lit_integer_α:
                        mov              qword ptr [rbp + 1376], 3                      # result
                        mov              rax, qword ptr [rip + .Lx939_0]
                        mov              qword ptr [rbp + 1384], rax
                                                                                        jmp   n499_subscript_α
.Lx939_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n499_subscript_α:
                        mov              rdi, qword ptr [rbp + 1360]                    # base
                        mov              rsi, qword ptr [rbp + 1368]                    # base
                        mov              rdx, qword ptr [rbp + 1376]                    # idx
                        mov              rcx, qword ptr [rbp + 1384]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n506_lit_string_α
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                                                                                        jmp   n500_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n500_deref_α:
                        mov              rdi, qword ptr [rbp + 1392]                    # d
                        mov              rsi, qword ptr [rbp + 1400]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n506_lit_string_α
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                                                                                        jmp   n501_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n501_subscript_α:
                        mov              rdi, qword ptr [rbp + 1344]                    # base
                        mov              rsi, qword ptr [rbp + 1352]                    # base
                        mov              rdx, qword ptr [rbp + 1408]                    # idx
                        mov              rcx, qword ptr [rbp + 1416]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n506_lit_string_α
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                                                                                        jmp   n502_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n502_deref_α:
                        mov              rdi, qword ptr [rbp + 1424]                    # d
                        mov              rsi, qword ptr [rbp + 1432]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n506_lit_string_α
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                                                                                        jmp   n503_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n503_lit_integer_α:
                        mov              qword ptr [rbp + 1456], 3                      # result
                        mov              rax, qword ptr [rip + .Lx944_0]
                        mov              qword ptr [rbp + 1464], rax
                                                                                        jmp   n504_lit_integer_α
.Lx944_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n504_lit_integer_α:
                        mov              qword ptr [rbp + 1472], 3                      # result
                        mov              rax, qword ptr [rip + .Lx945_0]
                        mov              qword ptr [rbp + 1480], rax
                                                                                        jmp   n505_call_proc_staged_α
.Lx945_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n505_call_proc_staged_α:
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        lea              rsi, [rbp + 1328]
                        lea              rdx, [rbp + 1440]
                        lea              rcx, [rbp + 1456]
                        lea              r8, [rbp + 1472]
                        call             proc_cart_dcα
                                                                                        jmp   .Lx947_2
.Lx947_2:
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                        cmp              eax, 104
                                                                                        je    n506_lit_string_α
                                                                                        jmp   n506_lit_string_α
n505_call_proc_staged_β:
                                                                                        jmp   n506_lit_string_α
.Lx947_0:
                        .quad            .Lx947_0_s
.Lx947_0_s:
                        .string          "cart"
#-----------------------------------------------------------------------------------------------------------------------
n506_lit_string_α:
                        mov              qword ptr [rbp + 1216], 2                      # result
                        mov              dword ptr [rbp + 1220], 6
                        mov              rax, qword ptr [rip + .Lx948_0]
                        mov              qword ptr [rbp + 1224], rax
                                                                                        jmp   n507_call_builtin_icon_α
.Lx948_0:
                        .quad            .Lx948_0_s
.Lx948_0_s:
                        .string          "begin "
#-----------------------------------------------------------------------------------------------------------------------
n507_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1192], rax
                        .section         .rodata
.Lrkfn950:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn950]                         # fn
                        lea              rsi, [rbp + 1184]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        cmp              eax, 104
                                                                                        je    n508_lit_integer_α
                                                                                        jmp   n508_lit_integer_α
n507_call_builtin_icon_β:
                                                                                        jmp   n508_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n508_lit_integer_α:
                        mov              qword ptr [rbp + 1008], 3                      # result
                        mov              rax, qword ptr [rip + .Lx951_0]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n509_var_ref_α
.Lx951_0:
                        .quad            45
#-----------------------------------------------------------------------------------------------------------------------
n509_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7584]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                                                                                        jmp   n510_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n510_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7600]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n511_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n511_lit_integer_α:
                        mov              qword ptr [rbp + 1056], 3                      # result
                        mov              rax, qword ptr [rip + .Lx956_0]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n512_subscript_α
.Lx956_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n512_subscript_α:
                        mov              rdi, qword ptr [rbp + 1040]                    # base
                        mov              rsi, qword ptr [rbp + 1048]                    # base
                        mov              rdx, qword ptr [rbp + 1056]                    # idx
                        mov              rcx, qword ptr [rbp + 1064]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n519_lit_string_α
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                                                                                        jmp   n513_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n513_deref_α:
                        mov              rdi, qword ptr [rbp + 1072]                    # d
                        mov              rsi, qword ptr [rbp + 1080]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n519_lit_string_α
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                                                                                        jmp   n514_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n514_subscript_α:
                        mov              rdi, qword ptr [rbp + 1024]                    # base
                        mov              rsi, qword ptr [rbp + 1032]                    # base
                        mov              rdx, qword ptr [rbp + 1088]                    # idx
                        mov              rcx, qword ptr [rbp + 1096]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n519_lit_string_α
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                                                                                        jmp   n515_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n515_deref_α:
                        mov              rdi, qword ptr [rbp + 1104]                    # d
                        mov              rsi, qword ptr [rbp + 1112]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n519_lit_string_α
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   n516_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n516_lit_integer_α:
                        mov              qword ptr [rbp + 1136], 3                      # result
                        mov              rax, qword ptr [rip + .Lx961_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n517_lit_integer_α
.Lx961_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n517_lit_integer_α:
                        mov              qword ptr [rbp + 1152], 3                      # result
                        mov              rax, qword ptr [rip + .Lx962_0]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n518_call_proc_staged_α
.Lx962_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n518_call_proc_staged_α:
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        lea              rsi, [rbp + 1008]
                        lea              rdx, [rbp + 1120]
                        lea              rcx, [rbp + 1136]
                        lea              r8, [rbp + 1152]
                        call             proc_cart_dcα
                                                                                        jmp   .Lx964_2
.Lx964_2:
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              eax, 104
                                                                                        je    n519_lit_string_α
                                                                                        jmp   n519_lit_string_α
n518_call_proc_staged_β:
                                                                                        jmp   n519_lit_string_α
.Lx964_0:
                        .quad            .Lx964_0_s
.Lx964_0_s:
                        .string          "cart"
#-----------------------------------------------------------------------------------------------------------------------
n519_lit_string_α:
                        mov              qword ptr [rbp + 896], 2                       # result
                        mov              dword ptr [rbp + 900], 11
                        mov              rax, qword ptr [rip + .Lx965_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n520_call_builtin_icon_α
.Lx965_0:
                        .quad            .Lx965_0_s
.Lx965_0_s:
                        .string          "line stroke"
#-----------------------------------------------------------------------------------------------------------------------
n520_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 872], rax
                        .section         .rodata
.Lrkfn967:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn967]                         # fn
                        lea              rsi, [rbp + 864]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                        cmp              eax, 104
                                                                                        je    n521_var_α
                                                                                        jmp   n521_var_α
n520_call_builtin_icon_β:
                                                                                        jmp   n521_var_α
#-----------------------------------------------------------------------------------------------------------------------
n521_var_α:
                        mov              rax, qword ptr [rbp + 7520]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 7528]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n522_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n522_lit_integer_α:
                        mov              qword ptr [rbp + 832], 3                       # result
                        mov              rax, qword ptr [rip + .Lx970_0]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n523_coerce_numeric_α
.Lx970_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n523_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 7520]
                        cmp              eax, 5
                                                                                        je    .Lx972_1
                        cmp              eax, 3
                                                                                        jne   .Lx972_0
                        mov              eax, dword ptr [rbp + 832]
                        cmp              eax, 3
                                                                                        jne   .Lx972_0
.Lx972_1:
                        mov              rax, qword ptr [rbp + 7520]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 7528]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n524_binop_α
.Lx972_0:
                        lea              rdi, [rbp + 7520]                              # self
                        lea              rsi, [rbp + 832]                               # other
                        lea              rdx, [rbp + 800]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n524_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n524_binop_α:
                        mov              eax, dword ptr [rbp + 800]
                        cmp              eax, 3
                                                                                        jne   .Lx973_0
                        mov              rax, qword ptr [rbp + 808]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 784], 3
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n525_assign_α
.Lx973_0:
                        mov              rdi, qword ptr [rbp + 800]
                        mov              rsi, qword ptr [rbp + 808]
                        mov              rdx, qword ptr [rbp + 832]
                        mov              rcx, qword ptr [rbp + 840]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n410_var_α
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n525_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n525_assign_α:
                        mov              rax, qword ptr [rbp + 784]
                        mov              rdx, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 7520], rax
                        mov              qword ptr [rbp + 7528], rdx
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                                                                                        jmp   n526_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n526_conjunction_α:
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n410_var_α
n526_conjunction_β:
                                                                                        jmp   n410_var_α
#-----------------------------------------------------------------------------------------------------------------------
n527_scan_α:
                        lea              rdi, [rbp + 624]                               # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 624]
                        mov              r14, qword ptr [rbp + 632]
                        mov              r15, qword ptr [rbp + 640]
                                                                                        jmp   n528_var_α
n527_scan_β:
                                                                                        jmp   n528_var_α
#-----------------------------------------------------------------------------------------------------------------------
n528_var_α:
                        mov              rax, qword ptr [rbp + 7552]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 7560]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n529_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n529_lit_integer_α:
                        mov              qword ptr [rbp + 592], 3                       # result
                        mov              rax, qword ptr [rip + .Lx980_0]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n530_coerce_numeric_α
.Lx980_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n530_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 7552]
                        cmp              eax, 5
                                                                                        je    .Lx982_1
                        cmp              eax, 3
                                                                                        jne   .Lx982_0
                        mov              eax, dword ptr [rbp + 592]
                        cmp              eax, 3
                                                                                        jne   .Lx982_0
.Lx982_1:
                        mov              rax, qword ptr [rbp + 7552]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 7560]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n531_binop_α
.Lx982_0:
                        lea              rdi, [rbp + 7552]                              # self
                        lea              rsi, [rbp + 592]                               # other
                        lea              rdx, [rbp + 560]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n531_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n531_binop_α:
                        mov              eax, dword ptr [rbp + 560]
                        cmp              eax, 3
                                                                                        jne   .Lx983_0
                        mov              rax, qword ptr [rbp + 568]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 544], 3
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n532_assign_α
.Lx983_0:
                        mov              rdi, qword ptr [rbp + 560]
                        mov              rsi, qword ptr [rbp + 568]
                        mov              rdx, qword ptr [rbp + 592]
                        mov              rcx, qword ptr [rbp + 600]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n533_call_proc_staged_α
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n532_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n532_assign_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              rdx, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 7552], rax
                        mov              qword ptr [rbp + 7560], rdx
                                                                                        jmp   n533_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n533_call_proc_staged_α:
                        call             proc_newcolor_dcα
                                                                                        jmp   .Lx986_2
.Lx986_2:
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 104
                                                                                        je    n535_unmark_α
                                                                                        jmp   n534_conjunction_α
n533_call_proc_staged_β:
                                                                                        jmp   n535_unmark_α
.Lx986_0:
                        .quad            .Lx986_0_s
.Lx986_0_s:
                        .string          "newcolor"
#-----------------------------------------------------------------------------------------------------------------------
n534_conjunction_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n535_unmark_α
n534_conjunction_β:
                                                                                        jmp   n535_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n535_unmark_α:
                        mov              rsp, qword ptr [rbp + 448]
                                                                                        jmp   n375_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n536_lit_string_α:
                        mov              qword ptr [rbp + 368], 2                       # result
                        mov              dword ptr [rbp + 372], 17
                        mov              rax, qword ptr [rip + .Lx990_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n537_call_builtin_icon_α
.Lx990_0:
                        .quad            .Lx990_0_s
.Lx990_0_s:
                        .string          "255 255 255 color"
#-----------------------------------------------------------------------------------------------------------------------
n537_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                        .section         .rodata
.Lrkfn992:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn992]                         # fn
                        lea              rsi, [rbp + 336]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 104
                                                                                        je    n538_lit_string_α
                                                                                        jmp   n538_lit_string_α
n537_call_builtin_icon_β:
                                                                                        jmp   n538_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n538_lit_string_α:
                        mov              qword ptr [rbp + 176], 2                       # result
                        mov              dword ptr [rbp + 180], 5
                        mov              rax, qword ptr [rip + .Lx993_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n539_var_α
.Lx993_0:
                        .quad            .Lx993_0_s
.Lx993_0_s:
                        .string          "0 0 ("
#-----------------------------------------------------------------------------------------------------------------------
n539_var_α:
                        mov              rax, qword ptr [rbp + 7488]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 7496]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n540_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n540_unop_α:
                        mov              rdi, qword ptr [rbp + 7488]                    # lo
                        mov              rsi, qword ptr [rbp + 7496]                    # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n541_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n541_lit_string_α:
                        mov              qword ptr [rbp + 224], 2                       # result
                        mov              dword ptr [rbp + 228], 10
                        mov              rax, qword ptr [rip + .Lx997_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n542_var_α
.Lx997_0:
                        .quad            .Lx997_0_s
.Lx997_0_s:
                        .string          " players, "
#-----------------------------------------------------------------------------------------------------------------------
n542_var_α:
                        mov              rax, qword ptr [rbp + 7504]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 7512]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n543_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n543_unop_α:
                        mov              rdi, qword ptr [rbp + 7504]                    # lo
                        mov              rsi, qword ptr [rbp + 7512]                    # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n544_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n544_lit_string_α:
                        mov              qword ptr [rbp + 272], 2                       # result
                        mov              dword ptr [rbp + 276], 9
                        mov              rax, qword ptr [rip + .Lx1001_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n545_var_α
.Lx1001_0:
                        .quad            .Lx1001_0_s
.Lx1001_0_s:
                        .string          " rounds, "
#-----------------------------------------------------------------------------------------------------------------------
n545_var_α:
                        mov              rax, qword ptr [rbp + 7520]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 7528]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n546_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n546_lit_string_α:
                        mov              qword ptr [rbp + 304], 2                       # result
                        mov              dword ptr [rbp + 308], 14
                        mov              rax, qword ptr [rip + .Lx1004_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n547_call_builtin_icon_α
.Lx1004_0:
                        .quad            .Lx1004_0_s
.Lx1004_0_s:
                        .string          " matches) text"
#-----------------------------------------------------------------------------------------------------------------------
n547_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 56], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 72], rax
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 104], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 120], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 136], rax
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 152], rax
                        .section         .rodata
.Lrkfn1006:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1006]                        # fn
                        lea              rsi, [rbp + 48]                                # args
                        mov              edx, 7                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 104
                                                                                        je    main_ω
                                                                                        jmp   main_ω
n547_call_builtin_icon_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n548_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx1007_0]               # sval
                        call             rt_keyword_read@PLT
                        cmp              eax, 104
                                                                                        je    n261_var_α
                        mov              qword ptr [rbp + 7024], rax
                        mov              qword ptr [rbp + 7032], rdx
                                                                                        jmp   n549_assign_α
n548_keyword_icon_β:
                                                                                        jmp   n261_var_α
.Lx1007_0:
                        .quad            .Lx1007_0_s
.Lx1007_0_s:
                        .string          "&input"
#-----------------------------------------------------------------------------------------------------------------------
n549_assign_α:
                        mov              rax, qword ptr [rbp + 7024]
                        mov              rdx, qword ptr [rbp + 7032]
                        mov              qword ptr [rbp + 7728], rax
                        mov              qword ptr [rbp + 7736], rdx
                        mov              qword ptr [rbp + 7008], rax
                        mov              qword ptr [rbp + 7016], rdx
                                                                                        jmp   n260_disjunction_as
n549_assign_β:
                                                                                        jmp   n261_var_α
#-----------------------------------------------------------------------------------------------------------------------
n550_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 6976], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 6984], rax
                                                                                        jmp   n551_unop_α
n550_var_β:
                                                                                        jmp   n260_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n551_unop_α:
                        mov              rdi, qword ptr [rbp + 16]                      # lo
                        mov              rsi, qword ptr [rbp + 24]                      # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 6960], rax
                        mov              qword ptr [rbp + 6968], rdx
                                                                                        jmp   n552_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n552_lit_integer_α:
                        mov              qword ptr [rbp + 6992], 3                      # result
                        mov              rax, qword ptr [rip + .Lx1012_0]
                        mov              qword ptr [rbp + 7000], rax
                                                                                        jmp   n553_binop_test_α
.Lx1012_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n553_binop_test_α:
                        mov              eax, dword ptr [rbp + 6960]
                        cmp              eax, 112
                                                                                        je    .Lx1013_0
                        mov              eax, dword ptr [rbp + 6992]
                        cmp              eax, 112
                                                                                        je    .Lx1013_0
                        mov              eax, dword ptr [rbp + 6960]
                        cmp              eax, 3
                                                                                        jne   .Lx1013_2
                        mov              eax, dword ptr [rbp + 6992]
                        cmp              eax, 3
                                                                                        jne   .Lx1013_2
.Lx1013_1:
                        mov              rax, qword ptr [rbp + 6968]
                        mov              rcx, qword ptr [rbp + 7000]
                        cmp              rax, rcx
                                                                                        jle   n260_disjunction_af
                        mov              rcx, qword ptr [rbp + 6992]
                        mov              qword ptr [rbp + 6944], rcx
                        mov              rcx, qword ptr [rbp + 7000]
                        mov              qword ptr [rbp + 6952], rcx
                                                                                        jmp   n554_disjunction_α
.Lx1013_0:
                        mov              rdi, qword ptr [rbp + 6960]                    # a
                        mov              rsi, qword ptr [rbp + 6968]                    # a
                        mov              rdx, qword ptr [rbp + 6992]                    # b
                        mov              rcx, qword ptr [rbp + 7000]                    # b
                        mov              r8d, 7                                         # op
                        lea              r9, [rbp + 6944]                               # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx1013_1
                        cmp              eax, 1
                                                                                        je    n260_disjunction_af
                                                                                        jmp   n554_disjunction_α
.Lx1013_2:
                        mov              rdi, qword ptr [rbp + 6960]                    # lhs
                        mov              rsi, qword ptr [rbp + 6968]                    # lhs
                        mov              rdx, qword ptr [rbp + 6992]                    # rhs
                        mov              rcx, qword ptr [rbp + 7000]                    # rhs
                        mov              r8d, 7                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n260_disjunction_af
                        mov              rax, qword ptr [rbp + 6992]
                        mov              qword ptr [rbp + 6944], rax
                        mov              rax, qword ptr [rbp + 7000]
                        mov              qword ptr [rbp + 6952], rax
                                                                                        jmp   n554_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n554_disjunction_α:
                        mov              qword ptr [rbp + 6656], 0
                        mov              qword ptr [rbp + 6664], 0
                        mov              dword ptr [rbp + 6672], 0
                                                                                        jmp   n562_var_ref_α
n554_disjunction_as:
                        mov              eax, dword ptr [rbp + 6672]
                        cmp              eax, 0
                                                                                        jne   .Lx1015_0
                        mov              rax, qword ptr [rbp + 6688]
                        mov              qword ptr [rbp + 6656], rax
                        mov              rax, qword ptr [rbp + 6696]
                        mov              qword ptr [rbp + 6664], rax
                                                                                        jmp   n555_assign_α
.Lx1015_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1015_1
                        mov              rax, qword ptr [rbp + 6800]
                        mov              qword ptr [rbp + 6656], rax
                        mov              rax, qword ptr [rbp + 6808]
                        mov              qword ptr [rbp + 6664], rax
                                                                                        jmp   n555_assign_α
.Lx1015_1:
                                                                                        jmp   n555_assign_α
n554_disjunction_β:
                        mov              eax, dword ptr [rbp + 6672]
                        cmp              eax, 0
                                                                                        je    n554_disjunction_af
                                                                                        jmp   n554_disjunction_af
n554_disjunction_af:
                        add              dword ptr [rbp + 6672], 1
                        mov              eax, dword ptr [rbp + 6672]
                        cmp              eax, 1
                                                                                        je    n556_lit_string_α
                                                                                        jmp   n261_var_α
#-----------------------------------------------------------------------------------------------------------------------
n555_assign_α:
                        mov              rax, qword ptr [rbp + 6656]
                        mov              rdx, qword ptr [rbp + 6664]
                        mov              qword ptr [rbp + 7728], rax
                        mov              qword ptr [rbp + 7736], rdx
                        mov              qword ptr [rbp + 6640], rax
                        mov              qword ptr [rbp + 6648], rdx
                                                                                        jmp   n260_disjunction_as
n555_assign_β:
                                                                                        jmp   n261_var_α
#-----------------------------------------------------------------------------------------------------------------------
n556_lit_string_α:
                        mov              qword ptr [rbp + 6864], 2                      # result
                        mov              dword ptr [rbp + 6868], 11
                        mov              rax, qword ptr [rip + .Lx1017_0]
                        mov              qword ptr [rbp + 6872], rax
                                                                                        jmp   n557_var_ref_α
n556_lit_string_β:
                                                                                        jmp   n554_disjunction_af
.Lx1017_0:
                        .quad            .Lx1017_0_s
.Lx1017_0_s:
                        .string          "can't open "
#-----------------------------------------------------------------------------------------------------------------------
n557_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 6880], rax
                        mov              qword ptr [rbp + 6888], rdx
                                                                                        jmp   n558_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n558_lit_integer_α:
                        mov              qword ptr [rbp + 6896], 3                      # result
                        mov              rax, qword ptr [rip + .Lx1020_0]
                        mov              qword ptr [rbp + 6904], rax
                                                                                        jmp   n559_subscript_α
.Lx1020_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n559_subscript_α:
                        mov              rdi, qword ptr [rbp + 6880]                    # base
                        mov              rsi, qword ptr [rbp + 6888]                    # base
                        mov              rdx, qword ptr [rbp + 6896]                    # idx
                        mov              rcx, qword ptr [rbp + 6904]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n554_disjunction_af
                        mov              qword ptr [rbp + 6912], rax
                        mov              qword ptr [rbp + 6920], rdx
                                                                                        jmp   n560_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n560_deref_α:
                        mov              rdi, qword ptr [rbp + 6912]                    # d
                        mov              rsi, qword ptr [rbp + 6920]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n554_disjunction_af
                        mov              qword ptr [rbp + 6928], rax
                        mov              qword ptr [rbp + 6936], rdx
                                                                                        jmp   n561_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n561_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 6864]
                        mov              qword ptr [rbp + 6816], rax
                        mov              rax, qword ptr [rbp + 6872]
                        mov              qword ptr [rbp + 6824], rax
                        mov              rax, qword ptr [rbp + 6928]
                        mov              qword ptr [rbp + 6832], rax
                        mov              rax, qword ptr [rbp + 6936]
                        mov              qword ptr [rbp + 6840], rax
                        .section         .rodata
.Lrkfn1024:             .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1024]                        # fn
                        lea              rsi, [rbp + 6816]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 6800], rax
                        mov              qword ptr [rbp + 6808], rdx
                        cmp              eax, 104
                                                                                        je    n554_disjunction_af
                                                                                        jmp   n554_disjunction_as
n561_call_builtin_icon_β:
                                                                                        jmp   n554_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n562_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 6736], rax
                        mov              qword ptr [rbp + 6744], rdx
                                                                                        jmp   n563_lit_integer_α
n562_var_ref_β:
                                                                                        jmp   n554_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n563_lit_integer_α:
                        mov              qword ptr [rbp + 6752], 3                      # result
                        mov              rax, qword ptr [rip + .Lx1027_0]
                        mov              qword ptr [rbp + 6760], rax
                                                                                        jmp   n564_subscript_α
.Lx1027_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n564_subscript_α:
                        mov              rdi, qword ptr [rbp + 6736]                    # base
                        mov              rsi, qword ptr [rbp + 6744]                    # base
                        mov              rdx, qword ptr [rbp + 6752]                    # idx
                        mov              rcx, qword ptr [rbp + 6760]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n554_disjunction_af
                        mov              qword ptr [rbp + 6768], rax
                        mov              qword ptr [rbp + 6776], rdx
                                                                                        jmp   n565_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n565_deref_α:
                        mov              rdi, qword ptr [rbp + 6768]                    # d
                        mov              rsi, qword ptr [rbp + 6776]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n554_disjunction_af
                        mov              qword ptr [rbp + 6784], rax
                        mov              qword ptr [rbp + 6792], rdx
                                                                                        jmp   n566_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n566_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 6784]
                        mov              qword ptr [rbp + 6704], rax
                        mov              rax, qword ptr [rbp + 6792]
                        mov              qword ptr [rbp + 6712], rax
                        .section         .rodata
.Lrkfn1031:             .string          "open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1031]                        # fn
                        lea              rsi, [rbp + 6704]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 6688], rax
                        mov              qword ptr [rbp + 6696], rdx
                        cmp              eax, 104
                                                                                        je    n554_disjunction_af
                                                                                        jmp   n554_disjunction_as
n566_call_builtin_icon_β:
                                                                                        jmp   n554_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n567_scan_α:
                        lea              rdi, [rbp + 7184]                              # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 7184]
                        mov              r14, qword ptr [rbp + 7192]
                        mov              r15, qword ptr [rbp + 7200]
                                                                                        jmp   n252_lit_charset_α
n567_scan_β:
                                                                                        jmp   n252_lit_charset_α
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
