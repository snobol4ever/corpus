                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_cart_α
proc_cart_α:
                        .global          proc_cart_α
                        .global          proc_cart_β
                        .global          proc_cart_γ
                        .global          proc_cart_ω
                        sub              rsp, 896
                        mov              [rsp + 872], rcx
                        mov              [rsp + 880], rdx
                        mov              rdi, rsp
                        mov              esi, 832
                        mov              edx, 864
                        call             rt_jmp_frame_lexprep2@PLT
proc_cart_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_integer_α:
                        mov              qword ptr [rsp + 672], 6
                        mov              rax, qword ptr [rip + .Lx35_0]
                        mov              qword ptr [rsp + 680], rax
                                                                                        jmp   n1_var_α
.Lx35_0:
                        .quad            50
#-----------------------------------------------------------------------------------------------------------------------
n1_var_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 744], rax
                                                                                        jmp   n2_var_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 808], rax
                                                                                        jmp   n4_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:
                        mov              qword ptr [rsp + 384], 6
                        mov              rax, qword ptr [rip + .Lx40_0]
                        mov              qword ptr [rsp + 392], rax
                                                                                        jmp   n5_var_α
.Lx40_0:
                        .quad            50
#-----------------------------------------------------------------------------------------------------------------------
n4_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 776], rax
                        .section         .rodata
.Lrkfn42:               .string          "cos"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn42]
                        lea              rsi, [rsp + 768]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx
                        cmp              eax, 99
                                                                                        je    n3_lit_integer_α
                                                                                        jmp   n6_op75_α
n4_call_builtin_icon_β:
                                                                                        jmp   n3_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 456], rax
                                                                                        jmp   n7_var_α
#-----------------------------------------------------------------------------------------------------------------------
n6_op75_α:
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 7
                                                                                        je    .Lx46_1
                        cmp              eax, 6
                                                                                        jne   .Lx46_0
                        mov              eax, dword ptr [rsp + 752]
                        cmp              eax, 6
                                                                                        jne   .Lx46_0
.Lx46_1:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 728], rax
                                                                                        jmp   n9_op75_α
.Lx46_0:
                        lea              rdi, [rsp + 16]
                        lea              rsi, [rsp + 752]
                        lea              rdx, [rsp + 720]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n9_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n7_var_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 520], rax
                                                                                        jmp   n10_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n8_var_α:
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 184], rax
                                                                                        jmp   n11_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n9_op75_α:
                        mov              eax, dword ptr [rsp + 752]
                        cmp              eax, 7
                                                                                        je    .Lx52_1
                        cmp              eax, 6
                                                                                        jne   .Lx52_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx52_0
.Lx52_1:
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 712], rax
                                                                                        jmp   n12_binop_α
.Lx52_0:
                        lea              rdi, [rsp + 752]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 704]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n12_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n10_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 488], rax
                        .section         .rodata
.Lrkfn54:               .string          "sin"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn54]
                        lea              rsi, [rsp + 480]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                        cmp              eax, 99
                                                                                        je    n8_var_α
                                                                                        jmp   n13_op75_α
n10_call_builtin_icon_β:
                                                                                        jmp   n8_var_α
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:
                        mov              qword ptr [rsp + 192], 1
                        mov              rax, qword ptr [rip + .Lx55_0]
                        mov              qword ptr [rsp + 200], rax
                                                                                        jmp   n14_var_α
.Lx55_0:
                        .quad            .Lx55_0_s
.Lx55_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n12_binop_α:
                        mov              eax, dword ptr [rsp + 720]
                        cmp              eax, 6
                                                                                        jne   .Lx56_0
                        mov              eax, dword ptr [rsp + 704]
                        cmp              eax, 6
                                                                                        jne   .Lx56_0
                        mov              rax, qword ptr [rsp + 728]
                        mov              rcx, qword ptr [rsp + 712]
                        imul             rax, rcx
                        mov              qword ptr [rsp + 688], 6
                        mov              qword ptr [rsp + 696], rax
                                                                                        jmp   n15_op75_α
.Lx56_0:
                        mov              rdi, qword ptr [rsp + 720]
                        mov              rsi, qword ptr [rsp + 728]
                        mov              rdx, qword ptr [rsp + 704]
                        mov              rcx, qword ptr [rsp + 712]
                        call             rt_mul@PLT
                        cmp              eax, 99
                                                                                        je    n3_lit_integer_α
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                                                                                        jmp   n15_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n13_op75_α:
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 7
                                                                                        je    .Lx58_1
                        cmp              eax, 6
                                                                                        jne   .Lx58_0
                        mov              eax, dword ptr [rsp + 464]
                        cmp              eax, 6
                                                                                        jne   .Lx58_0
.Lx58_1:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 440], rax
                                                                                        jmp   n16_op75_α
.Lx58_0:
                        lea              rdi, [rsp + 16]
                        lea              rsi, [rsp + 464]
                        lea              rdx, [rsp + 432]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n16_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n14_var_α:
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 216], rax
                                                                                        jmp   n17_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n15_op75_α:
                        mov              eax, dword ptr [rsp + 688]
                        cmp              eax, 7
                                                                                        je    .Lx62_1
                        cmp              eax, 6
                                                                                        jne   .Lx62_0
                        mov              eax, dword ptr [rsp + 672]
                        cmp              eax, 6
                                                                                        jne   .Lx62_0
.Lx62_1:
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 664], rax
                                                                                        jmp   n18_binop_α
.Lx62_0:
                        lea              rdi, [rsp + 688]
                        lea              rsi, [rsp + 672]
                        lea              rdx, [rsp + 656]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n18_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n16_op75_α:
                        mov              eax, dword ptr [rsp + 464]
                        cmp              eax, 7
                                                                                        je    .Lx64_1
                        cmp              eax, 6
                                                                                        jne   .Lx64_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx64_0
.Lx64_1:
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 424], rax
                                                                                        jmp   n19_binop_α
.Lx64_0:
                        lea              rdi, [rsp + 464]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 416]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n19_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:
                        mov              qword ptr [rsp + 224], 1
                        mov              rax, qword ptr [rip + .Lx65_0]
                        mov              qword ptr [rsp + 232], rax
                                                                                        jmp   n20_call_builtin_icon_α
.Lx65_0:
                        .quad            .Lx65_0_s
.Lx65_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n18_binop_α:
                        mov              eax, dword ptr [rsp + 656]
                        cmp              eax, 6
                                                                                        jne   .Lx66_0
                        mov              rax, 50
                        mov              rcx, qword ptr [rsp + 664]
                        add              rax, rcx
                        mov              qword ptr [rsp + 640], 6
                        mov              qword ptr [rsp + 648], rax
                                                                                        jmp   n21_var_α
.Lx66_0:
                        mov              rdi, qword ptr [rsp + 672]
                        mov              rsi, qword ptr [rsp + 680]
                        mov              rdx, qword ptr [rsp + 656]
                        mov              rcx, qword ptr [rsp + 664]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n3_lit_integer_α
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx
                                                                                        jmp   n21_var_α
#-----------------------------------------------------------------------------------------------------------------------
n19_binop_α:
                        mov              eax, dword ptr [rsp + 432]
                        cmp              eax, 6
                                                                                        jne   .Lx67_0
                        mov              eax, dword ptr [rsp + 416]
                        cmp              eax, 6
                                                                                        jne   .Lx67_0
                        mov              rax, qword ptr [rsp + 440]
                        mov              rcx, qword ptr [rsp + 424]
                        imul             rax, rcx
                        mov              qword ptr [rsp + 400], 6
                        mov              qword ptr [rsp + 408], rax
                                                                                        jmp   n22_op75_α
.Lx67_0:
                        mov              rdi, qword ptr [rsp + 432]
                        mov              rsi, qword ptr [rsp + 440]
                        mov              rdx, qword ptr [rsp + 416]
                        mov              rcx, qword ptr [rsp + 424]
                        call             rt_mul@PLT
                        cmp              eax, 99
                                                                                        je    n8_var_α
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                                                                                        jmp   n22_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n20_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 104], rax
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 120], rax
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 136], rax
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 152], rax
                        .section         .rodata
.Lrkfn69:               .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn69]
                        lea              rsi, [rsp + 96]
                        mov              edx, 4
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              eax, 99
                                                                                        je    proc_cart_ω
                                                                                        jmp   proc_cart_ω
n20_call_builtin_icon_β:
                                                                                        jmp   proc_cart_ω
#-----------------------------------------------------------------------------------------------------------------------
n21_var_α:
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 824], rax
                                                                                        jmp   n23_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n22_op75_α:
                        mov              eax, dword ptr [rsp + 400]
                        cmp              eax, 7
                                                                                        je    .Lx73_1
                        cmp              eax, 6
                                                                                        jne   .Lx73_0
                        mov              eax, dword ptr [rsp + 384]
                        cmp              eax, 6
                                                                                        jne   .Lx73_0
.Lx73_1:
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 376], rax
                                                                                        jmp   n24_binop_α
.Lx73_0:
                        lea              rdi, [rsp + 400]
                        lea              rsi, [rsp + 384]
                        lea              rdx, [rsp + 368]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n24_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n23_op75_α:
                        mov              eax, dword ptr [rsp + 640]
                        cmp              eax, 7
                                                                                        je    .Lx75_1
                        cmp              eax, 6
                                                                                        jne   .Lx75_0
                        mov              eax, dword ptr [rsp + 64]
                        cmp              eax, 6
                                                                                        jne   .Lx75_0
.Lx75_1:
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 632], rax
                                                                                        jmp   n25_op75_α
.Lx75_0:
                        lea              rdi, [rsp + 640]
                        lea              rsi, [rsp + 64]
                        lea              rdx, [rsp + 624]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n25_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n24_binop_α:
                        mov              eax, dword ptr [rsp + 368]
                        cmp              eax, 6
                                                                                        jne   .Lx76_0
                        mov              rax, 50
                        mov              rcx, qword ptr [rsp + 376]
                        add              rax, rcx
                        mov              qword ptr [rsp + 352], 6
                        mov              qword ptr [rsp + 360], rax
                                                                                        jmp   n26_var_α
.Lx76_0:
                        mov              rdi, qword ptr [rsp + 384]
                        mov              rsi, qword ptr [rsp + 392]
                        mov              rdx, qword ptr [rsp + 368]
                        mov              rcx, qword ptr [rsp + 376]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n8_var_α
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                                                                                        jmp   n26_var_α
#-----------------------------------------------------------------------------------------------------------------------
n25_op75_α:
                        mov              eax, dword ptr [rsp + 64]
                        cmp              eax, 7
                                                                                        je    .Lx78_1
                        cmp              eax, 6
                                                                                        jne   .Lx78_0
                        mov              eax, dword ptr [rsp + 640]
                        cmp              eax, 6
                                                                                        jne   .Lx78_0
.Lx78_1:
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 616], rax
                                                                                        jmp   n27_binop_α
.Lx78_0:
                        lea              rdi, [rsp + 64]
                        lea              rsi, [rsp + 640]
                        lea              rdx, [rsp + 608]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n27_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n26_var_α:
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 536], rax
                                                                                        jmp   n28_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n27_binop_α:
                        mov              eax, dword ptr [rsp + 624]
                        cmp              eax, 6
                                                                                        jne   .Lx81_0
                        mov              eax, dword ptr [rsp + 608]
                        cmp              eax, 6
                                                                                        jne   .Lx81_0
                        mov              rax, qword ptr [rsp + 632]
                        mov              rcx, qword ptr [rsp + 616]
                        add              rax, rcx
                        mov              qword ptr [rsp + 592], 6
                        mov              qword ptr [rsp + 600], rax
                                                                                        jmp   n29_call_proc_staged_α
.Lx81_0:
                        mov              rdi, qword ptr [rsp + 624]
                        mov              rsi, qword ptr [rsp + 632]
                        mov              rdx, qword ptr [rsp + 608]
                        mov              rcx, qword ptr [rsp + 616]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n3_lit_integer_α
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                                                                                        jmp   n29_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n28_op75_α:
                        mov              eax, dword ptr [rsp + 352]
                        cmp              eax, 7
                                                                                        je    .Lx83_1
                        cmp              eax, 6
                                                                                        jne   .Lx83_0
                        mov              eax, dword ptr [rsp + 64]
                        cmp              eax, 6
                                                                                        jne   .Lx83_0
.Lx83_1:
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 344], rax
                                                                                        jmp   n30_op75_α
.Lx83_0:
                        lea              rdi, [rsp + 352]
                        lea              rsi, [rsp + 64]
                        lea              rdx, [rsp + 336]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n30_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n29_call_proc_staged_α:
                        lea              rsi, [rsp + 592]
                        call             proc_pct_dcα
                                                                                        jmp   .Lx85_2
.Lx85_2:
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                        cmp              eax, 99
                                                                                        je    n3_lit_integer_α
                                                                                        jmp   n31_assign_α
n29_call_proc_staged_β:
                                                                                        jmp   n3_lit_integer_α
.Lx85_0:
                        .quad            .Lx85_0_s
.Lx85_0_s:
                        .string          "pct"
#-----------------------------------------------------------------------------------------------------------------------
n30_op75_α:
                        mov              eax, dword ptr [rsp + 64]
                        cmp              eax, 7
                                                                                        je    .Lx87_1
                        cmp              eax, 6
                                                                                        jne   .Lx87_0
                        mov              eax, dword ptr [rsp + 352]
                        cmp              eax, 6
                                                                                        jne   .Lx87_0
.Lx87_1:
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 328], rax
                                                                                        jmp   n32_binop_α
.Lx87_0:
                        lea              rdi, [rsp + 64]
                        lea              rsi, [rsp + 352]
                        lea              rdx, [rsp + 320]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n32_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n31_assign_α:
                        mov              rax, qword ptr [rsp + 544]
                        mov              rdx, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx
                                                                                        jmp   n3_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n32_binop_α:
                        mov              eax, dword ptr [rsp + 336]
                        cmp              eax, 6
                                                                                        jne   .Lx89_0
                        mov              eax, dword ptr [rsp + 320]
                        cmp              eax, 6
                                                                                        jne   .Lx89_0
                        mov              rax, qword ptr [rsp + 344]
                        mov              rcx, qword ptr [rsp + 328]
                        add              rax, rcx
                        mov              qword ptr [rsp + 304], 6
                        mov              qword ptr [rsp + 312], rax
                                                                                        jmp   n33_call_proc_staged_α
.Lx89_0:
                        mov              rdi, qword ptr [rsp + 336]
                        mov              rsi, qword ptr [rsp + 344]
                        mov              rdx, qword ptr [rsp + 320]
                        mov              rcx, qword ptr [rsp + 328]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n8_var_α
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                                                                                        jmp   n33_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n33_call_proc_staged_α:
                        lea              rsi, [rsp + 304]
                        call             proc_pct_dcα
                                                                                        jmp   .Lx91_2
.Lx91_2:
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        cmp              eax, 99
                                                                                        je    n8_var_α
                                                                                        jmp   n34_assign_α
n33_call_proc_staged_β:
                                                                                        jmp   n8_var_α
.Lx91_0:
                        .quad            .Lx91_0_s
.Lx91_0_s:
                        .string          "pct"
#-----------------------------------------------------------------------------------------------------------------------
n34_assign_α:
                        mov              rax, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx
                                                                                        jmp   n8_var_α
#-----------------------------------------------------------------------------------------------------------------------
proc_cart_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_cart_β:
                                                                                        jmp   proc_cart_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_cart_γ:
                        mov              rdi, [rsp]
                        mov              rsi, [rsp + 8]
                        mov              rax, [rsp + 872]
                        add              rsp, 896
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_cart_ω:
                        mov              rax, [rsp + 880]
                        add              rsp, 896
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_cart_dcα:
                        pop              r11
                        sub              rsp, 912
                        mov              qword ptr [rsp + 888], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 864], r11
                        lea              rax, [rip + .Lx93_2]
                        mov              qword ptr [rsp + 872], rax
                        lea              rax, [rip + .Lx93_3]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 16], rsi
                        mov              qword ptr [rsp + 24], rdx
                        mov              qword ptr [rsp + 32], rcx
                        mov              qword ptr [rsp + 40], r8
                        mov              rdi, rbp
                        mov              esi, 832
                        mov              edx, 864
                        mov              ecx, 4
                        mov              r8d, 4
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_cart_α_body
.Lx93_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -896
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx93_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -896
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pct_α
proc_pct_α:
                        .global          proc_pct_α
                        .global          proc_pct_β
                        .global          proc_pct_γ
                        .global          proc_pct_ω
                        sub              rsp, 288
                        mov              [rsp + 264], rcx
                        mov              [rsp + 272], rdx
                        mov              rdi, rsp
                        mov              esi, 256
                        mov              edx, 256
                        call             rt_jmp_frame_lexprep2@PLT
proc_pct_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n94_var_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 216], rax
                                                                                        jmp   n95_var_α
#-----------------------------------------------------------------------------------------------------------------------
n95_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                                                                                        jmp   n96_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n96_op75_α:
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 7
                                                                                        je    .Lx109_1
                        cmp              eax, 6
                                                                                        jne   .Lx109_0
                        mov              eax, dword ptr [rsp + 224]
                        cmp              eax, 6
                                                                                        jne   .Lx109_0
.Lx109_1:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 200], rax
                                                                                        jmp   n97_op75_α
.Lx109_0:
                        lea              rdi, [rsp + 16]
                        lea              rsi, [rsp + 224]
                        lea              rdx, [rsp + 192]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n97_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n97_op75_α:
                        mov              eax, dword ptr [rsp + 224]
                        cmp              eax, 7
                                                                                        je    .Lx111_1
                        cmp              eax, 6
                                                                                        jne   .Lx111_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx111_0
.Lx111_1:
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 184], rax
                                                                                        jmp   n98_binop_α
.Lx111_0:
                        lea              rdi, [rsp + 224]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 176]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n98_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n98_binop_α:
                        mov              eax, dword ptr [rsp + 192]
                        cmp              eax, 6
                                                                                        jne   .Lx112_0
                        mov              eax, dword ptr [rsp + 176]
                        cmp              eax, 6
                                                                                        jne   .Lx112_0
                        mov              rax, qword ptr [rsp + 200]
                        mov              rcx, qword ptr [rsp + 184]
                        imul             rax, rcx
                        mov              qword ptr [rsp + 160], 6
                        mov              qword ptr [rsp + 168], rax
                                                                                        jmp   n99_lit_integer_α
.Lx112_0:
                        mov              rdi, qword ptr [rsp + 192]
                        mov              rsi, qword ptr [rsp + 200]
                        mov              rdx, qword ptr [rsp + 176]
                        mov              rcx, qword ptr [rsp + 184]
                        call             rt_mul@PLT
                        cmp              eax, 99
                                                                                        je    proc_pct_ω
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                                                                                        jmp   n99_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n99_lit_integer_α:
                        mov              qword ptr [rsp + 240], 6
                        mov              rax, qword ptr [rip + .Lx113_0]
                        mov              qword ptr [rsp + 248], rax
                                                                                        jmp   n100_op75_α
.Lx113_0:
                        .quad            100
#-----------------------------------------------------------------------------------------------------------------------
n100_op75_α:
                        mov              eax, dword ptr [rsp + 160]
                        cmp              eax, 7
                                                                                        je    .Lx115_1
                        cmp              eax, 6
                                                                                        jne   .Lx115_0
                        mov              eax, dword ptr [rsp + 240]
                        cmp              eax, 6
                                                                                        jne   .Lx115_0
.Lx115_1:
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 152], rax
                                                                                        jmp   n101_binop_α
.Lx115_0:
                        lea              rdi, [rsp + 160]
                        lea              rsi, [rsp + 240]
                        lea              rdx, [rsp + 144]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n101_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n101_binop_α:
                        mov              rdi, qword ptr [rsp + 144]
                        mov              rsi, qword ptr [rsp + 152]
                        mov              rdx, qword ptr [rsp + 240]
                        mov              rcx, qword ptr [rsp + 248]
                        call             rt_div@PLT
                        cmp              eax, 99
                                                                                        je    proc_pct_ω
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                                                                                        jmp   n102_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n102_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 104], rax
                        .section         .rodata
.Lrkfn118:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn118]
                        lea              rsi, [rsp + 96]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              eax, 99
                                                                                        je    proc_pct_ω
                                                                                        jmp   n103_call_builtin_icon_α
n102_call_builtin_icon_β:
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
                        lea              rdi, [rip + .Lrkfn120]
                        lea              rsi, [rsp + 48]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_pct_ω
                                                                                        jmp   n104_return_α
n103_call_builtin_icon_β:
                                                                                        jmp   proc_pct_ω
#-----------------------------------------------------------------------------------------------------------------------
n104_return_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
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
                        mov              rdi, [rsp]
                        mov              rsi, [rsp + 8]
                        mov              rax, [rsp + 264]
                        add              rsp, 288
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pct_ω:
                        mov              rax, [rsp + 272]
                        add              rsp, 288
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pct_dcα:
                        pop              r11
                        sub              rsp, 304
                        mov              qword ptr [rsp + 280], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 256], r11
                        lea              rax, [rip + .Lx122_2]
                        mov              qword ptr [rsp + 264], rax
                        lea              rax, [rip + .Lx122_3]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 256
                        mov              edx, 256
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_pct_α_body
.Lx122_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -288
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx122_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -288
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_newcolor_α
proc_newcolor_α:
                        .global          proc_newcolor_α
                        .global          proc_newcolor_β
                        .global          proc_newcolor_γ
                        .global          proc_newcolor_ω
                        sub              rsp, 800
                        mov              [rsp + 776], rcx
                        mov              [rsp + 784], rdx
                        mov              [rsp + 792], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 752
                        mov              edx, 768
                        call             rt_jmp_frame_lexprep2@PLT
proc_newcolor_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n123_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n124_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n124_lit_integer_α:
                        mov              qword ptr [rbp + 720], 6
                        mov              rax, qword ptr [rip + .Lx173_0]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n126_op75_α
.Lx173_0:
                        .quad            103
#-----------------------------------------------------------------------------------------------------------------------
n125_var_α:
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n127_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n126_op75_α:
                        mov              eax, dword ptr [rbp + 704]
                        cmp              eax, 7
                                                                                        je    .Lx176_1
                        cmp              eax, 6
                                                                                        jne   .Lx176_0
                        mov              eax, dword ptr [rbp + 720]
                        cmp              eax, 6
                                                                                        jne   .Lx176_0
.Lx176_1:
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n129_binop_α
.Lx176_0:
                        lea              rdi, [rbp + 704]
                        lea              rsi, [rbp + 720]
                        lea              rdx, [rbp + 688]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n129_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_integer_α:
                        mov              qword ptr [rbp + 608], 6
                        mov              rax, qword ptr [rip + .Lx177_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n130_op75_α
.Lx177_0:
                        .quad            211
#-----------------------------------------------------------------------------------------------------------------------
n128_var_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n131_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n129_binop_α:
                        mov              eax, dword ptr [rbp + 688]
                        cmp              eax, 6
                                                                                        jne   .Lx179_0
                        mov              rax, qword ptr [rbp + 696]
                        mov              rcx, 103
                        add              rax, rcx
                        mov              qword ptr [rbp + 672], 6
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n133_lit_integer_α
.Lx179_0:
                        mov              rdi, qword ptr [rbp + 688]
                        mov              rsi, qword ptr [rbp + 696]
                        mov              rdx, qword ptr [rbp + 720]
                        mov              rcx, qword ptr [rbp + 728]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n125_var_α
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n133_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n130_op75_α:
                        mov              eax, dword ptr [rbp + 592]
                        cmp              eax, 7
                                                                                        je    .Lx181_1
                        cmp              eax, 6
                                                                                        jne   .Lx181_0
                        mov              eax, dword ptr [rbp + 608]
                        cmp              eax, 6
                                                                                        jne   .Lx181_0
.Lx181_1:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n134_binop_α
.Lx181_0:
                        lea              rdi, [rbp + 592]
                        lea              rsi, [rbp + 608]
                        lea              rdx, [rbp + 576]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n134_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n131_lit_integer_α:
                        mov              qword ptr [rbp + 496], 6
                        mov              rax, qword ptr [rip + .Lx182_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n135_op75_α
.Lx182_0:
                        .quad            71
#-----------------------------------------------------------------------------------------------------------------------
n132_lit_real_α:
                        mov              qword ptr [rbp + 256], 7
                        mov              rax, qword ptr [rip + .Lx183_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n136_var_α
.Lx183_0:
                        .quad            4599075939470750515
#-----------------------------------------------------------------------------------------------------------------------
n133_lit_integer_α:
                        mov              qword ptr [rbp + 736], 6
                        mov              rax, qword ptr [rip + .Lx184_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n137_op75_α
.Lx184_0:
                        .quad            256
#-----------------------------------------------------------------------------------------------------------------------
n134_binop_α:
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 6
                                                                                        jne   .Lx185_0
                        mov              rax, qword ptr [rbp + 584]
                        mov              rcx, 211
                        add              rax, rcx
                        mov              qword ptr [rbp + 560], 6
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n138_lit_integer_α
.Lx185_0:
                        mov              rdi, qword ptr [rbp + 576]
                        mov              rsi, qword ptr [rbp + 584]
                        mov              rdx, qword ptr [rbp + 608]
                        mov              rcx, qword ptr [rbp + 616]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n128_var_α
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n138_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n135_op75_α:
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 7
                                                                                        je    .Lx187_1
                        cmp              eax, 6
                                                                                        jne   .Lx187_0
                        mov              eax, dword ptr [rbp + 496]
                        cmp              eax, 6
                                                                                        jne   .Lx187_0
.Lx187_1:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n139_binop_α
.Lx187_0:
                        lea              rdi, [rbp + 480]
                        lea              rsi, [rbp + 496]
                        lea              rdx, [rbp + 464]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n139_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n136_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n140_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n137_op75_α:
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 7
                                                                                        je    .Lx190_1
                        cmp              eax, 6
                                                                                        jne   .Lx190_0
                        mov              eax, dword ptr [rbp + 736]
                        cmp              eax, 6
                                                                                        jne   .Lx190_0
.Lx190_1:
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n142_binop_α
.Lx190_0:
                        lea              rdi, [rbp + 672]
                        lea              rsi, [rbp + 736]
                        lea              rdx, [rbp + 656]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n142_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n138_lit_integer_α:
                        mov              qword ptr [rbp + 624], 6
                        mov              rax, qword ptr [rip + .Lx191_0]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n143_op75_α
.Lx191_0:
                        .quad            256
#-----------------------------------------------------------------------------------------------------------------------
n139_binop_α:
                        mov              eax, dword ptr [rbp + 464]
                        cmp              eax, 6
                                                                                        jne   .Lx192_0
                        mov              rax, qword ptr [rbp + 472]
                        mov              rcx, 71
                        add              rax, rcx
                        mov              qword ptr [rbp + 448], 6
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n144_lit_integer_α
.Lx192_0:
                        mov              rdi, qword ptr [rbp + 464]
                        mov              rsi, qword ptr [rbp + 472]
                        mov              rdx, qword ptr [rbp + 496]
                        mov              rcx, qword ptr [rbp + 504]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n132_lit_real_α
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n144_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n140_op75_α:
                        mov              eax, dword ptr [rbp + 272]
                        cmp              eax, 7
                                                                                        je    .Lx194_1
                        cmp              eax, 6
                                                                                        jne   .Lx194_0
                        mov              eax, dword ptr [rbp + 256]
                        cmp              eax, 6
                                                                                        jne   .Lx194_0
.Lx194_1:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n145_binop_α
.Lx194_0:
                        lea              rdi, [rbp + 272]
                        lea              rsi, [rbp + 256]
                        lea              rdx, [rbp + 240]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n145_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n141_disjunction_α:
                        mov              qword ptr [rbp + 32], 0
                        mov              qword ptr [rbp + 40], 0
                        mov              dword ptr [rbp + 48], 0
                                                                                        jmp   n147_var_α
n141_disjunction_as:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 0
                                                                                        jne   .Lx196_0
                                                                                        jmp   n146_conjunction_α
.Lx196_0:
                                                                                        jmp   n146_conjunction_α
n141_disjunction_β:
                        mov              eax, dword ptr [rbp + 48]
                                                                                        jmp   n123_var_α
n141_disjunction_af:
                        add              dword ptr [rbp + 48], 1
                        mov              eax, dword ptr [rbp + 48]
                                                                                        jmp   n123_var_α
#-----------------------------------------------------------------------------------------------------------------------
n142_binop_α:
                        mov              rdi, qword ptr [rbp + 656]
                        mov              rsi, qword ptr [rbp + 664]
                        mov              rdx, qword ptr [rbp + 736]
                        mov              rcx, qword ptr [rbp + 744]
                        call             rt_mod@PLT
                        cmp              eax, 99
                                                                                        je    n125_var_α
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n148_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n143_op75_α:
                        mov              eax, dword ptr [rbp + 560]
                        cmp              eax, 7
                                                                                        je    .Lx199_1
                        cmp              eax, 6
                                                                                        jne   .Lx199_0
                        mov              eax, dword ptr [rbp + 624]
                        cmp              eax, 6
                                                                                        jne   .Lx199_0
.Lx199_1:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n149_binop_α
.Lx199_0:
                        lea              rdi, [rbp + 560]
                        lea              rsi, [rbp + 624]
                        lea              rdx, [rbp + 544]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n149_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n144_lit_integer_α:
                        mov              qword ptr [rbp + 512], 6
                        mov              rax, qword ptr [rip + .Lx200_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n150_op75_α
.Lx200_0:
                        .quad            256
#-----------------------------------------------------------------------------------------------------------------------
n145_binop_α:
                        mov              rdi, qword ptr [rbp + 256]
                        mov              rsi, qword ptr [rbp + 264]
                        mov              rdx, qword ptr [rbp + 240]
                        mov              rcx, qword ptr [rbp + 248]
                        call             rt_mul@PLT
                        cmp              eax, 99
                                                                                        je    n141_disjunction_α
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n151_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n146_conjunction_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n123_var_α
n146_conjunction_β:
                                                                                        jmp   n123_var_α
#-----------------------------------------------------------------------------------------------------------------------
n147_var_α:
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n152_lit_integer_α
n147_var_β:
                                                                                        jmp   n141_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n148_assign_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              rdx, qword ptr [rbp + 648]
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n125_var_α
#-----------------------------------------------------------------------------------------------------------------------
n149_binop_α:
                        mov              rdi, qword ptr [rbp + 544]
                        mov              rsi, qword ptr [rbp + 552]
                        mov              rdx, qword ptr [rbp + 624]
                        mov              rcx, qword ptr [rbp + 632]
                        call             rt_mod@PLT
                        cmp              eax, 99
                                                                                        je    n128_var_α
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n153_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n150_op75_α:
                        mov              eax, dword ptr [rbp + 448]
                        cmp              eax, 7
                                                                                        je    .Lx208_1
                        cmp              eax, 6
                                                                                        jne   .Lx208_0
                        mov              eax, dword ptr [rbp + 512]
                        cmp              eax, 6
                                                                                        jne   .Lx208_0
.Lx208_1:
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n154_binop_α
.Lx208_0:
                        lea              rdi, [rbp + 448]
                        lea              rsi, [rbp + 512]
                        lea              rdx, [rbp + 432]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n154_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n151_lit_real_α:
                        mov              qword ptr [rbp + 320], 7
                        mov              rax, qword ptr [rip + .Lx209_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n155_var_α
.Lx209_0:
                        .quad            4603489467105573601
#-----------------------------------------------------------------------------------------------------------------------
n152_lit_integer_α:
                        mov              qword ptr [rbp + 96], 6
                        mov              rax, qword ptr [rip + .Lx210_0]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n156_binop_test_α
.Lx210_0:
                        .quad            96
#-----------------------------------------------------------------------------------------------------------------------
n153_assign_α:
                        mov              rax, qword ptr [rbp + 528]
                        mov              rdx, qword ptr [rbp + 536]
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n128_var_α
#-----------------------------------------------------------------------------------------------------------------------
n154_binop_α:
                        mov              rdi, qword ptr [rbp + 432]
                        mov              rsi, qword ptr [rbp + 440]
                        mov              rdx, qword ptr [rbp + 512]
                        mov              rcx, qword ptr [rbp + 520]
                        call             rt_mod@PLT
                        cmp              eax, 99
                                                                                        je    n132_lit_real_α
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n157_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n155_var_α:
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n158_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n156_binop_test_α:
                        mov              eax, dword ptr [rbp + 752]
                        cmp              eax, 100
                                                                                        je    .Lx214_0
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 100
                                                                                        je    .Lx214_0
                        mov              eax, dword ptr [rbp + 752]
                        cmp              eax, 6
                                                                                        jne   .Lx214_2
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 6
                                                                                        jne   .Lx214_2
.Lx214_1:
                        mov              rax, qword ptr [rbp + 760]
                        mov              rcx, qword ptr [rbp + 104]
                        cmp              rax, rcx
                                                                                        jle   n141_disjunction_af
                        mov              rcx, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 64], rcx
                        mov              rcx, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 72], rcx
                                                                                        jmp   n159_return_α
.Lx214_0:
                        mov              rdi, qword ptr [rbp + 752]
                        mov              rsi, qword ptr [rbp + 760]
                        mov              rdx, qword ptr [rbp + 96]
                        mov              rcx, qword ptr [rbp + 104]
                        mov              r8d, 7
                        lea              r9, [rbp + 64]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx214_1
                        cmp              eax, 1
                                                                                        je    n141_disjunction_af
                                                                                        jmp   n159_return_α
.Lx214_2:
                        mov              rdi, qword ptr [rbp + 752]
                        mov              rsi, qword ptr [rbp + 760]
                        mov              rdx, qword ptr [rbp + 96]
                        mov              rcx, qword ptr [rbp + 104]
                        mov              r8d, 7
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n141_disjunction_af
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n159_return_α
#-----------------------------------------------------------------------------------------------------------------------
n157_assign_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        mov              qword ptr [1879052336], rax
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n132_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n158_op75_α:
                        mov              eax, dword ptr [rbp + 336]
                        cmp              eax, 7
                                                                                        je    .Lx217_1
                        cmp              eax, 6
                                                                                        jne   .Lx217_0
                        mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 6
                                                                                        jne   .Lx217_0
.Lx217_1:
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n160_binop_α
.Lx217_0:
                        lea              rdi, [rbp + 336]
                        lea              rsi, [rbp + 320]
                        lea              rdx, [rbp + 304]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n160_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n159_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_newcolor_γ
#-----------------------------------------------------------------------------------------------------------------------
n160_binop_α:
                        mov              rdi, qword ptr [rbp + 320]
                        mov              rsi, qword ptr [rbp + 328]
                        mov              rdx, qword ptr [rbp + 304]
                        mov              rcx, qword ptr [rbp + 312]
                        call             rt_mul@PLT
                        cmp              eax, 99
                                                                                        je    n141_disjunction_α
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n161_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n161_op75_α:
                        mov              eax, dword ptr [rbp + 224]
                        cmp              eax, 7
                                                                                        je    .Lx221_1
                        cmp              eax, 6
                                                                                        jne   .Lx221_0
                        mov              eax, dword ptr [rbp + 288]
                        cmp              eax, 6
                                                                                        jne   .Lx221_0
.Lx221_1:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n162_op75_α
.Lx221_0:
                        lea              rdi, [rbp + 224]
                        lea              rsi, [rbp + 288]
                        lea              rdx, [rbp + 208]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n162_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n162_op75_α:
                        mov              eax, dword ptr [rbp + 288]
                        cmp              eax, 7
                                                                                        je    .Lx223_1
                        cmp              eax, 6
                                                                                        jne   .Lx223_0
                        mov              eax, dword ptr [rbp + 224]
                        cmp              eax, 6
                                                                                        jne   .Lx223_0
.Lx223_1:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n163_binop_α
.Lx223_0:
                        lea              rdi, [rbp + 288]
                        lea              rsi, [rbp + 224]
                        lea              rdx, [rbp + 192]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n163_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n163_binop_α:
                        mov              eax, dword ptr [rbp + 208]
                        cmp              eax, 6
                                                                                        jne   .Lx224_0
                        mov              eax, dword ptr [rbp + 192]
                        cmp              eax, 6
                                                                                        jne   .Lx224_0
                        mov              rax, qword ptr [rbp + 216]
                        mov              rcx, qword ptr [rbp + 200]
                        add              rax, rcx
                        mov              qword ptr [rbp + 176], 6
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n164_lit_real_α
.Lx224_0:
                        mov              rdi, qword ptr [rbp + 208]
                        mov              rsi, qword ptr [rbp + 216]
                        mov              rdx, qword ptr [rbp + 192]
                        mov              rcx, qword ptr [rbp + 200]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n141_disjunction_α
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n164_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n164_lit_real_α:
                        mov              qword ptr [rbp + 384], 7
                        mov              rax, qword ptr [rip + .Lx225_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n165_var_α
.Lx225_0:
                        .quad            4592590756007337001
#-----------------------------------------------------------------------------------------------------------------------
n165_var_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n166_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n166_op75_α:
                        mov              eax, dword ptr [rbp + 400]
                        cmp              eax, 7
                                                                                        je    .Lx228_1
                        cmp              eax, 6
                                                                                        jne   .Lx228_0
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 6
                                                                                        jne   .Lx228_0
.Lx228_1:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n167_binop_α
.Lx228_0:
                        lea              rdi, [rbp + 400]
                        lea              rsi, [rbp + 384]
                        lea              rdx, [rbp + 368]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n167_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n167_binop_α:
                        mov              rdi, qword ptr [rbp + 384]
                        mov              rsi, qword ptr [rbp + 392]
                        mov              rdx, qword ptr [rbp + 368]
                        mov              rcx, qword ptr [rbp + 376]
                        call             rt_mul@PLT
                        cmp              eax, 99
                                                                                        je    n141_disjunction_α
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n168_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n168_op75_α:
                        mov              eax, dword ptr [rbp + 176]
                        cmp              eax, 7
                                                                                        je    .Lx231_1
                        cmp              eax, 6
                                                                                        jne   .Lx231_0
                        mov              eax, dword ptr [rbp + 352]
                        cmp              eax, 6
                                                                                        jne   .Lx231_0
.Lx231_1:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n169_op75_α
.Lx231_0:
                        lea              rdi, [rbp + 176]
                        lea              rsi, [rbp + 352]
                        lea              rdx, [rbp + 160]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n169_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n169_op75_α:
                        mov              eax, dword ptr [rbp + 352]
                        cmp              eax, 7
                                                                                        je    .Lx233_1
                        cmp              eax, 6
                                                                                        jne   .Lx233_0
                        mov              eax, dword ptr [rbp + 176]
                        cmp              eax, 6
                                                                                        jne   .Lx233_0
.Lx233_1:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n170_binop_α
.Lx233_0:
                        lea              rdi, [rbp + 352]
                        lea              rsi, [rbp + 176]
                        lea              rdx, [rbp + 144]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n170_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n170_binop_α:
                        mov              eax, dword ptr [rbp + 160]
                        cmp              eax, 6
                                                                                        jne   .Lx234_0
                        mov              eax, dword ptr [rbp + 144]
                        cmp              eax, 6
                                                                                        jne   .Lx234_0
                        mov              rax, qword ptr [rbp + 168]
                        mov              rcx, qword ptr [rbp + 152]
                        add              rax, rcx
                        mov              qword ptr [rbp + 128], 6
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n171_assign_α
.Lx234_0:
                        mov              rdi, qword ptr [rbp + 160]
                        mov              rsi, qword ptr [rbp + 168]
                        mov              rdx, qword ptr [rbp + 144]
                        mov              rcx, qword ptr [rbp + 152]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n141_disjunction_α
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                                                                                        jmp   n171_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n171_assign_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n141_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_newcolor_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_newcolor_β:
                                                                                        jmp   proc_newcolor_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_newcolor_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 776]
                        lea              rsp, [rbp + 800]
                        mov              rbp, [rbp + 792]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_newcolor_ω:
                        mov              rax, [rbp + 784]
                        lea              rsp, [rbp + 800]
                        mov              rbp, [rbp + 792]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_newcolor_dcα:
                        pop              r11
                        sub              rsp, 816
                        mov              qword ptr [rsp + 792], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 768], r11
                        lea              rax, [rip + .Lx236_2]
                        mov              qword ptr [rbp + 776], rax
                        lea              rax, [rip + .Lx236_3]
                        mov              qword ptr [rbp + 784], rax
                        mov              rdi, rbp
                        mov              esi, 752
                        mov              edx, 768
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_newcolor_α_body
.Lx236_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -800
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx236_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -800
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
                        sub              rsp, 7752
                        mov              rdi, rsp
                        mov              ecx, 7752
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 7744], rbp
                        mov              rbp, rsp
                        push             rsi
                        sub              rsp, 8
                        call             rt_main_args_fetch@PLT
                        add              rsp, 8
                        pop              rsi
                        mov              [rbp + 16], rax
                        mov              [rbp + 24], rdx
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n237_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx568_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n238_assign_α
.Lx568_0:
                        .quad            1000
#-----------------------------------------------------------------------------------------------------------------------
n238_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n239_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n239_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx570_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
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
                        mov              rdi, qword ptr [rbp + 7440]
                        mov              rsi, qword ptr [rbp + 7448]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n241_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n241_lit_charset_α:
                        mov              qword ptr [rbp + 7424], 1
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
                                                                                        jge   n567_scan_α
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
                        mov              qword ptr [rbp + 7392], 6
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
                        mov              qword ptr [rbp + 7344], 6
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
                        mov              qword ptr [rbp + 7296], 6
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
                        lea              rdi, [rbp + 7184]
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
                        lea              rdi, [rip + .Lrkfn588]
                        lea              rsi, [rbp + 7136]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 7120], rax
                        mov              qword ptr [rbp + 7128], rdx
                        cmp              eax, 99
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
                        mov              qword ptr [rbp + 7104], 1
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
                        mov              qword ptr [rbp + 7088], 1
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
                        mov              qword ptr [rbp + 7056], 6
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
                                                                                        jmp   n262_var_α
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
                                                                                        je    n263_disjunction_β
                                                                                        jmp   n261_var_α
n260_disjunction_af:
                        add              dword ptr [rbp + 6624], 1
                        mov              eax, dword ptr [rbp + 6624]
                        cmp              eax, 1
                                                                                        je    n264_keyword_icon_α
                                                                                        jmp   n261_var_α
#-----------------------------------------------------------------------------------------------------------------------
n261_var_α:
                        mov              rax, qword ptr [rbp + 7728]
                        mov              qword ptr [rbp + 5728], rax
                        mov              rax, qword ptr [rbp + 7736]
                        mov              qword ptr [rbp + 5736], rax
                                                                                        jmp   n267_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n262_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 6976], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 6984], rax
                                                                                        jmp   n269_unop_α
n262_var_β:
                                                                                        jmp   n260_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n263_disjunction_α:
                        mov              qword ptr [rbp + 6656], 0
                        mov              qword ptr [rbp + 6664], 0
                        mov              dword ptr [rbp + 6672], 0
                                                                                        jmp   n270_var_ref_α
n263_disjunction_as:
                        mov              eax, dword ptr [rbp + 6672]
                        cmp              eax, 0
                                                                                        jne   .Lx606_0
                        mov              rax, qword ptr [rbp + 6688]
                        mov              qword ptr [rbp + 6656], rax
                        mov              rax, qword ptr [rbp + 6696]
                        mov              qword ptr [rbp + 6664], rax
                                                                                        jmp   n265_assign_α
.Lx606_0:
                        cmp              eax, 1
                                                                                        jne   .Lx606_1
                        mov              rax, qword ptr [rbp + 6800]
                        mov              qword ptr [rbp + 6656], rax
                        mov              rax, qword ptr [rbp + 6808]
                        mov              qword ptr [rbp + 6664], rax
                                                                                        jmp   n265_assign_α
.Lx606_1:
                                                                                        jmp   n265_assign_α
n263_disjunction_β:
                        mov              eax, dword ptr [rbp + 6672]
                        cmp              eax, 0
                                                                                        je    n263_disjunction_af
                                                                                        jmp   n263_disjunction_af
n263_disjunction_af:
                        add              dword ptr [rbp + 6672], 1
                        mov              eax, dword ptr [rbp + 6672]
                        cmp              eax, 1
                                                                                        je    n271_lit_string_α
                                                                                        jmp   n261_var_α
#-----------------------------------------------------------------------------------------------------------------------
n264_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx607_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n261_var_α
                        mov              qword ptr [rbp + 7024], rax
                        mov              qword ptr [rbp + 7032], rdx
                                                                                        jmp   n266_assign_α
n264_keyword_icon_β:
                                                                                        jmp   n261_var_α
.Lx607_0:
                        .quad            .Lx607_0_s
.Lx607_0_s:
                        .string          "&input"
#-----------------------------------------------------------------------------------------------------------------------
n265_assign_α:
                        mov              rax, qword ptr [rbp + 6656]
                        mov              rdx, qword ptr [rbp + 6664]
                        mov              qword ptr [rbp + 7728], rax
                        mov              qword ptr [rbp + 7736], rdx
                        mov              qword ptr [rbp + 6640], rax
                        mov              qword ptr [rbp + 6648], rdx
                                                                                        jmp   n260_disjunction_as
n265_assign_β:
                                                                                        jmp   n261_var_α
#-----------------------------------------------------------------------------------------------------------------------
n266_assign_α:
                        mov              rax, qword ptr [rbp + 7024]
                        mov              rdx, qword ptr [rbp + 7032]
                        mov              qword ptr [rbp + 7728], rax
                        mov              qword ptr [rbp + 7736], rdx
                        mov              qword ptr [rbp + 7008], rax
                        mov              qword ptr [rbp + 7016], rdx
                                                                                        jmp   n260_disjunction_as
n266_assign_β:
                                                                                        jmp   n261_var_α
#-----------------------------------------------------------------------------------------------------------------------
n267_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 5728]
                        mov              qword ptr [rbp + 5696], rax
                        mov              rax, qword ptr [rbp + 5736]
                        mov              qword ptr [rbp + 5704], rax
                        .section         .rodata
.Lrkfn611:              .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn611]
                        lea              rsi, [rbp + 5696]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5680], rax
                        mov              qword ptr [rbp + 5688], rdx
                        cmp              eax, 99
                                                                                        je    n268_disjunction_α
                                                                                        jmp   n274_assign_α
n267_call_builtin_icon_β:
                                                                                        jmp   n268_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n268_disjunction_α:
                        mov              qword ptr [rbp + 5392], 0
                        mov              qword ptr [rbp + 5400], 0
                        mov              dword ptr [rbp + 5408], 0
                                                                                        jmp   n276_var_α
n268_disjunction_as:
                        mov              eax, dword ptr [rbp + 5408]
                        cmp              eax, 0
                                                                                        jne   .Lx613_0
                        mov              rax, qword ptr [rbp + 5424]
                        mov              qword ptr [rbp + 5392], rax
                        mov              rax, qword ptr [rbp + 5432]
                        mov              qword ptr [rbp + 5400], rax
                                                                                        jmp   n275_lit_string_α
.Lx613_0:
                                                                                        jmp   n275_lit_string_α
n268_disjunction_β:
                        mov              eax, dword ptr [rbp + 5408]
                                                                                        jmp   n275_lit_string_α
n268_disjunction_af:
                        add              dword ptr [rbp + 5408], 1
                        mov              eax, dword ptr [rbp + 5408]
                                                                                        jmp   n275_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n269_unop_α:
                        mov              rdi, qword ptr [rbp + 16]
                        mov              rsi, qword ptr [rbp + 24]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 6960], rax
                        mov              qword ptr [rbp + 6968], rdx
                                                                                        jmp   n278_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n270_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 6736], rax
                        mov              qword ptr [rbp + 6744], rdx
                                                                                        jmp   n279_lit_integer_α
n270_var_ref_β:
                                                                                        jmp   n263_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n271_lit_string_α:
                        mov              qword ptr [rbp + 6864], 1
                        mov              rax, qword ptr [rip + .Lx617_0]
                        mov              qword ptr [rbp + 6872], rax
                                                                                        jmp   n280_var_ref_α
n271_lit_string_β:
                                                                                        jmp   n263_disjunction_af
.Lx617_0:
                        .quad            .Lx617_0_s
.Lx617_0_s:
                        .string          "can't open "
#-----------------------------------------------------------------------------------------------------------------------
n272_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 6784]
                        mov              qword ptr [rbp + 6704], rax
                        mov              rax, qword ptr [rbp + 6792]
                        mov              qword ptr [rbp + 6712], rax
                        .section         .rodata
.Lrkfn619:              .string          "open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn619]
                        lea              rsi, [rbp + 6704]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 6688], rax
                        mov              qword ptr [rbp + 6696], rdx
                        cmp              eax, 99
                                                                                        je    n263_disjunction_af
                                                                                        jmp   n263_disjunction_as
n272_call_builtin_icon_β:
                                                                                        jmp   n263_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n273_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 6864]
                        mov              qword ptr [rbp + 6816], rax
                        mov              rax, qword ptr [rbp + 6872]
                        mov              qword ptr [rbp + 6824], rax
                        mov              rax, qword ptr [rbp + 6928]
                        mov              qword ptr [rbp + 6832], rax
                        mov              rax, qword ptr [rbp + 6936]
                        mov              qword ptr [rbp + 6840], rax
                        .section         .rodata
.Lrkfn621:              .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn621]
                        lea              rsi, [rbp + 6816]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 6800], rax
                        mov              qword ptr [rbp + 6808], rdx
                        cmp              eax, 99
                                                                                        je    n263_disjunction_af
                                                                                        jmp   n263_disjunction_as
n273_call_builtin_icon_β:
                                                                                        jmp   n263_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n274_assign_α:
                        mov              rax, qword ptr [rbp + 5680]
                        mov              rdx, qword ptr [rbp + 5688]
                        mov              qword ptr [rbp + 7712], rax
                        mov              qword ptr [rbp + 7720], rdx
                                                                                        jmp   n281_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n275_lit_string_α:
                        mov              qword ptr [rbp + 5216], 1
                        mov              rax, qword ptr [rip + .Lx623_0]
                        mov              qword ptr [rbp + 5224], rax
                                                                                        jmp   n282_lit_integer_α
.Lx623_0:
                        .quad            .Lx623_0_s
.Lx623_0_s:
                        .string          "1 metafile "
#-----------------------------------------------------------------------------------------------------------------------
n276_var_α:
                        mov              rax, qword ptr [rbp + 7664]
                        mov              qword ptr [rbp + 5616], rax
                        mov              rax, qword ptr [rbp + 7672]
                        mov              qword ptr [rbp + 5624], rax
                                                                                        jmp   n283_lit_charset_α
n276_var_β:
                                                                                        jmp   n268_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n277_assign_α:
                        mov              rax, qword ptr [rbp + 5440]
                        mov              rdx, qword ptr [rbp + 5448]
                        mov              qword ptr [rbp + 7664], rax
                        mov              qword ptr [rbp + 7672], rdx
                        mov              qword ptr [rbp + 5424], rax
                        mov              qword ptr [rbp + 5432], rdx
                                                                                        jmp   n268_disjunction_as
n277_assign_β:
                                                                                        jmp   n275_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n278_lit_integer_α:
                        mov              qword ptr [rbp + 6992], 6
                        mov              rax, qword ptr [rip + .Lx627_0]
                        mov              qword ptr [rbp + 7000], rax
                                                                                        jmp   n284_binop_test_α
.Lx627_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n279_lit_integer_α:
                        mov              qword ptr [rbp + 6752], 6
                        mov              rax, qword ptr [rip + .Lx628_0]
                        mov              qword ptr [rbp + 6760], rax
                                                                                        jmp   n285_subscript_α
.Lx628_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n280_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 6880], rax
                        mov              qword ptr [rbp + 6888], rdx
                                                                                        jmp   n286_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n281_disjunction_α:
                        mov              qword ptr [rbp + 5744], 0
                        mov              qword ptr [rbp + 5752], 0
                        mov              dword ptr [rbp + 5760], 0
                                                                                        jmp   n287_var_ref_α
n281_disjunction_as:
                        mov              eax, dword ptr [rbp + 5760]
                        cmp              eax, 0
                                                                                        jne   .Lx632_0
                        mov              rax, qword ptr [rbp + 5840]
                        mov              qword ptr [rbp + 5744], rax
                        mov              rax, qword ptr [rbp + 5848]
                        mov              qword ptr [rbp + 5752], rax
                                                                                        jmp   n261_var_α
.Lx632_0:
                                                                                        jmp   n261_var_α
n281_disjunction_β:
                        mov              eax, dword ptr [rbp + 5760]
                                                                                        jmp   n261_var_α
n281_disjunction_af:
                        add              dword ptr [rbp + 5760], 1
                        mov              eax, dword ptr [rbp + 5760]
                                                                                        jmp   n261_var_α
#-----------------------------------------------------------------------------------------------------------------------
n282_lit_integer_α:
                        mov              qword ptr [rbp + 5280], 6
                        mov              rax, qword ptr [rip + .Lx633_0]
                        mov              qword ptr [rbp + 5288], rax
                                                                                        jmp   n289_call_proc_staged_α
.Lx633_0:
                        .quad            125
#-----------------------------------------------------------------------------------------------------------------------
n283_lit_charset_α:
                        mov              qword ptr [rbp + 5632], 1
                        mov              dword ptr [rbp + 5636], -1
                        mov              rax, qword ptr [rip + .Lx634_0]
                        mov              qword ptr [rbp + 5640], rax
                                                                                        jmp   n290_binop_α
.Lx634_0:
                        .quad            .Lx634_0_s
.Lx634_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
#-----------------------------------------------------------------------------------------------------------------------
n284_binop_test_α:
                        mov              eax, dword ptr [rbp + 6960]
                        cmp              eax, 100
                                                                                        je    .Lx635_0
                        mov              eax, dword ptr [rbp + 6992]
                        cmp              eax, 100
                                                                                        je    .Lx635_0
                        mov              eax, dword ptr [rbp + 6960]
                        cmp              eax, 6
                                                                                        jne   .Lx635_2
                        mov              eax, dword ptr [rbp + 6992]
                        cmp              eax, 6
                                                                                        jne   .Lx635_2
.Lx635_1:
                        mov              rax, qword ptr [rbp + 6968]
                        mov              rcx, qword ptr [rbp + 7000]
                        cmp              rax, rcx
                                                                                        jle   n260_disjunction_af
                        mov              rcx, qword ptr [rbp + 6992]
                        mov              qword ptr [rbp + 6944], rcx
                        mov              rcx, qword ptr [rbp + 7000]
                        mov              qword ptr [rbp + 6952], rcx
                                                                                        jmp   n263_disjunction_α
.Lx635_0:
                        mov              rdi, qword ptr [rbp + 6960]
                        mov              rsi, qword ptr [rbp + 6968]
                        mov              rdx, qword ptr [rbp + 6992]
                        mov              rcx, qword ptr [rbp + 7000]
                        mov              r8d, 7
                        lea              r9, [rbp + 6944]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx635_1
                        cmp              eax, 1
                                                                                        je    n260_disjunction_af
                                                                                        jmp   n263_disjunction_α
.Lx635_2:
                        mov              rdi, qword ptr [rbp + 6960]
                        mov              rsi, qword ptr [rbp + 6968]
                        mov              rdx, qword ptr [rbp + 6992]
                        mov              rcx, qword ptr [rbp + 7000]
                        mov              r8d, 7
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n260_disjunction_af
                        mov              rax, qword ptr [rbp + 6992]
                        mov              qword ptr [rbp + 6944], rax
                        mov              rax, qword ptr [rbp + 7000]
                        mov              qword ptr [rbp + 6952], rax
                                                                                        jmp   n263_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n285_subscript_α:
                        mov              rdi, qword ptr [rbp + 6736]
                        mov              rsi, qword ptr [rbp + 6744]
                        mov              rdx, qword ptr [rbp + 6752]
                        mov              rcx, qword ptr [rbp + 6760]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n263_disjunction_af
                        mov              qword ptr [rbp + 6768], rax
                        mov              qword ptr [rbp + 6776], rdx
                                                                                        jmp   n291_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n286_lit_integer_α:
                        mov              qword ptr [rbp + 6896], 6
                        mov              rax, qword ptr [rip + .Lx637_0]
                        mov              qword ptr [rbp + 6904], rax
                                                                                        jmp   n292_subscript_α
.Lx637_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n287_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7712]
                        mov              qword ptr [rbp + 6528], rax
                        mov              qword ptr [rbp + 6536], rdx
                                                                                        jmp   n293_lit_integer_α
n287_var_ref_β:
                                                                                        jmp   n281_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n288_conjunction_α:
                                                                                        jmp   n281_disjunction_as
n288_conjunction_β:
                                                                                        jmp   n261_var_α
#-----------------------------------------------------------------------------------------------------------------------
n289_call_proc_staged_α:
                        lea              rsi, [rbp + 5280]
                        call             proc_pct_dcα
                                                                                        jmp   .Lx642_2
.Lx642_2:
                        mov              qword ptr [rbp + 5232], rax
                        mov              qword ptr [rbp + 5240], rdx
                        cmp              eax, 99
                                                                                        je    n295_call_builtin_icon_α
                                                                                        jmp   n294_lit_string_α
n289_call_proc_staged_β:
                                                                                        jmp   n295_call_builtin_icon_α
.Lx642_0:
                        .quad            .Lx642_0_s
.Lx642_0_s:
                        .string          "pct"
#-----------------------------------------------------------------------------------------------------------------------
n290_binop_α:
                        mov              rdi, qword ptr [rbp + 5616]
                        mov              rsi, qword ptr [rbp + 5624]
                        mov              rdx, qword ptr [rbp + 5632]
                        mov              rcx, qword ptr [rbp + 5640]
                        call             rt_cdiff@PLT
                        cmp              eax, 99
                                                                                        je    n268_disjunction_af
                        mov              qword ptr [rbp + 5600], rax
                        mov              qword ptr [rbp + 5608], rdx
                                                                                        jmp   n296_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n291_deref_α:
                        mov              rdi, qword ptr [rbp + 6768]
                        mov              rsi, qword ptr [rbp + 6776]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n263_disjunction_af
                        mov              qword ptr [rbp + 6784], rax
                        mov              qword ptr [rbp + 6792], rdx
                                                                                        jmp   n272_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n292_subscript_α:
                        mov              rdi, qword ptr [rbp + 6880]
                        mov              rsi, qword ptr [rbp + 6888]
                        mov              rdx, qword ptr [rbp + 6896]
                        mov              rcx, qword ptr [rbp + 6904]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n263_disjunction_af
                        mov              qword ptr [rbp + 6912], rax
                        mov              qword ptr [rbp + 6920], rdx
                                                                                        jmp   n297_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n293_lit_integer_α:
                        mov              qword ptr [rbp + 6544], 6
                        mov              rax, qword ptr [rip + .Lx646_0]
                        mov              qword ptr [rbp + 6552], rax
                                                                                        jmp   n298_subscript_α
.Lx646_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n294_lit_string_α:
                        mov              qword ptr [rbp + 5296], 1
                        mov              rax, qword ptr [rip + .Lx647_0]
                        mov              qword ptr [rbp + 5304], rax
                                                                                        jmp   n299_lit_integer_α
.Lx647_0:
                        .quad            .Lx647_0_s
.Lx647_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n295_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn649:              .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn649]
                        lea              rsi, [rbp + 5088]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5072], rax
                        mov              qword ptr [rbp + 5080], rdx
                        cmp              eax, 99
                                                                                        je    n301_lit_real_α
                                                                                        jmp   n300_assign_α
n295_call_builtin_icon_β:
                                                                                        jmp   n301_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n296_lit_charset_α:
                        mov              qword ptr [rbp + 5648], 1
                        mov              dword ptr [rbp + 5652], -1
                        mov              rax, qword ptr [rip + .Lx650_0]
                        mov              qword ptr [rbp + 5656], rax
                                                                                        jmp   n302_binop_α
.Lx650_0:
                        .quad            .Lx650_0_s
.Lx650_0_s:
                        .string          "abcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n297_deref_α:
                        mov              rdi, qword ptr [rbp + 6912]
                        mov              rsi, qword ptr [rbp + 6920]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n263_disjunction_af
                        mov              qword ptr [rbp + 6928], rax
                        mov              qword ptr [rbp + 6936], rdx
                                                                                        jmp   n273_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n298_subscript_α:
                        mov              rdi, qword ptr [rbp + 6528]
                        mov              rsi, qword ptr [rbp + 6536]
                        mov              rdx, qword ptr [rbp + 6544]
                        mov              rcx, qword ptr [rbp + 6552]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n281_disjunction_af
                        mov              qword ptr [rbp + 6560], rax
                        mov              qword ptr [rbp + 6568], rdx
                                                                                        jmp   n303_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n299_lit_integer_α:
                        mov              qword ptr [rbp + 5360], 6
                        mov              rax, qword ptr [rip + .Lx653_0]
                        mov              qword ptr [rbp + 5368], rax
                                                                                        jmp   n304_call_proc_staged_α
.Lx653_0:
                        .quad            100
#-----------------------------------------------------------------------------------------------------------------------
n300_assign_α:
                        mov              rax, qword ptr [rbp + 5072]
                        mov              rdx, qword ptr [rbp + 5080]
                        mov              qword ptr [rbp + 7584], rax
                        mov              qword ptr [rbp + 7592], rdx
                                                                                        jmp   n301_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n301_lit_real_α:
                        mov              qword ptr [rbp + 5024], 7
                        mov              rax, qword ptr [rip + .Lx655_0]
                        mov              qword ptr [rbp + 5032], rax
                                                                                        jmp   n305_var_α
.Lx655_0:
                        .quad            4618760250204063342
#-----------------------------------------------------------------------------------------------------------------------
n302_binop_α:
                        mov              rdi, qword ptr [rbp + 5600]
                        mov              rsi, qword ptr [rbp + 5608]
                        mov              rdx, qword ptr [rbp + 5648]
                        mov              rcx, qword ptr [rbp + 5656]
                        call             rt_cdiff@PLT
                        cmp              eax, 99
                                                                                        je    n268_disjunction_af
                        mov              qword ptr [rbp + 5584], rax
                        mov              qword ptr [rbp + 5592], rdx
                                                                                        jmp   n306_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n303_deref_α:
                        mov              rdi, qword ptr [rbp + 6560]
                        mov              rsi, qword ptr [rbp + 6568]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n281_disjunction_af
                        mov              qword ptr [rbp + 6576], rax
                        mov              qword ptr [rbp + 6584], rdx
                                                                                        jmp   n307_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n304_call_proc_staged_α:
                        lea              rsi, [rbp + 5360]
                        call             proc_pct_dcα
                                                                                        jmp   .Lx659_2
.Lx659_2:
                        mov              qword ptr [rbp + 5312], rax
                        mov              qword ptr [rbp + 5320], rdx
                        cmp              eax, 99
                                                                                        je    n295_call_builtin_icon_α
                                                                                        jmp   n308_lit_string_α
n304_call_proc_staged_β:
                                                                                        jmp   n295_call_builtin_icon_α
.Lx659_0:
                        .quad            .Lx659_0_s
.Lx659_0_s:
                        .string          "pct"
#-----------------------------------------------------------------------------------------------------------------------
n305_var_α:
                        mov              rax, qword ptr [rbp + 7488]
                        mov              qword ptr [rbp + 5056], rax
                        mov              rax, qword ptr [rbp + 7496]
                        mov              qword ptr [rbp + 5064], rax
                                                                                        jmp   n309_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n306_unop_α:
                        mov              rdi, qword ptr [rbp + 5584]
                        mov              rsi, qword ptr [rbp + 5592]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 5568], rax
                        mov              qword ptr [rbp + 5576], rdx
                                                                                        jmp   n311_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n307_lit_string_α:
                        mov              qword ptr [rbp + 6592], 1
                        mov              rax, qword ptr [rip + .Lx663_0]
                        mov              qword ptr [rbp + 6600], rax
                                                                                        jmp   n312_binop_test_α
.Lx663_0:
                        .quad            .Lx663_0_s
.Lx663_0_s:
                        .string          "["
#-----------------------------------------------------------------------------------------------------------------------
n308_lit_string_α:
                        mov              qword ptr [rbp + 5376], 1
                        mov              rax, qword ptr [rip + .Lx664_0]
                        mov              qword ptr [rbp + 5384], rax
                                                                                        jmp   n313_call_builtin_icon_α
.Lx664_0:
                        .quad            .Lx664_0_s
.Lx664_0_s:
                        .string          " 0 0 0 init"
#-----------------------------------------------------------------------------------------------------------------------
n309_unop_α:
                        mov              rdi, qword ptr [rbp + 7488]
                        mov              rsi, qword ptr [rbp + 7496]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 5040], rax
                        mov              qword ptr [rbp + 5048], rdx
                                                                                        jmp   n314_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n310_lit_real_α:
                        mov              qword ptr [rbp + 4912], 7
                        mov              rax, qword ptr [rip + .Lx666_0]
                        mov              qword ptr [rbp + 4920], rax
                                                                                        jmp   n315_var_α
.Lx666_0:
                        .quad            4609753050949322350
#-----------------------------------------------------------------------------------------------------------------------
n311_lit_integer_α:
                        mov              qword ptr [rbp + 5664], 6
                        mov              rax, qword ptr [rip + .Lx667_0]
                        mov              qword ptr [rbp + 5672], rax
                                                                                        jmp   n316_binop_test_α
.Lx667_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n312_binop_test_α:
                        mov              rdi, qword ptr [rbp + 6576]
                        mov              rsi, qword ptr [rbp + 6584]
                        mov              rdx, qword ptr [rbp + 6592]
                        mov              rcx, qword ptr [rbp + 6600]
                        mov              r8d, 17
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n281_disjunction_af
                        mov              rdi, qword ptr [rbp + 6592]
                        mov              rsi, qword ptr [rbp + 6600]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 6512], rax
                        mov              qword ptr [rbp + 6520], rdx
                                                                                        jmp   n317_var_α
#-----------------------------------------------------------------------------------------------------------------------
n313_call_builtin_icon_α:
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
.Lrkfn670:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn670]
                        lea              rsi, [rbp + 5120]
                        mov              edx, 5
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5104], rax
                        mov              qword ptr [rbp + 5112], rdx
                        cmp              eax, 99
                                                                                        je    n295_call_builtin_icon_α
                                                                                        jmp   n295_call_builtin_icon_α
n313_call_builtin_icon_β:
                                                                                        jmp   n295_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n314_op75_α:
                        mov              eax, dword ptr [rbp + 5040]
                        cmp              eax, 7
                                                                                        je    .Lx672_1
                        cmp              eax, 6
                                                                                        jne   .Lx672_0
                        mov              eax, dword ptr [rbp + 5024]
                        cmp              eax, 6
                                                                                        jne   .Lx672_0
.Lx672_1:
                        mov              rax, qword ptr [rbp + 5040]
                        mov              qword ptr [rbp + 5008], rax
                        mov              rax, qword ptr [rbp + 5048]
                        mov              qword ptr [rbp + 5016], rax
                                                                                        jmp   n318_binop_α
.Lx672_0:
                        lea              rdi, [rbp + 5040]
                        lea              rsi, [rbp + 5024]
                        lea              rdx, [rbp + 5008]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n318_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n315_var_α:
                        mov              rax, qword ptr [rbp + 7696]
                        mov              qword ptr [rbp + 4960], rax
                        mov              rax, qword ptr [rbp + 7704]
                        mov              qword ptr [rbp + 4968], rax
                                                                                        jmp   n319_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n316_binop_test_α:
                        mov              eax, dword ptr [rbp + 5568]
                        cmp              eax, 100
                                                                                        je    .Lx675_0
                        mov              eax, dword ptr [rbp + 5664]
                        cmp              eax, 100
                                                                                        je    .Lx675_0
                        mov              eax, dword ptr [rbp + 5568]
                        cmp              eax, 6
                                                                                        jne   .Lx675_2
                        mov              eax, dword ptr [rbp + 5664]
                        cmp              eax, 6
                                                                                        jne   .Lx675_2
.Lx675_1:
                        mov              rax, qword ptr [rbp + 5576]
                        mov              rcx, qword ptr [rbp + 5672]
                        cmp              rax, rcx
                                                                                        jne   n268_disjunction_af
                        mov              rcx, qword ptr [rbp + 5664]
                        mov              qword ptr [rbp + 5552], rcx
                        mov              rcx, qword ptr [rbp + 5672]
                        mov              qword ptr [rbp + 5560], rcx
                                                                                        jmp   n321_var_α
.Lx675_0:
                        mov              rdi, qword ptr [rbp + 5568]
                        mov              rsi, qword ptr [rbp + 5576]
                        mov              rdx, qword ptr [rbp + 5664]
                        mov              rcx, qword ptr [rbp + 5672]
                        mov              r8d, 9
                        lea              r9, [rbp + 5552]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx675_1
                        cmp              eax, 1
                                                                                        je    n268_disjunction_af
                                                                                        jmp   n321_var_α
.Lx675_2:
                        mov              rdi, qword ptr [rbp + 5568]
                        mov              rsi, qword ptr [rbp + 5576]
                        mov              rdx, qword ptr [rbp + 5664]
                        mov              rcx, qword ptr [rbp + 5672]
                        mov              r8d, 9
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n268_disjunction_af
                        mov              rax, qword ptr [rbp + 5664]
                        mov              qword ptr [rbp + 5552], rax
                        mov              rax, qword ptr [rbp + 5672]
                        mov              qword ptr [rbp + 5560], rax
                                                                                        jmp   n321_var_α
#-----------------------------------------------------------------------------------------------------------------------
n317_var_α:
                        mov              rax, qword ptr [rbp + 7568]
                        mov              qword ptr [rbp + 6480], rax
                        mov              rax, qword ptr [rbp + 7576]
                        mov              qword ptr [rbp + 6488], rax
                                                                                        jmp   n322_var_α
#-----------------------------------------------------------------------------------------------------------------------
n318_binop_α:
                        mov              rdi, qword ptr [rbp + 5024]
                        mov              rsi, qword ptr [rbp + 5032]
                        mov              rdx, qword ptr [rbp + 5008]
                        mov              rcx, qword ptr [rbp + 5016]
                        call             rt_div@PLT
                        cmp              eax, 99
                                                                                        je    n310_lit_real_α
                        mov              qword ptr [rbp + 4992], rax
                        mov              qword ptr [rbp + 5000], rdx
                                                                                        jmp   n323_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n319_lit_integer_α:
                        mov              qword ptr [rbp + 4976], 6
                        mov              rax, qword ptr [rip + .Lx679_0]
                        mov              qword ptr [rbp + 4984], rax
                                                                                        jmp   n324_op75_α
.Lx679_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n320_var_α:
                        mov              rax, qword ptr [rbp + 7664]
                        mov              qword ptr [rbp + 4336], rax
                        mov              rax, qword ptr [rbp + 7672]
                        mov              qword ptr [rbp + 4344], rax
                                                                                        jmp   n325_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n321_var_α:
                        mov              rax, qword ptr [rbp + 7664]
                        mov              qword ptr [rbp + 5536], rax
                        mov              rax, qword ptr [rbp + 7672]
                        mov              qword ptr [rbp + 5544], rax
                                                                                        jmp   n327_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n322_var_α:
                        mov              rax, qword ptr [rbp + 7712]
                        mov              qword ptr [rbp + 6496], rax
                        mov              rax, qword ptr [rbp + 7720]
                        mov              qword ptr [rbp + 6504], rax
                                                                                        jmp   n328_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n323_assign_α:
                        mov              rax, qword ptr [rbp + 4992]
                        mov              rdx, qword ptr [rbp + 5000]
                        mov              qword ptr [rbp + 7696], rax
                        mov              qword ptr [rbp + 7704], rdx
                                                                                        jmp   n310_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n324_op75_α:
                        mov              eax, dword ptr [rbp + 7696]
                        cmp              eax, 7
                                                                                        je    .Lx688_1
                        cmp              eax, 6
                                                                                        jne   .Lx688_0
                        mov              eax, dword ptr [rbp + 4976]
                        cmp              eax, 6
                                                                                        jne   .Lx688_0
.Lx688_1:
                        mov              rax, qword ptr [rbp + 7696]
                        mov              qword ptr [rbp + 4944], rax
                        mov              rax, qword ptr [rbp + 7704]
                        mov              qword ptr [rbp + 4952], rax
                                                                                        jmp   n329_binop_α
.Lx688_0:
                        lea              rdi, [rbp + 7696]
                        lea              rsi, [rbp + 4976]
                        lea              rdx, [rbp + 4944]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n329_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n325_iterate_α:
                        mov              qword ptr [rbp + 4320], 0
.Lx690_0:
                        mov              rdi, qword ptr [rbp + 4336]
                        mov              rsi, qword ptr [rbp + 4344]
                        mov              rdx, qword ptr [rbp + 4320]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 4304], rax
                        mov              qword ptr [rbp + 4312], rdx
                        cmp              rax, 99
                                                                                        je    n326_lit_integer_α
                                                                                        jmp   n330_assign_α
n325_iterate_β:
                        inc              qword ptr [rbp + 4320]
                                                                                        jmp   .Lx690_0
#-----------------------------------------------------------------------------------------------------------------------
n326_lit_integer_α:
                        mov              qword ptr [rbp + 4288], 6
                        mov              rax, qword ptr [rip + .Lx691_0]
                        mov              qword ptr [rbp + 4296], rax
                                                                                        jmp   n331_assign_α
.Lx691_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n327_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 5536]
                        mov              qword ptr [rbp + 5504], rax
                        mov              rax, qword ptr [rbp + 5544]
                        mov              qword ptr [rbp + 5512], rax
                        .section         .rodata
.Lrkfn693:              .string          "cset"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn693]
                        lea              rsi, [rbp + 5504]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5488], rax
                        mov              qword ptr [rbp + 5496], rdx
                        cmp              eax, 99
                                                                                        je    n275_lit_string_α
                                                                                        jmp   n332_call_builtin_icon_α
n327_call_builtin_icon_β:
                                                                                        jmp   n275_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n328_call_builtin_gen_α:
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
.Lx694_60:
                        .section         .rodata
.Lbynamegenfn187:       .string          "upto"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn187]
                        lea              rsi, [rbp + 6432]
                        mov              edx, 2
                        lea              rcx, [rbp + 6464]
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 6416], rax
                        mov              qword ptr [rbp + 6424], rdx
                        cmp              eax, 99
                                                                                        je    n281_disjunction_af
                                                                                        jmp   n333_conjunction_α
n328_call_builtin_gen_β:
                                                                                        jmp   .Lx694_60
#-----------------------------------------------------------------------------------------------------------------------
n329_binop_α:
                        mov              rdi, qword ptr [rbp + 4944]
                        mov              rsi, qword ptr [rbp + 4952]
                        mov              rdx, qword ptr [rbp + 4976]
                        mov              rcx, qword ptr [rbp + 4984]
                        call             rt_div@PLT
                        cmp              eax, 99
                                                                                        je    n320_var_α
                        mov              qword ptr [rbp + 4928], rax
                        mov              qword ptr [rbp + 4936], rdx
                                                                                        jmp   n334_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n330_assign_α:
                        mov              rax, qword ptr [rbp + 4304]
                        mov              rdx, qword ptr [rbp + 4312]
                        mov              qword ptr [rbp + 7648], rax
                        mov              qword ptr [rbp + 7656], rdx
                                                                                        jmp   n335_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n331_assign_α:
                        mov              rax, qword ptr [rbp + 4288]
                        mov              rdx, qword ptr [rbp + 4296]
                        mov              qword ptr [rbp + 7552], rax
                        mov              qword ptr [rbp + 7560], rdx
                                                                                        jmp   n336_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n332_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 5488]
                        mov              qword ptr [rbp + 5456], rax
                        mov              rax, qword ptr [rbp + 5496]
                        mov              qword ptr [rbp + 5464], rax
                        .section         .rodata
.Lrkfn699:              .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn699]
                        lea              rsi, [rbp + 5456]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5440], rax
                        mov              qword ptr [rbp + 5448], rdx
                        cmp              eax, 99
                                                                                        je    n275_lit_string_α
                                                                                        jmp   n277_assign_α
n332_call_builtin_icon_β:
                                                                                        jmp   n275_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n333_conjunction_α:
                                                                                        jmp   n337_var_α
n333_conjunction_β:
                                                                                        jmp   n281_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n334_op75_α:
                        mov              eax, dword ptr [rbp + 4928]
                        cmp              eax, 7
                                                                                        je    .Lx702_1
                        cmp              eax, 6
                                                                                        jne   .Lx702_0
                        mov              eax, dword ptr [rbp + 4912]
                        cmp              eax, 6
                                                                                        jne   .Lx702_0
.Lx702_1:
                        mov              rax, qword ptr [rbp + 4928]
                        mov              qword ptr [rbp + 4896], rax
                        mov              rax, qword ptr [rbp + 4936]
                        mov              qword ptr [rbp + 4904], rax
                                                                                        jmp   n338_binop_α
.Lx702_0:
                        lea              rdi, [rbp + 4928]
                        lea              rsi, [rbp + 4912]
                        lea              rdx, [rbp + 4896]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n338_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n335_bound_α:
                        mov              qword ptr [rbp + 4352], rsp
                                                                                        jmp   n339_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n336_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx705_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n340_assign_α
.Lx705_0:
                        .quad            250
#-----------------------------------------------------------------------------------------------------------------------
n337_var_α:
                        mov              rax, qword ptr [rbp + 7504]
                        mov              qword ptr [rbp + 6368], rax
                        mov              rax, qword ptr [rbp + 7512]
                        mov              qword ptr [rbp + 6376], rax
                                                                                        jmp   n341_var_α
#-----------------------------------------------------------------------------------------------------------------------
n338_binop_α:
                        mov              rdi, qword ptr [rbp + 4912]
                        mov              rsi, qword ptr [rbp + 4920]
                        mov              rdx, qword ptr [rbp + 4896]
                        mov              rcx, qword ptr [rbp + 4904]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        je    n320_var_α
                        mov              qword ptr [rbp + 4880], rax
                        mov              qword ptr [rbp + 4888], rdx
                                                                                        jmp   n343_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n339_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7584]
                        mov              qword ptr [rbp + 4800], rax
                        mov              qword ptr [rbp + 4808], rdx
                                                                                        jmp   n344_var_α
#-----------------------------------------------------------------------------------------------------------------------
n340_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n345_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n341_var_α:
                        mov              rax, qword ptr [rbp + 7712]
                        mov              qword ptr [rbp + 6384], rax
                        mov              rax, qword ptr [rbp + 7720]
                        mov              qword ptr [rbp + 6392], rax
                                                                                        jmp   n346_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n342_var_α:
                        mov              rax, qword ptr [rbp + 7712]
                        mov              qword ptr [rbp + 6288], rax
                        mov              rax, qword ptr [rbp + 7720]
                        mov              qword ptr [rbp + 6296], rax
                                                                                        jmp   n347_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n343_assign_α:
                        mov              rax, qword ptr [rbp + 4880]
                        mov              rdx, qword ptr [rbp + 4888]
                        mov              qword ptr [rbp + 7680], rax
                        mov              qword ptr [rbp + 7688], rdx
                                                                                        jmp   n320_var_α
#-----------------------------------------------------------------------------------------------------------------------
n344_var_α:
                        mov              rax, qword ptr [rbp + 7648]
                        mov              qword ptr [rbp + 4816], rax
                        mov              rax, qword ptr [rbp + 7656]
                        mov              qword ptr [rbp + 4824], rax
                                                                                        jmp   n348_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n345_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx719_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n350_assign_α
.Lx719_0:
                        .quad            255
#-----------------------------------------------------------------------------------------------------------------------
n346_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 6368]
                        mov              qword ptr [rbp + 6320], rax
                        mov              rax, qword ptr [rbp + 6376]
                        mov              qword ptr [rbp + 6328], rax
                        mov              rax, qword ptr [rbp + 6384]
                        mov              qword ptr [rbp + 6336], rax
                        mov              rax, qword ptr [rbp + 6392]
                        mov              qword ptr [rbp + 6344], rax
                        .section         .rodata
.Lrkfn721:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn721]
                        lea              rsi, [rbp + 6320]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 6304], rax
                        mov              qword ptr [rbp + 6312], rdx
                        cmp              eax, 99
                                                                                        je    n342_var_α
                                                                                        jmp   n342_var_α
n346_call_builtin_icon_β:
                                                                                        jmp   n342_var_α
#-----------------------------------------------------------------------------------------------------------------------
n347_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 6288]
                        mov              rsi, qword ptr [rbp + 6296]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n351_var_α
#-----------------------------------------------------------------------------------------------------------------------
n348_subscript_α:
                        mov              rdi, qword ptr [rbp + 4800]
                        mov              rsi, qword ptr [rbp + 4808]
                        mov              rdx, qword ptr [rbp + 4816]
                        mov              rcx, qword ptr [rbp + 4824]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n349_lit_integer_α
                        mov              qword ptr [rbp + 4832], rax
                        mov              qword ptr [rbp + 4840], rdx
                                                                                        jmp   n352_var_α
#-----------------------------------------------------------------------------------------------------------------------
n349_lit_integer_α:
                        mov              qword ptr [rbp + 4736], 6
                        mov              rax, qword ptr [rip + .Lx725_0]
                        mov              qword ptr [rbp + 4744], rax
                                                                                        jmp   n353_var_α
.Lx725_0:
                        .quad            47
#-----------------------------------------------------------------------------------------------------------------------
n350_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n354_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n351_var_α:
                        mov              rax, qword ptr [rbp + 7568]
                        mov              qword ptr [rbp + 5936], rax
                        mov              rax, qword ptr [rbp + 7576]
                        mov              qword ptr [rbp + 5944], rax
                                                                                        jmp   n355_scan_upto_α
#-----------------------------------------------------------------------------------------------------------------------
n352_var_α:
                        mov              rax, qword ptr [rbp + 7680]
                        mov              qword ptr [rbp + 4864], rax
                        mov              rax, qword ptr [rbp + 7688]
                        mov              qword ptr [rbp + 4872], rax
                                                                                        jmp   n357_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n353_var_α:
                        mov              rax, qword ptr [rbp + 7680]
                        mov              qword ptr [rbp + 4752], rax
                        mov              rax, qword ptr [rbp + 7688]
                        mov              qword ptr [rbp + 4760], rax
                                                                                        jmp   n358_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n354_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx733_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n360_assign_α
.Lx733_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n355_scan_upto_α:
                        mov              qword ptr [rbp + 5920], r14
.Lx735_0:
                        mov              rax, qword ptr [rbp + 5920]
                        cmp              rax, r15
                                                                                        jge   n356_scan_α
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rbp + 5944]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx735_1
                        mov              qword ptr [rbp + 5904], 6
                        add              rax, 1
                        mov              qword ptr [rbp + 5912], rax
                                                                                        jmp   n361_scan_tab_α
.Lx735_1:
                        inc              qword ptr [rbp + 5920]
                                                                                        jmp   .Lx735_0
n355_scan_upto_β:
                        inc              qword ptr [rbp + 5920]
                                                                                        jmp   .Lx735_0
#-----------------------------------------------------------------------------------------------------------------------
n356_scan_α:
                        lea              rdi, [rbp + 5808]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 5808]
                        mov              r14, qword ptr [rbp + 5816]
                        mov              r15, qword ptr [rbp + 5824]
                                                                                        jmp   n261_var_α
n356_scan_β:
                                                                                        jmp   n261_var_α
#-----------------------------------------------------------------------------------------------------------------------
n357_assign_var_α:
                        mov              rdi, qword ptr [rbp + 4832]
                        mov              rsi, qword ptr [rbp + 4840]
                        mov              rdx, qword ptr [rbp + 4864]
                        mov              rcx, qword ptr [rbp + 4872]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n349_lit_integer_α
                        mov              qword ptr [rbp + 4848], rax
                        mov              qword ptr [rbp + 4856], rdx
                                                                                        jmp   n349_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n358_lit_integer_α:
                        mov              qword ptr [rbp + 4768], 6
                        mov              rax, qword ptr [rip + .Lx739_0]
                        mov              qword ptr [rbp + 4776], rax
                                                                                        jmp   n362_lit_integer_α
.Lx739_0:
                        .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n359_lit_string_α:
                        mov              qword ptr [rbp + 4592], 1
                        mov              rax, qword ptr [rip + .Lx740_0]
                        mov              qword ptr [rbp + 4600], rax
                                                                                        jmp   n363_var_α
.Lx740_0:
                        .quad            .Lx740_0_s
.Lx740_0_s:
                        .string          "("
#-----------------------------------------------------------------------------------------------------------------------
n360_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052336], rax
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n364_var_α
#-----------------------------------------------------------------------------------------------------------------------
n361_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 5912]
                        cmp              rax, 1
                                                                                        jge   .Lx743_0
                        add              rax, r15
                        add              rax, 1
.Lx743_0:
                        cmp              rax, 1
                                                                                        jge   .Lx743_239
                        add              rsp, 16
                                                                                        jmp   n355_scan_upto_β
.Lx743_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx743_240
                        add              rsp, 16
                                                                                        jmp   n355_scan_upto_β
.Lx743_240:
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
                                                                                        jmp   n365_lit_integer_α
n361_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n355_scan_upto_β
#-----------------------------------------------------------------------------------------------------------------------
n362_lit_integer_α:
                        mov              qword ptr [rbp + 4784], 6
                        mov              rax, qword ptr [rip + .Lx744_0]
                        mov              qword ptr [rbp + 4792], rax
                                                                                        jmp   n366_call_proc_staged_α
.Lx744_0:
                        .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n363_var_α:
                        mov              rax, qword ptr [rbp + 7648]
                        mov              qword ptr [rbp + 4608], rax
                        mov              rax, qword ptr [rbp + 7656]
                        mov              qword ptr [rbp + 4616], rax
                                                                                        jmp   n367_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n364_var_α:
                        mov              rax, qword ptr [rbp + 7504]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 7512]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n369_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n365_lit_integer_α:
                        mov              qword ptr [rbp + 6272], 6
                        mov              rax, qword ptr [rip + .Lx749_0]
                        mov              qword ptr [rbp + 6280], rax
                                                                                        jmp   n371_scan_move_α
.Lx749_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n366_call_proc_staged_α:
                        lea              rsi, [rbp + 4736]
                        lea              rdx, [rbp + 4752]
                        lea              rcx, [rbp + 4768]
                        lea              r8, [rbp + 4784]
                        call             proc_cart_dcα
                                                                                        jmp   .Lx751_2
.Lx751_2:
                        mov              qword ptr [rbp + 4640], rax
                        mov              qword ptr [rbp + 4648], rdx
                        cmp              eax, 99
                                                                                        je    n359_lit_string_α
                                                                                        jmp   n359_lit_string_α
n366_call_proc_staged_β:
                                                                                        jmp   n359_lit_string_α
.Lx751_0:
                        .quad            .Lx751_0_s
.Lx751_0_s:
                        .string          "cart"
#-----------------------------------------------------------------------------------------------------------------------
n367_lit_string_α:
                        mov              qword ptr [rbp + 4624], 1
                        mov              rax, qword ptr [rip + .Lx752_0]
                        mov              qword ptr [rbp + 4632], rax
                                                                                        jmp   n372_call_builtin_icon_α
.Lx752_0:
                        .quad            .Lx752_0_s
.Lx752_0_s:
                        .string          ") text"
#-----------------------------------------------------------------------------------------------------------------------
n368_var_α:
                        mov              rax, qword ptr [rbp + 7680]
                        mov              qword ptr [rbp + 4480], rax
                        mov              rax, qword ptr [rbp + 7688]
                        mov              qword ptr [rbp + 4488], rax
                                                                                        jmp   n373_var_α
#-----------------------------------------------------------------------------------------------------------------------
n369_iterate_α:
                        mov              qword ptr [rbp + 416], 0
.Lx756_0:
                        mov              rdi, qword ptr [rbp + 432]
                        mov              rsi, qword ptr [rbp + 440]
                        mov              rdx, qword ptr [rbp + 416]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              rax, 99
                                                                                        je    n370_lit_string_α
                                                                                        jmp   n375_assign_α
n369_iterate_β:
                        inc              qword ptr [rbp + 416]
                                                                                        jmp   .Lx756_0
#-----------------------------------------------------------------------------------------------------------------------
n370_lit_string_α:
                        mov              qword ptr [rbp + 368], 1
                        mov              rax, qword ptr [rip + .Lx757_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n376_call_builtin_icon_α
.Lx757_0:
                        .quad            .Lx757_0_s
.Lx757_0_s:
                        .string          "255 255 255 color"
#-----------------------------------------------------------------------------------------------------------------------
n371_scan_move_α:
                        sub              rsp, 16
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1
                                                                                        jge   .Lx759_239
                        add              rsp, 16
                                                                                        jmp   n378_disjunction_α
.Lx759_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx759_240
                        add              rsp, 16
                                                                                        jmp   n378_disjunction_α
.Lx759_240:
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
                                                                                        jmp   n377_assign_α
n371_scan_move_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n378_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n372_call_builtin_icon_α:
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
.Lrkfn761:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn761]
                        lea              rsi, [rbp + 4528]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4512], rax
                        mov              qword ptr [rbp + 4520], rdx
                        cmp              eax, 99
                                                                                        je    n368_var_α
                                                                                        jmp   n368_var_α
n372_call_builtin_icon_β:
                                                                                        jmp   n368_var_α
#-----------------------------------------------------------------------------------------------------------------------
n373_var_α:
                        mov              rax, qword ptr [rbp + 7696]
                        mov              qword ptr [rbp + 4496], rax
                        mov              rax, qword ptr [rbp + 7704]
                        mov              qword ptr [rbp + 4504], rax
                                                                                        jmp   n379_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n374_unmark_α:
                        mov              rsp, qword ptr [rbp + 4352]
                                                                                        jmp   n325_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n375_assign_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              rdx, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 7536], rax
                        mov              qword ptr [rbp + 7544], rdx
                                                                                        jmp   n380_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n376_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                        .section         .rodata
.Lrkfn768:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn768]
                        lea              rsi, [rbp + 336]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n381_lit_string_α
                                                                                        jmp   n381_lit_string_α
n376_call_builtin_icon_β:
                                                                                        jmp   n381_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n377_assign_α:
                        mov              rax, qword ptr [rbp + 6240]
                        mov              rdx, qword ptr [rbp + 6248]
                        mov              qword ptr [rbp + 7648], rax
                        mov              qword ptr [rbp + 7656], rdx
                                                                                        jmp   n378_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n378_disjunction_α:
                        mov              qword ptr [rbp + 5968], 0
                        mov              qword ptr [rbp + 5976], 0
                        mov              dword ptr [rbp + 5984], 0
                                                                                        jmp   n383_var_α
n378_disjunction_as:
                        mov              eax, dword ptr [rbp + 5984]
                        cmp              eax, 0
                                                                                        jne   .Lx771_0
                        mov              rax, qword ptr [rbp + 6016]
                        mov              qword ptr [rbp + 5968], rax
                        mov              rax, qword ptr [rbp + 6024]
                        mov              qword ptr [rbp + 5976], rax
                                                                                        jmp   n382_conjunction_α
.Lx771_0:
                                                                                        jmp   n382_conjunction_α
n378_disjunction_β:
                        mov              eax, dword ptr [rbp + 5984]
                                                                                        jmp   n351_var_α
n378_disjunction_af:
                        add              dword ptr [rbp + 5984], 1
                        mov              eax, dword ptr [rbp + 5984]
                                                                                        jmp   n351_var_α
#-----------------------------------------------------------------------------------------------------------------------
n379_op75_α:
                        mov              eax, dword ptr [rbp + 7680]
                        cmp              eax, 7
                                                                                        je    .Lx773_1
                        cmp              eax, 6
                                                                                        jne   .Lx773_0
                        mov              eax, dword ptr [rbp + 7696]
                        cmp              eax, 6
                                                                                        jne   .Lx773_0
.Lx773_1:
                        mov              rax, qword ptr [rbp + 7680]
                        mov              qword ptr [rbp + 4464], rax
                        mov              rax, qword ptr [rbp + 7688]
                        mov              qword ptr [rbp + 4472], rax
                                                                                        jmp   n385_op75_α
.Lx773_0:
                        lea              rdi, [rbp + 7680]
                        lea              rsi, [rbp + 7696]
                        lea              rdx, [rbp + 4464]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n385_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n380_bound_α:
                        mov              qword ptr [rbp + 448], rsp
                                                                                        jmp   n386_var_α
#-----------------------------------------------------------------------------------------------------------------------
n381_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              rax, qword ptr [rip + .Lx776_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n387_var_α
.Lx776_0:
                        .quad            .Lx776_0_s
.Lx776_0_s:
                        .string          "0 0 ("
#-----------------------------------------------------------------------------------------------------------------------
n382_conjunction_α:
                        mov              rax, qword ptr [rbp + 5968]
                        mov              qword ptr [rbp + 5952], rax
                        mov              rax, qword ptr [rbp + 5976]
                        mov              qword ptr [rbp + 5960], rax
                                                                                        jmp   n351_var_α
n382_conjunction_β:
                                                                                        jmp   n351_var_α
#-----------------------------------------------------------------------------------------------------------------------
n383_var_α:
                        mov              rax, qword ptr [rbp + 7488]
                        mov              qword ptr [rbp + 6208], rax
                        mov              rax, qword ptr [rbp + 7496]
                        mov              qword ptr [rbp + 6216], rax
                                                                                        jmp   n388_var_α
n383_var_β:
                                                                                        jmp   n389_var_α
#-----------------------------------------------------------------------------------------------------------------------
n384_conjunction_α:
                                                                                        jmp   n378_disjunction_as
n384_conjunction_β:
                                                                                        jmp   n351_var_α
#-----------------------------------------------------------------------------------------------------------------------
n385_op75_α:
                        mov              eax, dword ptr [rbp + 7696]
                        cmp              eax, 7
                                                                                        je    .Lx782_1
                        cmp              eax, 6
                                                                                        jne   .Lx782_0
                        mov              eax, dword ptr [rbp + 7680]
                        cmp              eax, 6
                                                                                        jne   .Lx782_0
.Lx782_1:
                        mov              rax, qword ptr [rbp + 7696]
                        mov              qword ptr [rbp + 4448], rax
                        mov              rax, qword ptr [rbp + 7704]
                        mov              qword ptr [rbp + 4456], rax
                                                                                        jmp   n390_binop_α
.Lx782_0:
                        lea              rdi, [rbp + 7696]
                        lea              rsi, [rbp + 7680]
                        lea              rdx, [rbp + 4448]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n390_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n386_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 4144], rax
                        mov              qword ptr [rbp + 4152], rdx
                                                                                        jmp   n391_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n387_var_α:
                        mov              rax, qword ptr [rbp + 7488]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 7496]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n393_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n388_var_α:
                        mov              rax, qword ptr [rbp + 7648]
                        mov              qword ptr [rbp + 6224], rax
                        mov              rax, qword ptr [rbp + 7656]
                        mov              qword ptr [rbp + 6232], rax
                                                                                        jmp   n394_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n389_var_α:
                        mov              qword ptr [rbp + 6128], 0
                        mov              qword ptr [rbp + 6136], 0
                                                                                        jmp   n395_var_α
n389_var_β:
                                                                                        jmp   n378_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n390_binop_α:
                        mov              eax, dword ptr [rbp + 4464]
                        cmp              eax, 6
                                                                                        jne   .Lx789_0
                        mov              eax, dword ptr [rbp + 4448]
                        cmp              eax, 6
                                                                                        jne   .Lx789_0
                        mov              rax, qword ptr [rbp + 4472]
                        mov              rcx, qword ptr [rbp + 4456]
                        sub              rax, rcx
                        mov              qword ptr [rbp + 4432], 6
                        mov              qword ptr [rbp + 4440], rax
                                                                                        jmp   n396_assign_α
.Lx789_0:
                        mov              rdi, qword ptr [rbp + 4464]
                        mov              rsi, qword ptr [rbp + 4472]
                        mov              rdx, qword ptr [rbp + 4448]
                        mov              rcx, qword ptr [rbp + 4456]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        je    n374_unmark_α
                        mov              qword ptr [rbp + 4432], rax
                        mov              qword ptr [rbp + 4440], rdx
                                                                                        jmp   n396_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n391_lit_string_α:
                        mov              qword ptr [rbp + 4160], 1
                        mov              rax, qword ptr [rip + .Lx790_0]
                        mov              qword ptr [rbp + 4168], rax
                                                                                        jmp   n397_var_α
.Lx790_0:
                        .quad            .Lx790_0_s
.Lx790_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n392_lit_integer_α:
                        mov              qword ptr [rbp + 4000], 6
                        mov              rax, qword ptr [rip + .Lx791_0]
                        mov              qword ptr [rbp + 4008], rax
                                                                                        jmp   n398_call_proc_staged_α
.Lx791_0:
                        .quad            110
#-----------------------------------------------------------------------------------------------------------------------
n393_unop_α:
                        mov              rdi, qword ptr [rbp + 7488]
                        mov              rsi, qword ptr [rbp + 7496]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n399_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n394_call_builtin_icon_α:
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
.Lbynamefn253:          .string          "any"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn253]
                        lea              rsi, [rbp + 6160]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 6144], rax
                        mov              qword ptr [rbp + 6152], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n389_var_α
                                                                                        jmp   n378_disjunction_af
n394_call_builtin_icon_β:
                                                                                        jmp   n389_var_α
#-----------------------------------------------------------------------------------------------------------------------
n395_var_α:
                        mov              rax, qword ptr [rbp + 7488]
                        mov              qword ptr [rbp + 6096], rax
                        mov              rax, qword ptr [rbp + 7496]
                        mov              qword ptr [rbp + 6104], rax
                                                                                        jmp   n400_var_α
#-----------------------------------------------------------------------------------------------------------------------
n396_assign_α:
                        mov              rax, qword ptr [rbp + 4432]
                        mov              rdx, qword ptr [rbp + 4440]
                        mov              qword ptr [rbp + 7680], rax
                        mov              qword ptr [rbp + 7688], rdx
                        mov              qword ptr [rbp + 4416], rax
                        mov              qword ptr [rbp + 4424], rdx
                                                                                        jmp   n402_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n397_var_α:
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rbp + 4176], rax
                        mov              qword ptr [rbp + 4184], rdx
                                                                                        jmp   n403_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n398_call_proc_staged_α:
                        lea              rsi, [rbp + 4000]
                        call             proc_pct_dcα
                                                                                        jmp   .Lx799_2
.Lx799_2:
                        mov              qword ptr [rbp + 3952], rax
                        mov              qword ptr [rbp + 3960], rdx
                        cmp              eax, 99
                                                                                        je    n405_lit_integer_α
                                                                                        jmp   n404_assign_α
n398_call_proc_staged_β:
                                                                                        jmp   n405_lit_integer_α
.Lx799_0:
                        .quad            .Lx799_0_s
.Lx799_0_s:
                        .string          "pct"
#-----------------------------------------------------------------------------------------------------------------------
n399_lit_string_α:
                        mov              qword ptr [rbp + 224], 1
                        mov              rax, qword ptr [rip + .Lx800_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n406_var_α
.Lx800_0:
                        .quad            .Lx800_0_s
.Lx800_0_s:
                        .string          " players, "
#-----------------------------------------------------------------------------------------------------------------------
n400_var_α:
                        mov              rax, qword ptr [rbp + 7648]
                        mov              qword ptr [rbp + 6112], rax
                        mov              rax, qword ptr [rbp + 7656]
                        mov              qword ptr [rbp + 6120], rax
                                                                                        jmp   n407_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n401_var_α:
                        mov              rax, qword ptr [rbp + 7664]
                        mov              qword ptr [rbp + 6048], rax
                        mov              rax, qword ptr [rbp + 7672]
                        mov              qword ptr [rbp + 6056], rax
                                                                                        jmp   n408_var_α
#-----------------------------------------------------------------------------------------------------------------------
n402_conjunction_α:
                        mov              rax, qword ptr [rbp + 4416]
                        mov              qword ptr [rbp + 4400], rax
                        mov              rax, qword ptr [rbp + 4424]
                        mov              qword ptr [rbp + 4408], rax
                                                                                        jmp   n374_unmark_α
n402_conjunction_β:
                                                                                        jmp   n374_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n403_lit_string_α:
                        mov              qword ptr [rbp + 4192], 1
                        mov              rax, qword ptr [rip + .Lx806_0]
                        mov              qword ptr [rbp + 4200], rax
                                                                                        jmp   n409_var_α
.Lx806_0:
                        .quad            .Lx806_0_s
.Lx806_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n404_assign_α:
                        mov              rax, qword ptr [rbp + 3952]
                        mov              rdx, qword ptr [rbp + 3960]
                        mov              qword ptr [rbp + 7616], rax
                        mov              qword ptr [rbp + 7624], rdx
                                                                                        jmp   n405_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n405_lit_integer_α:
                        mov              qword ptr [rbp + 3872], 6
                        mov              rax, qword ptr [rip + .Lx808_0]
                        mov              qword ptr [rbp + 3880], rax
                                                                                        jmp   n410_lit_integer_α
.Lx808_0:
                        .quad            100
#-----------------------------------------------------------------------------------------------------------------------
n406_var_α:
                        mov              rax, qword ptr [rbp + 7504]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 7512]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n411_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n407_binop_α:
                        mov              rdi, qword ptr [rbp + 6096]
                        mov              rsi, qword ptr [rbp + 6104]
                        mov              rdx, qword ptr [rbp + 6112]
                        mov              rcx, qword ptr [rbp + 6120]
                        call             rt_cunion@PLT
                        cmp              eax, 99
                                                                                        je    n401_var_α
                        mov              qword ptr [rbp + 6080], rax
                        mov              qword ptr [rbp + 6088], rdx
                                                                                        jmp   n412_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n408_var_α:
                        mov              rax, qword ptr [rbp + 7648]
                        mov              qword ptr [rbp + 6064], rax
                        mov              rax, qword ptr [rbp + 7656]
                        mov              qword ptr [rbp + 6072], rax
                                                                                        jmp   n413_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n409_var_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 4208], rax
                        mov              qword ptr [rbp + 4216], rdx
                                                                                        jmp   n414_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n410_lit_integer_α:
                        mov              qword ptr [rbp + 3920], 6
                        mov              rax, qword ptr [rip + .Lx815_0]
                        mov              qword ptr [rbp + 3928], rax
                                                                                        jmp   n415_var_α
.Lx815_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n411_unop_α:
                        mov              rdi, qword ptr [rbp + 7504]
                        mov              rsi, qword ptr [rbp + 7512]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n416_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n412_assign_α:
                        mov              rax, qword ptr [rbp + 6080]
                        mov              rdx, qword ptr [rbp + 6088]
                        mov              qword ptr [rbp + 7488], rax
                        mov              qword ptr [rbp + 7496], rdx
                                                                                        jmp   n401_var_α
#-----------------------------------------------------------------------------------------------------------------------
n413_binop_α:
                        mov              rdi, qword ptr [rbp + 7664]
                        mov              rsi, qword ptr [rbp + 7672]
                        mov              rdx, qword ptr [rbp + 7648]
                        mov              rcx, qword ptr [rbp + 7656]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 6032], rax
                        mov              qword ptr [rbp + 6040], rdx
                                                                                        jmp   n417_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n414_lit_string_α:
                        mov              qword ptr [rbp + 4224], 1
                        mov              rax, qword ptr [rip + .Lx819_0]
                        mov              qword ptr [rbp + 4232], rax
                                                                                        jmp   n418_call_builtin_icon_α
.Lx819_0:
                        .quad            .Lx819_0_s
.Lx819_0_s:
                        .string          " color"
#-----------------------------------------------------------------------------------------------------------------------
n415_var_α:
                        mov              rax, qword ptr [rbp + 7552]
                        mov              qword ptr [rbp + 3936], rax
                        mov              rax, qword ptr [rbp + 7560]
                        mov              qword ptr [rbp + 3944], rax
                                                                                        jmp   n419_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n416_lit_string_α:
                        mov              qword ptr [rbp + 272], 1
                        mov              rax, qword ptr [rip + .Lx822_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n421_var_α
.Lx822_0:
                        .quad            .Lx822_0_s
.Lx822_0_s:
                        .string          " rounds, "
#-----------------------------------------------------------------------------------------------------------------------
n417_assign_α:
                        mov              rax, qword ptr [rbp + 6032]
                        mov              rdx, qword ptr [rbp + 6040]
                        mov              qword ptr [rbp + 7664], rax
                        mov              qword ptr [rbp + 7672], rdx
                        mov              qword ptr [rbp + 6016], rax
                        mov              qword ptr [rbp + 6024], rdx
                                                                                        jmp   n384_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n418_call_builtin_icon_α:
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
.Lrkfn825:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn825]
                        lea              rsi, [rbp + 4032]
                        mov              edx, 6
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4016], rax
                        mov              qword ptr [rbp + 4024], rdx
                        cmp              eax, 99
                                                                                        je    n392_lit_integer_α
                                                                                        jmp   n392_lit_integer_α
n418_call_builtin_icon_β:
                                                                                        jmp   n392_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n419_op75_α:
                        mov              eax, dword ptr [rbp + 7552]
                        cmp              eax, 7
                                                                                        je    .Lx827_1
                        cmp              eax, 6
                                                                                        jne   .Lx827_0
                        mov              eax, dword ptr [rbp + 3920]
                        cmp              eax, 6
                                                                                        jne   .Lx827_0
.Lx827_1:
                        mov              rax, qword ptr [rbp + 7552]
                        mov              qword ptr [rbp + 3904], rax
                        mov              rax, qword ptr [rbp + 7560]
                        mov              qword ptr [rbp + 3912], rax
                                                                                        jmp   n422_binop_α
.Lx827_0:
                        lea              rdi, [rbp + 7552]
                        lea              rsi, [rbp + 3920]
                        lea              rdx, [rbp + 3904]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n422_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n420_disjunction_α:
                        mov              qword ptr [rbp + 3488], 0
                        mov              qword ptr [rbp + 3496], 0
                        mov              dword ptr [rbp + 3504], 0
                                                                                        jmp   n424_var_α
n420_disjunction_as:
                        mov              eax, dword ptr [rbp + 3504]
                        cmp              eax, 0
                                                                                        jne   .Lx829_0
                        mov              rax, qword ptr [rbp + 3520]
                        mov              qword ptr [rbp + 3488], rax
                        mov              rax, qword ptr [rbp + 3528]
                        mov              qword ptr [rbp + 3496], rax
                                                                                        jmp   n423_var_α
.Lx829_0:
                                                                                        jmp   n423_var_α
n420_disjunction_β:
                        mov              eax, dword ptr [rbp + 3504]
                                                                                        jmp   n423_var_α
n420_disjunction_af:
                        add              dword ptr [rbp + 3504], 1
                        mov              eax, dword ptr [rbp + 3504]
                                                                                        jmp   n423_var_α
#-----------------------------------------------------------------------------------------------------------------------
n421_var_α:
                        mov              rax, qword ptr [rbp + 7520]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 7528]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n426_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n422_binop_α:
                        mov              eax, dword ptr [rbp + 3904]
                        cmp              eax, 6
                                                                                        jne   .Lx832_0
                        mov              rax, 4
                        mov              rcx, qword ptr [rbp + 3912]
                        imul             rax, rcx
                        mov              qword ptr [rbp + 3888], 6
                        mov              qword ptr [rbp + 3896], rax
                                                                                        jmp   n427_op75_α
.Lx832_0:
                        mov              rdi, qword ptr [rbp + 3920]
                        mov              rsi, qword ptr [rbp + 3928]
                        mov              rdx, qword ptr [rbp + 3904]
                        mov              rcx, qword ptr [rbp + 3912]
                        call             rt_mul@PLT
                        cmp              eax, 99
                                                                                        je    n420_disjunction_α
                        mov              qword ptr [rbp + 3888], rax
                        mov              qword ptr [rbp + 3896], rdx
                                                                                        jmp   n427_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n423_var_α:
                        mov              rax, qword ptr [rbp + 7536]
                        mov              qword ptr [rbp + 3472], rax
                        mov              rax, qword ptr [rbp + 7544]
                        mov              qword ptr [rbp + 3480], rax
                                                                                        jmp   n428_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n424_var_α:
                        mov              rax, qword ptr [rbp + 7632]
                        mov              qword ptr [rbp + 3760], rax
                        mov              rax, qword ptr [rbp + 7640]
                        mov              qword ptr [rbp + 3768], rax
                                                                                        jmp   n430_lit_integer_α
n424_var_β:
                                                                                        jmp   n420_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n425_call_builtin_icon_α:
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
.Lrkfn838:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn838]
                        lea              rsi, [rbp + 3536]
                        mov              edx, 6
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3520], rax
                        mov              qword ptr [rbp + 3528], rdx
                        cmp              eax, 99
                                                                                        je    n423_var_α
                                                                                        jmp   n420_disjunction_as
n425_call_builtin_icon_β:
                                                                                        jmp   n423_var_α
#-----------------------------------------------------------------------------------------------------------------------
n426_lit_string_α:
                        mov              qword ptr [rbp + 304], 1
                        mov              rax, qword ptr [rip + .Lx839_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n431_call_builtin_icon_α
.Lx839_0:
                        .quad            .Lx839_0_s
.Lx839_0_s:
                        .string          " matches) text"
#-----------------------------------------------------------------------------------------------------------------------
n427_op75_α:
                        mov              eax, dword ptr [rbp + 3888]
                        cmp              eax, 7
                                                                                        je    .Lx841_1
                        cmp              eax, 6
                                                                                        jne   .Lx841_0
                        mov              eax, dword ptr [rbp + 3872]
                        cmp              eax, 6
                                                                                        jne   .Lx841_0
.Lx841_1:
                        mov              rax, qword ptr [rbp + 3888]
                        mov              qword ptr [rbp + 3856], rax
                        mov              rax, qword ptr [rbp + 3896]
                        mov              qword ptr [rbp + 3864], rax
                                                                                        jmp   n432_binop_α
.Lx841_0:
                        lea              rdi, [rbp + 3888]
                        lea              rsi, [rbp + 3872]
                        lea              rdx, [rbp + 3856]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n432_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n428_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 3472]
                        mov              rsi, qword ptr [rbp + 3480]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n433_var_α
#-----------------------------------------------------------------------------------------------------------------------
n429_var_α:
                        mov              rax, qword ptr [rbp + 7552]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 7560]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n434_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n430_lit_integer_α:
                        mov              qword ptr [rbp + 3776], 6
                        mov              rax, qword ptr [rip + .Lx846_0]
                        mov              qword ptr [rbp + 3784], rax
                                                                                        jmp   n436_binop_test_α
.Lx846_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n431_call_builtin_icon_α:
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
.Lrkfn848:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn848]
                        lea              rsi, [rbp + 48]
                        mov              edx, 7
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   main_ω
n431_call_builtin_icon_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n432_binop_α:
                        mov              eax, dword ptr [rbp + 3856]
                        cmp              eax, 6
                                                                                        jne   .Lx849_0
                        mov              rax, 100
                        mov              rcx, qword ptr [rbp + 3864]
                        sub              rax, rcx
                        mov              qword ptr [rbp + 3840], 6
                        mov              qword ptr [rbp + 3848], rax
                                                                                        jmp   n437_call_proc_staged_α
.Lx849_0:
                        mov              rdi, qword ptr [rbp + 3872]
                        mov              rsi, qword ptr [rbp + 3880]
                        mov              rdx, qword ptr [rbp + 3856]
                        mov              rcx, qword ptr [rbp + 3864]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        je    n420_disjunction_α
                        mov              qword ptr [rbp + 3840], rax
                        mov              qword ptr [rbp + 3848], rdx
                                                                                        jmp   n437_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n433_var_α:
                        mov              rax, qword ptr [rbp + 7568]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 7576]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n438_scan_upto_α
#-----------------------------------------------------------------------------------------------------------------------
n434_lit_integer_α:
                        mov              qword ptr [rbp + 592], 6
                        mov              rax, qword ptr [rip + .Lx852_0]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n440_op75_α
.Lx852_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n435_call_proc_staged_α:
                        call             proc_newcolor_dcα
                                                                                        jmp   .Lx854_2
.Lx854_2:
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 99
                                                                                        je    n442_unmark_α
                                                                                        jmp   n441_conjunction_α
n435_call_proc_staged_β:
                                                                                        jmp   n442_unmark_α
.Lx854_0:
                        .quad            .Lx854_0_s
.Lx854_0_s:
                        .string          "newcolor"
#-----------------------------------------------------------------------------------------------------------------------
n436_binop_test_α:
                        mov              eax, dword ptr [rbp + 7632]
                        cmp              eax, 100
                                                                                        je    .Lx855_0
                        mov              eax, dword ptr [rbp + 3776]
                        cmp              eax, 100
                                                                                        je    .Lx855_0
                        mov              eax, dword ptr [rbp + 7632]
                        cmp              eax, 6
                                                                                        jne   .Lx855_2
                        mov              eax, dword ptr [rbp + 3776]
                        cmp              eax, 6
                                                                                        jne   .Lx855_2
.Lx855_1:
                        mov              rax, qword ptr [rbp + 7640]
                        mov              rcx, qword ptr [rbp + 3784]
                        cmp              rax, rcx
                                                                                        jle   n420_disjunction_af
                        mov              rcx, qword ptr [rbp + 3776]
                        mov              qword ptr [rbp + 3744], rcx
                        mov              rcx, qword ptr [rbp + 3784]
                        mov              qword ptr [rbp + 3752], rcx
                                                                                        jmp   n443_var_α
.Lx855_0:
                        mov              rdi, qword ptr [rbp + 7632]
                        mov              rsi, qword ptr [rbp + 7640]
                        mov              rdx, qword ptr [rbp + 3776]
                        mov              rcx, qword ptr [rbp + 3784]
                        mov              r8d, 7
                        lea              r9, [rbp + 3744]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx855_1
                        cmp              eax, 1
                                                                                        je    n420_disjunction_af
                                                                                        jmp   n443_var_α
.Lx855_2:
                        mov              rdi, qword ptr [rbp + 7632]
                        mov              rsi, qword ptr [rbp + 7640]
                        mov              rdx, qword ptr [rbp + 3776]
                        mov              rcx, qword ptr [rbp + 3784]
                        mov              r8d, 7
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n420_disjunction_af
                        mov              rax, qword ptr [rbp + 3776]
                        mov              qword ptr [rbp + 3744], rax
                        mov              rax, qword ptr [rbp + 3784]
                        mov              qword ptr [rbp + 3752], rax
                                                                                        jmp   n443_var_α
#-----------------------------------------------------------------------------------------------------------------------
n437_call_proc_staged_α:
                        lea              rsi, [rbp + 3840]
                        call             proc_pct_dcα
                                                                                        jmp   .Lx857_2
.Lx857_2:
                        mov              qword ptr [rbp + 3792], rax
                        mov              qword ptr [rbp + 3800], rdx
                        cmp              eax, 99
                                                                                        je    n420_disjunction_α
                                                                                        jmp   n444_assign_α
n437_call_proc_staged_β:
                                                                                        jmp   n420_disjunction_α
.Lx857_0:
                        .quad            .Lx857_0_s
.Lx857_0_s:
                        .string          "pct"
#-----------------------------------------------------------------------------------------------------------------------
n438_scan_upto_α:
                        mov              qword ptr [rbp + 720], r14
.Lx859_0:
                        mov              rax, qword ptr [rbp + 720]
                        cmp              rax, r15
                                                                                        jge   n439_scan_α
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rbp + 744]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx859_1
                        mov              qword ptr [rbp + 704], 6
                        add              rax, 1
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n445_scan_tab_α
.Lx859_1:
                        inc              qword ptr [rbp + 720]
                                                                                        jmp   .Lx859_0
n438_scan_upto_β:
                        inc              qword ptr [rbp + 720]
                                                                                        jmp   .Lx859_0
#-----------------------------------------------------------------------------------------------------------------------
n439_scan_α:
                        lea              rdi, [rbp + 624]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 624]
                        mov              r14, qword ptr [rbp + 632]
                        mov              r15, qword ptr [rbp + 640]
                                                                                        jmp   n429_var_α
n439_scan_β:
                                                                                        jmp   n429_var_α
#-----------------------------------------------------------------------------------------------------------------------
n440_op75_α:
                        mov              eax, dword ptr [rbp + 7552]
                        cmp              eax, 7
                                                                                        je    .Lx863_1
                        cmp              eax, 6
                                                                                        jne   .Lx863_0
                        mov              eax, dword ptr [rbp + 592]
                        cmp              eax, 6
                                                                                        jne   .Lx863_0
.Lx863_1:
                        mov              rax, qword ptr [rbp + 7552]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 7560]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n446_binop_α
.Lx863_0:
                        lea              rdi, [rbp + 7552]
                        lea              rsi, [rbp + 592]
                        lea              rdx, [rbp + 560]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n446_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n441_conjunction_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n442_unmark_α
n441_conjunction_β:
                                                                                        jmp   n442_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n442_unmark_α:
                        mov              rsp, qword ptr [rbp + 448]
                                                                                        jmp   n369_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n443_var_α:
                        mov              rax, qword ptr [rbp + 7616]
                        mov              qword ptr [rbp + 3648], rax
                        mov              rax, qword ptr [rbp + 7624]
                        mov              qword ptr [rbp + 3656], rax
                                                                                        jmp   n447_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n444_assign_α:
                        mov              rax, qword ptr [rbp + 3792]
                        mov              rdx, qword ptr [rbp + 3800]
                        mov              qword ptr [rbp + 7632], rax
                        mov              qword ptr [rbp + 7640], rdx
                                                                                        jmp   n420_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n445_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 712]
                        cmp              rax, 1
                                                                                        jge   .Lx871_0
                        add              rax, r15
                        add              rax, 1
.Lx871_0:
                        cmp              rax, 1
                                                                                        jge   .Lx871_239
                        add              rsp, 16
                                                                                        jmp   n438_scan_upto_β
.Lx871_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx871_240
                        add              rsp, 16
                                                                                        jmp   n438_scan_upto_β
.Lx871_240:
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
                                                                                        jmp   n448_var_α
n445_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n438_scan_upto_β
#-----------------------------------------------------------------------------------------------------------------------
n446_binop_α:
                        mov              eax, dword ptr [rbp + 560]
                        cmp              eax, 6
                                                                                        jne   .Lx872_0
                        mov              rax, qword ptr [rbp + 568]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 544], 6
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n449_assign_α
.Lx872_0:
                        mov              rdi, qword ptr [rbp + 560]
                        mov              rsi, qword ptr [rbp + 568]
                        mov              rdx, qword ptr [rbp + 592]
                        mov              rcx, qword ptr [rbp + 600]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n435_call_proc_staged_α
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n449_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n447_lit_string_α:
                        mov              qword ptr [rbp + 3664], 1
                        mov              rax, qword ptr [rip + .Lx873_0]
                        mov              qword ptr [rbp + 3672], rax
                                                                                        jmp   n450_var_α
.Lx873_0:
                        .quad            .Lx873_0_s
.Lx873_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n448_var_α:
                        mov              rax, qword ptr [rbp + 7568]
                        mov              qword ptr [rbp + 3456], rax
                        mov              rax, qword ptr [rbp + 7576]
                        mov              qword ptr [rbp + 3464], rax
                                                                                        jmp   n451_scan_many_α
#-----------------------------------------------------------------------------------------------------------------------
n449_assign_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              rdx, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 7552], rax
                        mov              qword ptr [rbp + 7560], rdx
                                                                                        jmp   n435_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n450_var_α:
                        mov              rax, qword ptr [rbp + 7632]
                        mov              qword ptr [rbp + 3680], rax
                        mov              rax, qword ptr [rbp + 7640]
                        mov              qword ptr [rbp + 3688], rax
                                                                                        jmp   n453_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n451_scan_many_α:
                        mov              eax, r14d
.Lx880_0:
                        cmp              eax, r15d
                                                                                        jge   .Lx880_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rbp + 3464]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx880_1
                        add              eax, 1
                                                                                        jmp   .Lx880_0
.Lx880_1:
                        cmp              eax, r14d
                                                                                        je    n452_lit_integer_α
                        mov              qword ptr [rbp + 3440], 6
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rbp + 3448], rcx
                                                                                        jmp   n454_scan_tab_α
n451_scan_many_β:
                                                                                        jmp   n452_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n452_lit_integer_α:
                        mov              qword ptr [rbp + 3248], 6
                        mov              rax, qword ptr [rip + .Lx881_0]
                        mov              qword ptr [rbp + 3256], rax
                                                                                        jmp   n455_var_ref_α
.Lx881_0:
                        .quad            45
#-----------------------------------------------------------------------------------------------------------------------
n453_lit_string_α:
                        mov              qword ptr [rbp + 3696], 1
                        mov              rax, qword ptr [rip + .Lx882_0]
                        mov              qword ptr [rbp + 3704], rax
                                                                                        jmp   n456_var_α
.Lx882_0:
                        .quad            .Lx882_0_s
.Lx882_0_s:
                        .string          " ("
#-----------------------------------------------------------------------------------------------------------------------
n454_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 3448]
                        cmp              rax, 1
                                                                                        jge   .Lx884_0
                        add              rax, r15
                        add              rax, 1
.Lx884_0:
                        cmp              rax, 1
                                                                                        jge   .Lx884_239
                        add              rsp, 16
                                                                                        jmp   n452_lit_integer_α
.Lx884_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx884_240
                        add              rsp, 16
                                                                                        jmp   n452_lit_integer_α
.Lx884_240:
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
                                                                                        jmp   n457_assign_α
n454_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n452_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n455_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7584]
                        mov              qword ptr [rbp + 3264], rax
                        mov              qword ptr [rbp + 3272], rdx
                                                                                        jmp   n458_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n456_var_α:
                        mov              rax, qword ptr [rbp + 7552]
                        mov              qword ptr [rbp + 3712], rax
                        mov              rax, qword ptr [rbp + 7560]
                        mov              qword ptr [rbp + 3720], rax
                                                                                        jmp   n459_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n457_assign_α:
                        mov              rax, qword ptr [rbp + 3408]
                        mov              rdx, qword ptr [rbp + 3416]
                        mov              qword ptr [rbp + 7600], rax
                        mov              qword ptr [rbp + 7608], rdx
                                                                                        jmp   n452_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n458_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7600]
                        mov              qword ptr [rbp + 3280], rax
                        mov              qword ptr [rbp + 3288], rdx
                                                                                        jmp   n460_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n459_lit_string_α:
                        mov              qword ptr [rbp + 3728], 1
                        mov              rax, qword ptr [rip + .Lx892_0]
                        mov              qword ptr [rbp + 3736], rax
                                                                                        jmp   n425_call_builtin_icon_α
.Lx892_0:
                        .quad            .Lx892_0_s
.Lx892_0_s:
                        .string          ") text"
#-----------------------------------------------------------------------------------------------------------------------
n460_lit_integer_α:
                        mov              qword ptr [rbp + 3296], 6
                        mov              rax, qword ptr [rip + .Lx893_0]
                        mov              qword ptr [rbp + 3304], rax
                                                                                        jmp   n461_subscript_α
.Lx893_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n461_subscript_α:
                        mov              rdi, qword ptr [rbp + 3280]
                        mov              rsi, qword ptr [rbp + 3288]
                        mov              rdx, qword ptr [rbp + 3296]
                        mov              rcx, qword ptr [rbp + 3304]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n463_lit_string_α
                        mov              qword ptr [rbp + 3312], rax
                        mov              qword ptr [rbp + 3320], rdx
                                                                                        jmp   n462_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n462_deref_α:
                        mov              rdi, qword ptr [rbp + 3312]
                        mov              rsi, qword ptr [rbp + 3320]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n463_lit_string_α
                        mov              qword ptr [rbp + 3328], rax
                        mov              qword ptr [rbp + 3336], rdx
                                                                                        jmp   n464_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n463_lit_string_α:
                        mov              qword ptr [rbp + 3136], 1
                        mov              rax, qword ptr [rip + .Lx896_0]
                        mov              qword ptr [rbp + 3144], rax
                                                                                        jmp   n465_call_builtin_icon_α
.Lx896_0:
                        .quad            .Lx896_0_s
.Lx896_0_s:
                        .string          "begin "
#-----------------------------------------------------------------------------------------------------------------------
n464_subscript_α:
                        mov              rdi, qword ptr [rbp + 3264]
                        mov              rsi, qword ptr [rbp + 3272]
                        mov              rdx, qword ptr [rbp + 3328]
                        mov              rcx, qword ptr [rbp + 3336]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n463_lit_string_α
                        mov              qword ptr [rbp + 3344], rax
                        mov              qword ptr [rbp + 3352], rdx
                                                                                        jmp   n466_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n465_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3136]
                        mov              qword ptr [rbp + 3104], rax
                        mov              rax, qword ptr [rbp + 3144]
                        mov              qword ptr [rbp + 3112], rax
                        .section         .rodata
.Lrkfn899:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn899]
                        lea              rsi, [rbp + 3104]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3088], rax
                        mov              qword ptr [rbp + 3096], rdx
                        cmp              eax, 99
                                                                                        je    n467_lit_integer_α
                                                                                        jmp   n467_lit_integer_α
n465_call_builtin_icon_β:
                                                                                        jmp   n467_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n466_deref_α:
                        mov              rdi, qword ptr [rbp + 3344]
                        mov              rsi, qword ptr [rbp + 3352]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n463_lit_string_α
                        mov              qword ptr [rbp + 3360], rax
                        mov              qword ptr [rbp + 3368], rdx
                                                                                        jmp   n468_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n467_lit_integer_α:
                        mov              qword ptr [rbp + 2928], 6
                        mov              rax, qword ptr [rip + .Lx901_0]
                        mov              qword ptr [rbp + 2936], rax
                                                                                        jmp   n469_var_ref_α
.Lx901_0:
                        .quad            45
#-----------------------------------------------------------------------------------------------------------------------
n468_lit_integer_α:
                        mov              qword ptr [rbp + 3376], 6
                        mov              rax, qword ptr [rip + .Lx902_0]
                        mov              qword ptr [rbp + 3384], rax
                                                                                        jmp   n470_lit_integer_α
.Lx902_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n469_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7584]
                        mov              qword ptr [rbp + 2944], rax
                        mov              qword ptr [rbp + 2952], rdx
                                                                                        jmp   n471_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n470_lit_integer_α:
                        mov              qword ptr [rbp + 3392], 6
                        mov              rax, qword ptr [rip + .Lx905_0]
                        mov              qword ptr [rbp + 3400], rax
                                                                                        jmp   n472_call_proc_staged_α
.Lx905_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n471_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7600]
                        mov              qword ptr [rbp + 2960], rax
                        mov              qword ptr [rbp + 2968], rdx
                                                                                        jmp   n473_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n472_call_proc_staged_α:
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        lea              rsi, [rbp + 3248]
                        lea              rdx, [rbp + 3360]
                        lea              rcx, [rbp + 3376]
                        lea              r8, [rbp + 3392]
                        call             proc_cart_dcα
                                                                                        jmp   .Lx909_2
.Lx909_2:
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        mov              qword ptr [rbp + 3152], rax
                        mov              qword ptr [rbp + 3160], rdx
                        cmp              eax, 99
                                                                                        je    n463_lit_string_α
                                                                                        jmp   n463_lit_string_α
n472_call_proc_staged_β:
                                                                                        jmp   n463_lit_string_α
.Lx909_0:
                        .quad            .Lx909_0_s
.Lx909_0_s:
                        .string          "cart"
#-----------------------------------------------------------------------------------------------------------------------
n473_lit_integer_α:
                        mov              qword ptr [rbp + 2976], 6
                        mov              rax, qword ptr [rip + .Lx910_0]
                        mov              qword ptr [rbp + 2984], rax
                                                                                        jmp   n474_subscript_α
.Lx910_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n474_subscript_α:
                        mov              rdi, qword ptr [rbp + 2960]
                        mov              rsi, qword ptr [rbp + 2968]
                        mov              rdx, qword ptr [rbp + 2976]
                        mov              rcx, qword ptr [rbp + 2984]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n476_lit_string_α
                        mov              qword ptr [rbp + 2992], rax
                        mov              qword ptr [rbp + 3000], rdx
                                                                                        jmp   n475_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n475_deref_α:
                        mov              rdi, qword ptr [rbp + 2992]
                        mov              rsi, qword ptr [rbp + 3000]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n476_lit_string_α
                        mov              qword ptr [rbp + 3008], rax
                        mov              qword ptr [rbp + 3016], rdx
                                                                                        jmp   n477_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n476_lit_string_α:
                        mov              qword ptr [rbp + 2816], 1
                        mov              rax, qword ptr [rip + .Lx913_0]
                        mov              qword ptr [rbp + 2824], rax
                                                                                        jmp   n478_call_builtin_icon_α
.Lx913_0:
                        .quad            .Lx913_0_s
.Lx913_0_s:
                        .string          "line "
#-----------------------------------------------------------------------------------------------------------------------
n477_subscript_α:
                        mov              rdi, qword ptr [rbp + 2944]
                        mov              rsi, qword ptr [rbp + 2952]
                        mov              rdx, qword ptr [rbp + 3008]
                        mov              rcx, qword ptr [rbp + 3016]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n476_lit_string_α
                        mov              qword ptr [rbp + 3024], rax
                        mov              qword ptr [rbp + 3032], rdx
                                                                                        jmp   n479_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n478_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2816]
                        mov              qword ptr [rbp + 2784], rax
                        mov              rax, qword ptr [rbp + 2824]
                        mov              qword ptr [rbp + 2792], rax
                        .section         .rodata
.Lrkfn916:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn916]
                        lea              rsi, [rbp + 2784]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2768], rax
                        mov              qword ptr [rbp + 2776], rdx
                        cmp              eax, 99
                                                                                        je    n480_lit_integer_α
                                                                                        jmp   n480_lit_integer_α
n478_call_builtin_icon_β:
                                                                                        jmp   n480_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n479_deref_α:
                        mov              rdi, qword ptr [rbp + 3024]
                        mov              rsi, qword ptr [rbp + 3032]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n476_lit_string_α
                        mov              qword ptr [rbp + 3040], rax
                        mov              qword ptr [rbp + 3048], rdx
                                                                                        jmp   n481_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n480_lit_integer_α:
                        mov              qword ptr [rbp + 2608], 6
                        mov              rax, qword ptr [rip + .Lx918_0]
                        mov              qword ptr [rbp + 2616], rax
                                                                                        jmp   n482_var_ref_α
.Lx918_0:
                        .quad            45
#-----------------------------------------------------------------------------------------------------------------------
n481_lit_integer_α:
                        mov              qword ptr [rbp + 3056], 6
                        mov              rax, qword ptr [rip + .Lx919_0]
                        mov              qword ptr [rbp + 3064], rax
                                                                                        jmp   n483_lit_integer_α
.Lx919_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n482_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7584]
                        mov              qword ptr [rbp + 2624], rax
                        mov              qword ptr [rbp + 2632], rdx
                                                                                        jmp   n484_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n483_lit_integer_α:
                        mov              qword ptr [rbp + 3072], 6
                        mov              rax, qword ptr [rip + .Lx922_0]
                        mov              qword ptr [rbp + 3080], rax
                                                                                        jmp   n485_call_proc_staged_α
.Lx922_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n484_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7600]
                        mov              qword ptr [rbp + 2640], rax
                        mov              qword ptr [rbp + 2648], rdx
                                                                                        jmp   n486_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n485_call_proc_staged_α:
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        lea              rsi, [rbp + 2928]
                        lea              rdx, [rbp + 3040]
                        lea              rcx, [rbp + 3056]
                        lea              r8, [rbp + 3072]
                        call             proc_cart_dcα
                                                                                        jmp   .Lx926_2
.Lx926_2:
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        mov              qword ptr [rbp + 2832], rax
                        mov              qword ptr [rbp + 2840], rdx
                        cmp              eax, 99
                                                                                        je    n476_lit_string_α
                                                                                        jmp   n476_lit_string_α
n485_call_proc_staged_β:
                                                                                        jmp   n476_lit_string_α
.Lx926_0:
                        .quad            .Lx926_0_s
.Lx926_0_s:
                        .string          "cart"
#-----------------------------------------------------------------------------------------------------------------------
n486_lit_integer_α:
                        mov              qword ptr [rbp + 2656], 6
                        mov              rax, qword ptr [rip + .Lx927_0]
                        mov              qword ptr [rbp + 2664], rax
                                                                                        jmp   n487_subscript_α
.Lx927_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n487_subscript_α:
                        mov              rdi, qword ptr [rbp + 2640]
                        mov              rsi, qword ptr [rbp + 2648]
                        mov              rdx, qword ptr [rbp + 2656]
                        mov              rcx, qword ptr [rbp + 2664]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n489_lit_string_α
                        mov              qword ptr [rbp + 2672], rax
                        mov              qword ptr [rbp + 2680], rdx
                                                                                        jmp   n488_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n488_deref_α:
                        mov              rdi, qword ptr [rbp + 2672]
                        mov              rsi, qword ptr [rbp + 2680]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n489_lit_string_α
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                                                                                        jmp   n490_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n489_lit_string_α:
                        mov              qword ptr [rbp + 2496], 1
                        mov              rax, qword ptr [rip + .Lx930_0]
                        mov              qword ptr [rbp + 2504], rax
                                                                                        jmp   n491_call_builtin_icon_α
.Lx930_0:
                        .quad            .Lx930_0_s
.Lx930_0_s:
                        .string          "line "
#-----------------------------------------------------------------------------------------------------------------------
n490_subscript_α:
                        mov              rdi, qword ptr [rbp + 2624]
                        mov              rsi, qword ptr [rbp + 2632]
                        mov              rdx, qword ptr [rbp + 2688]
                        mov              rcx, qword ptr [rbp + 2696]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n489_lit_string_α
                        mov              qword ptr [rbp + 2704], rax
                        mov              qword ptr [rbp + 2712], rdx
                                                                                        jmp   n492_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n491_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2496]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 2504]
                        mov              qword ptr [rbp + 2472], rax
                        .section         .rodata
.Lrkfn933:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn933]
                        lea              rsi, [rbp + 2464]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx
                        cmp              eax, 99
                                                                                        je    n493_lit_integer_α
                                                                                        jmp   n493_lit_integer_α
n491_call_builtin_icon_β:
                                                                                        jmp   n493_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n492_deref_α:
                        mov              rdi, qword ptr [rbp + 2704]
                        mov              rsi, qword ptr [rbp + 2712]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n489_lit_string_α
                        mov              qword ptr [rbp + 2720], rax
                        mov              qword ptr [rbp + 2728], rdx
                                                                                        jmp   n494_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n493_lit_integer_α:
                        mov              qword ptr [rbp + 2288], 6
                        mov              rax, qword ptr [rip + .Lx935_0]
                        mov              qword ptr [rbp + 2296], rax
                                                                                        jmp   n495_var_ref_α
.Lx935_0:
                        .quad            45
#-----------------------------------------------------------------------------------------------------------------------
n494_lit_integer_α:
                        mov              qword ptr [rbp + 2736], 6
                        mov              rax, qword ptr [rip + .Lx936_0]
                        mov              qword ptr [rbp + 2744], rax
                                                                                        jmp   n496_lit_integer_α
.Lx936_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n495_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7584]
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx
                                                                                        jmp   n497_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n496_lit_integer_α:
                        mov              qword ptr [rbp + 2752], 6
                        mov              rax, qword ptr [rip + .Lx939_0]
                        mov              qword ptr [rbp + 2760], rax
                                                                                        jmp   n498_call_proc_staged_α
.Lx939_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n497_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7600]
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx
                                                                                        jmp   n499_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n498_call_proc_staged_α:
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        lea              rsi, [rbp + 2608]
                        lea              rdx, [rbp + 2720]
                        lea              rcx, [rbp + 2736]
                        lea              r8, [rbp + 2752]
                        call             proc_cart_dcα
                                                                                        jmp   .Lx943_2
.Lx943_2:
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        mov              qword ptr [rbp + 2512], rax
                        mov              qword ptr [rbp + 2520], rdx
                        cmp              eax, 99
                                                                                        je    n489_lit_string_α
                                                                                        jmp   n489_lit_string_α
n498_call_proc_staged_β:
                                                                                        jmp   n489_lit_string_α
.Lx943_0:
                        .quad            .Lx943_0_s
.Lx943_0_s:
                        .string          "cart"
#-----------------------------------------------------------------------------------------------------------------------
n499_lit_integer_α:
                        mov              qword ptr [rbp + 2336], 6
                        mov              rax, qword ptr [rip + .Lx944_0]
                        mov              qword ptr [rbp + 2344], rax
                                                                                        jmp   n500_subscript_α
.Lx944_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n500_subscript_α:
                        mov              rdi, qword ptr [rbp + 2320]
                        mov              rsi, qword ptr [rbp + 2328]
                        mov              rdx, qword ptr [rbp + 2336]
                        mov              rcx, qword ptr [rbp + 2344]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n502_lit_string_α
                        mov              qword ptr [rbp + 2352], rax
                        mov              qword ptr [rbp + 2360], rdx
                                                                                        jmp   n501_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n501_deref_α:
                        mov              rdi, qword ptr [rbp + 2352]
                        mov              rsi, qword ptr [rbp + 2360]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n502_lit_string_α
                        mov              qword ptr [rbp + 2368], rax
                        mov              qword ptr [rbp + 2376], rdx
                                                                                        jmp   n503_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n502_lit_string_α:
                        mov              qword ptr [rbp + 2176], 1
                        mov              rax, qword ptr [rip + .Lx947_0]
                        mov              qword ptr [rbp + 2184], rax
                                                                                        jmp   n504_call_builtin_icon_α
.Lx947_0:
                        .quad            .Lx947_0_s
.Lx947_0_s:
                        .string          "line "
#-----------------------------------------------------------------------------------------------------------------------
n503_subscript_α:
                        mov              rdi, qword ptr [rbp + 2304]
                        mov              rsi, qword ptr [rbp + 2312]
                        mov              rdx, qword ptr [rbp + 2368]
                        mov              rcx, qword ptr [rbp + 2376]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n502_lit_string_α
                        mov              qword ptr [rbp + 2384], rax
                        mov              qword ptr [rbp + 2392], rdx
                                                                                        jmp   n505_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n504_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 2144], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 2152], rax
                        .section         .rodata
.Lrkfn950:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn950]
                        lea              rsi, [rbp + 2144]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 2136], rdx
                        cmp              eax, 99
                                                                                        je    n506_lit_integer_α
                                                                                        jmp   n506_lit_integer_α
n504_call_builtin_icon_β:
                                                                                        jmp   n506_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n505_deref_α:
                        mov              rdi, qword ptr [rbp + 2384]
                        mov              rsi, qword ptr [rbp + 2392]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n502_lit_string_α
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx
                                                                                        jmp   n507_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n506_lit_integer_α:
                        mov              qword ptr [rbp + 1968], 6
                        mov              rax, qword ptr [rip + .Lx952_0]
                        mov              qword ptr [rbp + 1976], rax
                                                                                        jmp   n508_var_ref_α
.Lx952_0:
                        .quad            45
#-----------------------------------------------------------------------------------------------------------------------
n507_lit_integer_α:
                        mov              qword ptr [rbp + 2416], 6
                        mov              rax, qword ptr [rip + .Lx953_0]
                        mov              qword ptr [rbp + 2424], rax
                                                                                        jmp   n509_lit_integer_α
.Lx953_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n508_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7584]
                        mov              qword ptr [rbp + 1984], rax
                        mov              qword ptr [rbp + 1992], rdx
                                                                                        jmp   n510_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n509_lit_integer_α:
                        mov              qword ptr [rbp + 2432], 6
                        mov              rax, qword ptr [rip + .Lx956_0]
                        mov              qword ptr [rbp + 2440], rax
                                                                                        jmp   n511_call_proc_staged_α
.Lx956_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n510_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7600]
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx
                                                                                        jmp   n512_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n511_call_proc_staged_α:
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        lea              rsi, [rbp + 2288]
                        lea              rdx, [rbp + 2400]
                        lea              rcx, [rbp + 2416]
                        lea              r8, [rbp + 2432]
                        call             proc_cart_dcα
                                                                                        jmp   .Lx960_2
.Lx960_2:
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx
                        cmp              eax, 99
                                                                                        je    n502_lit_string_α
                                                                                        jmp   n502_lit_string_α
n511_call_proc_staged_β:
                                                                                        jmp   n502_lit_string_α
.Lx960_0:
                        .quad            .Lx960_0_s
.Lx960_0_s:
                        .string          "cart"
#-----------------------------------------------------------------------------------------------------------------------
n512_lit_integer_α:
                        mov              qword ptr [rbp + 2016], 6
                        mov              rax, qword ptr [rip + .Lx961_0]
                        mov              qword ptr [rbp + 2024], rax
                                                                                        jmp   n513_subscript_α
.Lx961_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n513_subscript_α:
                        mov              rdi, qword ptr [rbp + 2000]
                        mov              rsi, qword ptr [rbp + 2008]
                        mov              rdx, qword ptr [rbp + 2016]
                        mov              rcx, qword ptr [rbp + 2024]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n515_lit_string_α
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx
                                                                                        jmp   n514_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n514_deref_α:
                        mov              rdi, qword ptr [rbp + 2032]
                        mov              rsi, qword ptr [rbp + 2040]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n515_lit_string_α
                        mov              qword ptr [rbp + 2048], rax
                        mov              qword ptr [rbp + 2056], rdx
                                                                                        jmp   n516_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n515_lit_string_α:
                        mov              qword ptr [rbp + 1856], 1
                        mov              rax, qword ptr [rip + .Lx964_0]
                        mov              qword ptr [rbp + 1864], rax
                                                                                        jmp   n517_call_builtin_icon_α
.Lx964_0:
                        .quad            .Lx964_0_s
.Lx964_0_s:
                        .string          "line"
#-----------------------------------------------------------------------------------------------------------------------
n516_subscript_α:
                        mov              rdi, qword ptr [rbp + 1984]
                        mov              rsi, qword ptr [rbp + 1992]
                        mov              rdx, qword ptr [rbp + 2048]
                        mov              rcx, qword ptr [rbp + 2056]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n515_lit_string_α
                        mov              qword ptr [rbp + 2064], rax
                        mov              qword ptr [rbp + 2072], rdx
                                                                                        jmp   n518_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n517_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1856]
                        mov              qword ptr [rbp + 1824], rax
                        mov              rax, qword ptr [rbp + 1864]
                        mov              qword ptr [rbp + 1832], rax
                        .section         .rodata
.Lrkfn967:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn967]
                        lea              rsi, [rbp + 1824]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                        cmp              eax, 99
                                                                                        je    n519_lit_integer_α
                                                                                        jmp   n519_lit_integer_α
n517_call_builtin_icon_β:
                                                                                        jmp   n519_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n518_deref_α:
                        mov              rdi, qword ptr [rbp + 2064]
                        mov              rsi, qword ptr [rbp + 2072]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n515_lit_string_α
                        mov              qword ptr [rbp + 2080], rax
                        mov              qword ptr [rbp + 2088], rdx
                                                                                        jmp   n520_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n519_lit_integer_α:
                        mov              qword ptr [rbp + 1648], 6
                        mov              rax, qword ptr [rip + .Lx969_0]
                        mov              qword ptr [rbp + 1656], rax
                                                                                        jmp   n521_var_ref_α
.Lx969_0:
                        .quad            45
#-----------------------------------------------------------------------------------------------------------------------
n520_lit_integer_α:
                        mov              qword ptr [rbp + 2096], 6
                        mov              rax, qword ptr [rip + .Lx970_0]
                        mov              qword ptr [rbp + 2104], rax
                                                                                        jmp   n522_lit_integer_α
.Lx970_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n521_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7584]
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                                                                                        jmp   n523_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n522_lit_integer_α:
                        mov              qword ptr [rbp + 2112], 6
                        mov              rax, qword ptr [rip + .Lx973_0]
                        mov              qword ptr [rbp + 2120], rax
                                                                                        jmp   n524_call_proc_staged_α
.Lx973_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n523_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7600]
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
                                                                                        jmp   n525_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n524_call_proc_staged_α:
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        lea              rsi, [rbp + 1968]
                        lea              rdx, [rbp + 2080]
                        lea              rcx, [rbp + 2096]
                        lea              r8, [rbp + 2112]
                        call             proc_cart_dcα
                                                                                        jmp   .Lx977_2
.Lx977_2:
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                        cmp              eax, 99
                                                                                        je    n515_lit_string_α
                                                                                        jmp   n515_lit_string_α
n524_call_proc_staged_β:
                                                                                        jmp   n515_lit_string_α
.Lx977_0:
                        .quad            .Lx977_0_s
.Lx977_0_s:
                        .string          "cart"
#-----------------------------------------------------------------------------------------------------------------------
n525_lit_integer_α:
                        mov              qword ptr [rbp + 1696], 6
                        mov              rax, qword ptr [rip + .Lx978_0]
                        mov              qword ptr [rbp + 1704], rax
                                                                                        jmp   n526_subscript_α
.Lx978_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n526_subscript_α:
                        mov              rdi, qword ptr [rbp + 1680]
                        mov              rsi, qword ptr [rbp + 1688]
                        mov              rdx, qword ptr [rbp + 1696]
                        mov              rcx, qword ptr [rbp + 1704]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n528_lit_string_α
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                                                                                        jmp   n527_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n527_deref_α:
                        mov              rdi, qword ptr [rbp + 1712]
                        mov              rsi, qword ptr [rbp + 1720]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n528_lit_string_α
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx
                                                                                        jmp   n529_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n528_lit_string_α:
                        mov              qword ptr [rbp + 1536], 1
                        mov              rax, qword ptr [rip + .Lx981_0]
                        mov              qword ptr [rbp + 1544], rax
                                                                                        jmp   n530_call_builtin_icon_α
.Lx981_0:
                        .quad            .Lx981_0_s
.Lx981_0_s:
                        .string          "line stroke "
#-----------------------------------------------------------------------------------------------------------------------
n529_subscript_α:
                        mov              rdi, qword ptr [rbp + 1664]
                        mov              rsi, qword ptr [rbp + 1672]
                        mov              rdx, qword ptr [rbp + 1728]
                        mov              rcx, qword ptr [rbp + 1736]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n528_lit_string_α
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                                                                                        jmp   n531_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n530_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 1512], rax
                        .section         .rodata
.Lrkfn984:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn984]
                        lea              rsi, [rbp + 1504]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                        cmp              eax, 99
                                                                                        je    n532_lit_integer_α
                                                                                        jmp   n532_lit_integer_α
n530_call_builtin_icon_β:
                                                                                        jmp   n532_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n531_deref_α:
                        mov              rdi, qword ptr [rbp + 1744]
                        mov              rsi, qword ptr [rbp + 1752]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n528_lit_string_α
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx
                                                                                        jmp   n533_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n532_lit_integer_α:
                        mov              qword ptr [rbp + 1328], 6
                        mov              rax, qword ptr [rip + .Lx986_0]
                        mov              qword ptr [rbp + 1336], rax
                                                                                        jmp   n534_var_ref_α
.Lx986_0:
                        .quad            45
#-----------------------------------------------------------------------------------------------------------------------
n533_lit_integer_α:
                        mov              qword ptr [rbp + 1776], 6
                        mov              rax, qword ptr [rip + .Lx987_0]
                        mov              qword ptr [rbp + 1784], rax
                                                                                        jmp   n535_lit_integer_α
.Lx987_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n534_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7584]
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                                                                                        jmp   n536_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n535_lit_integer_α:
                        mov              qword ptr [rbp + 1792], 6
                        mov              rax, qword ptr [rip + .Lx990_0]
                        mov              qword ptr [rbp + 1800], rax
                                                                                        jmp   n537_call_proc_staged_α
.Lx990_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n536_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7600]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                                                                                        jmp   n538_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n537_call_proc_staged_α:
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        lea              rsi, [rbp + 1648]
                        lea              rdx, [rbp + 1760]
                        lea              rcx, [rbp + 1776]
                        lea              r8, [rbp + 1792]
                        call             proc_cart_dcα
                                                                                        jmp   .Lx994_2
.Lx994_2:
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                        cmp              eax, 99
                                                                                        je    n528_lit_string_α
                                                                                        jmp   n528_lit_string_α
n537_call_proc_staged_β:
                                                                                        jmp   n528_lit_string_α
.Lx994_0:
                        .quad            .Lx994_0_s
.Lx994_0_s:
                        .string          "cart"
#-----------------------------------------------------------------------------------------------------------------------
n538_lit_integer_α:
                        mov              qword ptr [rbp + 1376], 6
                        mov              rax, qword ptr [rip + .Lx995_0]
                        mov              qword ptr [rbp + 1384], rax
                                                                                        jmp   n539_subscript_α
.Lx995_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n539_subscript_α:
                        mov              rdi, qword ptr [rbp + 1360]
                        mov              rsi, qword ptr [rbp + 1368]
                        mov              rdx, qword ptr [rbp + 1376]
                        mov              rcx, qword ptr [rbp + 1384]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n541_lit_string_α
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                                                                                        jmp   n540_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n540_deref_α:
                        mov              rdi, qword ptr [rbp + 1392]
                        mov              rsi, qword ptr [rbp + 1400]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n541_lit_string_α
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                                                                                        jmp   n542_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n541_lit_string_α:
                        mov              qword ptr [rbp + 1216], 1
                        mov              rax, qword ptr [rip + .Lx998_0]
                        mov              qword ptr [rbp + 1224], rax
                                                                                        jmp   n543_call_builtin_icon_α
.Lx998_0:
                        .quad            .Lx998_0_s
.Lx998_0_s:
                        .string          "begin "
#-----------------------------------------------------------------------------------------------------------------------
n542_subscript_α:
                        mov              rdi, qword ptr [rbp + 1344]
                        mov              rsi, qword ptr [rbp + 1352]
                        mov              rdx, qword ptr [rbp + 1408]
                        mov              rcx, qword ptr [rbp + 1416]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n541_lit_string_α
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                                                                                        jmp   n544_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n543_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1192], rax
                        .section         .rodata
.Lrkfn1001:             .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1001]
                        lea              rsi, [rbp + 1184]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        cmp              eax, 99
                                                                                        je    n545_lit_integer_α
                                                                                        jmp   n545_lit_integer_α
n543_call_builtin_icon_β:
                                                                                        jmp   n545_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n544_deref_α:
                        mov              rdi, qword ptr [rbp + 1424]
                        mov              rsi, qword ptr [rbp + 1432]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n541_lit_string_α
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                                                                                        jmp   n546_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n545_lit_integer_α:
                        mov              qword ptr [rbp + 1008], 6
                        mov              rax, qword ptr [rip + .Lx1003_0]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n547_var_ref_α
.Lx1003_0:
                        .quad            45
#-----------------------------------------------------------------------------------------------------------------------
n546_lit_integer_α:
                        mov              qword ptr [rbp + 1456], 6
                        mov              rax, qword ptr [rip + .Lx1004_0]
                        mov              qword ptr [rbp + 1464], rax
                                                                                        jmp   n548_lit_integer_α
.Lx1004_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n547_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7584]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                                                                                        jmp   n549_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n548_lit_integer_α:
                        mov              qword ptr [rbp + 1472], 6
                        mov              rax, qword ptr [rip + .Lx1007_0]
                        mov              qword ptr [rbp + 1480], rax
                                                                                        jmp   n550_call_proc_staged_α
.Lx1007_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n549_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7600]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n551_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n550_call_proc_staged_α:
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        lea              rsi, [rbp + 1328]
                        lea              rdx, [rbp + 1440]
                        lea              rcx, [rbp + 1456]
                        lea              r8, [rbp + 1472]
                        call             proc_cart_dcα
                                                                                        jmp   .Lx1011_2
.Lx1011_2:
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                        cmp              eax, 99
                                                                                        je    n541_lit_string_α
                                                                                        jmp   n541_lit_string_α
n550_call_proc_staged_β:
                                                                                        jmp   n541_lit_string_α
.Lx1011_0:
                        .quad            .Lx1011_0_s
.Lx1011_0_s:
                        .string          "cart"
#-----------------------------------------------------------------------------------------------------------------------
n551_lit_integer_α:
                        mov              qword ptr [rbp + 1056], 6
                        mov              rax, qword ptr [rip + .Lx1012_0]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n552_subscript_α
.Lx1012_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n552_subscript_α:
                        mov              rdi, qword ptr [rbp + 1040]
                        mov              rsi, qword ptr [rbp + 1048]
                        mov              rdx, qword ptr [rbp + 1056]
                        mov              rcx, qword ptr [rbp + 1064]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n554_lit_string_α
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                                                                                        jmp   n553_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n553_deref_α:
                        mov              rdi, qword ptr [rbp + 1072]
                        mov              rsi, qword ptr [rbp + 1080]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n554_lit_string_α
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                                                                                        jmp   n555_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n554_lit_string_α:
                        mov              qword ptr [rbp + 896], 1
                        mov              rax, qword ptr [rip + .Lx1015_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n556_call_builtin_icon_α
.Lx1015_0:
                        .quad            .Lx1015_0_s
.Lx1015_0_s:
                        .string          "line stroke"
#-----------------------------------------------------------------------------------------------------------------------
n555_subscript_α:
                        mov              rdi, qword ptr [rbp + 1024]
                        mov              rsi, qword ptr [rbp + 1032]
                        mov              rdx, qword ptr [rbp + 1088]
                        mov              rcx, qword ptr [rbp + 1096]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n554_lit_string_α
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                                                                                        jmp   n557_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n556_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 872], rax
                        .section         .rodata
.Lrkfn1018:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1018]
                        lea              rsi, [rbp + 864]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                        cmp              eax, 99
                                                                                        je    n558_var_α
                                                                                        jmp   n558_var_α
n556_call_builtin_icon_β:
                                                                                        jmp   n558_var_α
#-----------------------------------------------------------------------------------------------------------------------
n557_deref_α:
                        mov              rdi, qword ptr [rbp + 1104]
                        mov              rsi, qword ptr [rbp + 1112]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n554_lit_string_α
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   n559_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n558_var_α:
                        mov              rax, qword ptr [rbp + 7520]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 7528]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n560_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n559_lit_integer_α:
                        mov              qword ptr [rbp + 1136], 6
                        mov              rax, qword ptr [rip + .Lx1022_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n561_lit_integer_α
.Lx1022_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n560_lit_integer_α:
                        mov              qword ptr [rbp + 832], 6
                        mov              rax, qword ptr [rip + .Lx1023_0]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n562_op75_α
.Lx1023_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n561_lit_integer_α:
                        mov              qword ptr [rbp + 1152], 6
                        mov              rax, qword ptr [rip + .Lx1024_0]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n563_call_proc_staged_α
.Lx1024_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n562_op75_α:
                        mov              eax, dword ptr [rbp + 7520]
                        cmp              eax, 7
                                                                                        je    .Lx1026_1
                        cmp              eax, 6
                                                                                        jne   .Lx1026_0
                        mov              eax, dword ptr [rbp + 832]
                        cmp              eax, 6
                                                                                        jne   .Lx1026_0
.Lx1026_1:
                        mov              rax, qword ptr [rbp + 7520]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 7528]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n564_binop_α
.Lx1026_0:
                        lea              rdi, [rbp + 7520]
                        lea              rsi, [rbp + 832]
                        lea              rdx, [rbp + 800]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n564_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n563_call_proc_staged_α:
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        lea              rsi, [rbp + 1008]
                        lea              rdx, [rbp + 1120]
                        lea              rcx, [rbp + 1136]
                        lea              r8, [rbp + 1152]
                        call             proc_cart_dcα
                                                                                        jmp   .Lx1028_2
.Lx1028_2:
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              eax, 99
                                                                                        je    n554_lit_string_α
                                                                                        jmp   n554_lit_string_α
n563_call_proc_staged_β:
                                                                                        jmp   n554_lit_string_α
.Lx1028_0:
                        .quad            .Lx1028_0_s
.Lx1028_0_s:
                        .string          "cart"
#-----------------------------------------------------------------------------------------------------------------------
n564_binop_α:
                        mov              eax, dword ptr [rbp + 800]
                        cmp              eax, 6
                                                                                        jne   .Lx1029_0
                        mov              rax, qword ptr [rbp + 808]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 784], 6
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n565_assign_α
.Lx1029_0:
                        mov              rdi, qword ptr [rbp + 800]
                        mov              rsi, qword ptr [rbp + 808]
                        mov              rdx, qword ptr [rbp + 832]
                        mov              rcx, qword ptr [rbp + 840]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n433_var_α
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n565_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n565_assign_α:
                        mov              rax, qword ptr [rbp + 784]
                        mov              rdx, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 7520], rax
                        mov              qword ptr [rbp + 7528], rdx
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                                                                                        jmp   n566_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n566_conjunction_α:
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n433_var_α
n566_conjunction_β:
                                                                                        jmp   n433_var_α
#-----------------------------------------------------------------------------------------------------------------------
n567_scan_α:
                        lea              rdi, [rbp + 7184]
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
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 7744]
                        add              rsp, 7752
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 7744]
                        add              rsp, 7752
                        ret
                        .section         .note.GNU-stack,"",@progbits
