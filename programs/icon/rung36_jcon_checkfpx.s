                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_p1_α
proc_p1_α:
                        .global          proc_p1_α
                        .global          proc_p1_β
                        .global          proc_p1_γ
                        .global          proc_p1_ω
                        sub              rsp, 5744
                        mov              [rsp + 5720], rcx
                        mov              [rsp + 5728], rdx
                        mov              [rsp + 5736], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 5696
                        mov              edx, 5712
                        call             rt_jmp_frame_lexprep2@PLT
proc_p1_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:
                        mov              qword ptr [rbp + 5376], 1
                        mov              rax, qword ptr [rip + .Lx177_0]
                        mov              qword ptr [rbp + 5384], rax
                                                                                        jmp   n1_disjunction_α
.Lx177_0:
                        .quad            .Lx177_0_s
.Lx177_0_s:
                        .string          "every 1 to 10 do write(?0) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n1_disjunction_α:
                        mov              qword ptr [rbp + 5392], 0
                        mov              qword ptr [rbp + 5400], 0
                        mov              dword ptr [rbp + 5408], 0
                                                                                        jmp   n3_lit_integer_α
n1_disjunction_as:
                        mov              eax, dword ptr [rbp + 5408]
                        cmp              eax, 0
                                                                                        jne   .Lx179_0
                                                                                        jmp   n2_call_builtin_icon_α
.Lx179_0:
                        cmp              eax, 1
                                                                                        jne   .Lx179_1
                        mov              rax, qword ptr [rbp + 5680]
                        mov              qword ptr [rbp + 5392], rax
                        mov              rax, qword ptr [rbp + 5688]
                        mov              qword ptr [rbp + 5400], rax
                                                                                        jmp   n2_call_builtin_icon_α
.Lx179_1:
                                                                                        jmp   n2_call_builtin_icon_α
n1_disjunction_β:
                        mov              eax, dword ptr [rbp + 5408]
                        cmp              eax, 0
                                                                                        je    n1_disjunction_af
                                                                                        jmp   n1_disjunction_af
n1_disjunction_af:
                        add              dword ptr [rbp + 5408], 1
                        mov              eax, dword ptr [rbp + 5408]
                        cmp              eax, 1
                                                                                        je    n4_lit_string_α
                                                                                        jmp   n5_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n2_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 5376]
                        mov              qword ptr [rbp + 5328], rax
                        mov              rax, qword ptr [rbp + 5384]
                        mov              qword ptr [rbp + 5336], rax
                        mov              rax, qword ptr [rbp + 5392]
                        mov              qword ptr [rbp + 5344], rax
                        mov              rax, qword ptr [rbp + 5400]
                        mov              qword ptr [rbp + 5352], rax
                        .section         .rodata
.Lrkfn181:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn181]
                        lea              rsi, [rbp + 5328]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5312], rax
                        mov              qword ptr [rbp + 5320], rdx
                        cmp              eax, 99
                                                                                        je    n1_disjunction_β
                                                                                        jmp   n5_lit_string_α
n2_call_builtin_icon_β:
                                                                                        jmp   n1_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:
                        mov              qword ptr [rbp + 5456], 6
                        mov              rax, qword ptr [rip + .Lx182_0]
                        mov              qword ptr [rbp + 5464], rax
                                                                                        jmp   n6_lit_integer_α
n3_lit_integer_β:
                                                                                        jmp   n1_disjunction_af
.Lx182_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_string_α:
                        mov              qword ptr [rbp + 5680], 1
                        mov              rax, qword ptr [rip + .Lx183_0]
                        mov              qword ptr [rbp + 5688], rax
                                                                                        jmp   n1_disjunction_as
n4_lit_string_β:
                                                                                        jmp   n1_disjunction_af
.Lx183_0:
                        .quad            .Lx183_0_s
.Lx183_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:
                        mov              qword ptr [rbp + 4880], 1
                        mov              rax, qword ptr [rip + .Lx184_0]
                        mov              qword ptr [rbp + 4888], rax
                                                                                        jmp   n7_disjunction_α
.Lx184_0:
                        .quad            .Lx184_0_s
.Lx184_0_s:
                        .string          "every i := 1 to 50 do write(real(repl(\"0\",i) || \"2.\")) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_integer_α:
                        mov              qword ptr [rbp + 5472], 6
                        mov              rax, qword ptr [rip + .Lx185_0]
                        mov              qword ptr [rbp + 5480], rax
                                                                                        jmp   n8_to_α
.Lx185_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n7_disjunction_α:
                        mov              qword ptr [rbp + 4896], 0
                        mov              qword ptr [rbp + 4904], 0
                        mov              dword ptr [rbp + 4912], 0
                                                                                        jmp   n10_lit_integer_α
n7_disjunction_as:
                        mov              eax, dword ptr [rbp + 4912]
                        cmp              eax, 0
                                                                                        jne   .Lx187_0
                        mov              rax, qword ptr [rbp + 4928]
                        mov              qword ptr [rbp + 4896], rax
                        mov              rax, qword ptr [rbp + 4936]
                        mov              qword ptr [rbp + 4904], rax
                                                                                        jmp   n9_call_builtin_icon_α
.Lx187_0:
                        cmp              eax, 1
                                                                                        jne   .Lx187_1
                        mov              rax, qword ptr [rbp + 5296]
                        mov              qword ptr [rbp + 4896], rax
                        mov              rax, qword ptr [rbp + 5304]
                        mov              qword ptr [rbp + 4904], rax
                                                                                        jmp   n9_call_builtin_icon_α
.Lx187_1:
                                                                                        jmp   n9_call_builtin_icon_α
n7_disjunction_β:
                        mov              eax, dword ptr [rbp + 4912]
                        cmp              eax, 0
                                                                                        je    n7_disjunction_af
                                                                                        jmp   n7_disjunction_af
n7_disjunction_af:
                        add              dword ptr [rbp + 4912], 1
                        mov              eax, dword ptr [rbp + 4912]
                        cmp              eax, 1
                                                                                        je    n11_lit_string_α
                                                                                        jmp   n14_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n8_to_α:
                        mov              rdi, qword ptr [rbp + 5456]
                        mov              rsi, qword ptr [rbp + 5464]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 5456], 6
                        mov              qword ptr [rbp + 5464], rax
                        mov              rdi, qword ptr [rbp + 5472]
                        mov              rsi, qword ptr [rbp + 5480]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 5472], 6
                        mov              qword ptr [rbp + 5480], rax
                        mov              rax, qword ptr [rbp + 5464]
                        mov              qword ptr [rbp + 5440], rax
.Lx189_0:
                        mov              rax, qword ptr [rbp + 5440]
                        mov              rcx, qword ptr [rbp + 5480]
                        cmp              rax, rcx
                                                                                        jg    n1_disjunction_af
                        mov              qword ptr [rbp + 5424], 6
                        mov              qword ptr [rbp + 5432], rax
                                                                                        jmp   n13_bound_α
n8_to_β:
                        inc              qword ptr [rbp + 5440]
                                                                                        jmp   .Lx189_0
#-----------------------------------------------------------------------------------------------------------------------
n9_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 4880]
                        mov              qword ptr [rbp + 4832], rax
                        mov              rax, qword ptr [rbp + 4888]
                        mov              qword ptr [rbp + 4840], rax
                        mov              rax, qword ptr [rbp + 4896]
                        mov              qword ptr [rbp + 4848], rax
                        mov              rax, qword ptr [rbp + 4904]
                        mov              qword ptr [rbp + 4856], rax
                        .section         .rodata
.Lrkfn191:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn191]
                        lea              rsi, [rbp + 4832]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4816], rax
                        mov              qword ptr [rbp + 4824], rdx
                        cmp              eax, 99
                                                                                        je    n7_disjunction_β
                                                                                        jmp   n14_lit_string_α
n9_call_builtin_icon_β:
                                                                                        jmp   n7_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_integer_α:
                        mov              qword ptr [rbp + 4992], 6
                        mov              rax, qword ptr [rip + .Lx192_0]
                        mov              qword ptr [rbp + 5000], rax
                                                                                        jmp   n15_lit_integer_α
n10_lit_integer_β:
                                                                                        jmp   n7_disjunction_af
.Lx192_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:
                        mov              qword ptr [rbp + 5296], 1
                        mov              rax, qword ptr [rip + .Lx193_0]
                        mov              qword ptr [rbp + 5304], rax
                                                                                        jmp   n7_disjunction_as
n11_lit_string_β:
                                                                                        jmp   n7_disjunction_af
.Lx193_0:
                        .quad            .Lx193_0_s
.Lx193_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n12_call_proc_staged_α:
                        mov              edi, 3
                        call             rt_proc_call_open_det0@PLT
                        test             rax, rax
                                                                                        je    .Lx195_1
                        lea              rcx, [rip + .Lx195_3]
                        lea              rdx, [rip + .Lx195_4]
                                                                                        jmp   rax
.Lx195_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx195_2
.Lx195_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx195_2
.Lx195_1:
                        call             rt_faildescr@PLT
.Lx195_2:
                        mov              qword ptr [rbp + 4928], rax
                        mov              qword ptr [rbp + 4936], rdx
                        cmp              eax, 99
                                                                                        je    n7_disjunction_af
                                                                                        jmp   n7_disjunction_as
n12_call_proc_staged_β:
                                                                                        jmp   n7_disjunction_af
.Lx195_0:
                        .quad            .Lx195_0_s
.Lx195_0_s:
                        .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n13_bound_α:
                        mov              qword ptr [rbp + 5488], rsp
                                                                                        jmp   n16_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_string_α:
                        mov              qword ptr [rbp + 4368], 1
                        mov              rax, qword ptr [rip + .Lx198_0]
                        mov              qword ptr [rbp + 4376], rax
                                                                                        jmp   n17_disjunction_α
.Lx198_0:
                        .quad            .Lx198_0_s
.Lx198_0_s:
                        .string          "every i := 1 to 30 do write(integer(repl(\"0\",i) || \"2\")) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_integer_α:
                        mov              qword ptr [rbp + 5008], 6
                        mov              rax, qword ptr [rip + .Lx199_0]
                        mov              qword ptr [rbp + 5016], rax
                                                                                        jmp   n18_to_α
.Lx199_0:
                        .quad            50
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_integer_α:
                        mov              qword ptr [rbp + 5648], 6
                        mov              rax, qword ptr [rip + .Lx200_0]
                        mov              qword ptr [rbp + 5656], rax
                                                                                        jmp   n19_random_α
.Lx200_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n17_disjunction_α:
                        mov              qword ptr [rbp + 4384], 0
                        mov              qword ptr [rbp + 4392], 0
                        mov              dword ptr [rbp + 4400], 0
                                                                                        jmp   n21_lit_integer_α
n17_disjunction_as:
                        mov              eax, dword ptr [rbp + 4400]
                        cmp              eax, 0
                                                                                        jne   .Lx202_0
                        mov              rax, qword ptr [rbp + 4416]
                        mov              qword ptr [rbp + 4384], rax
                        mov              rax, qword ptr [rbp + 4424]
                        mov              qword ptr [rbp + 4392], rax
                                                                                        jmp   n20_call_builtin_icon_α
.Lx202_0:
                        cmp              eax, 1
                                                                                        jne   .Lx202_1
                        mov              rax, qword ptr [rbp + 4800]
                        mov              qword ptr [rbp + 4384], rax
                        mov              rax, qword ptr [rbp + 4808]
                        mov              qword ptr [rbp + 4392], rax
                                                                                        jmp   n20_call_builtin_icon_α
.Lx202_1:
                                                                                        jmp   n20_call_builtin_icon_α
n17_disjunction_β:
                        mov              eax, dword ptr [rbp + 4400]
                        cmp              eax, 0
                                                                                        je    n17_disjunction_af
                                                                                        jmp   n17_disjunction_af
n17_disjunction_af:
                        add              dword ptr [rbp + 4400], 1
                        mov              eax, dword ptr [rbp + 4400]
                        cmp              eax, 1
                                                                                        je    n22_lit_string_α
                                                                                        jmp   n27_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n18_to_α:
                        mov              rdi, qword ptr [rbp + 4992]
                        mov              rsi, qword ptr [rbp + 5000]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 4992], 6
                        mov              qword ptr [rbp + 5000], rax
                        mov              rdi, qword ptr [rbp + 5008]
                        mov              rsi, qword ptr [rbp + 5016]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 5008], 6
                        mov              qword ptr [rbp + 5016], rax
                        mov              rax, qword ptr [rbp + 5000]
                        mov              qword ptr [rbp + 4976], rax
.Lx204_0:
                        mov              rax, qword ptr [rbp + 4976]
                        mov              rcx, qword ptr [rbp + 5016]
                        cmp              rax, rcx
                                                                                        jg    n7_disjunction_af
                        mov              qword ptr [rbp + 4960], 6
                        mov              qword ptr [rbp + 4968], rax
                                                                                        jmp   n24_assign_α
n18_to_β:
                        inc              qword ptr [rbp + 4976]
                                                                                        jmp   .Lx204_0
#-----------------------------------------------------------------------------------------------------------------------
n19_random_α:
                        mov              rdi, qword ptr [rbp + 5648]
                        mov              rsi, qword ptr [rbp + 5656]
                        call             rt_random_var@PLT
                        cmp              eax, 99
                                                                                        je    n26_unmark_α
                        mov              qword ptr [rbp + 5632], rax
                        mov              qword ptr [rbp + 5640], rdx
                                                                                        jmp   n25_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n20_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 4368]
                        mov              qword ptr [rbp + 4320], rax
                        mov              rax, qword ptr [rbp + 4376]
                        mov              qword ptr [rbp + 4328], rax
                        mov              rax, qword ptr [rbp + 4384]
                        mov              qword ptr [rbp + 4336], rax
                        mov              rax, qword ptr [rbp + 4392]
                        mov              qword ptr [rbp + 4344], rax
                        .section         .rodata
.Lrkfn207:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn207]
                        lea              rsi, [rbp + 4320]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4304], rax
                        mov              qword ptr [rbp + 4312], rdx
                        cmp              eax, 99
                                                                                        je    n17_disjunction_β
                                                                                        jmp   n27_lit_string_α
n20_call_builtin_icon_β:
                                                                                        jmp   n17_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_integer_α:
                        mov              qword ptr [rbp + 4496], 6
                        mov              rax, qword ptr [rip + .Lx208_0]
                        mov              qword ptr [rbp + 4504], rax
                                                                                        jmp   n28_lit_integer_α
n21_lit_integer_β:
                                                                                        jmp   n17_disjunction_af
.Lx208_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_string_α:
                        mov              qword ptr [rbp + 4800], 1
                        mov              rax, qword ptr [rip + .Lx209_0]
                        mov              qword ptr [rbp + 4808], rax
                                                                                        jmp   n17_disjunction_as
n22_lit_string_β:
                                                                                        jmp   n17_disjunction_af
.Lx209_0:
                        .quad            .Lx209_0_s
.Lx209_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n23_call_proc_staged_α:
                        mov              edi, 3
                        call             rt_proc_call_open_det0@PLT
                        test             rax, rax
                                                                                        je    .Lx211_1
                        lea              rcx, [rip + .Lx211_3]
                        lea              rdx, [rip + .Lx211_4]
                                                                                        jmp   rax
.Lx211_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx211_2
.Lx211_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx211_2
.Lx211_1:
                        call             rt_faildescr@PLT
.Lx211_2:
                        mov              qword ptr [rbp + 4416], rax
                        mov              qword ptr [rbp + 4424], rdx
                        cmp              eax, 99
                                                                                        je    n17_disjunction_af
                                                                                        jmp   n17_disjunction_as
n23_call_proc_staged_β:
                                                                                        jmp   n17_disjunction_af
.Lx211_0:
                        .quad            .Lx211_0_s
.Lx211_0_s:
                        .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n24_assign_α:
                        mov              rax, qword ptr [rbp + 4960]
                        mov              rdx, qword ptr [rbp + 4968]
                        mov              qword ptr [rbp + 5696], rax
                        mov              qword ptr [rbp + 5704], rdx
                                                                                        jmp   n29_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n25_deref_α:
                        mov              rdi, qword ptr [rbp + 5632]
                        mov              rsi, qword ptr [rbp + 5640]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n26_unmark_α
                        mov              qword ptr [rbp + 5664], rax
                        mov              qword ptr [rbp + 5672], rdx
                                                                                        jmp   n30_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n26_unmark_α:
                        mov              rsp, qword ptr [rbp + 5488]
                                                                                        jmp   n8_to_β
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_string_α:
                        mov              qword ptr [rbp + 4144], 1
                        mov              rax, qword ptr [rip + .Lx216_0]
                        mov              qword ptr [rbp + 4152], rax
                                                                                        jmp   n31_disjunction_α
.Lx216_0:
                        .quad            .Lx216_0_s
.Lx216_0_s:
                        .string          "2.0 ~=== +2.0 ----> "
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_integer_α:
                        mov              qword ptr [rbp + 4512], 6
                        mov              rax, qword ptr [rip + .Lx217_0]
                        mov              qword ptr [rbp + 4520], rax
                                                                                        jmp   n32_to_α
.Lx217_0:
                        .quad            30
#-----------------------------------------------------------------------------------------------------------------------
n29_bound_α:
                        mov              qword ptr [rbp + 5024], rsp
                                                                                        jmp   n33_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n30_call_proc_staged_α:
                        lea              rsi, [rbp + 5664]
                        call             proc_Image_dcα
                                                                                        jmp   .Lx221_2
.Lx221_2:
                        mov              qword ptr [rbp + 5584], rax
                        mov              qword ptr [rbp + 5592], rdx
                        cmp              eax, 99
                                                                                        je    n26_unmark_α
                                                                                        jmp   n34_call_builtin_icon_α
n30_call_proc_staged_β:
                                                                                        jmp   n26_unmark_α
.Lx221_0:
                        .quad            .Lx221_0_s
.Lx221_0_s:
                        .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n31_disjunction_α:
                        mov              qword ptr [rbp + 4160], 0
                        mov              qword ptr [rbp + 4168], 0
                        mov              dword ptr [rbp + 4176], 0
                                                                                        jmp   n36_lit_real_α
n31_disjunction_as:
                        mov              eax, dword ptr [rbp + 4176]
                        cmp              eax, 0
                                                                                        jne   .Lx223_0
                        mov              rax, qword ptr [rbp + 4192]
                        mov              qword ptr [rbp + 4160], rax
                        mov              rax, qword ptr [rbp + 4200]
                        mov              qword ptr [rbp + 4168], rax
                                                                                        jmp   n35_call_builtin_icon_α
.Lx223_0:
                        cmp              eax, 1
                                                                                        jne   .Lx223_1
                        mov              rax, qword ptr [rbp + 4288]
                        mov              qword ptr [rbp + 4160], rax
                        mov              rax, qword ptr [rbp + 4296]
                        mov              qword ptr [rbp + 4168], rax
                                                                                        jmp   n35_call_builtin_icon_α
.Lx223_1:
                                                                                        jmp   n35_call_builtin_icon_α
n31_disjunction_β:
                        mov              eax, dword ptr [rbp + 4176]
                        cmp              eax, 0
                                                                                        je    n31_disjunction_af
                                                                                        jmp   n31_disjunction_af
n31_disjunction_af:
                        add              dword ptr [rbp + 4176], 1
                        mov              eax, dword ptr [rbp + 4176]
                        cmp              eax, 1
                                                                                        je    n37_lit_string_α
                                                                                        jmp   n41_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n32_to_α:
                        mov              rdi, qword ptr [rbp + 4496]
                        mov              rsi, qword ptr [rbp + 4504]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 4496], 6
                        mov              qword ptr [rbp + 4504], rax
                        mov              rdi, qword ptr [rbp + 4512]
                        mov              rsi, qword ptr [rbp + 4520]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 4512], 6
                        mov              qword ptr [rbp + 4520], rax
                        mov              rax, qword ptr [rbp + 4504]
                        mov              qword ptr [rbp + 4480], rax
.Lx225_0:
                        mov              rax, qword ptr [rbp + 4480]
                        mov              rcx, qword ptr [rbp + 4520]
                        cmp              rax, rcx
                                                                                        jg    n17_disjunction_af
                        mov              qword ptr [rbp + 4464], 6
                        mov              qword ptr [rbp + 4472], rax
                                                                                        jmp   n39_assign_α
n32_to_β:
                        inc              qword ptr [rbp + 4480]
                                                                                        jmp   .Lx225_0
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_string_α:
                        mov              qword ptr [rbp + 5248], 1
                        mov              rax, qword ptr [rip + .Lx226_0]
                        mov              qword ptr [rbp + 5256], rax
                                                                                        jmp   n40_var_α
.Lx226_0:
                        .quad            .Lx226_0_s
.Lx226_0_s:
                        .string          "0"
#-----------------------------------------------------------------------------------------------------------------------
n34_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 5584]
                        mov              qword ptr [rbp + 5552], rax
                        mov              rax, qword ptr [rbp + 5592]
                        mov              qword ptr [rbp + 5560], rax
                        .section         .rodata
.Lrkfn228:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn228]
                        lea              rsi, [rbp + 5552]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5536], rax
                        mov              qword ptr [rbp + 5544], rdx
                        cmp              eax, 99
                                                                                        je    n26_unmark_α
                                                                                        jmp   n26_unmark_α
n34_call_builtin_icon_β:
                                                                                        jmp   n26_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n35_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 4144]
                        mov              qword ptr [rbp + 4096], rax
                        mov              rax, qword ptr [rbp + 4152]
                        mov              qword ptr [rbp + 4104], rax
                        mov              rax, qword ptr [rbp + 4160]
                        mov              qword ptr [rbp + 4112], rax
                        mov              rax, qword ptr [rbp + 4168]
                        mov              qword ptr [rbp + 4120], rax
                        .section         .rodata
.Lrkfn230:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn230]
                        lea              rsi, [rbp + 4096]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4080], rax
                        mov              qword ptr [rbp + 4088], rdx
                        cmp              eax, 99
                                                                                        je    n31_disjunction_β
                                                                                        jmp   n41_lit_string_α
n35_call_builtin_icon_β:
                                                                                        jmp   n31_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_real_α:
                        mov              qword ptr [rbp + 4256], 7
                        mov              rax, qword ptr [rip + .Lx231_0]
                        mov              qword ptr [rbp + 4264], rax
                                                                                        jmp   n42_lit_real_α
n36_lit_real_β:
                                                                                        jmp   n31_disjunction_af
.Lx231_0:
                        .quad            4611686018427387904
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_string_α:
                        mov              qword ptr [rbp + 4288], 1
                        mov              rax, qword ptr [rip + .Lx232_0]
                        mov              qword ptr [rbp + 4296], rax
                                                                                        jmp   n31_disjunction_as
n37_lit_string_β:
                                                                                        jmp   n31_disjunction_af
.Lx232_0:
                        .quad            .Lx232_0_s
.Lx232_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n38_call_proc_staged_α:
                        lea              rsi, [rbp + 4240]
                        call             proc_Image_dcα
                                                                                        jmp   .Lx234_2
.Lx234_2:
                        mov              qword ptr [rbp + 4192], rax
                        mov              qword ptr [rbp + 4200], rdx
                        cmp              eax, 99
                                                                                        je    n31_disjunction_af
                                                                                        jmp   n31_disjunction_as
n38_call_proc_staged_β:
                                                                                        jmp   n31_disjunction_af
.Lx234_0:
                        .quad            .Lx234_0_s
.Lx234_0_s:
                        .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n39_assign_α:
                        mov              rax, qword ptr [rbp + 4464]
                        mov              rdx, qword ptr [rbp + 4472]
                        mov              qword ptr [rbp + 5696], rax
                        mov              qword ptr [rbp + 5704], rdx
                                                                                        jmp   n43_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n40_var_α:
                        mov              rax, qword ptr [rbp + 5696]
                        mov              qword ptr [rbp + 5264], rax
                        mov              rax, qword ptr [rbp + 5704]
                        mov              qword ptr [rbp + 5272], rax
                                                                                        jmp   n44_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_string_α:
                        mov              qword ptr [rbp + 3904], 1
                        mov              rax, qword ptr [rip + .Lx238_0]
                        mov              qword ptr [rbp + 3912], rax
                                                                                        jmp   n46_disjunction_α
.Lx238_0:
                        .quad            .Lx238_0_s
.Lx238_0_s:
                        .string          "abs(3.0) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_real_α:
                        mov              qword ptr [rbp + 4272], 7
                        mov              rax, qword ptr [rip + .Lx239_0]
                        mov              qword ptr [rbp + 4280], rax
                                                                                        jmp   n47_binop_test_α
.Lx239_0:
                        .quad            4611686018427387904
#-----------------------------------------------------------------------------------------------------------------------
n43_bound_α:
                        mov              qword ptr [rbp + 4528], rsp
                                                                                        jmp   n48_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n44_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 5248]
                        mov              qword ptr [rbp + 5200], rax
                        mov              rax, qword ptr [rbp + 5256]
                        mov              qword ptr [rbp + 5208], rax
                        mov              rax, qword ptr [rbp + 5264]
                        mov              qword ptr [rbp + 5216], rax
                        mov              rax, qword ptr [rbp + 5272]
                        mov              qword ptr [rbp + 5224], rax
                        .section         .rodata
.Lrkfn243:              .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn243]
                        lea              rsi, [rbp + 5200]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5184], rax
                        mov              qword ptr [rbp + 5192], rdx
                        cmp              eax, 99
                                                                                        je    n45_unmark_α
                                                                                        jmp   n49_lit_string_α
n44_call_builtin_icon_β:
                                                                                        jmp   n45_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n45_unmark_α:
                        mov              rsp, qword ptr [rbp + 5024]
                                                                                        jmp   n18_to_β
#-----------------------------------------------------------------------------------------------------------------------
n46_disjunction_α:
                        mov              qword ptr [rbp + 3920], 0
                        mov              qword ptr [rbp + 3928], 0
                        mov              dword ptr [rbp + 3936], 0
                                                                                        jmp   n51_lit_real_α
n46_disjunction_as:
                        mov              eax, dword ptr [rbp + 3936]
                        cmp              eax, 0
                                                                                        jne   .Lx247_0
                        mov              rax, qword ptr [rbp + 3952]
                        mov              qword ptr [rbp + 3920], rax
                        mov              rax, qword ptr [rbp + 3960]
                        mov              qword ptr [rbp + 3928], rax
                                                                                        jmp   n50_call_builtin_icon_α
.Lx247_0:
                        cmp              eax, 1
                                                                                        jne   .Lx247_1
                        mov              rax, qword ptr [rbp + 4064]
                        mov              qword ptr [rbp + 3920], rax
                        mov              rax, qword ptr [rbp + 4072]
                        mov              qword ptr [rbp + 3928], rax
                                                                                        jmp   n50_call_builtin_icon_α
.Lx247_1:
                                                                                        jmp   n50_call_builtin_icon_α
n46_disjunction_β:
                        mov              eax, dword ptr [rbp + 3936]
                        cmp              eax, 0
                                                                                        je    n46_disjunction_af
                                                                                        jmp   n46_disjunction_af
n46_disjunction_af:
                        add              dword ptr [rbp + 3936], 1
                        mov              eax, dword ptr [rbp + 3936]
                        cmp              eax, 1
                                                                                        je    n52_lit_string_α
                                                                                        jmp   n56_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n47_binop_test_α:
                        mov              rdi, qword ptr [rbp + 4256]
                        mov              rsi, qword ptr [rbp + 4264]
                        mov              rdx, qword ptr [rbp + 4272]
                        mov              rcx, qword ptr [rbp + 4280]
                        mov              r8d, 23
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n31_disjunction_af
                        mov              rax, qword ptr [rbp + 4272]
                        mov              qword ptr [rbp + 4240], rax
                        mov              rax, qword ptr [rbp + 4280]
                        mov              qword ptr [rbp + 4248], rax
                                                                                        jmp   n38_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_string_α:
                        mov              qword ptr [rbp + 4752], 1
                        mov              rax, qword ptr [rip + .Lx249_0]
                        mov              qword ptr [rbp + 4760], rax
                                                                                        jmp   n54_var_α
.Lx249_0:
                        .quad            .Lx249_0_s
.Lx249_0_s:
                        .string          "0"
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_string_α:
                        mov              qword ptr [rbp + 5280], 1
                        mov              rax, qword ptr [rip + .Lx250_0]
                        mov              qword ptr [rbp + 5288], rax
                                                                                        jmp   n55_binop_α
.Lx250_0:
                        .quad            .Lx250_0_s
.Lx250_0_s:
                        .string          "2."
#-----------------------------------------------------------------------------------------------------------------------
n50_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3904]
                        mov              qword ptr [rbp + 3856], rax
                        mov              rax, qword ptr [rbp + 3912]
                        mov              qword ptr [rbp + 3864], rax
                        mov              rax, qword ptr [rbp + 3920]
                        mov              qword ptr [rbp + 3872], rax
                        mov              rax, qword ptr [rbp + 3928]
                        mov              qword ptr [rbp + 3880], rax
                        .section         .rodata
.Lrkfn252:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn252]
                        lea              rsi, [rbp + 3856]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3840], rax
                        mov              qword ptr [rbp + 3848], rdx
                        cmp              eax, 99
                                                                                        je    n46_disjunction_β
                                                                                        jmp   n56_lit_string_α
n50_call_builtin_icon_β:
                                                                                        jmp   n46_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_real_α:
                        mov              qword ptr [rbp + 4048], 7
                        mov              rax, qword ptr [rip + .Lx253_0]
                        mov              qword ptr [rbp + 4056], rax
                                                                                        jmp   n57_call_builtin_icon_α
n51_lit_real_β:
                                                                                        jmp   n46_disjunction_af
.Lx253_0:
                        .quad            4613937818241073152
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_string_α:
                        mov              qword ptr [rbp + 4064], 1
                        mov              rax, qword ptr [rip + .Lx254_0]
                        mov              qword ptr [rbp + 4072], rax
                                                                                        jmp   n46_disjunction_as
n52_lit_string_β:
                                                                                        jmp   n46_disjunction_af
.Lx254_0:
                        .quad            .Lx254_0_s
.Lx254_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n53_call_proc_staged_α:
                        lea              rsi, [rbp + 4000]
                        call             proc_Image_dcα
                                                                                        jmp   .Lx256_2
.Lx256_2:
                        mov              qword ptr [rbp + 3952], rax
                        mov              qword ptr [rbp + 3960], rdx
                        cmp              eax, 99
                                                                                        je    n46_disjunction_af
                                                                                        jmp   n46_disjunction_as
n53_call_proc_staged_β:
                                                                                        jmp   n46_disjunction_af
.Lx256_0:
                        .quad            .Lx256_0_s
.Lx256_0_s:
                        .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n54_var_α:
                        mov              rax, qword ptr [rbp + 5696]
                        mov              qword ptr [rbp + 4768], rax
                        mov              rax, qword ptr [rbp + 5704]
                        mov              qword ptr [rbp + 4776], rax
                                                                                        jmp   n58_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n55_binop_α:
                        mov              rdi, qword ptr [rbp + 5184]
                        mov              rsi, qword ptr [rbp + 5192]
                        mov              rdx, qword ptr [rbp + 5280]
                        mov              rcx, qword ptr [rbp + 5288]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 5168], rax
                        mov              qword ptr [rbp + 5176], rdx
                                                                                        jmp   n60_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_string_α:
                        mov              qword ptr [rbp + 3664], 1
                        mov              rax, qword ptr [rip + .Lx260_0]
                        mov              qword ptr [rbp + 3672], rax
                                                                                        jmp   n61_disjunction_α
.Lx260_0:
                        .quad            .Lx260_0_s
.Lx260_0_s:
                        .string          "Image(2e13) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n57_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 4048]
                        mov              qword ptr [rbp + 4016], rax
                        mov              rax, qword ptr [rbp + 4056]
                        mov              qword ptr [rbp + 4024], rax
                        .section         .rodata
.Lrkfn262:              .string          "abs"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn262]
                        lea              rsi, [rbp + 4016]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4000], rax
                        mov              qword ptr [rbp + 4008], rdx
                        cmp              eax, 99
                                                                                        je    n46_disjunction_af
                                                                                        jmp   n53_call_proc_staged_α
n57_call_builtin_icon_β:
                                                                                        jmp   n46_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n58_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 4752]
                        mov              qword ptr [rbp + 4704], rax
                        mov              rax, qword ptr [rbp + 4760]
                        mov              qword ptr [rbp + 4712], rax
                        mov              rax, qword ptr [rbp + 4768]
                        mov              qword ptr [rbp + 4720], rax
                        mov              rax, qword ptr [rbp + 4776]
                        mov              qword ptr [rbp + 4728], rax
                        .section         .rodata
.Lrkfn264:              .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn264]
                        lea              rsi, [rbp + 4704]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4688], rax
                        mov              qword ptr [rbp + 4696], rdx
                        cmp              eax, 99
                                                                                        je    n59_unmark_α
                                                                                        jmp   n62_lit_string_α
n58_call_builtin_icon_β:
                                                                                        jmp   n59_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n59_unmark_α:
                        mov              rsp, qword ptr [rbp + 4528]
                                                                                        jmp   n32_to_β
#-----------------------------------------------------------------------------------------------------------------------
n60_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 5168]
                        mov              qword ptr [rbp + 5136], rax
                        mov              rax, qword ptr [rbp + 5176]
                        mov              qword ptr [rbp + 5144], rax
                        .section         .rodata
.Lrkfn268:              .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn268]
                        lea              rsi, [rbp + 5136]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5120], rax
                        mov              qword ptr [rbp + 5128], rdx
                        cmp              eax, 99
                                                                                        je    n45_unmark_α
                                                                                        jmp   n63_call_builtin_icon_α
n60_call_builtin_icon_β:
                                                                                        jmp   n45_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n61_disjunction_α:
                        mov              qword ptr [rbp + 3680], 0
                        mov              qword ptr [rbp + 3688], 0
                        mov              dword ptr [rbp + 3696], 0
                                                                                        jmp   n65_lit_real_α
n61_disjunction_as:
                        mov              eax, dword ptr [rbp + 3696]
                        cmp              eax, 0
                                                                                        jne   .Lx270_0
                        mov              rax, qword ptr [rbp + 3712]
                        mov              qword ptr [rbp + 3680], rax
                        mov              rax, qword ptr [rbp + 3720]
                        mov              qword ptr [rbp + 3688], rax
                                                                                        jmp   n64_call_builtin_icon_α
.Lx270_0:
                        cmp              eax, 1
                                                                                        jne   .Lx270_1
                        mov              rax, qword ptr [rbp + 3824]
                        mov              qword ptr [rbp + 3680], rax
                        mov              rax, qword ptr [rbp + 3832]
                        mov              qword ptr [rbp + 3688], rax
                                                                                        jmp   n64_call_builtin_icon_α
.Lx270_1:
                                                                                        jmp   n64_call_builtin_icon_α
n61_disjunction_β:
                        mov              eax, dword ptr [rbp + 3696]
                        cmp              eax, 0
                                                                                        je    n61_disjunction_af
                                                                                        jmp   n61_disjunction_af
n61_disjunction_af:
                        add              dword ptr [rbp + 3696], 1
                        mov              eax, dword ptr [rbp + 3696]
                        cmp              eax, 1
                                                                                        je    n66_lit_string_α
                                                                                        jmp   n69_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_string_α:
                        mov              qword ptr [rbp + 4784], 1
                        mov              rax, qword ptr [rip + .Lx271_0]
                        mov              qword ptr [rbp + 4792], rax
                                                                                        jmp   n68_binop_α
.Lx271_0:
                        .quad            .Lx271_0_s
.Lx271_0_s:
                        .string          "2"
#-----------------------------------------------------------------------------------------------------------------------
n63_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 5120]
                        mov              qword ptr [rbp + 5088], rax
                        mov              rax, qword ptr [rbp + 5128]
                        mov              qword ptr [rbp + 5096], rax
                        .section         .rodata
.Lrkfn273:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn273]
                        lea              rsi, [rbp + 5088]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5072], rax
                        mov              qword ptr [rbp + 5080], rdx
                        cmp              eax, 99
                                                                                        je    n45_unmark_α
                                                                                        jmp   n45_unmark_α
n63_call_builtin_icon_β:
                                                                                        jmp   n45_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n64_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3664]
                        mov              qword ptr [rbp + 3616], rax
                        mov              rax, qword ptr [rbp + 3672]
                        mov              qword ptr [rbp + 3624], rax
                        mov              rax, qword ptr [rbp + 3680]
                        mov              qword ptr [rbp + 3632], rax
                        mov              rax, qword ptr [rbp + 3688]
                        mov              qword ptr [rbp + 3640], rax
                        .section         .rodata
.Lrkfn275:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn275]
                        lea              rsi, [rbp + 3616]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3600], rax
                        mov              qword ptr [rbp + 3608], rdx
                        cmp              eax, 99
                                                                                        je    n61_disjunction_β
                                                                                        jmp   n69_lit_string_α
n64_call_builtin_icon_β:
                                                                                        jmp   n61_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_real_α:
                        mov              qword ptr [rbp + 3808], 7
                        mov              rax, qword ptr [rip + .Lx276_0]
                        mov              qword ptr [rbp + 3816], rax
                                                                                        jmp   n70_call_proc_staged_α
n65_lit_real_β:
                                                                                        jmp   n61_disjunction_af
.Lx276_0:
                        .quad            4805957202776948736
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_string_α:
                        mov              qword ptr [rbp + 3824], 1
                        mov              rax, qword ptr [rip + .Lx277_0]
                        mov              qword ptr [rbp + 3832], rax
                                                                                        jmp   n61_disjunction_as
n66_lit_string_β:
                                                                                        jmp   n61_disjunction_af
.Lx277_0:
                        .quad            .Lx277_0_s
.Lx277_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n67_call_proc_staged_α:
                        lea              rsi, [rbp + 3760]
                        call             proc_Image_dcα
                                                                                        jmp   .Lx279_2
.Lx279_2:
                        mov              qword ptr [rbp + 3712], rax
                        mov              qword ptr [rbp + 3720], rdx
                        cmp              eax, 99
                                                                                        je    n61_disjunction_af
                                                                                        jmp   n61_disjunction_as
n67_call_proc_staged_β:
                                                                                        jmp   n61_disjunction_af
.Lx279_0:
                        .quad            .Lx279_0_s
.Lx279_0_s:
                        .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n68_binop_α:
                        mov              rdi, qword ptr [rbp + 4688]
                        mov              rsi, qword ptr [rbp + 4696]
                        mov              rdx, qword ptr [rbp + 4784]
                        mov              rcx, qword ptr [rbp + 4792]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 4672], rax
                        mov              qword ptr [rbp + 4680], rdx
                                                                                        jmp   n71_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n69_lit_string_α:
                        mov              qword ptr [rbp + 3424], 1
                        mov              rax, qword ptr [rip + .Lx281_0]
                        mov              qword ptr [rbp + 3432], rax
                                                                                        jmp   n72_disjunction_α
.Lx281_0:
                        .quad            .Lx281_0_s
.Lx281_0_s:
                        .string          "Image(0.0006) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n70_call_proc_staged_α:
                        lea              rsi, [rbp + 3808]
                        call             proc_Image_dcα
                                                                                        jmp   .Lx283_2
.Lx283_2:
                        mov              qword ptr [rbp + 3760], rax
                        mov              qword ptr [rbp + 3768], rdx
                        cmp              eax, 99
                                                                                        je    n61_disjunction_af
                                                                                        jmp   n67_call_proc_staged_α
n70_call_proc_staged_β:
                                                                                        jmp   n61_disjunction_af
.Lx283_0:
                        .quad            .Lx283_0_s
.Lx283_0_s:
                        .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n71_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 4672]
                        mov              qword ptr [rbp + 4640], rax
                        mov              rax, qword ptr [rbp + 4680]
                        mov              qword ptr [rbp + 4648], rax
                        .section         .rodata
.Lrkfn285:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn285]
                        lea              rsi, [rbp + 4640]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4624], rax
                        mov              qword ptr [rbp + 4632], rdx
                        cmp              eax, 99
                                                                                        je    n59_unmark_α
                                                                                        jmp   n73_call_builtin_icon_α
n71_call_builtin_icon_β:
                                                                                        jmp   n59_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n72_disjunction_α:
                        mov              qword ptr [rbp + 3440], 0
                        mov              qword ptr [rbp + 3448], 0
                        mov              dword ptr [rbp + 3456], 0
                                                                                        jmp   n75_lit_real_α
n72_disjunction_as:
                        mov              eax, dword ptr [rbp + 3456]
                        cmp              eax, 0
                                                                                        jne   .Lx287_0
                        mov              rax, qword ptr [rbp + 3472]
                        mov              qword ptr [rbp + 3440], rax
                        mov              rax, qword ptr [rbp + 3480]
                        mov              qword ptr [rbp + 3448], rax
                                                                                        jmp   n74_call_builtin_icon_α
.Lx287_0:
                        cmp              eax, 1
                                                                                        jne   .Lx287_1
                        mov              rax, qword ptr [rbp + 3584]
                        mov              qword ptr [rbp + 3440], rax
                        mov              rax, qword ptr [rbp + 3592]
                        mov              qword ptr [rbp + 3448], rax
                                                                                        jmp   n74_call_builtin_icon_α
.Lx287_1:
                                                                                        jmp   n74_call_builtin_icon_α
n72_disjunction_β:
                        mov              eax, dword ptr [rbp + 3456]
                        cmp              eax, 0
                                                                                        je    n72_disjunction_af
                                                                                        jmp   n72_disjunction_af
n72_disjunction_af:
                        add              dword ptr [rbp + 3456], 1
                        mov              eax, dword ptr [rbp + 3456]
                        cmp              eax, 1
                                                                                        je    n76_lit_string_α
                                                                                        jmp   n78_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n73_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 4624]
                        mov              qword ptr [rbp + 4592], rax
                        mov              rax, qword ptr [rbp + 4632]
                        mov              qword ptr [rbp + 4600], rax
                        .section         .rodata
.Lrkfn289:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn289]
                        lea              rsi, [rbp + 4592]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4576], rax
                        mov              qword ptr [rbp + 4584], rdx
                        cmp              eax, 99
                                                                                        je    n59_unmark_α
                                                                                        jmp   n59_unmark_α
n73_call_builtin_icon_β:
                                                                                        jmp   n59_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n74_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3424]
                        mov              qword ptr [rbp + 3376], rax
                        mov              rax, qword ptr [rbp + 3432]
                        mov              qword ptr [rbp + 3384], rax
                        mov              rax, qword ptr [rbp + 3440]
                        mov              qword ptr [rbp + 3392], rax
                        mov              rax, qword ptr [rbp + 3448]
                        mov              qword ptr [rbp + 3400], rax
                        .section         .rodata
.Lrkfn291:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn291]
                        lea              rsi, [rbp + 3376]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3360], rax
                        mov              qword ptr [rbp + 3368], rdx
                        cmp              eax, 99
                                                                                        je    n72_disjunction_β
                                                                                        jmp   n78_lit_string_α
n74_call_builtin_icon_β:
                                                                                        jmp   n72_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_real_α:
                        mov              qword ptr [rbp + 3568], 7
                        mov              rax, qword ptr [rip + .Lx292_0]
                        mov              qword ptr [rbp + 3576], rax
                                                                                        jmp   n79_call_proc_staged_α
n75_lit_real_β:
                                                                                        jmp   n72_disjunction_af
.Lx292_0:
                        .quad            4558673246493684321
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_string_α:
                        mov              qword ptr [rbp + 3584], 1
                        mov              rax, qword ptr [rip + .Lx293_0]
                        mov              qword ptr [rbp + 3592], rax
                                                                                        jmp   n72_disjunction_as
n76_lit_string_β:
                                                                                        jmp   n72_disjunction_af
.Lx293_0:
                        .quad            .Lx293_0_s
.Lx293_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n77_call_proc_staged_α:
                        lea              rsi, [rbp + 3520]
                        call             proc_Image_dcα
                                                                                        jmp   .Lx295_2
.Lx295_2:
                        mov              qword ptr [rbp + 3472], rax
                        mov              qword ptr [rbp + 3480], rdx
                        cmp              eax, 99
                                                                                        je    n72_disjunction_af
                                                                                        jmp   n72_disjunction_as
n77_call_proc_staged_β:
                                                                                        jmp   n72_disjunction_af
.Lx295_0:
                        .quad            .Lx295_0_s
.Lx295_0_s:
                        .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_string_α:
                        mov              qword ptr [rbp + 3184], 1
                        mov              rax, qword ptr [rip + .Lx296_0]
                        mov              qword ptr [rbp + 3192], rax
                                                                                        jmp   n80_disjunction_α
.Lx296_0:
                        .quad            .Lx296_0_s
.Lx296_0_s:
                        .string          "Image(2.0) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n79_call_proc_staged_α:
                        lea              rsi, [rbp + 3568]
                        call             proc_Image_dcα
                                                                                        jmp   .Lx298_2
.Lx298_2:
                        mov              qword ptr [rbp + 3520], rax
                        mov              qword ptr [rbp + 3528], rdx
                        cmp              eax, 99
                                                                                        je    n72_disjunction_af
                                                                                        jmp   n77_call_proc_staged_α
n79_call_proc_staged_β:
                                                                                        jmp   n72_disjunction_af
.Lx298_0:
                        .quad            .Lx298_0_s
.Lx298_0_s:
                        .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n80_disjunction_α:
                        mov              qword ptr [rbp + 3200], 0
                        mov              qword ptr [rbp + 3208], 0
                        mov              dword ptr [rbp + 3216], 0
                                                                                        jmp   n82_lit_real_α
n80_disjunction_as:
                        mov              eax, dword ptr [rbp + 3216]
                        cmp              eax, 0
                                                                                        jne   .Lx300_0
                        mov              rax, qword ptr [rbp + 3232]
                        mov              qword ptr [rbp + 3200], rax
                        mov              rax, qword ptr [rbp + 3240]
                        mov              qword ptr [rbp + 3208], rax
                                                                                        jmp   n81_call_builtin_icon_α
.Lx300_0:
                        cmp              eax, 1
                                                                                        jne   .Lx300_1
                        mov              rax, qword ptr [rbp + 3344]
                        mov              qword ptr [rbp + 3200], rax
                        mov              rax, qword ptr [rbp + 3352]
                        mov              qword ptr [rbp + 3208], rax
                                                                                        jmp   n81_call_builtin_icon_α
.Lx300_1:
                                                                                        jmp   n81_call_builtin_icon_α
n80_disjunction_β:
                        mov              eax, dword ptr [rbp + 3216]
                        cmp              eax, 0
                                                                                        je    n80_disjunction_af
                                                                                        jmp   n80_disjunction_af
n80_disjunction_af:
                        add              dword ptr [rbp + 3216], 1
                        mov              eax, dword ptr [rbp + 3216]
                        cmp              eax, 1
                                                                                        je    n83_lit_string_α
                                                                                        jmp   n85_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n81_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3184]
                        mov              qword ptr [rbp + 3136], rax
                        mov              rax, qword ptr [rbp + 3192]
                        mov              qword ptr [rbp + 3144], rax
                        mov              rax, qword ptr [rbp + 3200]
                        mov              qword ptr [rbp + 3152], rax
                        mov              rax, qword ptr [rbp + 3208]
                        mov              qword ptr [rbp + 3160], rax
                        .section         .rodata
.Lrkfn302:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn302]
                        lea              rsi, [rbp + 3136]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3120], rax
                        mov              qword ptr [rbp + 3128], rdx
                        cmp              eax, 99
                                                                                        je    n80_disjunction_β
                                                                                        jmp   n85_lit_string_α
n81_call_builtin_icon_β:
                                                                                        jmp   n80_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_real_α:
                        mov              qword ptr [rbp + 3328], 7
                        mov              rax, qword ptr [rip + .Lx303_0]
                        mov              qword ptr [rbp + 3336], rax
                                                                                        jmp   n86_call_proc_staged_α
n82_lit_real_β:
                                                                                        jmp   n80_disjunction_af
.Lx303_0:
                        .quad            4611686018427387904
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_string_α:
                        mov              qword ptr [rbp + 3344], 1
                        mov              rax, qword ptr [rip + .Lx304_0]
                        mov              qword ptr [rbp + 3352], rax
                                                                                        jmp   n80_disjunction_as
n83_lit_string_β:
                                                                                        jmp   n80_disjunction_af
.Lx304_0:
                        .quad            .Lx304_0_s
.Lx304_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n84_call_proc_staged_α:
                        lea              rsi, [rbp + 3280]
                        call             proc_Image_dcα
                                                                                        jmp   .Lx306_2
.Lx306_2:
                        mov              qword ptr [rbp + 3232], rax
                        mov              qword ptr [rbp + 3240], rdx
                        cmp              eax, 99
                                                                                        je    n80_disjunction_af
                                                                                        jmp   n80_disjunction_as
n84_call_proc_staged_β:
                                                                                        jmp   n80_disjunction_af
.Lx306_0:
                        .quad            .Lx306_0_s
.Lx306_0_s:
                        .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_string_α:
                        mov              qword ptr [rbp + 2944], 1
                        mov              rax, qword ptr [rip + .Lx307_0]
                        mov              qword ptr [rbp + 2952], rax
                                                                                        jmp   n87_disjunction_α
.Lx307_0:
                        .quad            .Lx307_0_s
.Lx307_0_s:
                        .string          "integer(2.0) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n86_call_proc_staged_α:
                        lea              rsi, [rbp + 3328]
                        call             proc_Image_dcα
                                                                                        jmp   .Lx309_2
.Lx309_2:
                        mov              qword ptr [rbp + 3280], rax
                        mov              qword ptr [rbp + 3288], rdx
                        cmp              eax, 99
                                                                                        je    n80_disjunction_af
                                                                                        jmp   n84_call_proc_staged_α
n86_call_proc_staged_β:
                                                                                        jmp   n80_disjunction_af
.Lx309_0:
                        .quad            .Lx309_0_s
.Lx309_0_s:
                        .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n87_disjunction_α:
                        mov              qword ptr [rbp + 2960], 0
                        mov              qword ptr [rbp + 2968], 0
                        mov              dword ptr [rbp + 2976], 0
                                                                                        jmp   n89_lit_real_α
n87_disjunction_as:
                        mov              eax, dword ptr [rbp + 2976]
                        cmp              eax, 0
                                                                                        jne   .Lx311_0
                        mov              rax, qword ptr [rbp + 2992]
                        mov              qword ptr [rbp + 2960], rax
                        mov              rax, qword ptr [rbp + 3000]
                        mov              qword ptr [rbp + 2968], rax
                                                                                        jmp   n88_call_builtin_icon_α
.Lx311_0:
                        cmp              eax, 1
                                                                                        jne   .Lx311_1
                        mov              rax, qword ptr [rbp + 3104]
                        mov              qword ptr [rbp + 2960], rax
                        mov              rax, qword ptr [rbp + 3112]
                        mov              qword ptr [rbp + 2968], rax
                                                                                        jmp   n88_call_builtin_icon_α
.Lx311_1:
                                                                                        jmp   n88_call_builtin_icon_α
n87_disjunction_β:
                        mov              eax, dword ptr [rbp + 2976]
                        cmp              eax, 0
                                                                                        je    n87_disjunction_af
                                                                                        jmp   n87_disjunction_af
n87_disjunction_af:
                        add              dword ptr [rbp + 2976], 1
                        mov              eax, dword ptr [rbp + 2976]
                        cmp              eax, 1
                                                                                        je    n90_lit_string_α
                                                                                        jmp   n92_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n88_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2944]
                        mov              qword ptr [rbp + 2896], rax
                        mov              rax, qword ptr [rbp + 2952]
                        mov              qword ptr [rbp + 2904], rax
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 2912], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 2920], rax
                        .section         .rodata
.Lrkfn313:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn313]
                        lea              rsi, [rbp + 2896]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2880], rax
                        mov              qword ptr [rbp + 2888], rdx
                        cmp              eax, 99
                                                                                        je    n87_disjunction_β
                                                                                        jmp   n92_lit_string_α
n88_call_builtin_icon_β:
                                                                                        jmp   n87_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_real_α:
                        mov              qword ptr [rbp + 3088], 7
                        mov              rax, qword ptr [rip + .Lx314_0]
                        mov              qword ptr [rbp + 3096], rax
                                                                                        jmp   n93_call_builtin_icon_α
n89_lit_real_β:
                                                                                        jmp   n87_disjunction_af
.Lx314_0:
                        .quad            4611686018427387904
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_string_α:
                        mov              qword ptr [rbp + 3104], 1
                        mov              rax, qword ptr [rip + .Lx315_0]
                        mov              qword ptr [rbp + 3112], rax
                                                                                        jmp   n87_disjunction_as
n90_lit_string_β:
                                                                                        jmp   n87_disjunction_af
.Lx315_0:
                        .quad            .Lx315_0_s
.Lx315_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n91_call_proc_staged_α:
                        lea              rsi, [rbp + 3040]
                        call             proc_Image_dcα
                                                                                        jmp   .Lx317_2
.Lx317_2:
                        mov              qword ptr [rbp + 2992], rax
                        mov              qword ptr [rbp + 3000], rdx
                        cmp              eax, 99
                                                                                        je    n87_disjunction_af
                                                                                        jmp   n87_disjunction_as
n91_call_proc_staged_β:
                                                                                        jmp   n87_disjunction_af
.Lx317_0:
                        .quad            .Lx317_0_s
.Lx317_0_s:
                        .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n92_lit_string_α:
                        mov              qword ptr [rbp + 2704], 1
                        mov              rax, qword ptr [rip + .Lx318_0]
                        mov              qword ptr [rbp + 2712], rax
                                                                                        jmp   n94_disjunction_α
.Lx318_0:
                        .quad            .Lx318_0_s
.Lx318_0_s:
                        .string          "integer(2.7) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n93_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3088]
                        mov              qword ptr [rbp + 3056], rax
                        mov              rax, qword ptr [rbp + 3096]
                        mov              qword ptr [rbp + 3064], rax
                        .section         .rodata
.Lrkfn320:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn320]
                        lea              rsi, [rbp + 3056]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3040], rax
                        mov              qword ptr [rbp + 3048], rdx
                        cmp              eax, 99
                                                                                        je    n87_disjunction_af
                                                                                        jmp   n91_call_proc_staged_α
n93_call_builtin_icon_β:
                                                                                        jmp   n87_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n94_disjunction_α:
                        mov              qword ptr [rbp + 2720], 0
                        mov              qword ptr [rbp + 2728], 0
                        mov              dword ptr [rbp + 2736], 0
                                                                                        jmp   n96_lit_real_α
n94_disjunction_as:
                        mov              eax, dword ptr [rbp + 2736]
                        cmp              eax, 0
                                                                                        jne   .Lx322_0
                        mov              rax, qword ptr [rbp + 2752]
                        mov              qword ptr [rbp + 2720], rax
                        mov              rax, qword ptr [rbp + 2760]
                        mov              qword ptr [rbp + 2728], rax
                                                                                        jmp   n95_call_builtin_icon_α
.Lx322_0:
                        cmp              eax, 1
                                                                                        jne   .Lx322_1
                        mov              rax, qword ptr [rbp + 2864]
                        mov              qword ptr [rbp + 2720], rax
                        mov              rax, qword ptr [rbp + 2872]
                        mov              qword ptr [rbp + 2728], rax
                                                                                        jmp   n95_call_builtin_icon_α
.Lx322_1:
                                                                                        jmp   n95_call_builtin_icon_α
n94_disjunction_β:
                        mov              eax, dword ptr [rbp + 2736]
                        cmp              eax, 0
                                                                                        je    n94_disjunction_af
                                                                                        jmp   n94_disjunction_af
n94_disjunction_af:
                        add              dword ptr [rbp + 2736], 1
                        mov              eax, dword ptr [rbp + 2736]
                        cmp              eax, 1
                                                                                        je    n97_lit_string_α
                                                                                        jmp   n99_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n95_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2704]
                        mov              qword ptr [rbp + 2656], rax
                        mov              rax, qword ptr [rbp + 2712]
                        mov              qword ptr [rbp + 2664], rax
                        mov              rax, qword ptr [rbp + 2720]
                        mov              qword ptr [rbp + 2672], rax
                        mov              rax, qword ptr [rbp + 2728]
                        mov              qword ptr [rbp + 2680], rax
                        .section         .rodata
.Lrkfn324:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn324]
                        lea              rsi, [rbp + 2656]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2640], rax
                        mov              qword ptr [rbp + 2648], rdx
                        cmp              eax, 99
                                                                                        je    n94_disjunction_β
                                                                                        jmp   n99_lit_string_α
n95_call_builtin_icon_β:
                                                                                        jmp   n94_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_real_α:
                        mov              qword ptr [rbp + 2848], 7
                        mov              rax, qword ptr [rip + .Lx325_0]
                        mov              qword ptr [rbp + 2856], rax
                                                                                        jmp   n100_call_builtin_icon_α
n96_lit_real_β:
                                                                                        jmp   n94_disjunction_af
.Lx325_0:
                        .quad            4613262278296967578
#-----------------------------------------------------------------------------------------------------------------------
n97_lit_string_α:
                        mov              qword ptr [rbp + 2864], 1
                        mov              rax, qword ptr [rip + .Lx326_0]
                        mov              qword ptr [rbp + 2872], rax
                                                                                        jmp   n94_disjunction_as
n97_lit_string_β:
                                                                                        jmp   n94_disjunction_af
.Lx326_0:
                        .quad            .Lx326_0_s
.Lx326_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n98_call_proc_staged_α:
                        lea              rsi, [rbp + 2800]
                        call             proc_Image_dcα
                                                                                        jmp   .Lx328_2
.Lx328_2:
                        mov              qword ptr [rbp + 2752], rax
                        mov              qword ptr [rbp + 2760], rdx
                        cmp              eax, 99
                                                                                        je    n94_disjunction_af
                                                                                        jmp   n94_disjunction_as
n98_call_proc_staged_β:
                                                                                        jmp   n94_disjunction_af
.Lx328_0:
                        .quad            .Lx328_0_s
.Lx328_0_s:
                        .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n99_lit_string_α:
                        mov              qword ptr [rbp + 2464], 1
                        mov              rax, qword ptr [rip + .Lx329_0]
                        mov              qword ptr [rbp + 2472], rax
                                                                                        jmp   n101_disjunction_α
.Lx329_0:
                        .quad            .Lx329_0_s
.Lx329_0_s:
                        .string          "integer(\".\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n100_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2848]
                        mov              qword ptr [rbp + 2816], rax
                        mov              rax, qword ptr [rbp + 2856]
                        mov              qword ptr [rbp + 2824], rax
                        .section         .rodata
.Lrkfn331:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn331]
                        lea              rsi, [rbp + 2816]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2800], rax
                        mov              qword ptr [rbp + 2808], rdx
                        cmp              eax, 99
                                                                                        je    n94_disjunction_af
                                                                                        jmp   n98_call_proc_staged_α
n100_call_builtin_icon_β:
                                                                                        jmp   n94_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n101_disjunction_α:
                        mov              qword ptr [rbp + 2480], 0
                        mov              qword ptr [rbp + 2488], 0
                        mov              dword ptr [rbp + 2496], 0
                                                                                        jmp   n103_lit_string_α
n101_disjunction_as:
                        mov              eax, dword ptr [rbp + 2496]
                        cmp              eax, 0
                                                                                        jne   .Lx333_0
                        mov              rax, qword ptr [rbp + 2512]
                        mov              qword ptr [rbp + 2480], rax
                        mov              rax, qword ptr [rbp + 2520]
                        mov              qword ptr [rbp + 2488], rax
                                                                                        jmp   n102_call_builtin_icon_α
.Lx333_0:
                        cmp              eax, 1
                                                                                        jne   .Lx333_1
                        mov              rax, qword ptr [rbp + 2624]
                        mov              qword ptr [rbp + 2480], rax
                        mov              rax, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 2488], rax
                                                                                        jmp   n102_call_builtin_icon_α
.Lx333_1:
                                                                                        jmp   n102_call_builtin_icon_α
n101_disjunction_β:
                        mov              eax, dword ptr [rbp + 2496]
                        cmp              eax, 0
                                                                                        je    n101_disjunction_af
                                                                                        jmp   n101_disjunction_af
n101_disjunction_af:
                        add              dword ptr [rbp + 2496], 1
                        mov              eax, dword ptr [rbp + 2496]
                        cmp              eax, 1
                                                                                        je    n104_lit_string_α
                                                                                        jmp   n106_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n102_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2464]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 2472]
                        mov              qword ptr [rbp + 2424], rax
                        mov              rax, qword ptr [rbp + 2480]
                        mov              qword ptr [rbp + 2432], rax
                        mov              rax, qword ptr [rbp + 2488]
                        mov              qword ptr [rbp + 2440], rax
                        .section         .rodata
.Lrkfn335:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn335]
                        lea              rsi, [rbp + 2416]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx
                        cmp              eax, 99
                                                                                        je    n101_disjunction_β
                                                                                        jmp   n106_lit_string_α
n102_call_builtin_icon_β:
                                                                                        jmp   n101_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n103_lit_string_α:
                        mov              qword ptr [rbp + 2608], 1
                        mov              rax, qword ptr [rip + .Lx336_0]
                        mov              qword ptr [rbp + 2616], rax
                                                                                        jmp   n107_call_builtin_icon_α
n103_lit_string_β:
                                                                                        jmp   n101_disjunction_af
.Lx336_0:
                        .quad            .Lx336_0_s
.Lx336_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n104_lit_string_α:
                        mov              qword ptr [rbp + 2624], 1
                        mov              rax, qword ptr [rip + .Lx337_0]
                        mov              qword ptr [rbp + 2632], rax
                                                                                        jmp   n101_disjunction_as
n104_lit_string_β:
                                                                                        jmp   n101_disjunction_af
.Lx337_0:
                        .quad            .Lx337_0_s
.Lx337_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n105_call_proc_staged_α:
                        lea              rsi, [rbp + 2560]
                        call             proc_Image_dcα
                                                                                        jmp   .Lx339_2
.Lx339_2:
                        mov              qword ptr [rbp + 2512], rax
                        mov              qword ptr [rbp + 2520], rdx
                        cmp              eax, 99
                                                                                        je    n101_disjunction_af
                                                                                        jmp   n101_disjunction_as
n105_call_proc_staged_β:
                                                                                        jmp   n101_disjunction_af
.Lx339_0:
                        .quad            .Lx339_0_s
.Lx339_0_s:
                        .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n106_lit_string_α:
                        mov              qword ptr [rbp + 2224], 1
                        mov              rax, qword ptr [rip + .Lx340_0]
                        mov              qword ptr [rbp + 2232], rax
                                                                                        jmp   n108_disjunction_α
.Lx340_0:
                        .quad            .Lx340_0_s
.Lx340_0_s:
                        .string          "integer(\".3\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n107_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2608]
                        mov              qword ptr [rbp + 2576], rax
                        mov              rax, qword ptr [rbp + 2616]
                        mov              qword ptr [rbp + 2584], rax
                        .section         .rodata
.Lrkfn342:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn342]
                        lea              rsi, [rbp + 2576]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2560], rax
                        mov              qword ptr [rbp + 2568], rdx
                        cmp              eax, 99
                                                                                        je    n101_disjunction_af
                                                                                        jmp   n105_call_proc_staged_α
n107_call_builtin_icon_β:
                                                                                        jmp   n101_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n108_disjunction_α:
                        mov              qword ptr [rbp + 2240], 0
                        mov              qword ptr [rbp + 2248], 0
                        mov              dword ptr [rbp + 2256], 0
                                                                                        jmp   n110_lit_string_α
n108_disjunction_as:
                        mov              eax, dword ptr [rbp + 2256]
                        cmp              eax, 0
                                                                                        jne   .Lx344_0
                        mov              rax, qword ptr [rbp + 2272]
                        mov              qword ptr [rbp + 2240], rax
                        mov              rax, qword ptr [rbp + 2280]
                        mov              qword ptr [rbp + 2248], rax
                                                                                        jmp   n109_call_builtin_icon_α
.Lx344_0:
                        cmp              eax, 1
                                                                                        jne   .Lx344_1
                        mov              rax, qword ptr [rbp + 2384]
                        mov              qword ptr [rbp + 2240], rax
                        mov              rax, qword ptr [rbp + 2392]
                        mov              qword ptr [rbp + 2248], rax
                                                                                        jmp   n109_call_builtin_icon_α
.Lx344_1:
                                                                                        jmp   n109_call_builtin_icon_α
n108_disjunction_β:
                        mov              eax, dword ptr [rbp + 2256]
                        cmp              eax, 0
                                                                                        je    n108_disjunction_af
                                                                                        jmp   n108_disjunction_af
n108_disjunction_af:
                        add              dword ptr [rbp + 2256], 1
                        mov              eax, dword ptr [rbp + 2256]
                        cmp              eax, 1
                                                                                        je    n111_lit_string_α
                                                                                        jmp   n113_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n109_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2224]
                        mov              qword ptr [rbp + 2176], rax
                        mov              rax, qword ptr [rbp + 2232]
                        mov              qword ptr [rbp + 2184], rax
                        mov              rax, qword ptr [rbp + 2240]
                        mov              qword ptr [rbp + 2192], rax
                        mov              rax, qword ptr [rbp + 2248]
                        mov              qword ptr [rbp + 2200], rax
                        .section         .rodata
.Lrkfn346:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn346]
                        lea              rsi, [rbp + 2176]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                        cmp              eax, 99
                                                                                        je    n108_disjunction_β
                                                                                        jmp   n113_lit_string_α
n109_call_builtin_icon_β:
                                                                                        jmp   n108_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n110_lit_string_α:
                        mov              qword ptr [rbp + 2368], 1
                        mov              rax, qword ptr [rip + .Lx347_0]
                        mov              qword ptr [rbp + 2376], rax
                                                                                        jmp   n114_call_builtin_icon_α
n110_lit_string_β:
                                                                                        jmp   n108_disjunction_af
.Lx347_0:
                        .quad            .Lx347_0_s
.Lx347_0_s:
                        .string          ".3"
#-----------------------------------------------------------------------------------------------------------------------
n111_lit_string_α:
                        mov              qword ptr [rbp + 2384], 1
                        mov              rax, qword ptr [rip + .Lx348_0]
                        mov              qword ptr [rbp + 2392], rax
                                                                                        jmp   n108_disjunction_as
n111_lit_string_β:
                                                                                        jmp   n108_disjunction_af
.Lx348_0:
                        .quad            .Lx348_0_s
.Lx348_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n112_call_proc_staged_α:
                        lea              rsi, [rbp + 2320]
                        call             proc_Image_dcα
                                                                                        jmp   .Lx350_2
.Lx350_2:
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                        cmp              eax, 99
                                                                                        je    n108_disjunction_af
                                                                                        jmp   n108_disjunction_as
n112_call_proc_staged_β:
                                                                                        jmp   n108_disjunction_af
.Lx350_0:
                        .quad            .Lx350_0_s
.Lx350_0_s:
                        .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n113_lit_string_α:
                        mov              qword ptr [rbp + 1984], 1
                        mov              rax, qword ptr [rip + .Lx351_0]
                        mov              qword ptr [rbp + 1992], rax
                                                                                        jmp   n115_disjunction_α
.Lx351_0:
                        .quad            .Lx351_0_s
.Lx351_0_s:
                        .string          "integer(\"0.3\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n114_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2368]
                        mov              qword ptr [rbp + 2336], rax
                        mov              rax, qword ptr [rbp + 2376]
                        mov              qword ptr [rbp + 2344], rax
                        .section         .rodata
.Lrkfn353:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn353]
                        lea              rsi, [rbp + 2336]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx
                        cmp              eax, 99
                                                                                        je    n108_disjunction_af
                                                                                        jmp   n112_call_proc_staged_α
n114_call_builtin_icon_β:
                                                                                        jmp   n108_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n115_disjunction_α:
                        mov              qword ptr [rbp + 2000], 0
                        mov              qword ptr [rbp + 2008], 0
                        mov              dword ptr [rbp + 2016], 0
                                                                                        jmp   n117_lit_string_α
n115_disjunction_as:
                        mov              eax, dword ptr [rbp + 2016]
                        cmp              eax, 0
                                                                                        jne   .Lx355_0
                        mov              rax, qword ptr [rbp + 2032]
                        mov              qword ptr [rbp + 2000], rax
                        mov              rax, qword ptr [rbp + 2040]
                        mov              qword ptr [rbp + 2008], rax
                                                                                        jmp   n116_call_builtin_icon_α
.Lx355_0:
                        cmp              eax, 1
                                                                                        jne   .Lx355_1
                        mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 2000], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 2008], rax
                                                                                        jmp   n116_call_builtin_icon_α
.Lx355_1:
                                                                                        jmp   n116_call_builtin_icon_α
n115_disjunction_β:
                        mov              eax, dword ptr [rbp + 2016]
                        cmp              eax, 0
                                                                                        je    n115_disjunction_af
                                                                                        jmp   n115_disjunction_af
n115_disjunction_af:
                        add              dword ptr [rbp + 2016], 1
                        mov              eax, dword ptr [rbp + 2016]
                        cmp              eax, 1
                                                                                        je    n118_lit_string_α
                                                                                        jmp   n120_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n116_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1984]
                        mov              qword ptr [rbp + 1936], rax
                        mov              rax, qword ptr [rbp + 1992]
                        mov              qword ptr [rbp + 1944], rax
                        mov              rax, qword ptr [rbp + 2000]
                        mov              qword ptr [rbp + 1952], rax
                        mov              rax, qword ptr [rbp + 2008]
                        mov              qword ptr [rbp + 1960], rax
                        .section         .rodata
.Lrkfn357:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn357]
                        lea              rsi, [rbp + 1936]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1920], rax
                        mov              qword ptr [rbp + 1928], rdx
                        cmp              eax, 99
                                                                                        je    n115_disjunction_β
                                                                                        jmp   n120_lit_string_α
n116_call_builtin_icon_β:
                                                                                        jmp   n115_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n117_lit_string_α:
                        mov              qword ptr [rbp + 2128], 1
                        mov              rax, qword ptr [rip + .Lx358_0]
                        mov              qword ptr [rbp + 2136], rax
                                                                                        jmp   n121_call_builtin_icon_α
n117_lit_string_β:
                                                                                        jmp   n115_disjunction_af
.Lx358_0:
                        .quad            .Lx358_0_s
.Lx358_0_s:
                        .string          "0.3"
#-----------------------------------------------------------------------------------------------------------------------
n118_lit_string_α:
                        mov              qword ptr [rbp + 2144], 1
                        mov              rax, qword ptr [rip + .Lx359_0]
                        mov              qword ptr [rbp + 2152], rax
                                                                                        jmp   n115_disjunction_as
n118_lit_string_β:
                                                                                        jmp   n115_disjunction_af
.Lx359_0:
                        .quad            .Lx359_0_s
.Lx359_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n119_call_proc_staged_α:
                        lea              rsi, [rbp + 2080]
                        call             proc_Image_dcα
                                                                                        jmp   .Lx361_2
.Lx361_2:
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx
                        cmp              eax, 99
                                                                                        je    n115_disjunction_af
                                                                                        jmp   n115_disjunction_as
n119_call_proc_staged_β:
                                                                                        jmp   n115_disjunction_af
.Lx361_0:
                        .quad            .Lx361_0_s
.Lx361_0_s:
                        .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n120_lit_string_α:
                        mov              qword ptr [rbp + 1744], 1
                        mov              rax, qword ptr [rip + .Lx362_0]
                        mov              qword ptr [rbp + 1752], rax
                                                                                        jmp   n122_disjunction_α
.Lx362_0:
                        .quad            .Lx362_0_s
.Lx362_0_s:
                        .string          "integer(\" . 3\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n121_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2128]
                        mov              qword ptr [rbp + 2096], rax
                        mov              rax, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 2104], rax
                        .section         .rodata
.Lrkfn364:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn364]
                        lea              rsi, [rbp + 2096]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2080], rax
                        mov              qword ptr [rbp + 2088], rdx
                        cmp              eax, 99
                                                                                        je    n115_disjunction_af
                                                                                        jmp   n119_call_proc_staged_α
n121_call_builtin_icon_β:
                                                                                        jmp   n115_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n122_disjunction_α:
                        mov              qword ptr [rbp + 1760], 0
                        mov              qword ptr [rbp + 1768], 0
                        mov              dword ptr [rbp + 1776], 0
                                                                                        jmp   n124_lit_string_α
n122_disjunction_as:
                        mov              eax, dword ptr [rbp + 1776]
                        cmp              eax, 0
                                                                                        jne   .Lx366_0
                        mov              rax, qword ptr [rbp + 1792]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 1768], rax
                                                                                        jmp   n123_call_builtin_icon_α
.Lx366_0:
                        cmp              eax, 1
                                                                                        jne   .Lx366_1
                        mov              rax, qword ptr [rbp + 1904]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 1912]
                        mov              qword ptr [rbp + 1768], rax
                                                                                        jmp   n123_call_builtin_icon_α
.Lx366_1:
                                                                                        jmp   n123_call_builtin_icon_α
n122_disjunction_β:
                        mov              eax, dword ptr [rbp + 1776]
                        cmp              eax, 0
                                                                                        je    n122_disjunction_af
                                                                                        jmp   n122_disjunction_af
n122_disjunction_af:
                        add              dword ptr [rbp + 1776], 1
                        mov              eax, dword ptr [rbp + 1776]
                        cmp              eax, 1
                                                                                        je    n125_lit_string_α
                                                                                        jmp   n127_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n123_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 1696], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 1704], rax
                        mov              rax, qword ptr [rbp + 1760]
                        mov              qword ptr [rbp + 1712], rax
                        mov              rax, qword ptr [rbp + 1768]
                        mov              qword ptr [rbp + 1720], rax
                        .section         .rodata
.Lrkfn368:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn368]
                        lea              rsi, [rbp + 1696]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
                        cmp              eax, 99
                                                                                        je    n122_disjunction_β
                                                                                        jmp   n127_lit_string_α
n123_call_builtin_icon_β:
                                                                                        jmp   n122_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n124_lit_string_α:
                        mov              qword ptr [rbp + 1888], 1
                        mov              rax, qword ptr [rip + .Lx369_0]
                        mov              qword ptr [rbp + 1896], rax
                                                                                        jmp   n128_call_builtin_icon_α
n124_lit_string_β:
                                                                                        jmp   n122_disjunction_af
.Lx369_0:
                        .quad            .Lx369_0_s
.Lx369_0_s:
                        .string          " . 3"
#-----------------------------------------------------------------------------------------------------------------------
n125_lit_string_α:
                        mov              qword ptr [rbp + 1904], 1
                        mov              rax, qword ptr [rip + .Lx370_0]
                        mov              qword ptr [rbp + 1912], rax
                                                                                        jmp   n122_disjunction_as
n125_lit_string_β:
                                                                                        jmp   n122_disjunction_af
.Lx370_0:
                        .quad            .Lx370_0_s
.Lx370_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n126_call_proc_staged_α:
                        lea              rsi, [rbp + 1840]
                        call             proc_Image_dcα
                                                                                        jmp   .Lx372_2
.Lx372_2:
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                        cmp              eax, 99
                                                                                        je    n122_disjunction_af
                                                                                        jmp   n122_disjunction_as
n126_call_proc_staged_β:
                                                                                        jmp   n122_disjunction_af
.Lx372_0:
                        .quad            .Lx372_0_s
.Lx372_0_s:
                        .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_string_α:
                        mov              qword ptr [rbp + 1504], 1
                        mov              rax, qword ptr [rip + .Lx373_0]
                        mov              qword ptr [rbp + 1512], rax
                                                                                        jmp   n129_disjunction_α
.Lx373_0:
                        .quad            .Lx373_0_s
.Lx373_0_s:
                        .string          "integer(\"e2\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n128_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1888]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 1896]
                        mov              qword ptr [rbp + 1864], rax
                        .section         .rodata
.Lrkfn375:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn375]
                        lea              rsi, [rbp + 1856]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
                        cmp              eax, 99
                                                                                        je    n122_disjunction_af
                                                                                        jmp   n126_call_proc_staged_α
n128_call_builtin_icon_β:
                                                                                        jmp   n122_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n129_disjunction_α:
                        mov              qword ptr [rbp + 1520], 0
                        mov              qword ptr [rbp + 1528], 0
                        mov              dword ptr [rbp + 1536], 0
                                                                                        jmp   n131_lit_string_α
n129_disjunction_as:
                        mov              eax, dword ptr [rbp + 1536]
                        cmp              eax, 0
                                                                                        jne   .Lx377_0
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1528], rax
                                                                                        jmp   n130_call_builtin_icon_α
.Lx377_0:
                        cmp              eax, 1
                                                                                        jne   .Lx377_1
                        mov              rax, qword ptr [rbp + 1664]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1672]
                        mov              qword ptr [rbp + 1528], rax
                                                                                        jmp   n130_call_builtin_icon_α
.Lx377_1:
                                                                                        jmp   n130_call_builtin_icon_α
n129_disjunction_β:
                        mov              eax, dword ptr [rbp + 1536]
                        cmp              eax, 0
                                                                                        je    n129_disjunction_af
                                                                                        jmp   n129_disjunction_af
n129_disjunction_af:
                        add              dword ptr [rbp + 1536], 1
                        mov              eax, dword ptr [rbp + 1536]
                        cmp              eax, 1
                                                                                        je    n132_lit_string_α
                                                                                        jmp   n134_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n130_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1464], rax
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1480], rax
                        .section         .rodata
.Lrkfn379:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn379]
                        lea              rsi, [rbp + 1456]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                        cmp              eax, 99
                                                                                        je    n129_disjunction_β
                                                                                        jmp   n134_lit_string_α
n130_call_builtin_icon_β:
                                                                                        jmp   n129_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n131_lit_string_α:
                        mov              qword ptr [rbp + 1648], 1
                        mov              rax, qword ptr [rip + .Lx380_0]
                        mov              qword ptr [rbp + 1656], rax
                                                                                        jmp   n135_call_builtin_icon_α
n131_lit_string_β:
                                                                                        jmp   n129_disjunction_af
.Lx380_0:
                        .quad            .Lx380_0_s
.Lx380_0_s:
                        .string          "e2"
#-----------------------------------------------------------------------------------------------------------------------
n132_lit_string_α:
                        mov              qword ptr [rbp + 1664], 1
                        mov              rax, qword ptr [rip + .Lx381_0]
                        mov              qword ptr [rbp + 1672], rax
                                                                                        jmp   n129_disjunction_as
n132_lit_string_β:
                                                                                        jmp   n129_disjunction_af
.Lx381_0:
                        .quad            .Lx381_0_s
.Lx381_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n133_call_proc_staged_α:
                        lea              rsi, [rbp + 1600]
                        call             proc_Image_dcα
                                                                                        jmp   .Lx383_2
.Lx383_2:
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                        cmp              eax, 99
                                                                                        je    n129_disjunction_af
                                                                                        jmp   n129_disjunction_as
n133_call_proc_staged_β:
                                                                                        jmp   n129_disjunction_af
.Lx383_0:
                        .quad            .Lx383_0_s
.Lx383_0_s:
                        .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n134_lit_string_α:
                        mov              qword ptr [rbp + 1264], 1
                        mov              rax, qword ptr [rip + .Lx384_0]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n136_disjunction_α
.Lx384_0:
                        .quad            .Lx384_0_s
.Lx384_0_s:
                        .string          "integer(\"3e500\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n135_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1648]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 1656]
                        mov              qword ptr [rbp + 1624], rax
                        .section         .rodata
.Lrkfn386:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn386]
                        lea              rsi, [rbp + 1616]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                        cmp              eax, 99
                                                                                        je    n129_disjunction_af
                                                                                        jmp   n133_call_proc_staged_α
n135_call_builtin_icon_β:
                                                                                        jmp   n129_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n136_disjunction_α:
                        mov              qword ptr [rbp + 1280], 0
                        mov              qword ptr [rbp + 1288], 0
                        mov              dword ptr [rbp + 1296], 0
                                                                                        jmp   n138_lit_string_α
n136_disjunction_as:
                        mov              eax, dword ptr [rbp + 1296]
                        cmp              eax, 0
                                                                                        jne   .Lx388_0
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1288], rax
                                                                                        jmp   n137_call_builtin_icon_α
.Lx388_0:
                        cmp              eax, 1
                                                                                        jne   .Lx388_1
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1288], rax
                                                                                        jmp   n137_call_builtin_icon_α
.Lx388_1:
                                                                                        jmp   n137_call_builtin_icon_α
n136_disjunction_β:
                        mov              eax, dword ptr [rbp + 1296]
                        cmp              eax, 0
                                                                                        je    n136_disjunction_af
                                                                                        jmp   n136_disjunction_af
n136_disjunction_af:
                        add              dword ptr [rbp + 1296], 1
                        mov              eax, dword ptr [rbp + 1296]
                        cmp              eax, 1
                                                                                        je    n139_lit_string_α
                                                                                        jmp   n141_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n137_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1224], rax
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1240], rax
                        .section         .rodata
.Lrkfn390:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn390]
                        lea              rsi, [rbp + 1216]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                        cmp              eax, 99
                                                                                        je    n136_disjunction_β
                                                                                        jmp   n141_lit_string_α
n137_call_builtin_icon_β:
                                                                                        jmp   n136_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n138_lit_string_α:
                        mov              qword ptr [rbp + 1408], 1
                        mov              rax, qword ptr [rip + .Lx391_0]
                        mov              qword ptr [rbp + 1416], rax
                                                                                        jmp   n142_call_builtin_icon_α
n138_lit_string_β:
                                                                                        jmp   n136_disjunction_af
.Lx391_0:
                        .quad            .Lx391_0_s
.Lx391_0_s:
                        .string          "3e500"
#-----------------------------------------------------------------------------------------------------------------------
n139_lit_string_α:
                        mov              qword ptr [rbp + 1424], 1
                        mov              rax, qword ptr [rip + .Lx392_0]
                        mov              qword ptr [rbp + 1432], rax
                                                                                        jmp   n136_disjunction_as
n139_lit_string_β:
                                                                                        jmp   n136_disjunction_af
.Lx392_0:
                        .quad            .Lx392_0_s
.Lx392_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n140_call_proc_staged_α:
                        lea              rsi, [rbp + 1360]
                        call             proc_Image_dcα
                                                                                        jmp   .Lx394_2
.Lx394_2:
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                        cmp              eax, 99
                                                                                        je    n136_disjunction_af
                                                                                        jmp   n136_disjunction_as
n140_call_proc_staged_β:
                                                                                        jmp   n136_disjunction_af
.Lx394_0:
                        .quad            .Lx394_0_s
.Lx394_0_s:
                        .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n141_lit_string_α:
                        mov              qword ptr [rbp + 1024], 1
                        mov              rax, qword ptr [rip + .Lx395_0]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n143_disjunction_α
.Lx395_0:
                        .quad            .Lx395_0_s
.Lx395_0_s:
                        .string          "numeric(2.0) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n142_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 1384], rax
                        .section         .rodata
.Lrkfn397:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn397]
                        lea              rsi, [rbp + 1376]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                        cmp              eax, 99
                                                                                        je    n136_disjunction_af
                                                                                        jmp   n140_call_proc_staged_α
n142_call_builtin_icon_β:
                                                                                        jmp   n136_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n143_disjunction_α:
                        mov              qword ptr [rbp + 1040], 0
                        mov              qword ptr [rbp + 1048], 0
                        mov              dword ptr [rbp + 1056], 0
                                                                                        jmp   n145_lit_real_α
n143_disjunction_as:
                        mov              eax, dword ptr [rbp + 1056]
                        cmp              eax, 0
                                                                                        jne   .Lx399_0
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n144_call_builtin_icon_α
.Lx399_0:
                        cmp              eax, 1
                                                                                        jne   .Lx399_1
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n144_call_builtin_icon_α
.Lx399_1:
                                                                                        jmp   n144_call_builtin_icon_α
n143_disjunction_β:
                        mov              eax, dword ptr [rbp + 1056]
                        cmp              eax, 0
                                                                                        je    n143_disjunction_af
                                                                                        jmp   n143_disjunction_af
n143_disjunction_af:
                        add              dword ptr [rbp + 1056], 1
                        mov              eax, dword ptr [rbp + 1056]
                        cmp              eax, 1
                                                                                        je    n146_lit_string_α
                                                                                        jmp   n148_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n144_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 984], rax
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1000], rax
                        .section         .rodata
.Lrkfn401:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn401]
                        lea              rsi, [rbp + 976]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        cmp              eax, 99
                                                                                        je    n143_disjunction_β
                                                                                        jmp   n148_lit_string_α
n144_call_builtin_icon_β:
                                                                                        jmp   n143_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n145_lit_real_α:
                        mov              qword ptr [rbp + 1168], 7
                        mov              rax, qword ptr [rip + .Lx402_0]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n149_call_builtin_icon_α
n145_lit_real_β:
                                                                                        jmp   n143_disjunction_af
.Lx402_0:
                        .quad            4611686018427387904
#-----------------------------------------------------------------------------------------------------------------------
n146_lit_string_α:
                        mov              qword ptr [rbp + 1184], 1
                        mov              rax, qword ptr [rip + .Lx403_0]
                        mov              qword ptr [rbp + 1192], rax
                                                                                        jmp   n143_disjunction_as
n146_lit_string_β:
                                                                                        jmp   n143_disjunction_af
.Lx403_0:
                        .quad            .Lx403_0_s
.Lx403_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n147_call_proc_staged_α:
                        lea              rsi, [rbp + 1120]
                        call             proc_Image_dcα
                                                                                        jmp   .Lx405_2
.Lx405_2:
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        cmp              eax, 99
                                                                                        je    n143_disjunction_af
                                                                                        jmp   n143_disjunction_as
n147_call_proc_staged_β:
                                                                                        jmp   n143_disjunction_af
.Lx405_0:
                        .quad            .Lx405_0_s
.Lx405_0_s:
                        .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n148_lit_string_α:
                        mov              qword ptr [rbp + 784], 1
                        mov              rax, qword ptr [rip + .Lx406_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n150_disjunction_α
.Lx406_0:
                        .quad            .Lx406_0_s
.Lx406_0_s:
                        .string          "numeric(2.7) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n149_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1144], rax
                        .section         .rodata
.Lrkfn408:              .string          "numeric"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn408]
                        lea              rsi, [rbp + 1136]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                        cmp              eax, 99
                                                                                        je    n143_disjunction_af
                                                                                        jmp   n147_call_proc_staged_α
n149_call_builtin_icon_β:
                                                                                        jmp   n143_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n150_disjunction_α:
                        mov              qword ptr [rbp + 800], 0
                        mov              qword ptr [rbp + 808], 0
                        mov              dword ptr [rbp + 816], 0
                                                                                        jmp   n152_lit_real_α
n150_disjunction_as:
                        mov              eax, dword ptr [rbp + 816]
                        cmp              eax, 0
                                                                                        jne   .Lx410_0
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n151_call_builtin_icon_α
.Lx410_0:
                        cmp              eax, 1
                                                                                        jne   .Lx410_1
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n151_call_builtin_icon_α
.Lx410_1:
                                                                                        jmp   n151_call_builtin_icon_α
n150_disjunction_β:
                        mov              eax, dword ptr [rbp + 816]
                        cmp              eax, 0
                                                                                        je    n150_disjunction_af
                                                                                        jmp   n150_disjunction_af
n150_disjunction_af:
                        add              dword ptr [rbp + 816], 1
                        mov              eax, dword ptr [rbp + 816]
                        cmp              eax, 1
                                                                                        je    n153_lit_string_α
                                                                                        jmp   n155_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n151_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 744], rax
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 760], rax
                        .section         .rodata
.Lrkfn412:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn412]
                        lea              rsi, [rbp + 736]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              eax, 99
                                                                                        je    n150_disjunction_β
                                                                                        jmp   n155_lit_string_α
n151_call_builtin_icon_β:
                                                                                        jmp   n150_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n152_lit_real_α:
                        mov              qword ptr [rbp + 928], 7
                        mov              rax, qword ptr [rip + .Lx413_0]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n156_call_builtin_icon_α
n152_lit_real_β:
                                                                                        jmp   n150_disjunction_af
.Lx413_0:
                        .quad            4613262278296967578
#-----------------------------------------------------------------------------------------------------------------------
n153_lit_string_α:
                        mov              qword ptr [rbp + 944], 1
                        mov              rax, qword ptr [rip + .Lx414_0]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n150_disjunction_as
n153_lit_string_β:
                                                                                        jmp   n150_disjunction_af
.Lx414_0:
                        .quad            .Lx414_0_s
.Lx414_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n154_call_proc_staged_α:
                        lea              rsi, [rbp + 880]
                        call             proc_Image_dcα
                                                                                        jmp   .Lx416_2
.Lx416_2:
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              eax, 99
                                                                                        je    n150_disjunction_af
                                                                                        jmp   n150_disjunction_as
n154_call_proc_staged_β:
                                                                                        jmp   n150_disjunction_af
.Lx416_0:
                        .quad            .Lx416_0_s
.Lx416_0_s:
                        .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n155_lit_string_α:
                        mov              qword ptr [rbp + 544], 1
                        mov              rax, qword ptr [rip + .Lx417_0]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n157_disjunction_α
.Lx417_0:
                        .quad            .Lx417_0_s
.Lx417_0_s:
                        .string          "numeric(\".\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n156_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 904], rax
                        .section         .rodata
.Lrkfn419:              .string          "numeric"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn419]
                        lea              rsi, [rbp + 896]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              eax, 99
                                                                                        je    n150_disjunction_af
                                                                                        jmp   n154_call_proc_staged_α
n156_call_builtin_icon_β:
                                                                                        jmp   n150_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n157_disjunction_α:
                        mov              qword ptr [rbp + 560], 0
                        mov              qword ptr [rbp + 568], 0
                        mov              dword ptr [rbp + 576], 0
                                                                                        jmp   n159_lit_string_α
n157_disjunction_as:
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 0
                                                                                        jne   .Lx421_0
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n158_call_builtin_icon_α
.Lx421_0:
                        cmp              eax, 1
                                                                                        jne   .Lx421_1
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n158_call_builtin_icon_α
.Lx421_1:
                                                                                        jmp   n158_call_builtin_icon_α
n157_disjunction_β:
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 0
                                                                                        je    n157_disjunction_af
                                                                                        jmp   n157_disjunction_af
n157_disjunction_af:
                        add              dword ptr [rbp + 576], 1
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 1
                                                                                        je    n160_lit_string_α
                                                                                        jmp   n162_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n158_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 504], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 520], rax
                        .section         .rodata
.Lrkfn423:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn423]
                        lea              rsi, [rbp + 496]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 99
                                                                                        je    n157_disjunction_β
                                                                                        jmp   n162_lit_string_α
n158_call_builtin_icon_β:
                                                                                        jmp   n157_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n159_lit_string_α:
                        mov              qword ptr [rbp + 688], 1
                        mov              rax, qword ptr [rip + .Lx424_0]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n163_call_builtin_icon_α
n159_lit_string_β:
                                                                                        jmp   n157_disjunction_af
.Lx424_0:
                        .quad            .Lx424_0_s
.Lx424_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n160_lit_string_α:
                        mov              qword ptr [rbp + 704], 1
                        mov              rax, qword ptr [rip + .Lx425_0]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n157_disjunction_as
n160_lit_string_β:
                                                                                        jmp   n157_disjunction_af
.Lx425_0:
                        .quad            .Lx425_0_s
.Lx425_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n161_call_proc_staged_α:
                        lea              rsi, [rbp + 640]
                        call             proc_Image_dcα
                                                                                        jmp   .Lx427_2
.Lx427_2:
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 99
                                                                                        je    n157_disjunction_af
                                                                                        jmp   n157_disjunction_as
n161_call_proc_staged_β:
                                                                                        jmp   n157_disjunction_af
.Lx427_0:
                        .quad            .Lx427_0_s
.Lx427_0_s:
                        .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n162_lit_string_α:
                        mov              qword ptr [rbp + 304], 1
                        mov              rax, qword ptr [rip + .Lx428_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n164_disjunction_α
.Lx428_0:
                        .quad            .Lx428_0_s
.Lx428_0_s:
                        .string          "numeric(\".3\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n163_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 664], rax
                        .section         .rodata
.Lrkfn430:              .string          "numeric"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn430]
                        lea              rsi, [rbp + 656]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              eax, 99
                                                                                        je    n157_disjunction_af
                                                                                        jmp   n161_call_proc_staged_α
n163_call_builtin_icon_β:
                                                                                        jmp   n157_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n164_disjunction_α:
                        mov              qword ptr [rbp + 320], 0
                        mov              qword ptr [rbp + 328], 0
                        mov              dword ptr [rbp + 336], 0
                                                                                        jmp   n166_lit_string_α
n164_disjunction_as:
                        mov              eax, dword ptr [rbp + 336]
                        cmp              eax, 0
                                                                                        jne   .Lx432_0
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n165_call_builtin_icon_α
.Lx432_0:
                        cmp              eax, 1
                                                                                        jne   .Lx432_1
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n165_call_builtin_icon_α
.Lx432_1:
                                                                                        jmp   n165_call_builtin_icon_α
n164_disjunction_β:
                        mov              eax, dword ptr [rbp + 336]
                        cmp              eax, 0
                                                                                        je    n164_disjunction_af
                                                                                        jmp   n164_disjunction_af
n164_disjunction_af:
                        add              dword ptr [rbp + 336], 1
                        mov              eax, dword ptr [rbp + 336]
                        cmp              eax, 1
                                                                                        je    n167_lit_string_α
                                                                                        jmp   n169_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n165_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 280], rax
                        .section         .rodata
.Lrkfn434:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn434]
                        lea              rsi, [rbp + 256]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n164_disjunction_β
                                                                                        jmp   n169_lit_string_α
n165_call_builtin_icon_β:
                                                                                        jmp   n164_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n166_lit_string_α:
                        mov              qword ptr [rbp + 448], 1
                        mov              rax, qword ptr [rip + .Lx435_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n170_call_builtin_icon_α
n166_lit_string_β:
                                                                                        jmp   n164_disjunction_af
.Lx435_0:
                        .quad            .Lx435_0_s
.Lx435_0_s:
                        .string          ".3"
#-----------------------------------------------------------------------------------------------------------------------
n167_lit_string_α:
                        mov              qword ptr [rbp + 464], 1
                        mov              rax, qword ptr [rip + .Lx436_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n164_disjunction_as
n167_lit_string_β:
                                                                                        jmp   n164_disjunction_af
.Lx436_0:
                        .quad            .Lx436_0_s
.Lx436_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n168_call_proc_staged_α:
                        lea              rsi, [rbp + 400]
                        call             proc_Image_dcα
                                                                                        jmp   .Lx438_2
.Lx438_2:
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 99
                                                                                        je    n164_disjunction_af
                                                                                        jmp   n164_disjunction_as
n168_call_proc_staged_β:
                                                                                        jmp   n164_disjunction_af
.Lx438_0:
                        .quad            .Lx438_0_s
.Lx438_0_s:
                        .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n169_lit_string_α:
                        mov              qword ptr [rbp + 64], 1
                        mov              rax, qword ptr [rip + .Lx439_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n171_disjunction_α
.Lx439_0:
                        .quad            .Lx439_0_s
.Lx439_0_s:
                        .string          "numeric(\"0.3\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n170_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 424], rax
                        .section         .rodata
.Lrkfn441:              .string          "numeric"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn441]
                        lea              rsi, [rbp + 416]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    n164_disjunction_af
                                                                                        jmp   n168_call_proc_staged_α
n170_call_builtin_icon_β:
                                                                                        jmp   n164_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n171_disjunction_α:
                        mov              qword ptr [rbp + 80], 0
                        mov              qword ptr [rbp + 88], 0
                        mov              dword ptr [rbp + 96], 0
                                                                                        jmp   n173_lit_string_α
n171_disjunction_as:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 0
                                                                                        jne   .Lx443_0
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n172_call_builtin_icon_α
.Lx443_0:
                        cmp              eax, 1
                                                                                        jne   .Lx443_1
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n172_call_builtin_icon_α
.Lx443_1:
                                                                                        jmp   n172_call_builtin_icon_α
n171_disjunction_β:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 0
                                                                                        je    n171_disjunction_af
                                                                                        jmp   n171_disjunction_af
n171_disjunction_af:
                        add              dword ptr [rbp + 96], 1
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 1
                                                                                        je    n174_lit_string_α
                                                                                        jmp   proc_p1_ω
#-----------------------------------------------------------------------------------------------------------------------
n172_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 24], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 40], rax
                        .section         .rodata
.Lrkfn445:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn445]
                        lea              rsi, [rbp + 16]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 99
                                                                                        je    n171_disjunction_β
                                                                                        jmp   proc_p1_ω
n172_call_builtin_icon_β:
                                                                                        jmp   n171_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n173_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx446_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n176_call_builtin_icon_α
n173_lit_string_β:
                                                                                        jmp   n171_disjunction_af
.Lx446_0:
                        .quad            .Lx446_0_s
.Lx446_0_s:
                        .string          "0.3"
#-----------------------------------------------------------------------------------------------------------------------
n174_lit_string_α:
                        mov              qword ptr [rbp + 224], 1
                        mov              rax, qword ptr [rip + .Lx447_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n171_disjunction_as
n174_lit_string_β:
                                                                                        jmp   n171_disjunction_af
.Lx447_0:
                        .quad            .Lx447_0_s
.Lx447_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n175_call_proc_staged_α:
                        lea              rsi, [rbp + 160]
                        call             proc_Image_dcα
                                                                                        jmp   .Lx449_2
.Lx449_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n171_disjunction_af
                                                                                        jmp   n171_disjunction_as
n175_call_proc_staged_β:
                                                                                        jmp   n171_disjunction_af
.Lx449_0:
                        .quad            .Lx449_0_s
.Lx449_0_s:
                        .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n176_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 184], rax
                        .section         .rodata
.Lrkfn451:              .string          "numeric"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn451]
                        lea              rsi, [rbp + 176]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n171_disjunction_af
                                                                                        jmp   n175_call_proc_staged_α
n176_call_builtin_icon_β:
                                                                                        jmp   n171_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
proc_p1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_p1_β:
                                                                                        jmp   proc_p1_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_p1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 5720]
                        lea              rsp, [rbp + 5744]
                        mov              rbp, [rbp + 5736]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_p1_ω:
                        mov              rax, [rbp + 5728]
                        lea              rsp, [rbp + 5744]
                        mov              rbp, [rbp + 5736]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_p1_dcα:
                        pop              r11
                        sub              rsp, 5760
                        mov              qword ptr [rsp + 5736], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 5712], r11
                        lea              rax, [rip + .Lx452_2]
                        mov              qword ptr [rbp + 5720], rax
                        lea              rax, [rip + .Lx452_3]
                        mov              qword ptr [rbp + 5728], rax
                        mov              rdi, rbp
                        mov              esi, 5696
                        mov              edx, 5712
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_p1_α_body
.Lx452_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -5744
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx452_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -5744
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_p2_α
proc_p2_α:
                        .global          proc_p2_α
                        .global          proc_p2_β
                        .global          proc_p2_γ
                        .global          proc_p2_ω
                        sub              rsp, 12288
                        mov              [rsp + 12264], rcx
                        mov              [rsp + 12272], rdx
                        mov              [rsp + 12280], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 12224
                        mov              edx, 12256
                        call             rt_jmp_frame_lexprep2@PLT
proc_p2_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n453_lit_string_α:
                        mov              qword ptr [rbp + 12048], 1
                        mov              rax, qword ptr [rip + .Lx825_0]
                        mov              qword ptr [rbp + 12056], rax
                                                                                        jmp   n454_disjunction_α
.Lx825_0:
                        .quad            .Lx825_0_s
.Lx825_0_s:
                        .string          "numeric(\" . 3\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n454_disjunction_α:
                        mov              qword ptr [rbp + 12064], 0
                        mov              qword ptr [rbp + 12072], 0
                        mov              dword ptr [rbp + 12080], 0
                                                                                        jmp   n456_lit_string_α
n454_disjunction_as:
                        mov              eax, dword ptr [rbp + 12080]
                        cmp              eax, 0
                                                                                        jne   .Lx827_0
                        mov              rax, qword ptr [rbp + 12096]
                        mov              qword ptr [rbp + 12064], rax
                        mov              rax, qword ptr [rbp + 12104]
                        mov              qword ptr [rbp + 12072], rax
                                                                                        jmp   n455_call_builtin_icon_α
.Lx827_0:
                        cmp              eax, 1
                                                                                        jne   .Lx827_1
                        mov              rax, qword ptr [rbp + 12208]
                        mov              qword ptr [rbp + 12064], rax
                        mov              rax, qword ptr [rbp + 12216]
                        mov              qword ptr [rbp + 12072], rax
                                                                                        jmp   n455_call_builtin_icon_α
.Lx827_1:
                                                                                        jmp   n455_call_builtin_icon_α
n454_disjunction_β:
                        mov              eax, dword ptr [rbp + 12080]
                        cmp              eax, 0
                                                                                        je    n454_disjunction_af
                                                                                        jmp   n454_disjunction_af
n454_disjunction_af:
                        add              dword ptr [rbp + 12080], 1
                        mov              eax, dword ptr [rbp + 12080]
                        cmp              eax, 1
                                                                                        je    n457_lit_string_α
                                                                                        jmp   n459_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n455_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 12048]
                        mov              qword ptr [rbp + 12000], rax
                        mov              rax, qword ptr [rbp + 12056]
                        mov              qword ptr [rbp + 12008], rax
                        mov              rax, qword ptr [rbp + 12064]
                        mov              qword ptr [rbp + 12016], rax
                        mov              rax, qword ptr [rbp + 12072]
                        mov              qword ptr [rbp + 12024], rax
                        .section         .rodata
.Lrkfn829:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn829]
                        lea              rsi, [rbp + 12000]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 11984], rax
                        mov              qword ptr [rbp + 11992], rdx
                        cmp              eax, 99
                                                                                        je    n454_disjunction_β
                                                                                        jmp   n459_lit_string_α
n455_call_builtin_icon_β:
                                                                                        jmp   n454_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n456_lit_string_α:
                        mov              qword ptr [rbp + 12192], 1
                        mov              rax, qword ptr [rip + .Lx830_0]
                        mov              qword ptr [rbp + 12200], rax
                                                                                        jmp   n460_call_builtin_icon_α
n456_lit_string_β:
                                                                                        jmp   n454_disjunction_af
.Lx830_0:
                        .quad            .Lx830_0_s
.Lx830_0_s:
                        .string          " . 3"
#-----------------------------------------------------------------------------------------------------------------------
n457_lit_string_α:
                        mov              qword ptr [rbp + 12208], 1
                        mov              rax, qword ptr [rip + .Lx831_0]
                        mov              qword ptr [rbp + 12216], rax
                                                                                        jmp   n454_disjunction_as
n457_lit_string_β:
                                                                                        jmp   n454_disjunction_af
.Lx831_0:
                        .quad            .Lx831_0_s
.Lx831_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n458_call_proc_staged_α:
                        lea              rsi, [rbp + 12144]
                        call             proc_Image_dcα
                                                                                        jmp   .Lx833_2
.Lx833_2:
                        mov              qword ptr [rbp + 12096], rax
                        mov              qword ptr [rbp + 12104], rdx
                        cmp              eax, 99
                                                                                        je    n454_disjunction_af
                                                                                        jmp   n454_disjunction_as
n458_call_proc_staged_β:
                                                                                        jmp   n454_disjunction_af
.Lx833_0:
                        .quad            .Lx833_0_s
.Lx833_0_s:
                        .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n459_lit_string_α:
                        mov              qword ptr [rbp + 11808], 1
                        mov              rax, qword ptr [rip + .Lx834_0]
                        mov              qword ptr [rbp + 11816], rax
                                                                                        jmp   n461_disjunction_α
.Lx834_0:
                        .quad            .Lx834_0_s
.Lx834_0_s:
                        .string          "numeric(\"e2\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n460_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 12192]
                        mov              qword ptr [rbp + 12160], rax
                        mov              rax, qword ptr [rbp + 12200]
                        mov              qword ptr [rbp + 12168], rax
                        .section         .rodata
.Lrkfn836:              .string          "numeric"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn836]
                        lea              rsi, [rbp + 12160]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 12144], rax
                        mov              qword ptr [rbp + 12152], rdx
                        cmp              eax, 99
                                                                                        je    n454_disjunction_af
                                                                                        jmp   n458_call_proc_staged_α
n460_call_builtin_icon_β:
                                                                                        jmp   n454_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n461_disjunction_α:
                        mov              qword ptr [rbp + 11824], 0
                        mov              qword ptr [rbp + 11832], 0
                        mov              dword ptr [rbp + 11840], 0
                                                                                        jmp   n463_lit_string_α
n461_disjunction_as:
                        mov              eax, dword ptr [rbp + 11840]
                        cmp              eax, 0
                                                                                        jne   .Lx838_0
                        mov              rax, qword ptr [rbp + 11856]
                        mov              qword ptr [rbp + 11824], rax
                        mov              rax, qword ptr [rbp + 11864]
                        mov              qword ptr [rbp + 11832], rax
                                                                                        jmp   n462_call_builtin_icon_α
.Lx838_0:
                        cmp              eax, 1
                                                                                        jne   .Lx838_1
                        mov              rax, qword ptr [rbp + 11968]
                        mov              qword ptr [rbp + 11824], rax
                        mov              rax, qword ptr [rbp + 11976]
                        mov              qword ptr [rbp + 11832], rax
                                                                                        jmp   n462_call_builtin_icon_α
.Lx838_1:
                                                                                        jmp   n462_call_builtin_icon_α
n461_disjunction_β:
                        mov              eax, dword ptr [rbp + 11840]
                        cmp              eax, 0
                                                                                        je    n461_disjunction_af
                                                                                        jmp   n461_disjunction_af
n461_disjunction_af:
                        add              dword ptr [rbp + 11840], 1
                        mov              eax, dword ptr [rbp + 11840]
                        cmp              eax, 1
                                                                                        je    n464_lit_string_α
                                                                                        jmp   n466_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n462_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 11808]
                        mov              qword ptr [rbp + 11760], rax
                        mov              rax, qword ptr [rbp + 11816]
                        mov              qword ptr [rbp + 11768], rax
                        mov              rax, qword ptr [rbp + 11824]
                        mov              qword ptr [rbp + 11776], rax
                        mov              rax, qword ptr [rbp + 11832]
                        mov              qword ptr [rbp + 11784], rax
                        .section         .rodata
.Lrkfn840:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn840]
                        lea              rsi, [rbp + 11760]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 11744], rax
                        mov              qword ptr [rbp + 11752], rdx
                        cmp              eax, 99
                                                                                        je    n461_disjunction_β
                                                                                        jmp   n466_lit_string_α
n462_call_builtin_icon_β:
                                                                                        jmp   n461_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n463_lit_string_α:
                        mov              qword ptr [rbp + 11952], 1
                        mov              rax, qword ptr [rip + .Lx841_0]
                        mov              qword ptr [rbp + 11960], rax
                                                                                        jmp   n467_call_builtin_icon_α
n463_lit_string_β:
                                                                                        jmp   n461_disjunction_af
.Lx841_0:
                        .quad            .Lx841_0_s
.Lx841_0_s:
                        .string          "e2"
#-----------------------------------------------------------------------------------------------------------------------
n464_lit_string_α:
                        mov              qword ptr [rbp + 11968], 1
                        mov              rax, qword ptr [rip + .Lx842_0]
                        mov              qword ptr [rbp + 11976], rax
                                                                                        jmp   n461_disjunction_as
n464_lit_string_β:
                                                                                        jmp   n461_disjunction_af
.Lx842_0:
                        .quad            .Lx842_0_s
.Lx842_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n465_call_proc_staged_α:
                        lea              rsi, [rbp + 11904]
                        call             proc_Image_dcα
                                                                                        jmp   .Lx844_2
.Lx844_2:
                        mov              qword ptr [rbp + 11856], rax
                        mov              qword ptr [rbp + 11864], rdx
                        cmp              eax, 99
                                                                                        je    n461_disjunction_af
                                                                                        jmp   n461_disjunction_as
n465_call_proc_staged_β:
                                                                                        jmp   n461_disjunction_af
.Lx844_0:
                        .quad            .Lx844_0_s
.Lx844_0_s:
                        .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n466_lit_string_α:
                        mov              qword ptr [rbp + 11568], 1
                        mov              rax, qword ptr [rip + .Lx845_0]
                        mov              qword ptr [rbp + 11576], rax
                                                                                        jmp   n468_disjunction_α
.Lx845_0:
                        .quad            .Lx845_0_s
.Lx845_0_s:
                        .string          "numeric(\"3e500\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n467_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 11952]
                        mov              qword ptr [rbp + 11920], rax
                        mov              rax, qword ptr [rbp + 11960]
                        mov              qword ptr [rbp + 11928], rax
                        .section         .rodata
.Lrkfn847:              .string          "numeric"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn847]
                        lea              rsi, [rbp + 11920]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 11904], rax
                        mov              qword ptr [rbp + 11912], rdx
                        cmp              eax, 99
                                                                                        je    n461_disjunction_af
                                                                                        jmp   n465_call_proc_staged_α
n467_call_builtin_icon_β:
                                                                                        jmp   n461_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n468_disjunction_α:
                        mov              qword ptr [rbp + 11584], 0
                        mov              qword ptr [rbp + 11592], 0
                        mov              dword ptr [rbp + 11600], 0
                                                                                        jmp   n470_lit_string_α
n468_disjunction_as:
                        mov              eax, dword ptr [rbp + 11600]
                        cmp              eax, 0
                                                                                        jne   .Lx849_0
                        mov              rax, qword ptr [rbp + 11616]
                        mov              qword ptr [rbp + 11584], rax
                        mov              rax, qword ptr [rbp + 11624]
                        mov              qword ptr [rbp + 11592], rax
                                                                                        jmp   n469_call_builtin_icon_α
.Lx849_0:
                        cmp              eax, 1
                                                                                        jne   .Lx849_1
                        mov              rax, qword ptr [rbp + 11728]
                        mov              qword ptr [rbp + 11584], rax
                        mov              rax, qword ptr [rbp + 11736]
                        mov              qword ptr [rbp + 11592], rax
                                                                                        jmp   n469_call_builtin_icon_α
.Lx849_1:
                                                                                        jmp   n469_call_builtin_icon_α
n468_disjunction_β:
                        mov              eax, dword ptr [rbp + 11600]
                        cmp              eax, 0
                                                                                        je    n468_disjunction_af
                                                                                        jmp   n468_disjunction_af
n468_disjunction_af:
                        add              dword ptr [rbp + 11600], 1
                        mov              eax, dword ptr [rbp + 11600]
                        cmp              eax, 1
                                                                                        je    n471_lit_string_α
                                                                                        jmp   n473_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n469_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 11568]
                        mov              qword ptr [rbp + 11520], rax
                        mov              rax, qword ptr [rbp + 11576]
                        mov              qword ptr [rbp + 11528], rax
                        mov              rax, qword ptr [rbp + 11584]
                        mov              qword ptr [rbp + 11536], rax
                        mov              rax, qword ptr [rbp + 11592]
                        mov              qword ptr [rbp + 11544], rax
                        .section         .rodata
.Lrkfn851:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn851]
                        lea              rsi, [rbp + 11520]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 11504], rax
                        mov              qword ptr [rbp + 11512], rdx
                        cmp              eax, 99
                                                                                        je    n468_disjunction_β
                                                                                        jmp   n473_lit_string_α
n469_call_builtin_icon_β:
                                                                                        jmp   n468_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n470_lit_string_α:
                        mov              qword ptr [rbp + 11712], 1
                        mov              rax, qword ptr [rip + .Lx852_0]
                        mov              qword ptr [rbp + 11720], rax
                                                                                        jmp   n474_call_builtin_icon_α
n470_lit_string_β:
                                                                                        jmp   n468_disjunction_af
.Lx852_0:
                        .quad            .Lx852_0_s
.Lx852_0_s:
                        .string          "3e500"
#-----------------------------------------------------------------------------------------------------------------------
n471_lit_string_α:
                        mov              qword ptr [rbp + 11728], 1
                        mov              rax, qword ptr [rip + .Lx853_0]
                        mov              qword ptr [rbp + 11736], rax
                                                                                        jmp   n468_disjunction_as
n471_lit_string_β:
                                                                                        jmp   n468_disjunction_af
.Lx853_0:
                        .quad            .Lx853_0_s
.Lx853_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n472_call_proc_staged_α:
                        lea              rsi, [rbp + 11664]
                        call             proc_Image_dcα
                                                                                        jmp   .Lx855_2
.Lx855_2:
                        mov              qword ptr [rbp + 11616], rax
                        mov              qword ptr [rbp + 11624], rdx
                        cmp              eax, 99
                                                                                        je    n468_disjunction_af
                                                                                        jmp   n468_disjunction_as
n472_call_proc_staged_β:
                                                                                        jmp   n468_disjunction_af
.Lx855_0:
                        .quad            .Lx855_0_s
.Lx855_0_s:
                        .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n473_lit_string_α:
                        mov              qword ptr [rbp + 11328], 1
                        mov              rax, qword ptr [rip + .Lx856_0]
                        mov              qword ptr [rbp + 11336], rax
                                                                                        jmp   n475_disjunction_α
.Lx856_0:
                        .quad            .Lx856_0_s
.Lx856_0_s:
                        .string          "real(2) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n474_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 11712]
                        mov              qword ptr [rbp + 11680], rax
                        mov              rax, qword ptr [rbp + 11720]
                        mov              qword ptr [rbp + 11688], rax
                        .section         .rodata
.Lrkfn858:              .string          "numeric"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn858]
                        lea              rsi, [rbp + 11680]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 11664], rax
                        mov              qword ptr [rbp + 11672], rdx
                        cmp              eax, 99
                                                                                        je    n468_disjunction_af
                                                                                        jmp   n472_call_proc_staged_α
n474_call_builtin_icon_β:
                                                                                        jmp   n468_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n475_disjunction_α:
                        mov              qword ptr [rbp + 11344], 0
                        mov              qword ptr [rbp + 11352], 0
                        mov              dword ptr [rbp + 11360], 0
                                                                                        jmp   n477_lit_integer_α
n475_disjunction_as:
                        mov              eax, dword ptr [rbp + 11360]
                        cmp              eax, 0
                                                                                        jne   .Lx860_0
                        mov              rax, qword ptr [rbp + 11376]
                        mov              qword ptr [rbp + 11344], rax
                        mov              rax, qword ptr [rbp + 11384]
                        mov              qword ptr [rbp + 11352], rax
                                                                                        jmp   n476_call_builtin_icon_α
.Lx860_0:
                        cmp              eax, 1
                                                                                        jne   .Lx860_1
                        mov              rax, qword ptr [rbp + 11488]
                        mov              qword ptr [rbp + 11344], rax
                        mov              rax, qword ptr [rbp + 11496]
                        mov              qword ptr [rbp + 11352], rax
                                                                                        jmp   n476_call_builtin_icon_α
.Lx860_1:
                                                                                        jmp   n476_call_builtin_icon_α
n475_disjunction_β:
                        mov              eax, dword ptr [rbp + 11360]
                        cmp              eax, 0
                                                                                        je    n475_disjunction_af
                                                                                        jmp   n475_disjunction_af
n475_disjunction_af:
                        add              dword ptr [rbp + 11360], 1
                        mov              eax, dword ptr [rbp + 11360]
                        cmp              eax, 1
                                                                                        je    n478_lit_string_α
                                                                                        jmp   n480_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n476_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 11328]
                        mov              qword ptr [rbp + 11280], rax
                        mov              rax, qword ptr [rbp + 11336]
                        mov              qword ptr [rbp + 11288], rax
                        mov              rax, qword ptr [rbp + 11344]
                        mov              qword ptr [rbp + 11296], rax
                        mov              rax, qword ptr [rbp + 11352]
                        mov              qword ptr [rbp + 11304], rax
                        .section         .rodata
.Lrkfn862:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn862]
                        lea              rsi, [rbp + 11280]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 11264], rax
                        mov              qword ptr [rbp + 11272], rdx
                        cmp              eax, 99
                                                                                        je    n475_disjunction_β
                                                                                        jmp   n480_lit_string_α
n476_call_builtin_icon_β:
                                                                                        jmp   n475_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n477_lit_integer_α:
                        mov              qword ptr [rbp + 11472], 6
                        mov              rax, qword ptr [rip + .Lx863_0]
                        mov              qword ptr [rbp + 11480], rax
                                                                                        jmp   n481_call_builtin_icon_α
n477_lit_integer_β:
                                                                                        jmp   n475_disjunction_af
.Lx863_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n478_lit_string_α:
                        mov              qword ptr [rbp + 11488], 1
                        mov              rax, qword ptr [rip + .Lx864_0]
                        mov              qword ptr [rbp + 11496], rax
                                                                                        jmp   n475_disjunction_as
n478_lit_string_β:
                                                                                        jmp   n475_disjunction_af
.Lx864_0:
                        .quad            .Lx864_0_s
.Lx864_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n479_call_proc_staged_α:
                        lea              rsi, [rbp + 11424]
                        call             proc_Image_dcα
                                                                                        jmp   .Lx866_2
.Lx866_2:
                        mov              qword ptr [rbp + 11376], rax
                        mov              qword ptr [rbp + 11384], rdx
                        cmp              eax, 99
                                                                                        je    n475_disjunction_af
                                                                                        jmp   n475_disjunction_as
n479_call_proc_staged_β:
                                                                                        jmp   n475_disjunction_af
.Lx866_0:
                        .quad            .Lx866_0_s
.Lx866_0_s:
                        .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n480_lit_string_α:
                        mov              qword ptr [rbp + 11088], 1
                        mov              rax, qword ptr [rip + .Lx867_0]
                        mov              qword ptr [rbp + 11096], rax
                                                                                        jmp   n482_disjunction_α
.Lx867_0:
                        .quad            .Lx867_0_s
.Lx867_0_s:
                        .string          "real(2.0) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n481_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 11472]
                        mov              qword ptr [rbp + 11440], rax
                        mov              rax, qword ptr [rbp + 11480]
                        mov              qword ptr [rbp + 11448], rax
                        .section         .rodata
.Lrkfn869:              .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn869]
                        lea              rsi, [rbp + 11440]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 11424], rax
                        mov              qword ptr [rbp + 11432], rdx
                        cmp              eax, 99
                                                                                        je    n475_disjunction_af
                                                                                        jmp   n479_call_proc_staged_α
n481_call_builtin_icon_β:
                                                                                        jmp   n475_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n482_disjunction_α:
                        mov              qword ptr [rbp + 11104], 0
                        mov              qword ptr [rbp + 11112], 0
                        mov              dword ptr [rbp + 11120], 0
                                                                                        jmp   n484_lit_real_α
n482_disjunction_as:
                        mov              eax, dword ptr [rbp + 11120]
                        cmp              eax, 0
                                                                                        jne   .Lx871_0
                        mov              rax, qword ptr [rbp + 11136]
                        mov              qword ptr [rbp + 11104], rax
                        mov              rax, qword ptr [rbp + 11144]
                        mov              qword ptr [rbp + 11112], rax
                                                                                        jmp   n483_call_builtin_icon_α
.Lx871_0:
                        cmp              eax, 1
                                                                                        jne   .Lx871_1
                        mov              rax, qword ptr [rbp + 11248]
                        mov              qword ptr [rbp + 11104], rax
                        mov              rax, qword ptr [rbp + 11256]
                        mov              qword ptr [rbp + 11112], rax
                                                                                        jmp   n483_call_builtin_icon_α
.Lx871_1:
                                                                                        jmp   n483_call_builtin_icon_α
n482_disjunction_β:
                        mov              eax, dword ptr [rbp + 11120]
                        cmp              eax, 0
                                                                                        je    n482_disjunction_af
                                                                                        jmp   n482_disjunction_af
n482_disjunction_af:
                        add              dword ptr [rbp + 11120], 1
                        mov              eax, dword ptr [rbp + 11120]
                        cmp              eax, 1
                                                                                        je    n485_lit_string_α
                                                                                        jmp   n487_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n483_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 11088]
                        mov              qword ptr [rbp + 11040], rax
                        mov              rax, qword ptr [rbp + 11096]
                        mov              qword ptr [rbp + 11048], rax
                        mov              rax, qword ptr [rbp + 11104]
                        mov              qword ptr [rbp + 11056], rax
                        mov              rax, qword ptr [rbp + 11112]
                        mov              qword ptr [rbp + 11064], rax
                        .section         .rodata
.Lrkfn873:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn873]
                        lea              rsi, [rbp + 11040]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 11024], rax
                        mov              qword ptr [rbp + 11032], rdx
                        cmp              eax, 99
                                                                                        je    n482_disjunction_β
                                                                                        jmp   n487_lit_string_α
n483_call_builtin_icon_β:
                                                                                        jmp   n482_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n484_lit_real_α:
                        mov              qword ptr [rbp + 11232], 7
                        mov              rax, qword ptr [rip + .Lx874_0]
                        mov              qword ptr [rbp + 11240], rax
                                                                                        jmp   n488_call_builtin_icon_α
n484_lit_real_β:
                                                                                        jmp   n482_disjunction_af
.Lx874_0:
                        .quad            4611686018427387904
#-----------------------------------------------------------------------------------------------------------------------
n485_lit_string_α:
                        mov              qword ptr [rbp + 11248], 1
                        mov              rax, qword ptr [rip + .Lx875_0]
                        mov              qword ptr [rbp + 11256], rax
                                                                                        jmp   n482_disjunction_as
n485_lit_string_β:
                                                                                        jmp   n482_disjunction_af
.Lx875_0:
                        .quad            .Lx875_0_s
.Lx875_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n486_call_proc_staged_α:
                        lea              rsi, [rbp + 11184]
                        call             proc_Image_dcα
                                                                                        jmp   .Lx877_2
.Lx877_2:
                        mov              qword ptr [rbp + 11136], rax
                        mov              qword ptr [rbp + 11144], rdx
                        cmp              eax, 99
                                                                                        je    n482_disjunction_af
                                                                                        jmp   n482_disjunction_as
n486_call_proc_staged_β:
                                                                                        jmp   n482_disjunction_af
.Lx877_0:
                        .quad            .Lx877_0_s
.Lx877_0_s:
                        .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n487_lit_string_α:
                        mov              qword ptr [rbp + 10848], 1
                        mov              rax, qword ptr [rip + .Lx878_0]
                        mov              qword ptr [rbp + 10856], rax
                                                                                        jmp   n489_disjunction_α
.Lx878_0:
                        .quad            .Lx878_0_s
.Lx878_0_s:
                        .string          "real(2.7) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n488_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 11232]
                        mov              qword ptr [rbp + 11200], rax
                        mov              rax, qword ptr [rbp + 11240]
                        mov              qword ptr [rbp + 11208], rax
                        .section         .rodata
.Lrkfn880:              .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn880]
                        lea              rsi, [rbp + 11200]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 11184], rax
                        mov              qword ptr [rbp + 11192], rdx
                        cmp              eax, 99
                                                                                        je    n482_disjunction_af
                                                                                        jmp   n486_call_proc_staged_α
n488_call_builtin_icon_β:
                                                                                        jmp   n482_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n489_disjunction_α:
                        mov              qword ptr [rbp + 10864], 0
                        mov              qword ptr [rbp + 10872], 0
                        mov              dword ptr [rbp + 10880], 0
                                                                                        jmp   n491_lit_real_α
n489_disjunction_as:
                        mov              eax, dword ptr [rbp + 10880]
                        cmp              eax, 0
                                                                                        jne   .Lx882_0
                        mov              rax, qword ptr [rbp + 10896]
                        mov              qword ptr [rbp + 10864], rax
                        mov              rax, qword ptr [rbp + 10904]
                        mov              qword ptr [rbp + 10872], rax
                                                                                        jmp   n490_call_builtin_icon_α
.Lx882_0:
                        cmp              eax, 1
                                                                                        jne   .Lx882_1
                        mov              rax, qword ptr [rbp + 11008]
                        mov              qword ptr [rbp + 10864], rax
                        mov              rax, qword ptr [rbp + 11016]
                        mov              qword ptr [rbp + 10872], rax
                                                                                        jmp   n490_call_builtin_icon_α
.Lx882_1:
                                                                                        jmp   n490_call_builtin_icon_α
n489_disjunction_β:
                        mov              eax, dword ptr [rbp + 10880]
                        cmp              eax, 0
                                                                                        je    n489_disjunction_af
                                                                                        jmp   n489_disjunction_af
n489_disjunction_af:
                        add              dword ptr [rbp + 10880], 1
                        mov              eax, dword ptr [rbp + 10880]
                        cmp              eax, 1
                                                                                        je    n492_lit_string_α
                                                                                        jmp   n494_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n490_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 10848]
                        mov              qword ptr [rbp + 10800], rax
                        mov              rax, qword ptr [rbp + 10856]
                        mov              qword ptr [rbp + 10808], rax
                        mov              rax, qword ptr [rbp + 10864]
                        mov              qword ptr [rbp + 10816], rax
                        mov              rax, qword ptr [rbp + 10872]
                        mov              qword ptr [rbp + 10824], rax
                        .section         .rodata
.Lrkfn884:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn884]
                        lea              rsi, [rbp + 10800]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 10784], rax
                        mov              qword ptr [rbp + 10792], rdx
                        cmp              eax, 99
                                                                                        je    n489_disjunction_β
                                                                                        jmp   n494_lit_string_α
n490_call_builtin_icon_β:
                                                                                        jmp   n489_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n491_lit_real_α:
                        mov              qword ptr [rbp + 10992], 7
                        mov              rax, qword ptr [rip + .Lx885_0]
                        mov              qword ptr [rbp + 11000], rax
                                                                                        jmp   n495_call_builtin_icon_α
n491_lit_real_β:
                                                                                        jmp   n489_disjunction_af
.Lx885_0:
                        .quad            4613262278296967578
#-----------------------------------------------------------------------------------------------------------------------
n492_lit_string_α:
                        mov              qword ptr [rbp + 11008], 1
                        mov              rax, qword ptr [rip + .Lx886_0]
                        mov              qword ptr [rbp + 11016], rax
                                                                                        jmp   n489_disjunction_as
n492_lit_string_β:
                                                                                        jmp   n489_disjunction_af
.Lx886_0:
                        .quad            .Lx886_0_s
.Lx886_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n493_call_proc_staged_α:
                        lea              rsi, [rbp + 10944]
                        call             proc_Image_dcα
                                                                                        jmp   .Lx888_2
.Lx888_2:
                        mov              qword ptr [rbp + 10896], rax
                        mov              qword ptr [rbp + 10904], rdx
                        cmp              eax, 99
                                                                                        je    n489_disjunction_af
                                                                                        jmp   n489_disjunction_as
n493_call_proc_staged_β:
                                                                                        jmp   n489_disjunction_af
.Lx888_0:
                        .quad            .Lx888_0_s
.Lx888_0_s:
                        .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n494_lit_string_α:
                        mov              qword ptr [rbp + 10608], 1
                        mov              rax, qword ptr [rip + .Lx889_0]
                        mov              qword ptr [rbp + 10616], rax
                                                                                        jmp   n496_disjunction_α
.Lx889_0:
                        .quad            .Lx889_0_s
.Lx889_0_s:
                        .string          "real(\"2\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n495_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 10992]
                        mov              qword ptr [rbp + 10960], rax
                        mov              rax, qword ptr [rbp + 11000]
                        mov              qword ptr [rbp + 10968], rax
                        .section         .rodata
.Lrkfn891:              .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn891]
                        lea              rsi, [rbp + 10960]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 10944], rax
                        mov              qword ptr [rbp + 10952], rdx
                        cmp              eax, 99
                                                                                        je    n489_disjunction_af
                                                                                        jmp   n493_call_proc_staged_α
n495_call_builtin_icon_β:
                                                                                        jmp   n489_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n496_disjunction_α:
                        mov              qword ptr [rbp + 10624], 0
                        mov              qword ptr [rbp + 10632], 0
                        mov              dword ptr [rbp + 10640], 0
                                                                                        jmp   n498_lit_string_α
n496_disjunction_as:
                        mov              eax, dword ptr [rbp + 10640]
                        cmp              eax, 0
                                                                                        jne   .Lx893_0
                        mov              rax, qword ptr [rbp + 10656]
                        mov              qword ptr [rbp + 10624], rax
                        mov              rax, qword ptr [rbp + 10664]
                        mov              qword ptr [rbp + 10632], rax
                                                                                        jmp   n497_call_builtin_icon_α
.Lx893_0:
                        cmp              eax, 1
                                                                                        jne   .Lx893_1
                        mov              rax, qword ptr [rbp + 10768]
                        mov              qword ptr [rbp + 10624], rax
                        mov              rax, qword ptr [rbp + 10776]
                        mov              qword ptr [rbp + 10632], rax
                                                                                        jmp   n497_call_builtin_icon_α
.Lx893_1:
                                                                                        jmp   n497_call_builtin_icon_α
n496_disjunction_β:
                        mov              eax, dword ptr [rbp + 10640]
                        cmp              eax, 0
                                                                                        je    n496_disjunction_af
                                                                                        jmp   n496_disjunction_af
n496_disjunction_af:
                        add              dword ptr [rbp + 10640], 1
                        mov              eax, dword ptr [rbp + 10640]
                        cmp              eax, 1
                                                                                        je    n499_lit_string_α
                                                                                        jmp   n501_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n497_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 10608]
                        mov              qword ptr [rbp + 10560], rax
                        mov              rax, qword ptr [rbp + 10616]
                        mov              qword ptr [rbp + 10568], rax
                        mov              rax, qword ptr [rbp + 10624]
                        mov              qword ptr [rbp + 10576], rax
                        mov              rax, qword ptr [rbp + 10632]
                        mov              qword ptr [rbp + 10584], rax
                        .section         .rodata
.Lrkfn895:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn895]
                        lea              rsi, [rbp + 10560]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 10544], rax
                        mov              qword ptr [rbp + 10552], rdx
                        cmp              eax, 99
                                                                                        je    n496_disjunction_β
                                                                                        jmp   n501_lit_string_α
n497_call_builtin_icon_β:
                                                                                        jmp   n496_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n498_lit_string_α:
                        mov              qword ptr [rbp + 10752], 1
                        mov              rax, qword ptr [rip + .Lx896_0]
                        mov              qword ptr [rbp + 10760], rax
                                                                                        jmp   n502_call_builtin_icon_α
n498_lit_string_β:
                                                                                        jmp   n496_disjunction_af
.Lx896_0:
                        .quad            .Lx896_0_s
.Lx896_0_s:
                        .string          "2"
#-----------------------------------------------------------------------------------------------------------------------
n499_lit_string_α:
                        mov              qword ptr [rbp + 10768], 1
                        mov              rax, qword ptr [rip + .Lx897_0]
                        mov              qword ptr [rbp + 10776], rax
                                                                                        jmp   n496_disjunction_as
n499_lit_string_β:
                                                                                        jmp   n496_disjunction_af
.Lx897_0:
                        .quad            .Lx897_0_s
.Lx897_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n500_call_proc_staged_α:
                        lea              rsi, [rbp + 10704]
                        call             proc_Image_dcα
                                                                                        jmp   .Lx899_2
.Lx899_2:
                        mov              qword ptr [rbp + 10656], rax
                        mov              qword ptr [rbp + 10664], rdx
                        cmp              eax, 99
                                                                                        je    n496_disjunction_af
                                                                                        jmp   n496_disjunction_as
n500_call_proc_staged_β:
                                                                                        jmp   n496_disjunction_af
.Lx899_0:
                        .quad            .Lx899_0_s
.Lx899_0_s:
                        .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n501_lit_string_α:
                        mov              qword ptr [rbp + 10368], 1
                        mov              rax, qword ptr [rip + .Lx900_0]
                        mov              qword ptr [rbp + 10376], rax
                                                                                        jmp   n503_disjunction_α
.Lx900_0:
                        .quad            .Lx900_0_s
.Lx900_0_s:
                        .string          "real(\" 2\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n502_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 10752]
                        mov              qword ptr [rbp + 10720], rax
                        mov              rax, qword ptr [rbp + 10760]
                        mov              qword ptr [rbp + 10728], rax
                        .section         .rodata
.Lrkfn902:              .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn902]
                        lea              rsi, [rbp + 10720]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 10704], rax
                        mov              qword ptr [rbp + 10712], rdx
                        cmp              eax, 99
                                                                                        je    n496_disjunction_af
                                                                                        jmp   n500_call_proc_staged_α
n502_call_builtin_icon_β:
                                                                                        jmp   n496_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n503_disjunction_α:
                        mov              qword ptr [rbp + 10384], 0
                        mov              qword ptr [rbp + 10392], 0
                        mov              dword ptr [rbp + 10400], 0
                                                                                        jmp   n505_lit_string_α
n503_disjunction_as:
                        mov              eax, dword ptr [rbp + 10400]
                        cmp              eax, 0
                                                                                        jne   .Lx904_0
                        mov              rax, qword ptr [rbp + 10416]
                        mov              qword ptr [rbp + 10384], rax
                        mov              rax, qword ptr [rbp + 10424]
                        mov              qword ptr [rbp + 10392], rax
                                                                                        jmp   n504_call_builtin_icon_α
.Lx904_0:
                        cmp              eax, 1
                                                                                        jne   .Lx904_1
                        mov              rax, qword ptr [rbp + 10528]
                        mov              qword ptr [rbp + 10384], rax
                        mov              rax, qword ptr [rbp + 10536]
                        mov              qword ptr [rbp + 10392], rax
                                                                                        jmp   n504_call_builtin_icon_α
.Lx904_1:
                                                                                        jmp   n504_call_builtin_icon_α
n503_disjunction_β:
                        mov              eax, dword ptr [rbp + 10400]
                        cmp              eax, 0
                                                                                        je    n503_disjunction_af
                                                                                        jmp   n503_disjunction_af
n503_disjunction_af:
                        add              dword ptr [rbp + 10400], 1
                        mov              eax, dword ptr [rbp + 10400]
                        cmp              eax, 1
                                                                                        je    n506_lit_string_α
                                                                                        jmp   n508_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n504_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 10368]
                        mov              qword ptr [rbp + 10320], rax
                        mov              rax, qword ptr [rbp + 10376]
                        mov              qword ptr [rbp + 10328], rax
                        mov              rax, qword ptr [rbp + 10384]
                        mov              qword ptr [rbp + 10336], rax
                        mov              rax, qword ptr [rbp + 10392]
                        mov              qword ptr [rbp + 10344], rax
                        .section         .rodata
.Lrkfn906:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn906]
                        lea              rsi, [rbp + 10320]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 10304], rax
                        mov              qword ptr [rbp + 10312], rdx
                        cmp              eax, 99
                                                                                        je    n503_disjunction_β
                                                                                        jmp   n508_lit_string_α
n504_call_builtin_icon_β:
                                                                                        jmp   n503_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n505_lit_string_α:
                        mov              qword ptr [rbp + 10512], 1
                        mov              rax, qword ptr [rip + .Lx907_0]
                        mov              qword ptr [rbp + 10520], rax
                                                                                        jmp   n509_call_builtin_icon_α
n505_lit_string_β:
                                                                                        jmp   n503_disjunction_af
.Lx907_0:
                        .quad            .Lx907_0_s
.Lx907_0_s:
                        .string          " 2"
#-----------------------------------------------------------------------------------------------------------------------
n506_lit_string_α:
                        mov              qword ptr [rbp + 10528], 1
                        mov              rax, qword ptr [rip + .Lx908_0]
                        mov              qword ptr [rbp + 10536], rax
                                                                                        jmp   n503_disjunction_as
n506_lit_string_β:
                                                                                        jmp   n503_disjunction_af
.Lx908_0:
                        .quad            .Lx908_0_s
.Lx908_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n507_call_proc_staged_α:
                        lea              rsi, [rbp + 10464]
                        call             proc_Image_dcα
                                                                                        jmp   .Lx910_2
.Lx910_2:
                        mov              qword ptr [rbp + 10416], rax
                        mov              qword ptr [rbp + 10424], rdx
                        cmp              eax, 99
                                                                                        je    n503_disjunction_af
                                                                                        jmp   n503_disjunction_as
n507_call_proc_staged_β:
                                                                                        jmp   n503_disjunction_af
.Lx910_0:
                        .quad            .Lx910_0_s
.Lx910_0_s:
                        .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n508_lit_string_α:
                        mov              qword ptr [rbp + 10128], 1
                        mov              rax, qword ptr [rip + .Lx911_0]
                        mov              qword ptr [rbp + 10136], rax
                                                                                        jmp   n510_disjunction_α
.Lx911_0:
                        .quad            .Lx911_0_s
.Lx911_0_s:
                        .string          "real(\"2 \") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n509_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 10512]
                        mov              qword ptr [rbp + 10480], rax
                        mov              rax, qword ptr [rbp + 10520]
                        mov              qword ptr [rbp + 10488], rax
                        .section         .rodata
.Lrkfn913:              .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn913]
                        lea              rsi, [rbp + 10480]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 10464], rax
                        mov              qword ptr [rbp + 10472], rdx
                        cmp              eax, 99
                                                                                        je    n503_disjunction_af
                                                                                        jmp   n507_call_proc_staged_α
n509_call_builtin_icon_β:
                                                                                        jmp   n503_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n510_disjunction_α:
                        mov              qword ptr [rbp + 10144], 0
                        mov              qword ptr [rbp + 10152], 0
                        mov              dword ptr [rbp + 10160], 0
                                                                                        jmp   n512_lit_string_α
n510_disjunction_as:
                        mov              eax, dword ptr [rbp + 10160]
                        cmp              eax, 0
                                                                                        jne   .Lx915_0
                        mov              rax, qword ptr [rbp + 10176]
                        mov              qword ptr [rbp + 10144], rax
                        mov              rax, qword ptr [rbp + 10184]
                        mov              qword ptr [rbp + 10152], rax
                                                                                        jmp   n511_call_builtin_icon_α
.Lx915_0:
                        cmp              eax, 1
                                                                                        jne   .Lx915_1
                        mov              rax, qword ptr [rbp + 10288]
                        mov              qword ptr [rbp + 10144], rax
                        mov              rax, qword ptr [rbp + 10296]
                        mov              qword ptr [rbp + 10152], rax
                                                                                        jmp   n511_call_builtin_icon_α
.Lx915_1:
                                                                                        jmp   n511_call_builtin_icon_α
n510_disjunction_β:
                        mov              eax, dword ptr [rbp + 10160]
                        cmp              eax, 0
                                                                                        je    n510_disjunction_af
                                                                                        jmp   n510_disjunction_af
n510_disjunction_af:
                        add              dword ptr [rbp + 10160], 1
                        mov              eax, dword ptr [rbp + 10160]
                        cmp              eax, 1
                                                                                        je    n513_lit_string_α
                                                                                        jmp   n515_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n511_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 10128]
                        mov              qword ptr [rbp + 10080], rax
                        mov              rax, qword ptr [rbp + 10136]
                        mov              qword ptr [rbp + 10088], rax
                        mov              rax, qword ptr [rbp + 10144]
                        mov              qword ptr [rbp + 10096], rax
                        mov              rax, qword ptr [rbp + 10152]
                        mov              qword ptr [rbp + 10104], rax
                        .section         .rodata
.Lrkfn917:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn917]
                        lea              rsi, [rbp + 10080]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 10064], rax
                        mov              qword ptr [rbp + 10072], rdx
                        cmp              eax, 99
                                                                                        je    n510_disjunction_β
                                                                                        jmp   n515_lit_string_α
n511_call_builtin_icon_β:
                                                                                        jmp   n510_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n512_lit_string_α:
                        mov              qword ptr [rbp + 10272], 1
                        mov              rax, qword ptr [rip + .Lx918_0]
                        mov              qword ptr [rbp + 10280], rax
                                                                                        jmp   n516_call_builtin_icon_α
n512_lit_string_β:
                                                                                        jmp   n510_disjunction_af
.Lx918_0:
                        .quad            .Lx918_0_s
.Lx918_0_s:
                        .string          "2 "
#-----------------------------------------------------------------------------------------------------------------------
n513_lit_string_α:
                        mov              qword ptr [rbp + 10288], 1
                        mov              rax, qword ptr [rip + .Lx919_0]
                        mov              qword ptr [rbp + 10296], rax
                                                                                        jmp   n510_disjunction_as
n513_lit_string_β:
                                                                                        jmp   n510_disjunction_af
.Lx919_0:
                        .quad            .Lx919_0_s
.Lx919_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n514_call_proc_staged_α:
                        lea              rsi, [rbp + 10224]
                        call             proc_Image_dcα
                                                                                        jmp   .Lx921_2
.Lx921_2:
                        mov              qword ptr [rbp + 10176], rax
                        mov              qword ptr [rbp + 10184], rdx
                        cmp              eax, 99
                                                                                        je    n510_disjunction_af
                                                                                        jmp   n510_disjunction_as
n514_call_proc_staged_β:
                                                                                        jmp   n510_disjunction_af
.Lx921_0:
                        .quad            .Lx921_0_s
.Lx921_0_s:
                        .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n515_lit_string_α:
                        mov              qword ptr [rbp + 9888], 1
                        mov              rax, qword ptr [rip + .Lx922_0]
                        mov              qword ptr [rbp + 9896], rax
                                                                                        jmp   n517_disjunction_α
.Lx922_0:
                        .quad            .Lx922_0_s
.Lx922_0_s:
                        .string          "real(\"+2\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n516_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 10272]
                        mov              qword ptr [rbp + 10240], rax
                        mov              rax, qword ptr [rbp + 10280]
                        mov              qword ptr [rbp + 10248], rax
                        .section         .rodata
.Lrkfn924:              .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn924]
                        lea              rsi, [rbp + 10240]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 10224], rax
                        mov              qword ptr [rbp + 10232], rdx
                        cmp              eax, 99
                                                                                        je    n510_disjunction_af
                                                                                        jmp   n514_call_proc_staged_α
n516_call_builtin_icon_β:
                                                                                        jmp   n510_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n517_disjunction_α:
                        mov              qword ptr [rbp + 9904], 0
                        mov              qword ptr [rbp + 9912], 0
                        mov              dword ptr [rbp + 9920], 0
                                                                                        jmp   n519_lit_string_α
n517_disjunction_as:
                        mov              eax, dword ptr [rbp + 9920]
                        cmp              eax, 0
                                                                                        jne   .Lx926_0
                        mov              rax, qword ptr [rbp + 9936]
                        mov              qword ptr [rbp + 9904], rax
                        mov              rax, qword ptr [rbp + 9944]
                        mov              qword ptr [rbp + 9912], rax
                                                                                        jmp   n518_call_builtin_icon_α
.Lx926_0:
                        cmp              eax, 1
                                                                                        jne   .Lx926_1
                        mov              rax, qword ptr [rbp + 10048]
                        mov              qword ptr [rbp + 9904], rax
                        mov              rax, qword ptr [rbp + 10056]
                        mov              qword ptr [rbp + 9912], rax
                                                                                        jmp   n518_call_builtin_icon_α
.Lx926_1:
                                                                                        jmp   n518_call_builtin_icon_α
n517_disjunction_β:
                        mov              eax, dword ptr [rbp + 9920]
                        cmp              eax, 0
                                                                                        je    n517_disjunction_af
                                                                                        jmp   n517_disjunction_af
n517_disjunction_af:
                        add              dword ptr [rbp + 9920], 1
                        mov              eax, dword ptr [rbp + 9920]
                        cmp              eax, 1
                                                                                        je    n520_lit_string_α
                                                                                        jmp   n522_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n518_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 9888]
                        mov              qword ptr [rbp + 9840], rax
                        mov              rax, qword ptr [rbp + 9896]
                        mov              qword ptr [rbp + 9848], rax
                        mov              rax, qword ptr [rbp + 9904]
                        mov              qword ptr [rbp + 9856], rax
                        mov              rax, qword ptr [rbp + 9912]
                        mov              qword ptr [rbp + 9864], rax
                        .section         .rodata
.Lrkfn928:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn928]
                        lea              rsi, [rbp + 9840]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 9824], rax
                        mov              qword ptr [rbp + 9832], rdx
                        cmp              eax, 99
                                                                                        je    n517_disjunction_β
                                                                                        jmp   n522_lit_string_α
n518_call_builtin_icon_β:
                                                                                        jmp   n517_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n519_lit_string_α:
                        mov              qword ptr [rbp + 10032], 1
                        mov              rax, qword ptr [rip + .Lx929_0]
                        mov              qword ptr [rbp + 10040], rax
                                                                                        jmp   n523_call_builtin_icon_α
n519_lit_string_β:
                                                                                        jmp   n517_disjunction_af
.Lx929_0:
                        .quad            .Lx929_0_s
.Lx929_0_s:
                        .string          "+2"
#-----------------------------------------------------------------------------------------------------------------------
n520_lit_string_α:
                        mov              qword ptr [rbp + 10048], 1
                        mov              rax, qword ptr [rip + .Lx930_0]
                        mov              qword ptr [rbp + 10056], rax
                                                                                        jmp   n517_disjunction_as
n520_lit_string_β:
                                                                                        jmp   n517_disjunction_af
.Lx930_0:
                        .quad            .Lx930_0_s
.Lx930_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n521_call_proc_staged_α:
                        lea              rsi, [rbp + 9984]
                        call             proc_Image_dcα
                                                                                        jmp   .Lx932_2
.Lx932_2:
                        mov              qword ptr [rbp + 9936], rax
                        mov              qword ptr [rbp + 9944], rdx
                        cmp              eax, 99
                                                                                        je    n517_disjunction_af
                                                                                        jmp   n517_disjunction_as
n521_call_proc_staged_β:
                                                                                        jmp   n517_disjunction_af
.Lx932_0:
                        .quad            .Lx932_0_s
.Lx932_0_s:
                        .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n522_lit_string_α:
                        mov              qword ptr [rbp + 9648], 1
                        mov              rax, qword ptr [rip + .Lx933_0]
                        mov              qword ptr [rbp + 9656], rax
                                                                                        jmp   n524_disjunction_α
.Lx933_0:
                        .quad            .Lx933_0_s
.Lx933_0_s:
                        .string          "real(\"-2\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n523_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 10032]
                        mov              qword ptr [rbp + 10000], rax
                        mov              rax, qword ptr [rbp + 10040]
                        mov              qword ptr [rbp + 10008], rax
                        .section         .rodata
.Lrkfn935:              .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn935]
                        lea              rsi, [rbp + 10000]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 9984], rax
                        mov              qword ptr [rbp + 9992], rdx
                        cmp              eax, 99
                                                                                        je    n517_disjunction_af
                                                                                        jmp   n521_call_proc_staged_α
n523_call_builtin_icon_β:
                                                                                        jmp   n517_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n524_disjunction_α:
                        mov              qword ptr [rbp + 9664], 0
                        mov              qword ptr [rbp + 9672], 0
                        mov              dword ptr [rbp + 9680], 0
                                                                                        jmp   n526_lit_string_α
n524_disjunction_as:
                        mov              eax, dword ptr [rbp + 9680]
                        cmp              eax, 0
                                                                                        jne   .Lx937_0
                        mov              rax, qword ptr [rbp + 9696]
                        mov              qword ptr [rbp + 9664], rax
                        mov              rax, qword ptr [rbp + 9704]
                        mov              qword ptr [rbp + 9672], rax
                                                                                        jmp   n525_call_builtin_icon_α
.Lx937_0:
                        cmp              eax, 1
                                                                                        jne   .Lx937_1
                        mov              rax, qword ptr [rbp + 9808]
                        mov              qword ptr [rbp + 9664], rax
                        mov              rax, qword ptr [rbp + 9816]
                        mov              qword ptr [rbp + 9672], rax
                                                                                        jmp   n525_call_builtin_icon_α
.Lx937_1:
                                                                                        jmp   n525_call_builtin_icon_α
n524_disjunction_β:
                        mov              eax, dword ptr [rbp + 9680]
                        cmp              eax, 0
                                                                                        je    n524_disjunction_af
                                                                                        jmp   n524_disjunction_af
n524_disjunction_af:
                        add              dword ptr [rbp + 9680], 1
                        mov              eax, dword ptr [rbp + 9680]
                        cmp              eax, 1
                                                                                        je    n527_lit_string_α
                                                                                        jmp   n529_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n525_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 9648]
                        mov              qword ptr [rbp + 9600], rax
                        mov              rax, qword ptr [rbp + 9656]
                        mov              qword ptr [rbp + 9608], rax
                        mov              rax, qword ptr [rbp + 9664]
                        mov              qword ptr [rbp + 9616], rax
                        mov              rax, qword ptr [rbp + 9672]
                        mov              qword ptr [rbp + 9624], rax
                        .section         .rodata
.Lrkfn939:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn939]
                        lea              rsi, [rbp + 9600]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 9584], rax
                        mov              qword ptr [rbp + 9592], rdx
                        cmp              eax, 99
                                                                                        je    n524_disjunction_β
                                                                                        jmp   n529_lit_string_α
n525_call_builtin_icon_β:
                                                                                        jmp   n524_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n526_lit_string_α:
                        mov              qword ptr [rbp + 9792], 1
                        mov              rax, qword ptr [rip + .Lx940_0]
                        mov              qword ptr [rbp + 9800], rax
                                                                                        jmp   n530_call_builtin_icon_α
n526_lit_string_β:
                                                                                        jmp   n524_disjunction_af
.Lx940_0:
                        .quad            .Lx940_0_s
.Lx940_0_s:
                        .string          "-2"
#-----------------------------------------------------------------------------------------------------------------------
n527_lit_string_α:
                        mov              qword ptr [rbp + 9808], 1
                        mov              rax, qword ptr [rip + .Lx941_0]
                        mov              qword ptr [rbp + 9816], rax
                                                                                        jmp   n524_disjunction_as
n527_lit_string_β:
                                                                                        jmp   n524_disjunction_af
.Lx941_0:
                        .quad            .Lx941_0_s
.Lx941_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n528_call_proc_staged_α:
                        lea              rsi, [rbp + 9744]
                        call             proc_Image_dcα
                                                                                        jmp   .Lx943_2
.Lx943_2:
                        mov              qword ptr [rbp + 9696], rax
                        mov              qword ptr [rbp + 9704], rdx
                        cmp              eax, 99
                                                                                        je    n524_disjunction_af
                                                                                        jmp   n524_disjunction_as
n528_call_proc_staged_β:
                                                                                        jmp   n524_disjunction_af
.Lx943_0:
                        .quad            .Lx943_0_s
.Lx943_0_s:
                        .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n529_lit_string_α:
                        mov              qword ptr [rbp + 9408], 1
                        mov              rax, qword ptr [rip + .Lx944_0]
                        mov              qword ptr [rbp + 9416], rax
                                                                                        jmp   n531_disjunction_α
.Lx944_0:
                        .quad            .Lx944_0_s
.Lx944_0_s:
                        .string          "real(\"- 2\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n530_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 9792]
                        mov              qword ptr [rbp + 9760], rax
                        mov              rax, qword ptr [rbp + 9800]
                        mov              qword ptr [rbp + 9768], rax
                        .section         .rodata
.Lrkfn946:              .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn946]
                        lea              rsi, [rbp + 9760]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 9744], rax
                        mov              qword ptr [rbp + 9752], rdx
                        cmp              eax, 99
                                                                                        je    n524_disjunction_af
                                                                                        jmp   n528_call_proc_staged_α
n530_call_builtin_icon_β:
                                                                                        jmp   n524_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n531_disjunction_α:
                        mov              qword ptr [rbp + 9424], 0
                        mov              qword ptr [rbp + 9432], 0
                        mov              dword ptr [rbp + 9440], 0
                                                                                        jmp   n533_lit_string_α
n531_disjunction_as:
                        mov              eax, dword ptr [rbp + 9440]
                        cmp              eax, 0
                                                                                        jne   .Lx948_0
                        mov              rax, qword ptr [rbp + 9456]
                        mov              qword ptr [rbp + 9424], rax
                        mov              rax, qword ptr [rbp + 9464]
                        mov              qword ptr [rbp + 9432], rax
                                                                                        jmp   n532_call_builtin_icon_α
.Lx948_0:
                        cmp              eax, 1
                                                                                        jne   .Lx948_1
                        mov              rax, qword ptr [rbp + 9568]
                        mov              qword ptr [rbp + 9424], rax
                        mov              rax, qword ptr [rbp + 9576]
                        mov              qword ptr [rbp + 9432], rax
                                                                                        jmp   n532_call_builtin_icon_α
.Lx948_1:
                                                                                        jmp   n532_call_builtin_icon_α
n531_disjunction_β:
                        mov              eax, dword ptr [rbp + 9440]
                        cmp              eax, 0
                                                                                        je    n531_disjunction_af
                                                                                        jmp   n531_disjunction_af
n531_disjunction_af:
                        add              dword ptr [rbp + 9440], 1
                        mov              eax, dword ptr [rbp + 9440]
                        cmp              eax, 1
                                                                                        je    n534_lit_string_α
                                                                                        jmp   n536_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n532_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 9408]
                        mov              qword ptr [rbp + 9360], rax
                        mov              rax, qword ptr [rbp + 9416]
                        mov              qword ptr [rbp + 9368], rax
                        mov              rax, qword ptr [rbp + 9424]
                        mov              qword ptr [rbp + 9376], rax
                        mov              rax, qword ptr [rbp + 9432]
                        mov              qword ptr [rbp + 9384], rax
                        .section         .rodata
.Lrkfn950:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn950]
                        lea              rsi, [rbp + 9360]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 9344], rax
                        mov              qword ptr [rbp + 9352], rdx
                        cmp              eax, 99
                                                                                        je    n531_disjunction_β
                                                                                        jmp   n536_lit_string_α
n532_call_builtin_icon_β:
                                                                                        jmp   n531_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n533_lit_string_α:
                        mov              qword ptr [rbp + 9552], 1
                        mov              rax, qword ptr [rip + .Lx951_0]
                        mov              qword ptr [rbp + 9560], rax
                                                                                        jmp   n537_call_builtin_icon_α
n533_lit_string_β:
                                                                                        jmp   n531_disjunction_af
.Lx951_0:
                        .quad            .Lx951_0_s
.Lx951_0_s:
                        .string          "- 2"
#-----------------------------------------------------------------------------------------------------------------------
n534_lit_string_α:
                        mov              qword ptr [rbp + 9568], 1
                        mov              rax, qword ptr [rip + .Lx952_0]
                        mov              qword ptr [rbp + 9576], rax
                                                                                        jmp   n531_disjunction_as
n534_lit_string_β:
                                                                                        jmp   n531_disjunction_af
.Lx952_0:
                        .quad            .Lx952_0_s
.Lx952_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n535_call_proc_staged_α:
                        lea              rsi, [rbp + 9504]
                        call             proc_Image_dcα
                                                                                        jmp   .Lx954_2
.Lx954_2:
                        mov              qword ptr [rbp + 9456], rax
                        mov              qword ptr [rbp + 9464], rdx
                        cmp              eax, 99
                                                                                        je    n531_disjunction_af
                                                                                        jmp   n531_disjunction_as
n535_call_proc_staged_β:
                                                                                        jmp   n531_disjunction_af
.Lx954_0:
                        .quad            .Lx954_0_s
.Lx954_0_s:
                        .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n536_lit_string_α:
                        mov              qword ptr [rbp + 9168], 1
                        mov              rax, qword ptr [rip + .Lx955_0]
                        mov              qword ptr [rbp + 9176], rax
                                                                                        jmp   n538_disjunction_α
.Lx955_0:
                        .quad            .Lx955_0_s
.Lx955_0_s:
                        .string          "real(\" -    2 \") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n537_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 9552]
                        mov              qword ptr [rbp + 9520], rax
                        mov              rax, qword ptr [rbp + 9560]
                        mov              qword ptr [rbp + 9528], rax
                        .section         .rodata
.Lrkfn957:              .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn957]
                        lea              rsi, [rbp + 9520]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 9504], rax
                        mov              qword ptr [rbp + 9512], rdx
                        cmp              eax, 99
                                                                                        je    n531_disjunction_af
                                                                                        jmp   n535_call_proc_staged_α
n537_call_builtin_icon_β:
                                                                                        jmp   n531_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n538_disjunction_α:
                        mov              qword ptr [rbp + 9184], 0
                        mov              qword ptr [rbp + 9192], 0
                        mov              dword ptr [rbp + 9200], 0
                                                                                        jmp   n540_lit_string_α
n538_disjunction_as:
                        mov              eax, dword ptr [rbp + 9200]
                        cmp              eax, 0
                                                                                        jne   .Lx959_0
                        mov              rax, qword ptr [rbp + 9216]
                        mov              qword ptr [rbp + 9184], rax
                        mov              rax, qword ptr [rbp + 9224]
                        mov              qword ptr [rbp + 9192], rax
                                                                                        jmp   n539_call_builtin_icon_α
.Lx959_0:
                        cmp              eax, 1
                                                                                        jne   .Lx959_1
                        mov              rax, qword ptr [rbp + 9328]
                        mov              qword ptr [rbp + 9184], rax
                        mov              rax, qword ptr [rbp + 9336]
                        mov              qword ptr [rbp + 9192], rax
                                                                                        jmp   n539_call_builtin_icon_α
.Lx959_1:
                                                                                        jmp   n539_call_builtin_icon_α
n538_disjunction_β:
                        mov              eax, dword ptr [rbp + 9200]
                        cmp              eax, 0
                                                                                        je    n538_disjunction_af
                                                                                        jmp   n538_disjunction_af
n538_disjunction_af:
                        add              dword ptr [rbp + 9200], 1
                        mov              eax, dword ptr [rbp + 9200]
                        cmp              eax, 1
                                                                                        je    n541_lit_string_α
                                                                                        jmp   n543_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n539_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 9168]
                        mov              qword ptr [rbp + 9120], rax
                        mov              rax, qword ptr [rbp + 9176]
                        mov              qword ptr [rbp + 9128], rax
                        mov              rax, qword ptr [rbp + 9184]
                        mov              qword ptr [rbp + 9136], rax
                        mov              rax, qword ptr [rbp + 9192]
                        mov              qword ptr [rbp + 9144], rax
                        .section         .rodata
.Lrkfn961:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn961]
                        lea              rsi, [rbp + 9120]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 9104], rax
                        mov              qword ptr [rbp + 9112], rdx
                        cmp              eax, 99
                                                                                        je    n538_disjunction_β
                                                                                        jmp   n543_lit_string_α
n539_call_builtin_icon_β:
                                                                                        jmp   n538_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n540_lit_string_α:
                        mov              qword ptr [rbp + 9312], 1
                        mov              rax, qword ptr [rip + .Lx962_0]
                        mov              qword ptr [rbp + 9320], rax
                                                                                        jmp   n544_call_builtin_icon_α
n540_lit_string_β:
                                                                                        jmp   n538_disjunction_af
.Lx962_0:
                        .quad            .Lx962_0_s
.Lx962_0_s:
                        .string          " -    2 "
#-----------------------------------------------------------------------------------------------------------------------
n541_lit_string_α:
                        mov              qword ptr [rbp + 9328], 1
                        mov              rax, qword ptr [rip + .Lx963_0]
                        mov              qword ptr [rbp + 9336], rax
                                                                                        jmp   n538_disjunction_as
n541_lit_string_β:
                                                                                        jmp   n538_disjunction_af
.Lx963_0:
                        .quad            .Lx963_0_s
.Lx963_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n542_call_proc_staged_α:
                        lea              rsi, [rbp + 9264]
                        call             proc_Image_dcα
                                                                                        jmp   .Lx965_2
.Lx965_2:
                        mov              qword ptr [rbp + 9216], rax
                        mov              qword ptr [rbp + 9224], rdx
                        cmp              eax, 99
                                                                                        je    n538_disjunction_af
                                                                                        jmp   n538_disjunction_as
n542_call_proc_staged_β:
                                                                                        jmp   n538_disjunction_af
.Lx965_0:
                        .quad            .Lx965_0_s
.Lx965_0_s:
                        .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n543_lit_string_α:
                        mov              qword ptr [rbp + 8928], 1
                        mov              rax, qword ptr [rip + .Lx966_0]
                        mov              qword ptr [rbp + 8936], rax
                                                                                        jmp   n545_disjunction_α
.Lx966_0:
                        .quad            .Lx966_0_s
.Lx966_0_s:
                        .string          "real(\"\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n544_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 9312]
                        mov              qword ptr [rbp + 9280], rax
                        mov              rax, qword ptr [rbp + 9320]
                        mov              qword ptr [rbp + 9288], rax
                        .section         .rodata
.Lrkfn968:              .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn968]
                        lea              rsi, [rbp + 9280]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 9264], rax
                        mov              qword ptr [rbp + 9272], rdx
                        cmp              eax, 99
                                                                                        je    n538_disjunction_af
                                                                                        jmp   n542_call_proc_staged_α
n544_call_builtin_icon_β:
                                                                                        jmp   n538_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n545_disjunction_α:
                        mov              qword ptr [rbp + 8944], 0
                        mov              qword ptr [rbp + 8952], 0
                        mov              dword ptr [rbp + 8960], 0
                                                                                        jmp   n547_lit_string_α
n545_disjunction_as:
                        mov              eax, dword ptr [rbp + 8960]
                        cmp              eax, 0
                                                                                        jne   .Lx970_0
                        mov              rax, qword ptr [rbp + 8976]
                        mov              qword ptr [rbp + 8944], rax
                        mov              rax, qword ptr [rbp + 8984]
                        mov              qword ptr [rbp + 8952], rax
                                                                                        jmp   n546_call_builtin_icon_α
.Lx970_0:
                        cmp              eax, 1
                                                                                        jne   .Lx970_1
                        mov              rax, qword ptr [rbp + 9088]
                        mov              qword ptr [rbp + 8944], rax
                        mov              rax, qword ptr [rbp + 9096]
                        mov              qword ptr [rbp + 8952], rax
                                                                                        jmp   n546_call_builtin_icon_α
.Lx970_1:
                                                                                        jmp   n546_call_builtin_icon_α
n545_disjunction_β:
                        mov              eax, dword ptr [rbp + 8960]
                        cmp              eax, 0
                                                                                        je    n545_disjunction_af
                                                                                        jmp   n545_disjunction_af
n545_disjunction_af:
                        add              dword ptr [rbp + 8960], 1
                        mov              eax, dword ptr [rbp + 8960]
                        cmp              eax, 1
                                                                                        je    n548_lit_string_α
                                                                                        jmp   n550_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n546_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 8928]
                        mov              qword ptr [rbp + 8880], rax
                        mov              rax, qword ptr [rbp + 8936]
                        mov              qword ptr [rbp + 8888], rax
                        mov              rax, qword ptr [rbp + 8944]
                        mov              qword ptr [rbp + 8896], rax
                        mov              rax, qword ptr [rbp + 8952]
                        mov              qword ptr [rbp + 8904], rax
                        .section         .rodata
.Lrkfn972:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn972]
                        lea              rsi, [rbp + 8880]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 8864], rax
                        mov              qword ptr [rbp + 8872], rdx
                        cmp              eax, 99
                                                                                        je    n545_disjunction_β
                                                                                        jmp   n550_lit_string_α
n546_call_builtin_icon_β:
                                                                                        jmp   n545_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n547_lit_string_α:
                        mov              qword ptr [rbp + 9072], 1
                        mov              rax, qword ptr [rip + .Lx973_0]
                        mov              qword ptr [rbp + 9080], rax
                                                                                        jmp   n551_call_builtin_icon_α
n547_lit_string_β:
                                                                                        jmp   n545_disjunction_af
.Lx973_0:
                        .quad            .Lx973_0_s
.Lx973_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n548_lit_string_α:
                        mov              qword ptr [rbp + 9088], 1
                        mov              rax, qword ptr [rip + .Lx974_0]
                        mov              qword ptr [rbp + 9096], rax
                                                                                        jmp   n545_disjunction_as
n548_lit_string_β:
                                                                                        jmp   n545_disjunction_af
.Lx974_0:
                        .quad            .Lx974_0_s
.Lx974_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n549_call_proc_staged_α:
                        lea              rsi, [rbp + 9024]
                        call             proc_Image_dcα
                                                                                        jmp   .Lx976_2
.Lx976_2:
                        mov              qword ptr [rbp + 8976], rax
                        mov              qword ptr [rbp + 8984], rdx
                        cmp              eax, 99
                                                                                        je    n545_disjunction_af
                                                                                        jmp   n545_disjunction_as
n549_call_proc_staged_β:
                                                                                        jmp   n545_disjunction_af
.Lx976_0:
                        .quad            .Lx976_0_s
.Lx976_0_s:
                        .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n550_lit_string_α:
                        mov              qword ptr [rbp + 8688], 1
                        mov              rax, qword ptr [rip + .Lx977_0]
                        mov              qword ptr [rbp + 8696], rax
                                                                                        jmp   n552_disjunction_α
.Lx977_0:
                        .quad            .Lx977_0_s
.Lx977_0_s:
                        .string          "real(\"--2\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n551_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 9072]
                        mov              qword ptr [rbp + 9040], rax
                        mov              rax, qword ptr [rbp + 9080]
                        mov              qword ptr [rbp + 9048], rax
                        .section         .rodata
.Lrkfn979:              .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn979]
                        lea              rsi, [rbp + 9040]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 9024], rax
                        mov              qword ptr [rbp + 9032], rdx
                        cmp              eax, 99
                                                                                        je    n545_disjunction_af
                                                                                        jmp   n549_call_proc_staged_α
n551_call_builtin_icon_β:
                                                                                        jmp   n545_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n552_disjunction_α:
                        mov              qword ptr [rbp + 8704], 0
                        mov              qword ptr [rbp + 8712], 0
                        mov              dword ptr [rbp + 8720], 0
                                                                                        jmp   n554_lit_string_α
n552_disjunction_as:
                        mov              eax, dword ptr [rbp + 8720]
                        cmp              eax, 0
                                                                                        jne   .Lx981_0
                        mov              rax, qword ptr [rbp + 8736]
                        mov              qword ptr [rbp + 8704], rax
                        mov              rax, qword ptr [rbp + 8744]
                        mov              qword ptr [rbp + 8712], rax
                                                                                        jmp   n553_call_builtin_icon_α
.Lx981_0:
                        cmp              eax, 1
                                                                                        jne   .Lx981_1
                        mov              rax, qword ptr [rbp + 8848]
                        mov              qword ptr [rbp + 8704], rax
                        mov              rax, qword ptr [rbp + 8856]
                        mov              qword ptr [rbp + 8712], rax
                                                                                        jmp   n553_call_builtin_icon_α
.Lx981_1:
                                                                                        jmp   n553_call_builtin_icon_α
n552_disjunction_β:
                        mov              eax, dword ptr [rbp + 8720]
                        cmp              eax, 0
                                                                                        je    n552_disjunction_af
                                                                                        jmp   n552_disjunction_af
n552_disjunction_af:
                        add              dword ptr [rbp + 8720], 1
                        mov              eax, dword ptr [rbp + 8720]
                        cmp              eax, 1
                                                                                        je    n555_lit_string_α
                                                                                        jmp   n557_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n553_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 8688]
                        mov              qword ptr [rbp + 8640], rax
                        mov              rax, qword ptr [rbp + 8696]
                        mov              qword ptr [rbp + 8648], rax
                        mov              rax, qword ptr [rbp + 8704]
                        mov              qword ptr [rbp + 8656], rax
                        mov              rax, qword ptr [rbp + 8712]
                        mov              qword ptr [rbp + 8664], rax
                        .section         .rodata
.Lrkfn983:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn983]
                        lea              rsi, [rbp + 8640]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 8624], rax
                        mov              qword ptr [rbp + 8632], rdx
                        cmp              eax, 99
                                                                                        je    n552_disjunction_β
                                                                                        jmp   n557_lit_string_α
n553_call_builtin_icon_β:
                                                                                        jmp   n552_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n554_lit_string_α:
                        mov              qword ptr [rbp + 8832], 1
                        mov              rax, qword ptr [rip + .Lx984_0]
                        mov              qword ptr [rbp + 8840], rax
                                                                                        jmp   n558_call_builtin_icon_α
n554_lit_string_β:
                                                                                        jmp   n552_disjunction_af
.Lx984_0:
                        .quad            .Lx984_0_s
.Lx984_0_s:
                        .string          "--2"
#-----------------------------------------------------------------------------------------------------------------------
n555_lit_string_α:
                        mov              qword ptr [rbp + 8848], 1
                        mov              rax, qword ptr [rip + .Lx985_0]
                        mov              qword ptr [rbp + 8856], rax
                                                                                        jmp   n552_disjunction_as
n555_lit_string_β:
                                                                                        jmp   n552_disjunction_af
.Lx985_0:
                        .quad            .Lx985_0_s
.Lx985_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n556_call_proc_staged_α:
                        lea              rsi, [rbp + 8784]
                        call             proc_Image_dcα
                                                                                        jmp   .Lx987_2
.Lx987_2:
                        mov              qword ptr [rbp + 8736], rax
                        mov              qword ptr [rbp + 8744], rdx
                        cmp              eax, 99
                                                                                        je    n552_disjunction_af
                                                                                        jmp   n552_disjunction_as
n556_call_proc_staged_β:
                                                                                        jmp   n552_disjunction_af
.Lx987_0:
                        .quad            .Lx987_0_s
.Lx987_0_s:
                        .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n557_lit_string_α:
                        mov              qword ptr [rbp + 8448], 1
                        mov              rax, qword ptr [rip + .Lx988_0]
                        mov              qword ptr [rbp + 8456], rax
                                                                                        jmp   n559_disjunction_α
.Lx988_0:
                        .quad            .Lx988_0_s
.Lx988_0_s:
                        .string          "real(\" \") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n558_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 8832]
                        mov              qword ptr [rbp + 8800], rax
                        mov              rax, qword ptr [rbp + 8840]
                        mov              qword ptr [rbp + 8808], rax
                        .section         .rodata
.Lrkfn990:              .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn990]
                        lea              rsi, [rbp + 8800]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 8784], rax
                        mov              qword ptr [rbp + 8792], rdx
                        cmp              eax, 99
                                                                                        je    n552_disjunction_af
                                                                                        jmp   n556_call_proc_staged_α
n558_call_builtin_icon_β:
                                                                                        jmp   n552_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n559_disjunction_α:
                        mov              qword ptr [rbp + 8464], 0
                        mov              qword ptr [rbp + 8472], 0
                        mov              dword ptr [rbp + 8480], 0
                                                                                        jmp   n561_lit_string_α
n559_disjunction_as:
                        mov              eax, dword ptr [rbp + 8480]
                        cmp              eax, 0
                                                                                        jne   .Lx992_0
                        mov              rax, qword ptr [rbp + 8496]
                        mov              qword ptr [rbp + 8464], rax
                        mov              rax, qword ptr [rbp + 8504]
                        mov              qword ptr [rbp + 8472], rax
                                                                                        jmp   n560_call_builtin_icon_α
.Lx992_0:
                        cmp              eax, 1
                                                                                        jne   .Lx992_1
                        mov              rax, qword ptr [rbp + 8608]
                        mov              qword ptr [rbp + 8464], rax
                        mov              rax, qword ptr [rbp + 8616]
                        mov              qword ptr [rbp + 8472], rax
                                                                                        jmp   n560_call_builtin_icon_α
.Lx992_1:
                                                                                        jmp   n560_call_builtin_icon_α
n559_disjunction_β:
                        mov              eax, dword ptr [rbp + 8480]
                        cmp              eax, 0
                                                                                        je    n559_disjunction_af
                                                                                        jmp   n559_disjunction_af
n559_disjunction_af:
                        add              dword ptr [rbp + 8480], 1
                        mov              eax, dword ptr [rbp + 8480]
                        cmp              eax, 1
                                                                                        je    n562_lit_string_α
                                                                                        jmp   n564_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n560_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 8448]
                        mov              qword ptr [rbp + 8400], rax
                        mov              rax, qword ptr [rbp + 8456]
                        mov              qword ptr [rbp + 8408], rax
                        mov              rax, qword ptr [rbp + 8464]
                        mov              qword ptr [rbp + 8416], rax
                        mov              rax, qword ptr [rbp + 8472]
                        mov              qword ptr [rbp + 8424], rax
                        .section         .rodata
.Lrkfn994:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn994]
                        lea              rsi, [rbp + 8400]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 8384], rax
                        mov              qword ptr [rbp + 8392], rdx
                        cmp              eax, 99
                                                                                        je    n559_disjunction_β
                                                                                        jmp   n564_lit_string_α
n560_call_builtin_icon_β:
                                                                                        jmp   n559_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n561_lit_string_α:
                        mov              qword ptr [rbp + 8592], 1
                        mov              rax, qword ptr [rip + .Lx995_0]
                        mov              qword ptr [rbp + 8600], rax
                                                                                        jmp   n565_call_builtin_icon_α
n561_lit_string_β:
                                                                                        jmp   n559_disjunction_af
.Lx995_0:
                        .quad            .Lx995_0_s
.Lx995_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n562_lit_string_α:
                        mov              qword ptr [rbp + 8608], 1
                        mov              rax, qword ptr [rip + .Lx996_0]
                        mov              qword ptr [rbp + 8616], rax
                                                                                        jmp   n559_disjunction_as
n562_lit_string_β:
                                                                                        jmp   n559_disjunction_af
.Lx996_0:
                        .quad            .Lx996_0_s
.Lx996_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n563_call_proc_staged_α:
                        lea              rsi, [rbp + 8544]
                        call             proc_Image_dcα
                                                                                        jmp   .Lx998_2
.Lx998_2:
                        mov              qword ptr [rbp + 8496], rax
                        mov              qword ptr [rbp + 8504], rdx
                        cmp              eax, 99
                                                                                        je    n559_disjunction_af
                                                                                        jmp   n559_disjunction_as
n563_call_proc_staged_β:
                                                                                        jmp   n559_disjunction_af
.Lx998_0:
                        .quad            .Lx998_0_s
.Lx998_0_s:
                        .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n564_lit_string_α:
                        mov              qword ptr [rbp + 8208], 1
                        mov              rax, qword ptr [rip + .Lx999_0]
                        mov              qword ptr [rbp + 8216], rax
                                                                                        jmp   n566_disjunction_α
.Lx999_0:
                        .quad            .Lx999_0_s
.Lx999_0_s:
                        .string          "real(\"-\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n565_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 8592]
                        mov              qword ptr [rbp + 8560], rax
                        mov              rax, qword ptr [rbp + 8600]
                        mov              qword ptr [rbp + 8568], rax
                        .section         .rodata
.Lrkfn1001:             .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1001]
                        lea              rsi, [rbp + 8560]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 8544], rax
                        mov              qword ptr [rbp + 8552], rdx
                        cmp              eax, 99
                                                                                        je    n559_disjunction_af
                                                                                        jmp   n563_call_proc_staged_α
n565_call_builtin_icon_β:
                                                                                        jmp   n559_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n566_disjunction_α:
                        mov              qword ptr [rbp + 8224], 0
                        mov              qword ptr [rbp + 8232], 0
                        mov              dword ptr [rbp + 8240], 0
                                                                                        jmp   n568_lit_string_α
n566_disjunction_as:
                        mov              eax, dword ptr [rbp + 8240]
                        cmp              eax, 0
                                                                                        jne   .Lx1003_0
                        mov              rax, qword ptr [rbp + 8256]
                        mov              qword ptr [rbp + 8224], rax
                        mov              rax, qword ptr [rbp + 8264]
                        mov              qword ptr [rbp + 8232], rax
                                                                                        jmp   n567_call_builtin_icon_α
.Lx1003_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1003_1
                        mov              rax, qword ptr [rbp + 8368]
                        mov              qword ptr [rbp + 8224], rax
                        mov              rax, qword ptr [rbp + 8376]
                        mov              qword ptr [rbp + 8232], rax
                                                                                        jmp   n567_call_builtin_icon_α
.Lx1003_1:
                                                                                        jmp   n567_call_builtin_icon_α
n566_disjunction_β:
                        mov              eax, dword ptr [rbp + 8240]
                        cmp              eax, 0
                                                                                        je    n566_disjunction_af
                                                                                        jmp   n566_disjunction_af
n566_disjunction_af:
                        add              dword ptr [rbp + 8240], 1
                        mov              eax, dword ptr [rbp + 8240]
                        cmp              eax, 1
                                                                                        je    n569_lit_string_α
                                                                                        jmp   n571_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n567_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 8208]
                        mov              qword ptr [rbp + 8160], rax
                        mov              rax, qword ptr [rbp + 8216]
                        mov              qword ptr [rbp + 8168], rax
                        mov              rax, qword ptr [rbp + 8224]
                        mov              qword ptr [rbp + 8176], rax
                        mov              rax, qword ptr [rbp + 8232]
                        mov              qword ptr [rbp + 8184], rax
                        .section         .rodata
.Lrkfn1005:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1005]
                        lea              rsi, [rbp + 8160]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 8144], rax
                        mov              qword ptr [rbp + 8152], rdx
                        cmp              eax, 99
                                                                                        je    n566_disjunction_β
                                                                                        jmp   n571_lit_string_α
n567_call_builtin_icon_β:
                                                                                        jmp   n566_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n568_lit_string_α:
                        mov              qword ptr [rbp + 8352], 1
                        mov              rax, qword ptr [rip + .Lx1006_0]
                        mov              qword ptr [rbp + 8360], rax
                                                                                        jmp   n572_call_builtin_icon_α
n568_lit_string_β:
                                                                                        jmp   n566_disjunction_af
.Lx1006_0:
                        .quad            .Lx1006_0_s
.Lx1006_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n569_lit_string_α:
                        mov              qword ptr [rbp + 8368], 1
                        mov              rax, qword ptr [rip + .Lx1007_0]
                        mov              qword ptr [rbp + 8376], rax
                                                                                        jmp   n566_disjunction_as
n569_lit_string_β:
                                                                                        jmp   n566_disjunction_af
.Lx1007_0:
                        .quad            .Lx1007_0_s
.Lx1007_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n570_call_proc_staged_α:
                        lea              rsi, [rbp + 8304]
                        call             proc_Image_dcα
                                                                                        jmp   .Lx1009_2
.Lx1009_2:
                        mov              qword ptr [rbp + 8256], rax
                        mov              qword ptr [rbp + 8264], rdx
                        cmp              eax, 99
                                                                                        je    n566_disjunction_af
                                                                                        jmp   n566_disjunction_as
n570_call_proc_staged_β:
                                                                                        jmp   n566_disjunction_af
.Lx1009_0:
                        .quad            .Lx1009_0_s
.Lx1009_0_s:
                        .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n571_lit_string_α:
                        mov              qword ptr [rbp + 7968], 1
                        mov              rax, qword ptr [rip + .Lx1010_0]
                        mov              qword ptr [rbp + 7976], rax
                                                                                        jmp   n573_disjunction_α
.Lx1010_0:
                        .quad            .Lx1010_0_s
.Lx1010_0_s:
                        .string          "real(\"+\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n572_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 8352]
                        mov              qword ptr [rbp + 8320], rax
                        mov              rax, qword ptr [rbp + 8360]
                        mov              qword ptr [rbp + 8328], rax
                        .section         .rodata
.Lrkfn1012:             .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1012]
                        lea              rsi, [rbp + 8320]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 8304], rax
                        mov              qword ptr [rbp + 8312], rdx
                        cmp              eax, 99
                                                                                        je    n566_disjunction_af
                                                                                        jmp   n570_call_proc_staged_α
n572_call_builtin_icon_β:
                                                                                        jmp   n566_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n573_disjunction_α:
                        mov              qword ptr [rbp + 7984], 0
                        mov              qword ptr [rbp + 7992], 0
                        mov              dword ptr [rbp + 8000], 0
                                                                                        jmp   n575_lit_string_α
n573_disjunction_as:
                        mov              eax, dword ptr [rbp + 8000]
                        cmp              eax, 0
                                                                                        jne   .Lx1014_0
                        mov              rax, qword ptr [rbp + 8016]
                        mov              qword ptr [rbp + 7984], rax
                        mov              rax, qword ptr [rbp + 8024]
                        mov              qword ptr [rbp + 7992], rax
                                                                                        jmp   n574_call_builtin_icon_α
.Lx1014_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1014_1
                        mov              rax, qword ptr [rbp + 8128]
                        mov              qword ptr [rbp + 7984], rax
                        mov              rax, qword ptr [rbp + 8136]
                        mov              qword ptr [rbp + 7992], rax
                                                                                        jmp   n574_call_builtin_icon_α
.Lx1014_1:
                                                                                        jmp   n574_call_builtin_icon_α
n573_disjunction_β:
                        mov              eax, dword ptr [rbp + 8000]
                        cmp              eax, 0
                                                                                        je    n573_disjunction_af
                                                                                        jmp   n573_disjunction_af
n573_disjunction_af:
                        add              dword ptr [rbp + 8000], 1
                        mov              eax, dword ptr [rbp + 8000]
                        cmp              eax, 1
                                                                                        je    n576_lit_string_α
                                                                                        jmp   n578_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n574_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 7968]
                        mov              qword ptr [rbp + 7920], rax
                        mov              rax, qword ptr [rbp + 7976]
                        mov              qword ptr [rbp + 7928], rax
                        mov              rax, qword ptr [rbp + 7984]
                        mov              qword ptr [rbp + 7936], rax
                        mov              rax, qword ptr [rbp + 7992]
                        mov              qword ptr [rbp + 7944], rax
                        .section         .rodata
.Lrkfn1016:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1016]
                        lea              rsi, [rbp + 7920]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 7904], rax
                        mov              qword ptr [rbp + 7912], rdx
                        cmp              eax, 99
                                                                                        je    n573_disjunction_β
                                                                                        jmp   n578_lit_string_α
n574_call_builtin_icon_β:
                                                                                        jmp   n573_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n575_lit_string_α:
                        mov              qword ptr [rbp + 8112], 1
                        mov              rax, qword ptr [rip + .Lx1017_0]
                        mov              qword ptr [rbp + 8120], rax
                                                                                        jmp   n579_call_builtin_icon_α
n575_lit_string_β:
                                                                                        jmp   n573_disjunction_af
.Lx1017_0:
                        .quad            .Lx1017_0_s
.Lx1017_0_s:
                        .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n576_lit_string_α:
                        mov              qword ptr [rbp + 8128], 1
                        mov              rax, qword ptr [rip + .Lx1018_0]
                        mov              qword ptr [rbp + 8136], rax
                                                                                        jmp   n573_disjunction_as
n576_lit_string_β:
                                                                                        jmp   n573_disjunction_af
.Lx1018_0:
                        .quad            .Lx1018_0_s
.Lx1018_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n577_call_proc_staged_α:
                        lea              rsi, [rbp + 8064]
                        call             proc_Image_dcα
                                                                                        jmp   .Lx1020_2
.Lx1020_2:
                        mov              qword ptr [rbp + 8016], rax
                        mov              qword ptr [rbp + 8024], rdx
                        cmp              eax, 99
                                                                                        je    n573_disjunction_af
                                                                                        jmp   n573_disjunction_as
n577_call_proc_staged_β:
                                                                                        jmp   n573_disjunction_af
.Lx1020_0:
                        .quad            .Lx1020_0_s
.Lx1020_0_s:
                        .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n578_lit_string_α:
                        mov              qword ptr [rbp + 7728], 1
                        mov              rax, qword ptr [rip + .Lx1021_0]
                        mov              qword ptr [rbp + 7736], rax
                                                                                        jmp   n580_disjunction_α
.Lx1021_0:
                        .quad            .Lx1021_0_s
.Lx1021_0_s:
                        .string          "real(\".\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n579_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 8112]
                        mov              qword ptr [rbp + 8080], rax
                        mov              rax, qword ptr [rbp + 8120]
                        mov              qword ptr [rbp + 8088], rax
                        .section         .rodata
.Lrkfn1023:             .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1023]
                        lea              rsi, [rbp + 8080]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 8064], rax
                        mov              qword ptr [rbp + 8072], rdx
                        cmp              eax, 99
                                                                                        je    n573_disjunction_af
                                                                                        jmp   n577_call_proc_staged_α
n579_call_builtin_icon_β:
                                                                                        jmp   n573_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n580_disjunction_α:
                        mov              qword ptr [rbp + 7744], 0
                        mov              qword ptr [rbp + 7752], 0
                        mov              dword ptr [rbp + 7760], 0
                                                                                        jmp   n582_lit_string_α
n580_disjunction_as:
                        mov              eax, dword ptr [rbp + 7760]
                        cmp              eax, 0
                                                                                        jne   .Lx1025_0
                        mov              rax, qword ptr [rbp + 7776]
                        mov              qword ptr [rbp + 7744], rax
                        mov              rax, qword ptr [rbp + 7784]
                        mov              qword ptr [rbp + 7752], rax
                                                                                        jmp   n581_call_builtin_icon_α
.Lx1025_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1025_1
                        mov              rax, qword ptr [rbp + 7888]
                        mov              qword ptr [rbp + 7744], rax
                        mov              rax, qword ptr [rbp + 7896]
                        mov              qword ptr [rbp + 7752], rax
                                                                                        jmp   n581_call_builtin_icon_α
.Lx1025_1:
                                                                                        jmp   n581_call_builtin_icon_α
n580_disjunction_β:
                        mov              eax, dword ptr [rbp + 7760]
                        cmp              eax, 0
                                                                                        je    n580_disjunction_af
                                                                                        jmp   n580_disjunction_af
n580_disjunction_af:
                        add              dword ptr [rbp + 7760], 1
                        mov              eax, dword ptr [rbp + 7760]
                        cmp              eax, 1
                                                                                        je    n583_lit_string_α
                                                                                        jmp   n585_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n581_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 7728]
                        mov              qword ptr [rbp + 7680], rax
                        mov              rax, qword ptr [rbp + 7736]
                        mov              qword ptr [rbp + 7688], rax
                        mov              rax, qword ptr [rbp + 7744]
                        mov              qword ptr [rbp + 7696], rax
                        mov              rax, qword ptr [rbp + 7752]
                        mov              qword ptr [rbp + 7704], rax
                        .section         .rodata
.Lrkfn1027:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1027]
                        lea              rsi, [rbp + 7680]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 7664], rax
                        mov              qword ptr [rbp + 7672], rdx
                        cmp              eax, 99
                                                                                        je    n580_disjunction_β
                                                                                        jmp   n585_lit_string_α
n581_call_builtin_icon_β:
                                                                                        jmp   n580_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n582_lit_string_α:
                        mov              qword ptr [rbp + 7872], 1
                        mov              rax, qword ptr [rip + .Lx1028_0]
                        mov              qword ptr [rbp + 7880], rax
                                                                                        jmp   n586_call_builtin_icon_α
n582_lit_string_β:
                                                                                        jmp   n580_disjunction_af
.Lx1028_0:
                        .quad            .Lx1028_0_s
.Lx1028_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n583_lit_string_α:
                        mov              qword ptr [rbp + 7888], 1
                        mov              rax, qword ptr [rip + .Lx1029_0]
                        mov              qword ptr [rbp + 7896], rax
                                                                                        jmp   n580_disjunction_as
n583_lit_string_β:
                                                                                        jmp   n580_disjunction_af
.Lx1029_0:
                        .quad            .Lx1029_0_s
.Lx1029_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n584_call_proc_staged_α:
                        lea              rsi, [rbp + 7824]
                        call             proc_Image_dcα
                                                                                        jmp   .Lx1031_2
.Lx1031_2:
                        mov              qword ptr [rbp + 7776], rax
                        mov              qword ptr [rbp + 7784], rdx
                        cmp              eax, 99
                                                                                        je    n580_disjunction_af
                                                                                        jmp   n580_disjunction_as
n584_call_proc_staged_β:
                                                                                        jmp   n580_disjunction_af
.Lx1031_0:
                        .quad            .Lx1031_0_s
.Lx1031_0_s:
                        .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n585_lit_string_α:
                        mov              qword ptr [rbp + 7488], 1
                        mov              rax, qword ptr [rip + .Lx1032_0]
                        mov              qword ptr [rbp + 7496], rax
                                                                                        jmp   n587_disjunction_α
.Lx1032_0:
                        .quad            .Lx1032_0_s
.Lx1032_0_s:
                        .string          "real(\".3\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n586_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 7872]
                        mov              qword ptr [rbp + 7840], rax
                        mov              rax, qword ptr [rbp + 7880]
                        mov              qword ptr [rbp + 7848], rax
                        .section         .rodata
.Lrkfn1034:             .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1034]
                        lea              rsi, [rbp + 7840]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 7824], rax
                        mov              qword ptr [rbp + 7832], rdx
                        cmp              eax, 99
                                                                                        je    n580_disjunction_af
                                                                                        jmp   n584_call_proc_staged_α
n586_call_builtin_icon_β:
                                                                                        jmp   n580_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n587_disjunction_α:
                        mov              qword ptr [rbp + 7504], 0
                        mov              qword ptr [rbp + 7512], 0
                        mov              dword ptr [rbp + 7520], 0
                                                                                        jmp   n589_lit_string_α
n587_disjunction_as:
                        mov              eax, dword ptr [rbp + 7520]
                        cmp              eax, 0
                                                                                        jne   .Lx1036_0
                        mov              rax, qword ptr [rbp + 7536]
                        mov              qword ptr [rbp + 7504], rax
                        mov              rax, qword ptr [rbp + 7544]
                        mov              qword ptr [rbp + 7512], rax
                                                                                        jmp   n588_call_builtin_icon_α
.Lx1036_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1036_1
                        mov              rax, qword ptr [rbp + 7648]
                        mov              qword ptr [rbp + 7504], rax
                        mov              rax, qword ptr [rbp + 7656]
                        mov              qword ptr [rbp + 7512], rax
                                                                                        jmp   n588_call_builtin_icon_α
.Lx1036_1:
                                                                                        jmp   n588_call_builtin_icon_α
n587_disjunction_β:
                        mov              eax, dword ptr [rbp + 7520]
                        cmp              eax, 0
                                                                                        je    n587_disjunction_af
                                                                                        jmp   n587_disjunction_af
n587_disjunction_af:
                        add              dword ptr [rbp + 7520], 1
                        mov              eax, dword ptr [rbp + 7520]
                        cmp              eax, 1
                                                                                        je    n590_lit_string_α
                                                                                        jmp   n592_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n588_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 7488]
                        mov              qword ptr [rbp + 7440], rax
                        mov              rax, qword ptr [rbp + 7496]
                        mov              qword ptr [rbp + 7448], rax
                        mov              rax, qword ptr [rbp + 7504]
                        mov              qword ptr [rbp + 7456], rax
                        mov              rax, qword ptr [rbp + 7512]
                        mov              qword ptr [rbp + 7464], rax
                        .section         .rodata
.Lrkfn1038:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1038]
                        lea              rsi, [rbp + 7440]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 7424], rax
                        mov              qword ptr [rbp + 7432], rdx
                        cmp              eax, 99
                                                                                        je    n587_disjunction_β
                                                                                        jmp   n592_lit_string_α
n588_call_builtin_icon_β:
                                                                                        jmp   n587_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n589_lit_string_α:
                        mov              qword ptr [rbp + 7632], 1
                        mov              rax, qword ptr [rip + .Lx1039_0]
                        mov              qword ptr [rbp + 7640], rax
                                                                                        jmp   n593_call_builtin_icon_α
n589_lit_string_β:
                                                                                        jmp   n587_disjunction_af
.Lx1039_0:
                        .quad            .Lx1039_0_s
.Lx1039_0_s:
                        .string          ".3"
#-----------------------------------------------------------------------------------------------------------------------
n590_lit_string_α:
                        mov              qword ptr [rbp + 7648], 1
                        mov              rax, qword ptr [rip + .Lx1040_0]
                        mov              qword ptr [rbp + 7656], rax
                                                                                        jmp   n587_disjunction_as
n590_lit_string_β:
                                                                                        jmp   n587_disjunction_af
.Lx1040_0:
                        .quad            .Lx1040_0_s
.Lx1040_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n591_call_proc_staged_α:
                        lea              rsi, [rbp + 7584]
                        call             proc_Image_dcα
                                                                                        jmp   .Lx1042_2
.Lx1042_2:
                        mov              qword ptr [rbp + 7536], rax
                        mov              qword ptr [rbp + 7544], rdx
                        cmp              eax, 99
                                                                                        je    n587_disjunction_af
                                                                                        jmp   n587_disjunction_as
n591_call_proc_staged_β:
                                                                                        jmp   n587_disjunction_af
.Lx1042_0:
                        .quad            .Lx1042_0_s
.Lx1042_0_s:
                        .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n592_lit_string_α:
                        mov              qword ptr [rbp + 7248], 1
                        mov              rax, qword ptr [rip + .Lx1043_0]
                        mov              qword ptr [rbp + 7256], rax
                                                                                        jmp   n594_disjunction_α
.Lx1043_0:
                        .quad            .Lx1043_0_s
.Lx1043_0_s:
                        .string          "real(\"0.3\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n593_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 7632]
                        mov              qword ptr [rbp + 7600], rax
                        mov              rax, qword ptr [rbp + 7640]
                        mov              qword ptr [rbp + 7608], rax
                        .section         .rodata
.Lrkfn1045:             .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1045]
                        lea              rsi, [rbp + 7600]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 7584], rax
                        mov              qword ptr [rbp + 7592], rdx
                        cmp              eax, 99
                                                                                        je    n587_disjunction_af
                                                                                        jmp   n591_call_proc_staged_α
n593_call_builtin_icon_β:
                                                                                        jmp   n587_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n594_disjunction_α:
                        mov              qword ptr [rbp + 7264], 0
                        mov              qword ptr [rbp + 7272], 0
                        mov              dword ptr [rbp + 7280], 0
                                                                                        jmp   n596_lit_string_α
n594_disjunction_as:
                        mov              eax, dword ptr [rbp + 7280]
                        cmp              eax, 0
                                                                                        jne   .Lx1047_0
                        mov              rax, qword ptr [rbp + 7296]
                        mov              qword ptr [rbp + 7264], rax
                        mov              rax, qword ptr [rbp + 7304]
                        mov              qword ptr [rbp + 7272], rax
                                                                                        jmp   n595_call_builtin_icon_α
.Lx1047_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1047_1
                        mov              rax, qword ptr [rbp + 7408]
                        mov              qword ptr [rbp + 7264], rax
                        mov              rax, qword ptr [rbp + 7416]
                        mov              qword ptr [rbp + 7272], rax
                                                                                        jmp   n595_call_builtin_icon_α
.Lx1047_1:
                                                                                        jmp   n595_call_builtin_icon_α
n594_disjunction_β:
                        mov              eax, dword ptr [rbp + 7280]
                        cmp              eax, 0
                                                                                        je    n594_disjunction_af
                                                                                        jmp   n594_disjunction_af
n594_disjunction_af:
                        add              dword ptr [rbp + 7280], 1
                        mov              eax, dword ptr [rbp + 7280]
                        cmp              eax, 1
                                                                                        je    n597_lit_string_α
                                                                                        jmp   n599_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n595_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 7248]
                        mov              qword ptr [rbp + 7200], rax
                        mov              rax, qword ptr [rbp + 7256]
                        mov              qword ptr [rbp + 7208], rax
                        mov              rax, qword ptr [rbp + 7264]
                        mov              qword ptr [rbp + 7216], rax
                        mov              rax, qword ptr [rbp + 7272]
                        mov              qword ptr [rbp + 7224], rax
                        .section         .rodata
.Lrkfn1049:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1049]
                        lea              rsi, [rbp + 7200]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 7184], rax
                        mov              qword ptr [rbp + 7192], rdx
                        cmp              eax, 99
                                                                                        je    n594_disjunction_β
                                                                                        jmp   n599_lit_string_α
n595_call_builtin_icon_β:
                                                                                        jmp   n594_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n596_lit_string_α:
                        mov              qword ptr [rbp + 7392], 1
                        mov              rax, qword ptr [rip + .Lx1050_0]
                        mov              qword ptr [rbp + 7400], rax
                                                                                        jmp   n600_call_builtin_icon_α
n596_lit_string_β:
                                                                                        jmp   n594_disjunction_af
.Lx1050_0:
                        .quad            .Lx1050_0_s
.Lx1050_0_s:
                        .string          "0.3"
#-----------------------------------------------------------------------------------------------------------------------
n597_lit_string_α:
                        mov              qword ptr [rbp + 7408], 1
                        mov              rax, qword ptr [rip + .Lx1051_0]
                        mov              qword ptr [rbp + 7416], rax
                                                                                        jmp   n594_disjunction_as
n597_lit_string_β:
                                                                                        jmp   n594_disjunction_af
.Lx1051_0:
                        .quad            .Lx1051_0_s
.Lx1051_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n598_call_proc_staged_α:
                        lea              rsi, [rbp + 7344]
                        call             proc_Image_dcα
                                                                                        jmp   .Lx1053_2
.Lx1053_2:
                        mov              qword ptr [rbp + 7296], rax
                        mov              qword ptr [rbp + 7304], rdx
                        cmp              eax, 99
                                                                                        je    n594_disjunction_af
                                                                                        jmp   n594_disjunction_as
n598_call_proc_staged_β:
                                                                                        jmp   n594_disjunction_af
.Lx1053_0:
                        .quad            .Lx1053_0_s
.Lx1053_0_s:
                        .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n599_lit_string_α:
                        mov              qword ptr [rbp + 7008], 1
                        mov              rax, qword ptr [rip + .Lx1054_0]
                        mov              qword ptr [rbp + 7016], rax
                                                                                        jmp   n601_disjunction_α
.Lx1054_0:
                        .quad            .Lx1054_0_s
.Lx1054_0_s:
                        .string          "real(\" . 3\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n600_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 7392]
                        mov              qword ptr [rbp + 7360], rax
                        mov              rax, qword ptr [rbp + 7400]
                        mov              qword ptr [rbp + 7368], rax
                        .section         .rodata
.Lrkfn1056:             .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1056]
                        lea              rsi, [rbp + 7360]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 7344], rax
                        mov              qword ptr [rbp + 7352], rdx
                        cmp              eax, 99
                                                                                        je    n594_disjunction_af
                                                                                        jmp   n598_call_proc_staged_α
n600_call_builtin_icon_β:
                                                                                        jmp   n594_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n601_disjunction_α:
                        mov              qword ptr [rbp + 7024], 0
                        mov              qword ptr [rbp + 7032], 0
                        mov              dword ptr [rbp + 7040], 0
                                                                                        jmp   n603_lit_string_α
n601_disjunction_as:
                        mov              eax, dword ptr [rbp + 7040]
                        cmp              eax, 0
                                                                                        jne   .Lx1058_0
                        mov              rax, qword ptr [rbp + 7056]
                        mov              qword ptr [rbp + 7024], rax
                        mov              rax, qword ptr [rbp + 7064]
                        mov              qword ptr [rbp + 7032], rax
                                                                                        jmp   n602_call_builtin_icon_α
.Lx1058_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1058_1
                        mov              rax, qword ptr [rbp + 7168]
                        mov              qword ptr [rbp + 7024], rax
                        mov              rax, qword ptr [rbp + 7176]
                        mov              qword ptr [rbp + 7032], rax
                                                                                        jmp   n602_call_builtin_icon_α
.Lx1058_1:
                                                                                        jmp   n602_call_builtin_icon_α
n601_disjunction_β:
                        mov              eax, dword ptr [rbp + 7040]
                        cmp              eax, 0
                                                                                        je    n601_disjunction_af
                                                                                        jmp   n601_disjunction_af
n601_disjunction_af:
                        add              dword ptr [rbp + 7040], 1
                        mov              eax, dword ptr [rbp + 7040]
                        cmp              eax, 1
                                                                                        je    n604_lit_string_α
                                                                                        jmp   n606_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n602_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 7008]
                        mov              qword ptr [rbp + 6960], rax
                        mov              rax, qword ptr [rbp + 7016]
                        mov              qword ptr [rbp + 6968], rax
                        mov              rax, qword ptr [rbp + 7024]
                        mov              qword ptr [rbp + 6976], rax
                        mov              rax, qword ptr [rbp + 7032]
                        mov              qword ptr [rbp + 6984], rax
                        .section         .rodata
.Lrkfn1060:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1060]
                        lea              rsi, [rbp + 6960]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 6944], rax
                        mov              qword ptr [rbp + 6952], rdx
                        cmp              eax, 99
                                                                                        je    n601_disjunction_β
                                                                                        jmp   n606_lit_string_α
n602_call_builtin_icon_β:
                                                                                        jmp   n601_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n603_lit_string_α:
                        mov              qword ptr [rbp + 7152], 1
                        mov              rax, qword ptr [rip + .Lx1061_0]
                        mov              qword ptr [rbp + 7160], rax
                                                                                        jmp   n607_call_builtin_icon_α
n603_lit_string_β:
                                                                                        jmp   n601_disjunction_af
.Lx1061_0:
                        .quad            .Lx1061_0_s
.Lx1061_0_s:
                        .string          " . 3"
#-----------------------------------------------------------------------------------------------------------------------
n604_lit_string_α:
                        mov              qword ptr [rbp + 7168], 1
                        mov              rax, qword ptr [rip + .Lx1062_0]
                        mov              qword ptr [rbp + 7176], rax
                                                                                        jmp   n601_disjunction_as
n604_lit_string_β:
                                                                                        jmp   n601_disjunction_af
.Lx1062_0:
                        .quad            .Lx1062_0_s
.Lx1062_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n605_call_proc_staged_α:
                        lea              rsi, [rbp + 7104]
                        call             proc_Image_dcα
                                                                                        jmp   .Lx1064_2
.Lx1064_2:
                        mov              qword ptr [rbp + 7056], rax
                        mov              qword ptr [rbp + 7064], rdx
                        cmp              eax, 99
                                                                                        je    n601_disjunction_af
                                                                                        jmp   n601_disjunction_as
n605_call_proc_staged_β:
                                                                                        jmp   n601_disjunction_af
.Lx1064_0:
                        .quad            .Lx1064_0_s
.Lx1064_0_s:
                        .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n606_lit_string_α:
                        mov              qword ptr [rbp + 6768], 1
                        mov              rax, qword ptr [rip + .Lx1065_0]
                        mov              qword ptr [rbp + 6776], rax
                                                                                        jmp   n608_disjunction_α
.Lx1065_0:
                        .quad            .Lx1065_0_s
.Lx1065_0_s:
                        .string          "real(\"e2\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n607_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 7152]
                        mov              qword ptr [rbp + 7120], rax
                        mov              rax, qword ptr [rbp + 7160]
                        mov              qword ptr [rbp + 7128], rax
                        .section         .rodata
.Lrkfn1067:             .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1067]
                        lea              rsi, [rbp + 7120]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 7104], rax
                        mov              qword ptr [rbp + 7112], rdx
                        cmp              eax, 99
                                                                                        je    n601_disjunction_af
                                                                                        jmp   n605_call_proc_staged_α
n607_call_builtin_icon_β:
                                                                                        jmp   n601_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n608_disjunction_α:
                        mov              qword ptr [rbp + 6784], 0
                        mov              qword ptr [rbp + 6792], 0
                        mov              dword ptr [rbp + 6800], 0
                                                                                        jmp   n610_lit_string_α
n608_disjunction_as:
                        mov              eax, dword ptr [rbp + 6800]
                        cmp              eax, 0
                                                                                        jne   .Lx1069_0
                        mov              rax, qword ptr [rbp + 6816]
                        mov              qword ptr [rbp + 6784], rax
                        mov              rax, qword ptr [rbp + 6824]
                        mov              qword ptr [rbp + 6792], rax
                                                                                        jmp   n609_call_builtin_icon_α
.Lx1069_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1069_1
                        mov              rax, qword ptr [rbp + 6928]
                        mov              qword ptr [rbp + 6784], rax
                        mov              rax, qword ptr [rbp + 6936]
                        mov              qword ptr [rbp + 6792], rax
                                                                                        jmp   n609_call_builtin_icon_α
.Lx1069_1:
                                                                                        jmp   n609_call_builtin_icon_α
n608_disjunction_β:
                        mov              eax, dword ptr [rbp + 6800]
                        cmp              eax, 0
                                                                                        je    n608_disjunction_af
                                                                                        jmp   n608_disjunction_af
n608_disjunction_af:
                        add              dword ptr [rbp + 6800], 1
                        mov              eax, dword ptr [rbp + 6800]
                        cmp              eax, 1
                                                                                        je    n611_lit_string_α
                                                                                        jmp   n613_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n609_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 6768]
                        mov              qword ptr [rbp + 6720], rax
                        mov              rax, qword ptr [rbp + 6776]
                        mov              qword ptr [rbp + 6728], rax
                        mov              rax, qword ptr [rbp + 6784]
                        mov              qword ptr [rbp + 6736], rax
                        mov              rax, qword ptr [rbp + 6792]
                        mov              qword ptr [rbp + 6744], rax
                        .section         .rodata
.Lrkfn1071:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1071]
                        lea              rsi, [rbp + 6720]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 6704], rax
                        mov              qword ptr [rbp + 6712], rdx
                        cmp              eax, 99
                                                                                        je    n608_disjunction_β
                                                                                        jmp   n613_lit_string_α
n609_call_builtin_icon_β:
                                                                                        jmp   n608_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n610_lit_string_α:
                        mov              qword ptr [rbp + 6912], 1
                        mov              rax, qword ptr [rip + .Lx1072_0]
                        mov              qword ptr [rbp + 6920], rax
                                                                                        jmp   n614_call_builtin_icon_α
n610_lit_string_β:
                                                                                        jmp   n608_disjunction_af
.Lx1072_0:
                        .quad            .Lx1072_0_s
.Lx1072_0_s:
                        .string          "e2"
#-----------------------------------------------------------------------------------------------------------------------
n611_lit_string_α:
                        mov              qword ptr [rbp + 6928], 1
                        mov              rax, qword ptr [rip + .Lx1073_0]
                        mov              qword ptr [rbp + 6936], rax
                                                                                        jmp   n608_disjunction_as
n611_lit_string_β:
                                                                                        jmp   n608_disjunction_af
.Lx1073_0:
                        .quad            .Lx1073_0_s
.Lx1073_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n612_call_proc_staged_α:
                        lea              rsi, [rbp + 6864]
                        call             proc_Image_dcα
                                                                                        jmp   .Lx1075_2
.Lx1075_2:
                        mov              qword ptr [rbp + 6816], rax
                        mov              qword ptr [rbp + 6824], rdx
                        cmp              eax, 99
                                                                                        je    n608_disjunction_af
                                                                                        jmp   n608_disjunction_as
n612_call_proc_staged_β:
                                                                                        jmp   n608_disjunction_af
.Lx1075_0:
                        .quad            .Lx1075_0_s
.Lx1075_0_s:
                        .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n613_lit_string_α:
                        mov              qword ptr [rbp + 6528], 1
                        mov              rax, qword ptr [rip + .Lx1076_0]
                        mov              qword ptr [rbp + 6536], rax
                                                                                        jmp   n615_disjunction_α
.Lx1076_0:
                        .quad            .Lx1076_0_s
.Lx1076_0_s:
                        .string          "real(\"3e500\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n614_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 6912]
                        mov              qword ptr [rbp + 6880], rax
                        mov              rax, qword ptr [rbp + 6920]
                        mov              qword ptr [rbp + 6888], rax
                        .section         .rodata
.Lrkfn1078:             .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1078]
                        lea              rsi, [rbp + 6880]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 6864], rax
                        mov              qword ptr [rbp + 6872], rdx
                        cmp              eax, 99
                                                                                        je    n608_disjunction_af
                                                                                        jmp   n612_call_proc_staged_α
n614_call_builtin_icon_β:
                                                                                        jmp   n608_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n615_disjunction_α:
                        mov              qword ptr [rbp + 6544], 0
                        mov              qword ptr [rbp + 6552], 0
                        mov              dword ptr [rbp + 6560], 0
                                                                                        jmp   n617_lit_string_α
n615_disjunction_as:
                        mov              eax, dword ptr [rbp + 6560]
                        cmp              eax, 0
                                                                                        jne   .Lx1080_0
                        mov              rax, qword ptr [rbp + 6576]
                        mov              qword ptr [rbp + 6544], rax
                        mov              rax, qword ptr [rbp + 6584]
                        mov              qword ptr [rbp + 6552], rax
                                                                                        jmp   n616_call_builtin_icon_α
.Lx1080_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1080_1
                        mov              rax, qword ptr [rbp + 6688]
                        mov              qword ptr [rbp + 6544], rax
                        mov              rax, qword ptr [rbp + 6696]
                        mov              qword ptr [rbp + 6552], rax
                                                                                        jmp   n616_call_builtin_icon_α
.Lx1080_1:
                                                                                        jmp   n616_call_builtin_icon_α
n615_disjunction_β:
                        mov              eax, dword ptr [rbp + 6560]
                        cmp              eax, 0
                                                                                        je    n615_disjunction_af
                                                                                        jmp   n615_disjunction_af
n615_disjunction_af:
                        add              dword ptr [rbp + 6560], 1
                        mov              eax, dword ptr [rbp + 6560]
                        cmp              eax, 1
                                                                                        je    n618_lit_string_α
                                                                                        jmp   n620_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n616_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 6528]
                        mov              qword ptr [rbp + 6480], rax
                        mov              rax, qword ptr [rbp + 6536]
                        mov              qword ptr [rbp + 6488], rax
                        mov              rax, qword ptr [rbp + 6544]
                        mov              qword ptr [rbp + 6496], rax
                        mov              rax, qword ptr [rbp + 6552]
                        mov              qword ptr [rbp + 6504], rax
                        .section         .rodata
.Lrkfn1082:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1082]
                        lea              rsi, [rbp + 6480]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 6464], rax
                        mov              qword ptr [rbp + 6472], rdx
                        cmp              eax, 99
                                                                                        je    n615_disjunction_β
                                                                                        jmp   n620_lit_string_α
n616_call_builtin_icon_β:
                                                                                        jmp   n615_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n617_lit_string_α:
                        mov              qword ptr [rbp + 6672], 1
                        mov              rax, qword ptr [rip + .Lx1083_0]
                        mov              qword ptr [rbp + 6680], rax
                                                                                        jmp   n621_call_builtin_icon_α
n617_lit_string_β:
                                                                                        jmp   n615_disjunction_af
.Lx1083_0:
                        .quad            .Lx1083_0_s
.Lx1083_0_s:
                        .string          "3e500"
#-----------------------------------------------------------------------------------------------------------------------
n618_lit_string_α:
                        mov              qword ptr [rbp + 6688], 1
                        mov              rax, qword ptr [rip + .Lx1084_0]
                        mov              qword ptr [rbp + 6696], rax
                                                                                        jmp   n615_disjunction_as
n618_lit_string_β:
                                                                                        jmp   n615_disjunction_af
.Lx1084_0:
                        .quad            .Lx1084_0_s
.Lx1084_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n619_call_proc_staged_α:
                        lea              rsi, [rbp + 6624]
                        call             proc_Image_dcα
                                                                                        jmp   .Lx1086_2
.Lx1086_2:
                        mov              qword ptr [rbp + 6576], rax
                        mov              qword ptr [rbp + 6584], rdx
                        cmp              eax, 99
                                                                                        je    n615_disjunction_af
                                                                                        jmp   n615_disjunction_as
n619_call_proc_staged_β:
                                                                                        jmp   n615_disjunction_af
.Lx1086_0:
                        .quad            .Lx1086_0_s
.Lx1086_0_s:
                        .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n620_lit_string_α:
                        mov              qword ptr [rbp + 6288], 1
                        mov              rax, qword ptr [rip + .Lx1087_0]
                        mov              qword ptr [rbp + 6296], rax
                                                                                        jmp   n622_disjunction_α
.Lx1087_0:
                        .quad            .Lx1087_0_s
.Lx1087_0_s:
                        .string          "real(\"7r4\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n621_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 6672]
                        mov              qword ptr [rbp + 6640], rax
                        mov              rax, qword ptr [rbp + 6680]
                        mov              qword ptr [rbp + 6648], rax
                        .section         .rodata
.Lrkfn1089:             .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1089]
                        lea              rsi, [rbp + 6640]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 6624], rax
                        mov              qword ptr [rbp + 6632], rdx
                        cmp              eax, 99
                                                                                        je    n615_disjunction_af
                                                                                        jmp   n619_call_proc_staged_α
n621_call_builtin_icon_β:
                                                                                        jmp   n615_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n622_disjunction_α:
                        mov              qword ptr [rbp + 6304], 0
                        mov              qword ptr [rbp + 6312], 0
                        mov              dword ptr [rbp + 6320], 0
                                                                                        jmp   n624_lit_string_α
n622_disjunction_as:
                        mov              eax, dword ptr [rbp + 6320]
                        cmp              eax, 0
                                                                                        jne   .Lx1091_0
                        mov              rax, qword ptr [rbp + 6336]
                        mov              qword ptr [rbp + 6304], rax
                        mov              rax, qword ptr [rbp + 6344]
                        mov              qword ptr [rbp + 6312], rax
                                                                                        jmp   n623_call_builtin_icon_α
.Lx1091_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1091_1
                        mov              rax, qword ptr [rbp + 6448]
                        mov              qword ptr [rbp + 6304], rax
                        mov              rax, qword ptr [rbp + 6456]
                        mov              qword ptr [rbp + 6312], rax
                                                                                        jmp   n623_call_builtin_icon_α
.Lx1091_1:
                                                                                        jmp   n623_call_builtin_icon_α
n622_disjunction_β:
                        mov              eax, dword ptr [rbp + 6320]
                        cmp              eax, 0
                                                                                        je    n622_disjunction_af
                                                                                        jmp   n622_disjunction_af
n622_disjunction_af:
                        add              dword ptr [rbp + 6320], 1
                        mov              eax, dword ptr [rbp + 6320]
                        cmp              eax, 1
                                                                                        je    n625_lit_string_α
                                                                                        jmp   n627_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n623_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 6288]
                        mov              qword ptr [rbp + 6240], rax
                        mov              rax, qword ptr [rbp + 6296]
                        mov              qword ptr [rbp + 6248], rax
                        mov              rax, qword ptr [rbp + 6304]
                        mov              qword ptr [rbp + 6256], rax
                        mov              rax, qword ptr [rbp + 6312]
                        mov              qword ptr [rbp + 6264], rax
                        .section         .rodata
.Lrkfn1093:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1093]
                        lea              rsi, [rbp + 6240]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 6224], rax
                        mov              qword ptr [rbp + 6232], rdx
                        cmp              eax, 99
                                                                                        je    n622_disjunction_β
                                                                                        jmp   n627_lit_string_α
n623_call_builtin_icon_β:
                                                                                        jmp   n622_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n624_lit_string_α:
                        mov              qword ptr [rbp + 6432], 1
                        mov              rax, qword ptr [rip + .Lx1094_0]
                        mov              qword ptr [rbp + 6440], rax
                                                                                        jmp   n628_call_builtin_icon_α
n624_lit_string_β:
                                                                                        jmp   n622_disjunction_af
.Lx1094_0:
                        .quad            .Lx1094_0_s
.Lx1094_0_s:
                        .string          "7r4"
#-----------------------------------------------------------------------------------------------------------------------
n625_lit_string_α:
                        mov              qword ptr [rbp + 6448], 1
                        mov              rax, qword ptr [rip + .Lx1095_0]
                        mov              qword ptr [rbp + 6456], rax
                                                                                        jmp   n622_disjunction_as
n625_lit_string_β:
                                                                                        jmp   n622_disjunction_af
.Lx1095_0:
                        .quad            .Lx1095_0_s
.Lx1095_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n626_call_proc_staged_α:
                        lea              rsi, [rbp + 6384]
                        call             proc_Image_dcα
                                                                                        jmp   .Lx1097_2
.Lx1097_2:
                        mov              qword ptr [rbp + 6336], rax
                        mov              qword ptr [rbp + 6344], rdx
                        cmp              eax, 99
                                                                                        je    n622_disjunction_af
                                                                                        jmp   n622_disjunction_as
n626_call_proc_staged_β:
                                                                                        jmp   n622_disjunction_af
.Lx1097_0:
                        .quad            .Lx1097_0_s
.Lx1097_0_s:
                        .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n627_lit_string_α:
                        mov              qword ptr [rbp + 6048], 1
                        mov              rax, qword ptr [rip + .Lx1098_0]
                        mov              qword ptr [rbp + 6056], rax
                                                                                        jmp   n629_disjunction_α
.Lx1098_0:
                        .quad            .Lx1098_0_s
.Lx1098_0_s:
                        .string          "real(\"4r7\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n628_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 6432]
                        mov              qword ptr [rbp + 6400], rax
                        mov              rax, qword ptr [rbp + 6440]
                        mov              qword ptr [rbp + 6408], rax
                        .section         .rodata
.Lrkfn1100:             .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1100]
                        lea              rsi, [rbp + 6400]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 6384], rax
                        mov              qword ptr [rbp + 6392], rdx
                        cmp              eax, 99
                                                                                        je    n622_disjunction_af
                                                                                        jmp   n626_call_proc_staged_α
n628_call_builtin_icon_β:
                                                                                        jmp   n622_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n629_disjunction_α:
                        mov              qword ptr [rbp + 6064], 0
                        mov              qword ptr [rbp + 6072], 0
                        mov              dword ptr [rbp + 6080], 0
                                                                                        jmp   n631_lit_string_α
n629_disjunction_as:
                        mov              eax, dword ptr [rbp + 6080]
                        cmp              eax, 0
                                                                                        jne   .Lx1102_0
                        mov              rax, qword ptr [rbp + 6096]
                        mov              qword ptr [rbp + 6064], rax
                        mov              rax, qword ptr [rbp + 6104]
                        mov              qword ptr [rbp + 6072], rax
                                                                                        jmp   n630_call_builtin_icon_α
.Lx1102_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1102_1
                        mov              rax, qword ptr [rbp + 6208]
                        mov              qword ptr [rbp + 6064], rax
                        mov              rax, qword ptr [rbp + 6216]
                        mov              qword ptr [rbp + 6072], rax
                                                                                        jmp   n630_call_builtin_icon_α
.Lx1102_1:
                                                                                        jmp   n630_call_builtin_icon_α
n629_disjunction_β:
                        mov              eax, dword ptr [rbp + 6080]
                        cmp              eax, 0
                                                                                        je    n629_disjunction_af
                                                                                        jmp   n629_disjunction_af
n629_disjunction_af:
                        add              dword ptr [rbp + 6080], 1
                        mov              eax, dword ptr [rbp + 6080]
                        cmp              eax, 1
                                                                                        je    n632_lit_string_α
                                                                                        jmp   n634_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n630_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 6048]
                        mov              qword ptr [rbp + 6000], rax
                        mov              rax, qword ptr [rbp + 6056]
                        mov              qword ptr [rbp + 6008], rax
                        mov              rax, qword ptr [rbp + 6064]
                        mov              qword ptr [rbp + 6016], rax
                        mov              rax, qword ptr [rbp + 6072]
                        mov              qword ptr [rbp + 6024], rax
                        .section         .rodata
.Lrkfn1104:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1104]
                        lea              rsi, [rbp + 6000]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5984], rax
                        mov              qword ptr [rbp + 5992], rdx
                        cmp              eax, 99
                                                                                        je    n629_disjunction_β
                                                                                        jmp   n634_lit_string_α
n630_call_builtin_icon_β:
                                                                                        jmp   n629_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n631_lit_string_α:
                        mov              qword ptr [rbp + 6192], 1
                        mov              rax, qword ptr [rip + .Lx1105_0]
                        mov              qword ptr [rbp + 6200], rax
                                                                                        jmp   n635_call_builtin_icon_α
n631_lit_string_β:
                                                                                        jmp   n629_disjunction_af
.Lx1105_0:
                        .quad            .Lx1105_0_s
.Lx1105_0_s:
                        .string          "4r7"
#-----------------------------------------------------------------------------------------------------------------------
n632_lit_string_α:
                        mov              qword ptr [rbp + 6208], 1
                        mov              rax, qword ptr [rip + .Lx1106_0]
                        mov              qword ptr [rbp + 6216], rax
                                                                                        jmp   n629_disjunction_as
n632_lit_string_β:
                                                                                        jmp   n629_disjunction_af
.Lx1106_0:
                        .quad            .Lx1106_0_s
.Lx1106_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n633_call_proc_staged_α:
                        lea              rsi, [rbp + 6144]
                        call             proc_Image_dcα
                                                                                        jmp   .Lx1108_2
.Lx1108_2:
                        mov              qword ptr [rbp + 6096], rax
                        mov              qword ptr [rbp + 6104], rdx
                        cmp              eax, 99
                                                                                        je    n629_disjunction_af
                                                                                        jmp   n629_disjunction_as
n633_call_proc_staged_β:
                                                                                        jmp   n629_disjunction_af
.Lx1108_0:
                        .quad            .Lx1108_0_s
.Lx1108_0_s:
                        .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n634_lit_string_α:
                        mov              qword ptr [rbp + 5808], 1
                        mov              rax, qword ptr [rip + .Lx1109_0]
                        mov              qword ptr [rbp + 5816], rax
                                                                                        jmp   n636_disjunction_α
.Lx1109_0:
                        .quad            .Lx1109_0_s
.Lx1109_0_s:
                        .string          "real(\"4r 7\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n635_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 6192]
                        mov              qword ptr [rbp + 6160], rax
                        mov              rax, qword ptr [rbp + 6200]
                        mov              qword ptr [rbp + 6168], rax
                        .section         .rodata
.Lrkfn1111:             .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1111]
                        lea              rsi, [rbp + 6160]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 6144], rax
                        mov              qword ptr [rbp + 6152], rdx
                        cmp              eax, 99
                                                                                        je    n629_disjunction_af
                                                                                        jmp   n633_call_proc_staged_α
n635_call_builtin_icon_β:
                                                                                        jmp   n629_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n636_disjunction_α:
                        mov              qword ptr [rbp + 5824], 0
                        mov              qword ptr [rbp + 5832], 0
                        mov              dword ptr [rbp + 5840], 0
                                                                                        jmp   n638_lit_string_α
n636_disjunction_as:
                        mov              eax, dword ptr [rbp + 5840]
                        cmp              eax, 0
                                                                                        jne   .Lx1113_0
                        mov              rax, qword ptr [rbp + 5856]
                        mov              qword ptr [rbp + 5824], rax
                        mov              rax, qword ptr [rbp + 5864]
                        mov              qword ptr [rbp + 5832], rax
                                                                                        jmp   n637_call_builtin_icon_α
.Lx1113_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1113_1
                        mov              rax, qword ptr [rbp + 5968]
                        mov              qword ptr [rbp + 5824], rax
                        mov              rax, qword ptr [rbp + 5976]
                        mov              qword ptr [rbp + 5832], rax
                                                                                        jmp   n637_call_builtin_icon_α
.Lx1113_1:
                                                                                        jmp   n637_call_builtin_icon_α
n636_disjunction_β:
                        mov              eax, dword ptr [rbp + 5840]
                        cmp              eax, 0
                                                                                        je    n636_disjunction_af
                                                                                        jmp   n636_disjunction_af
n636_disjunction_af:
                        add              dword ptr [rbp + 5840], 1
                        mov              eax, dword ptr [rbp + 5840]
                        cmp              eax, 1
                                                                                        je    n639_lit_string_α
                                                                                        jmp   n641_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n637_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 5808]
                        mov              qword ptr [rbp + 5760], rax
                        mov              rax, qword ptr [rbp + 5816]
                        mov              qword ptr [rbp + 5768], rax
                        mov              rax, qword ptr [rbp + 5824]
                        mov              qword ptr [rbp + 5776], rax
                        mov              rax, qword ptr [rbp + 5832]
                        mov              qword ptr [rbp + 5784], rax
                        .section         .rodata
.Lrkfn1115:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1115]
                        lea              rsi, [rbp + 5760]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5744], rax
                        mov              qword ptr [rbp + 5752], rdx
                        cmp              eax, 99
                                                                                        je    n636_disjunction_β
                                                                                        jmp   n641_lit_string_α
n637_call_builtin_icon_β:
                                                                                        jmp   n636_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n638_lit_string_α:
                        mov              qword ptr [rbp + 5952], 1
                        mov              rax, qword ptr [rip + .Lx1116_0]
                        mov              qword ptr [rbp + 5960], rax
                                                                                        jmp   n642_call_builtin_icon_α
n638_lit_string_β:
                                                                                        jmp   n636_disjunction_af
.Lx1116_0:
                        .quad            .Lx1116_0_s
.Lx1116_0_s:
                        .string          "4r 7"
#-----------------------------------------------------------------------------------------------------------------------
n639_lit_string_α:
                        mov              qword ptr [rbp + 5968], 1
                        mov              rax, qword ptr [rip + .Lx1117_0]
                        mov              qword ptr [rbp + 5976], rax
                                                                                        jmp   n636_disjunction_as
n639_lit_string_β:
                                                                                        jmp   n636_disjunction_af
.Lx1117_0:
                        .quad            .Lx1117_0_s
.Lx1117_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n640_call_proc_staged_α:
                        lea              rsi, [rbp + 5904]
                        call             proc_Image_dcα
                                                                                        jmp   .Lx1119_2
.Lx1119_2:
                        mov              qword ptr [rbp + 5856], rax
                        mov              qword ptr [rbp + 5864], rdx
                        cmp              eax, 99
                                                                                        je    n636_disjunction_af
                                                                                        jmp   n636_disjunction_as
n640_call_proc_staged_β:
                                                                                        jmp   n636_disjunction_af
.Lx1119_0:
                        .quad            .Lx1119_0_s
.Lx1119_0_s:
                        .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n641_lit_string_α:
                        mov              qword ptr [rbp + 5568], 1
                        mov              rax, qword ptr [rip + .Lx1120_0]
                        mov              qword ptr [rbp + 5576], rax
                                                                                        jmp   n643_disjunction_α
.Lx1120_0:
                        .quad            .Lx1120_0_s
.Lx1120_0_s:
                        .string          "real(\"7r 4\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n642_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 5952]
                        mov              qword ptr [rbp + 5920], rax
                        mov              rax, qword ptr [rbp + 5960]
                        mov              qword ptr [rbp + 5928], rax
                        .section         .rodata
.Lrkfn1122:             .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1122]
                        lea              rsi, [rbp + 5920]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5904], rax
                        mov              qword ptr [rbp + 5912], rdx
                        cmp              eax, 99
                                                                                        je    n636_disjunction_af
                                                                                        jmp   n640_call_proc_staged_α
n642_call_builtin_icon_β:
                                                                                        jmp   n636_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n643_disjunction_α:
                        mov              qword ptr [rbp + 5584], 0
                        mov              qword ptr [rbp + 5592], 0
                        mov              dword ptr [rbp + 5600], 0
                                                                                        jmp   n645_lit_string_α
n643_disjunction_as:
                        mov              eax, dword ptr [rbp + 5600]
                        cmp              eax, 0
                                                                                        jne   .Lx1124_0
                        mov              rax, qword ptr [rbp + 5616]
                        mov              qword ptr [rbp + 5584], rax
                        mov              rax, qword ptr [rbp + 5624]
                        mov              qword ptr [rbp + 5592], rax
                                                                                        jmp   n644_call_builtin_icon_α
.Lx1124_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1124_1
                        mov              rax, qword ptr [rbp + 5728]
                        mov              qword ptr [rbp + 5584], rax
                        mov              rax, qword ptr [rbp + 5736]
                        mov              qword ptr [rbp + 5592], rax
                                                                                        jmp   n644_call_builtin_icon_α
.Lx1124_1:
                                                                                        jmp   n644_call_builtin_icon_α
n643_disjunction_β:
                        mov              eax, dword ptr [rbp + 5600]
                        cmp              eax, 0
                                                                                        je    n643_disjunction_af
                                                                                        jmp   n643_disjunction_af
n643_disjunction_af:
                        add              dword ptr [rbp + 5600], 1
                        mov              eax, dword ptr [rbp + 5600]
                        cmp              eax, 1
                                                                                        je    n646_lit_string_α
                                                                                        jmp   n648_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n644_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 5568]
                        mov              qword ptr [rbp + 5520], rax
                        mov              rax, qword ptr [rbp + 5576]
                        mov              qword ptr [rbp + 5528], rax
                        mov              rax, qword ptr [rbp + 5584]
                        mov              qword ptr [rbp + 5536], rax
                        mov              rax, qword ptr [rbp + 5592]
                        mov              qword ptr [rbp + 5544], rax
                        .section         .rodata
.Lrkfn1126:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1126]
                        lea              rsi, [rbp + 5520]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5504], rax
                        mov              qword ptr [rbp + 5512], rdx
                        cmp              eax, 99
                                                                                        je    n643_disjunction_β
                                                                                        jmp   n648_lit_string_α
n644_call_builtin_icon_β:
                                                                                        jmp   n643_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n645_lit_string_α:
                        mov              qword ptr [rbp + 5712], 1
                        mov              rax, qword ptr [rip + .Lx1127_0]
                        mov              qword ptr [rbp + 5720], rax
                                                                                        jmp   n649_call_builtin_icon_α
n645_lit_string_β:
                                                                                        jmp   n643_disjunction_af
.Lx1127_0:
                        .quad            .Lx1127_0_s
.Lx1127_0_s:
                        .string          "7r 4"
#-----------------------------------------------------------------------------------------------------------------------
n646_lit_string_α:
                        mov              qword ptr [rbp + 5728], 1
                        mov              rax, qword ptr [rip + .Lx1128_0]
                        mov              qword ptr [rbp + 5736], rax
                                                                                        jmp   n643_disjunction_as
n646_lit_string_β:
                                                                                        jmp   n643_disjunction_af
.Lx1128_0:
                        .quad            .Lx1128_0_s
.Lx1128_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n647_call_proc_staged_α:
                        lea              rsi, [rbp + 5664]
                        call             proc_Image_dcα
                                                                                        jmp   .Lx1130_2
.Lx1130_2:
                        mov              qword ptr [rbp + 5616], rax
                        mov              qword ptr [rbp + 5624], rdx
                        cmp              eax, 99
                                                                                        je    n643_disjunction_af
                                                                                        jmp   n643_disjunction_as
n647_call_proc_staged_β:
                                                                                        jmp   n643_disjunction_af
.Lx1130_0:
                        .quad            .Lx1130_0_s
.Lx1130_0_s:
                        .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n648_lit_string_α:
                        mov              qword ptr [rbp + 5328], 1
                        mov              rax, qword ptr [rip + .Lx1131_0]
                        mov              qword ptr [rbp + 5336], rax
                                                                                        jmp   n650_disjunction_α
.Lx1131_0:
                        .quad            .Lx1131_0_s
.Lx1131_0_s:
                        .string          "real(\"16rff\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n649_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 5712]
                        mov              qword ptr [rbp + 5680], rax
                        mov              rax, qword ptr [rbp + 5720]
                        mov              qword ptr [rbp + 5688], rax
                        .section         .rodata
.Lrkfn1133:             .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1133]
                        lea              rsi, [rbp + 5680]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5664], rax
                        mov              qword ptr [rbp + 5672], rdx
                        cmp              eax, 99
                                                                                        je    n643_disjunction_af
                                                                                        jmp   n647_call_proc_staged_α
n649_call_builtin_icon_β:
                                                                                        jmp   n643_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n650_disjunction_α:
                        mov              qword ptr [rbp + 5344], 0
                        mov              qword ptr [rbp + 5352], 0
                        mov              dword ptr [rbp + 5360], 0
                                                                                        jmp   n652_lit_string_α
n650_disjunction_as:
                        mov              eax, dword ptr [rbp + 5360]
                        cmp              eax, 0
                                                                                        jne   .Lx1135_0
                        mov              rax, qword ptr [rbp + 5376]
                        mov              qword ptr [rbp + 5344], rax
                        mov              rax, qword ptr [rbp + 5384]
                        mov              qword ptr [rbp + 5352], rax
                                                                                        jmp   n651_call_builtin_icon_α
.Lx1135_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1135_1
                        mov              rax, qword ptr [rbp + 5488]
                        mov              qword ptr [rbp + 5344], rax
                        mov              rax, qword ptr [rbp + 5496]
                        mov              qword ptr [rbp + 5352], rax
                                                                                        jmp   n651_call_builtin_icon_α
.Lx1135_1:
                                                                                        jmp   n651_call_builtin_icon_α
n650_disjunction_β:
                        mov              eax, dword ptr [rbp + 5360]
                        cmp              eax, 0
                                                                                        je    n650_disjunction_af
                                                                                        jmp   n650_disjunction_af
n650_disjunction_af:
                        add              dword ptr [rbp + 5360], 1
                        mov              eax, dword ptr [rbp + 5360]
                        cmp              eax, 1
                                                                                        je    n653_lit_string_α
                                                                                        jmp   n655_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n651_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 5328]
                        mov              qword ptr [rbp + 5280], rax
                        mov              rax, qword ptr [rbp + 5336]
                        mov              qword ptr [rbp + 5288], rax
                        mov              rax, qword ptr [rbp + 5344]
                        mov              qword ptr [rbp + 5296], rax
                        mov              rax, qword ptr [rbp + 5352]
                        mov              qword ptr [rbp + 5304], rax
                        .section         .rodata
.Lrkfn1137:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1137]
                        lea              rsi, [rbp + 5280]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5264], rax
                        mov              qword ptr [rbp + 5272], rdx
                        cmp              eax, 99
                                                                                        je    n650_disjunction_β
                                                                                        jmp   n655_lit_string_α
n651_call_builtin_icon_β:
                                                                                        jmp   n650_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n652_lit_string_α:
                        mov              qword ptr [rbp + 5472], 1
                        mov              rax, qword ptr [rip + .Lx1138_0]
                        mov              qword ptr [rbp + 5480], rax
                                                                                        jmp   n656_call_builtin_icon_α
n652_lit_string_β:
                                                                                        jmp   n650_disjunction_af
.Lx1138_0:
                        .quad            .Lx1138_0_s
.Lx1138_0_s:
                        .string          "16rff"
#-----------------------------------------------------------------------------------------------------------------------
n653_lit_string_α:
                        mov              qword ptr [rbp + 5488], 1
                        mov              rax, qword ptr [rip + .Lx1139_0]
                        mov              qword ptr [rbp + 5496], rax
                                                                                        jmp   n650_disjunction_as
n653_lit_string_β:
                                                                                        jmp   n650_disjunction_af
.Lx1139_0:
                        .quad            .Lx1139_0_s
.Lx1139_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n654_call_proc_staged_α:
                        lea              rsi, [rbp + 5424]
                        call             proc_Image_dcα
                                                                                        jmp   .Lx1141_2
.Lx1141_2:
                        mov              qword ptr [rbp + 5376], rax
                        mov              qword ptr [rbp + 5384], rdx
                        cmp              eax, 99
                                                                                        je    n650_disjunction_af
                                                                                        jmp   n650_disjunction_as
n654_call_proc_staged_β:
                                                                                        jmp   n650_disjunction_af
.Lx1141_0:
                        .quad            .Lx1141_0_s
.Lx1141_0_s:
                        .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n655_lit_string_α:
                        mov              qword ptr [rbp + 5088], 1
                        mov              rax, qword ptr [rip + .Lx1142_0]
                        mov              qword ptr [rbp + 5096], rax
                                                                                        jmp   n657_disjunction_α
.Lx1142_0:
                        .quad            .Lx1142_0_s
.Lx1142_0_s:
                        .string          "real(\"36rcat\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n656_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 5472]
                        mov              qword ptr [rbp + 5440], rax
                        mov              rax, qword ptr [rbp + 5480]
                        mov              qword ptr [rbp + 5448], rax
                        .section         .rodata
.Lrkfn1144:             .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1144]
                        lea              rsi, [rbp + 5440]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5424], rax
                        mov              qword ptr [rbp + 5432], rdx
                        cmp              eax, 99
                                                                                        je    n650_disjunction_af
                                                                                        jmp   n654_call_proc_staged_α
n656_call_builtin_icon_β:
                                                                                        jmp   n650_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n657_disjunction_α:
                        mov              qword ptr [rbp + 5104], 0
                        mov              qword ptr [rbp + 5112], 0
                        mov              dword ptr [rbp + 5120], 0
                                                                                        jmp   n659_lit_string_α
n657_disjunction_as:
                        mov              eax, dword ptr [rbp + 5120]
                        cmp              eax, 0
                                                                                        jne   .Lx1146_0
                        mov              rax, qword ptr [rbp + 5136]
                        mov              qword ptr [rbp + 5104], rax
                        mov              rax, qword ptr [rbp + 5144]
                        mov              qword ptr [rbp + 5112], rax
                                                                                        jmp   n658_call_builtin_icon_α
.Lx1146_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1146_1
                        mov              rax, qword ptr [rbp + 5248]
                        mov              qword ptr [rbp + 5104], rax
                        mov              rax, qword ptr [rbp + 5256]
                        mov              qword ptr [rbp + 5112], rax
                                                                                        jmp   n658_call_builtin_icon_α
.Lx1146_1:
                                                                                        jmp   n658_call_builtin_icon_α
n657_disjunction_β:
                        mov              eax, dword ptr [rbp + 5120]
                        cmp              eax, 0
                                                                                        je    n657_disjunction_af
                                                                                        jmp   n657_disjunction_af
n657_disjunction_af:
                        add              dword ptr [rbp + 5120], 1
                        mov              eax, dword ptr [rbp + 5120]
                        cmp              eax, 1
                                                                                        je    n660_lit_string_α
                                                                                        jmp   n662_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n658_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 5088]
                        mov              qword ptr [rbp + 5040], rax
                        mov              rax, qword ptr [rbp + 5096]
                        mov              qword ptr [rbp + 5048], rax
                        mov              rax, qword ptr [rbp + 5104]
                        mov              qword ptr [rbp + 5056], rax
                        mov              rax, qword ptr [rbp + 5112]
                        mov              qword ptr [rbp + 5064], rax
                        .section         .rodata
.Lrkfn1148:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1148]
                        lea              rsi, [rbp + 5040]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5024], rax
                        mov              qword ptr [rbp + 5032], rdx
                        cmp              eax, 99
                                                                                        je    n657_disjunction_β
                                                                                        jmp   n662_lit_string_α
n658_call_builtin_icon_β:
                                                                                        jmp   n657_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n659_lit_string_α:
                        mov              qword ptr [rbp + 5232], 1
                        mov              rax, qword ptr [rip + .Lx1149_0]
                        mov              qword ptr [rbp + 5240], rax
                                                                                        jmp   n663_call_builtin_icon_α
n659_lit_string_β:
                                                                                        jmp   n657_disjunction_af
.Lx1149_0:
                        .quad            .Lx1149_0_s
.Lx1149_0_s:
                        .string          "36rcat"
#-----------------------------------------------------------------------------------------------------------------------
n660_lit_string_α:
                        mov              qword ptr [rbp + 5248], 1
                        mov              rax, qword ptr [rip + .Lx1150_0]
                        mov              qword ptr [rbp + 5256], rax
                                                                                        jmp   n657_disjunction_as
n660_lit_string_β:
                                                                                        jmp   n657_disjunction_af
.Lx1150_0:
                        .quad            .Lx1150_0_s
.Lx1150_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n661_call_proc_staged_α:
                        lea              rsi, [rbp + 5184]
                        call             proc_Image_dcα
                                                                                        jmp   .Lx1152_2
.Lx1152_2:
                        mov              qword ptr [rbp + 5136], rax
                        mov              qword ptr [rbp + 5144], rdx
                        cmp              eax, 99
                                                                                        je    n657_disjunction_af
                                                                                        jmp   n657_disjunction_as
n661_call_proc_staged_β:
                                                                                        jmp   n657_disjunction_af
.Lx1152_0:
                        .quad            .Lx1152_0_s
.Lx1152_0_s:
                        .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n662_lit_string_α:
                        mov              qword ptr [rbp + 4848], 1
                        mov              rax, qword ptr [rip + .Lx1153_0]
                        mov              qword ptr [rbp + 4856], rax
                                                                                        jmp   n664_disjunction_α
.Lx1153_0:
                        .quad            .Lx1153_0_s
.Lx1153_0_s:
                        .string          "real(\"36Rcat\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n663_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 5232]
                        mov              qword ptr [rbp + 5200], rax
                        mov              rax, qword ptr [rbp + 5240]
                        mov              qword ptr [rbp + 5208], rax
                        .section         .rodata
.Lrkfn1155:             .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1155]
                        lea              rsi, [rbp + 5200]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5184], rax
                        mov              qword ptr [rbp + 5192], rdx
                        cmp              eax, 99
                                                                                        je    n657_disjunction_af
                                                                                        jmp   n661_call_proc_staged_α
n663_call_builtin_icon_β:
                                                                                        jmp   n657_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n664_disjunction_α:
                        mov              qword ptr [rbp + 4864], 0
                        mov              qword ptr [rbp + 4872], 0
                        mov              dword ptr [rbp + 4880], 0
                                                                                        jmp   n666_lit_string_α
n664_disjunction_as:
                        mov              eax, dword ptr [rbp + 4880]
                        cmp              eax, 0
                                                                                        jne   .Lx1157_0
                        mov              rax, qword ptr [rbp + 4896]
                        mov              qword ptr [rbp + 4864], rax
                        mov              rax, qword ptr [rbp + 4904]
                        mov              qword ptr [rbp + 4872], rax
                                                                                        jmp   n665_call_builtin_icon_α
.Lx1157_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1157_1
                        mov              rax, qword ptr [rbp + 5008]
                        mov              qword ptr [rbp + 4864], rax
                        mov              rax, qword ptr [rbp + 5016]
                        mov              qword ptr [rbp + 4872], rax
                                                                                        jmp   n665_call_builtin_icon_α
.Lx1157_1:
                                                                                        jmp   n665_call_builtin_icon_α
n664_disjunction_β:
                        mov              eax, dword ptr [rbp + 4880]
                        cmp              eax, 0
                                                                                        je    n664_disjunction_af
                                                                                        jmp   n664_disjunction_af
n664_disjunction_af:
                        add              dword ptr [rbp + 4880], 1
                        mov              eax, dword ptr [rbp + 4880]
                        cmp              eax, 1
                                                                                        je    n667_lit_string_α
                                                                                        jmp   n669_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n665_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 4848]
                        mov              qword ptr [rbp + 4800], rax
                        mov              rax, qword ptr [rbp + 4856]
                        mov              qword ptr [rbp + 4808], rax
                        mov              rax, qword ptr [rbp + 4864]
                        mov              qword ptr [rbp + 4816], rax
                        mov              rax, qword ptr [rbp + 4872]
                        mov              qword ptr [rbp + 4824], rax
                        .section         .rodata
.Lrkfn1159:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1159]
                        lea              rsi, [rbp + 4800]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4784], rax
                        mov              qword ptr [rbp + 4792], rdx
                        cmp              eax, 99
                                                                                        je    n664_disjunction_β
                                                                                        jmp   n669_lit_string_α
n665_call_builtin_icon_β:
                                                                                        jmp   n664_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n666_lit_string_α:
                        mov              qword ptr [rbp + 4992], 1
                        mov              rax, qword ptr [rip + .Lx1160_0]
                        mov              qword ptr [rbp + 5000], rax
                                                                                        jmp   n670_call_builtin_icon_α
n666_lit_string_β:
                                                                                        jmp   n664_disjunction_af
.Lx1160_0:
                        .quad            .Lx1160_0_s
.Lx1160_0_s:
                        .string          "36Rcat"
#-----------------------------------------------------------------------------------------------------------------------
n667_lit_string_α:
                        mov              qword ptr [rbp + 5008], 1
                        mov              rax, qword ptr [rip + .Lx1161_0]
                        mov              qword ptr [rbp + 5016], rax
                                                                                        jmp   n664_disjunction_as
n667_lit_string_β:
                                                                                        jmp   n664_disjunction_af
.Lx1161_0:
                        .quad            .Lx1161_0_s
.Lx1161_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n668_call_proc_staged_α:
                        lea              rsi, [rbp + 4944]
                        call             proc_Image_dcα
                                                                                        jmp   .Lx1163_2
.Lx1163_2:
                        mov              qword ptr [rbp + 4896], rax
                        mov              qword ptr [rbp + 4904], rdx
                        cmp              eax, 99
                                                                                        je    n664_disjunction_af
                                                                                        jmp   n664_disjunction_as
n668_call_proc_staged_β:
                                                                                        jmp   n664_disjunction_af
.Lx1163_0:
                        .quad            .Lx1163_0_s
.Lx1163_0_s:
                        .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n669_lit_string_α:
                        mov              qword ptr [rbp + 4608], 1
                        mov              rax, qword ptr [rip + .Lx1164_0]
                        mov              qword ptr [rbp + 4616], rax
                                                                                        jmp   n671_disjunction_α
.Lx1164_0:
                        .quad            .Lx1164_0_s
.Lx1164_0_s:
                        .string          "real(\"36rCAT\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n670_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 4992]
                        mov              qword ptr [rbp + 4960], rax
                        mov              rax, qword ptr [rbp + 5000]
                        mov              qword ptr [rbp + 4968], rax
                        .section         .rodata
.Lrkfn1166:             .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1166]
                        lea              rsi, [rbp + 4960]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4944], rax
                        mov              qword ptr [rbp + 4952], rdx
                        cmp              eax, 99
                                                                                        je    n664_disjunction_af
                                                                                        jmp   n668_call_proc_staged_α
n670_call_builtin_icon_β:
                                                                                        jmp   n664_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n671_disjunction_α:
                        mov              qword ptr [rbp + 4624], 0
                        mov              qword ptr [rbp + 4632], 0
                        mov              dword ptr [rbp + 4640], 0
                                                                                        jmp   n673_lit_string_α
n671_disjunction_as:
                        mov              eax, dword ptr [rbp + 4640]
                        cmp              eax, 0
                                                                                        jne   .Lx1168_0
                        mov              rax, qword ptr [rbp + 4656]
                        mov              qword ptr [rbp + 4624], rax
                        mov              rax, qword ptr [rbp + 4664]
                        mov              qword ptr [rbp + 4632], rax
                                                                                        jmp   n672_call_builtin_icon_α
.Lx1168_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1168_1
                        mov              rax, qword ptr [rbp + 4768]
                        mov              qword ptr [rbp + 4624], rax
                        mov              rax, qword ptr [rbp + 4776]
                        mov              qword ptr [rbp + 4632], rax
                                                                                        jmp   n672_call_builtin_icon_α
.Lx1168_1:
                                                                                        jmp   n672_call_builtin_icon_α
n671_disjunction_β:
                        mov              eax, dword ptr [rbp + 4640]
                        cmp              eax, 0
                                                                                        je    n671_disjunction_af
                                                                                        jmp   n671_disjunction_af
n671_disjunction_af:
                        add              dword ptr [rbp + 4640], 1
                        mov              eax, dword ptr [rbp + 4640]
                        cmp              eax, 1
                                                                                        je    n674_lit_string_α
                                                                                        jmp   n676_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n672_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 4608]
                        mov              qword ptr [rbp + 4560], rax
                        mov              rax, qword ptr [rbp + 4616]
                        mov              qword ptr [rbp + 4568], rax
                        mov              rax, qword ptr [rbp + 4624]
                        mov              qword ptr [rbp + 4576], rax
                        mov              rax, qword ptr [rbp + 4632]
                        mov              qword ptr [rbp + 4584], rax
                        .section         .rodata
.Lrkfn1170:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1170]
                        lea              rsi, [rbp + 4560]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4544], rax
                        mov              qword ptr [rbp + 4552], rdx
                        cmp              eax, 99
                                                                                        je    n671_disjunction_β
                                                                                        jmp   n676_lit_string_α
n672_call_builtin_icon_β:
                                                                                        jmp   n671_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n673_lit_string_α:
                        mov              qword ptr [rbp + 4752], 1
                        mov              rax, qword ptr [rip + .Lx1171_0]
                        mov              qword ptr [rbp + 4760], rax
                                                                                        jmp   n677_call_builtin_icon_α
n673_lit_string_β:
                                                                                        jmp   n671_disjunction_af
.Lx1171_0:
                        .quad            .Lx1171_0_s
.Lx1171_0_s:
                        .string          "36rCAT"
#-----------------------------------------------------------------------------------------------------------------------
n674_lit_string_α:
                        mov              qword ptr [rbp + 4768], 1
                        mov              rax, qword ptr [rip + .Lx1172_0]
                        mov              qword ptr [rbp + 4776], rax
                                                                                        jmp   n671_disjunction_as
n674_lit_string_β:
                                                                                        jmp   n671_disjunction_af
.Lx1172_0:
                        .quad            .Lx1172_0_s
.Lx1172_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n675_call_proc_staged_α:
                        lea              rsi, [rbp + 4704]
                        call             proc_Image_dcα
                                                                                        jmp   .Lx1174_2
.Lx1174_2:
                        mov              qword ptr [rbp + 4656], rax
                        mov              qword ptr [rbp + 4664], rdx
                        cmp              eax, 99
                                                                                        je    n671_disjunction_af
                                                                                        jmp   n671_disjunction_as
n675_call_proc_staged_β:
                                                                                        jmp   n671_disjunction_af
.Lx1174_0:
                        .quad            .Lx1174_0_s
.Lx1174_0_s:
                        .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n676_lit_string_α:
                        mov              qword ptr [rbp + 4368], 1
                        mov              rax, qword ptr [rip + .Lx1175_0]
                        mov              qword ptr [rbp + 4376], rax
                                                                                        jmp   n678_disjunction_α
.Lx1175_0:
                        .quad            .Lx1175_0_s
.Lx1175_0_s:
                        .string          "real(\"1r1\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n677_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 4752]
                        mov              qword ptr [rbp + 4720], rax
                        mov              rax, qword ptr [rbp + 4760]
                        mov              qword ptr [rbp + 4728], rax
                        .section         .rodata
.Lrkfn1177:             .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1177]
                        lea              rsi, [rbp + 4720]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4704], rax
                        mov              qword ptr [rbp + 4712], rdx
                        cmp              eax, 99
                                                                                        je    n671_disjunction_af
                                                                                        jmp   n675_call_proc_staged_α
n677_call_builtin_icon_β:
                                                                                        jmp   n671_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n678_disjunction_α:
                        mov              qword ptr [rbp + 4384], 0
                        mov              qword ptr [rbp + 4392], 0
                        mov              dword ptr [rbp + 4400], 0
                                                                                        jmp   n680_lit_string_α
n678_disjunction_as:
                        mov              eax, dword ptr [rbp + 4400]
                        cmp              eax, 0
                                                                                        jne   .Lx1179_0
                        mov              rax, qword ptr [rbp + 4416]
                        mov              qword ptr [rbp + 4384], rax
                        mov              rax, qword ptr [rbp + 4424]
                        mov              qword ptr [rbp + 4392], rax
                                                                                        jmp   n679_call_builtin_icon_α
.Lx1179_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1179_1
                        mov              rax, qword ptr [rbp + 4528]
                        mov              qword ptr [rbp + 4384], rax
                        mov              rax, qword ptr [rbp + 4536]
                        mov              qword ptr [rbp + 4392], rax
                                                                                        jmp   n679_call_builtin_icon_α
.Lx1179_1:
                                                                                        jmp   n679_call_builtin_icon_α
n678_disjunction_β:
                        mov              eax, dword ptr [rbp + 4400]
                        cmp              eax, 0
                                                                                        je    n678_disjunction_af
                                                                                        jmp   n678_disjunction_af
n678_disjunction_af:
                        add              dword ptr [rbp + 4400], 1
                        mov              eax, dword ptr [rbp + 4400]
                        cmp              eax, 1
                                                                                        je    n681_lit_string_α
                                                                                        jmp   n683_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n679_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 4368]
                        mov              qword ptr [rbp + 4320], rax
                        mov              rax, qword ptr [rbp + 4376]
                        mov              qword ptr [rbp + 4328], rax
                        mov              rax, qword ptr [rbp + 4384]
                        mov              qword ptr [rbp + 4336], rax
                        mov              rax, qword ptr [rbp + 4392]
                        mov              qword ptr [rbp + 4344], rax
                        .section         .rodata
.Lrkfn1181:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1181]
                        lea              rsi, [rbp + 4320]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4304], rax
                        mov              qword ptr [rbp + 4312], rdx
                        cmp              eax, 99
                                                                                        je    n678_disjunction_β
                                                                                        jmp   n683_lit_string_α
n679_call_builtin_icon_β:
                                                                                        jmp   n678_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n680_lit_string_α:
                        mov              qword ptr [rbp + 4512], 1
                        mov              rax, qword ptr [rip + .Lx1182_0]
                        mov              qword ptr [rbp + 4520], rax
                                                                                        jmp   n684_call_builtin_icon_α
n680_lit_string_β:
                                                                                        jmp   n678_disjunction_af
.Lx1182_0:
                        .quad            .Lx1182_0_s
.Lx1182_0_s:
                        .string          "1r1"
#-----------------------------------------------------------------------------------------------------------------------
n681_lit_string_α:
                        mov              qword ptr [rbp + 4528], 1
                        mov              rax, qword ptr [rip + .Lx1183_0]
                        mov              qword ptr [rbp + 4536], rax
                                                                                        jmp   n678_disjunction_as
n681_lit_string_β:
                                                                                        jmp   n678_disjunction_af
.Lx1183_0:
                        .quad            .Lx1183_0_s
.Lx1183_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n682_call_proc_staged_α:
                        lea              rsi, [rbp + 4464]
                        call             proc_Image_dcα
                                                                                        jmp   .Lx1185_2
.Lx1185_2:
                        mov              qword ptr [rbp + 4416], rax
                        mov              qword ptr [rbp + 4424], rdx
                        cmp              eax, 99
                                                                                        je    n678_disjunction_af
                                                                                        jmp   n678_disjunction_as
n682_call_proc_staged_β:
                                                                                        jmp   n678_disjunction_af
.Lx1185_0:
                        .quad            .Lx1185_0_s
.Lx1185_0_s:
                        .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n683_lit_string_α:
                        mov              qword ptr [rbp + 4128], 1
                        mov              rax, qword ptr [rip + .Lx1186_0]
                        mov              qword ptr [rbp + 4136], rax
                                                                                        jmp   n685_disjunction_α
.Lx1186_0:
                        .quad            .Lx1186_0_s
.Lx1186_0_s:
                        .string          "real(\"2r0\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n684_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 4512]
                        mov              qword ptr [rbp + 4480], rax
                        mov              rax, qword ptr [rbp + 4520]
                        mov              qword ptr [rbp + 4488], rax
                        .section         .rodata
.Lrkfn1188:             .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1188]
                        lea              rsi, [rbp + 4480]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4464], rax
                        mov              qword ptr [rbp + 4472], rdx
                        cmp              eax, 99
                                                                                        je    n678_disjunction_af
                                                                                        jmp   n682_call_proc_staged_α
n684_call_builtin_icon_β:
                                                                                        jmp   n678_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n685_disjunction_α:
                        mov              qword ptr [rbp + 4144], 0
                        mov              qword ptr [rbp + 4152], 0
                        mov              dword ptr [rbp + 4160], 0
                                                                                        jmp   n687_lit_string_α
n685_disjunction_as:
                        mov              eax, dword ptr [rbp + 4160]
                        cmp              eax, 0
                                                                                        jne   .Lx1190_0
                        mov              rax, qword ptr [rbp + 4176]
                        mov              qword ptr [rbp + 4144], rax
                        mov              rax, qword ptr [rbp + 4184]
                        mov              qword ptr [rbp + 4152], rax
                                                                                        jmp   n686_call_builtin_icon_α
.Lx1190_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1190_1
                        mov              rax, qword ptr [rbp + 4288]
                        mov              qword ptr [rbp + 4144], rax
                        mov              rax, qword ptr [rbp + 4296]
                        mov              qword ptr [rbp + 4152], rax
                                                                                        jmp   n686_call_builtin_icon_α
.Lx1190_1:
                                                                                        jmp   n686_call_builtin_icon_α
n685_disjunction_β:
                        mov              eax, dword ptr [rbp + 4160]
                        cmp              eax, 0
                                                                                        je    n685_disjunction_af
                                                                                        jmp   n685_disjunction_af
n685_disjunction_af:
                        add              dword ptr [rbp + 4160], 1
                        mov              eax, dword ptr [rbp + 4160]
                        cmp              eax, 1
                                                                                        je    n688_lit_string_α
                                                                                        jmp   n690_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n686_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 4128]
                        mov              qword ptr [rbp + 4080], rax
                        mov              rax, qword ptr [rbp + 4136]
                        mov              qword ptr [rbp + 4088], rax
                        mov              rax, qword ptr [rbp + 4144]
                        mov              qword ptr [rbp + 4096], rax
                        mov              rax, qword ptr [rbp + 4152]
                        mov              qword ptr [rbp + 4104], rax
                        .section         .rodata
.Lrkfn1192:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1192]
                        lea              rsi, [rbp + 4080]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4064], rax
                        mov              qword ptr [rbp + 4072], rdx
                        cmp              eax, 99
                                                                                        je    n685_disjunction_β
                                                                                        jmp   n690_lit_string_α
n686_call_builtin_icon_β:
                                                                                        jmp   n685_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n687_lit_string_α:
                        mov              qword ptr [rbp + 4272], 1
                        mov              rax, qword ptr [rip + .Lx1193_0]
                        mov              qword ptr [rbp + 4280], rax
                                                                                        jmp   n691_call_builtin_icon_α
n687_lit_string_β:
                                                                                        jmp   n685_disjunction_af
.Lx1193_0:
                        .quad            .Lx1193_0_s
.Lx1193_0_s:
                        .string          "2r0"
#-----------------------------------------------------------------------------------------------------------------------
n688_lit_string_α:
                        mov              qword ptr [rbp + 4288], 1
                        mov              rax, qword ptr [rip + .Lx1194_0]
                        mov              qword ptr [rbp + 4296], rax
                                                                                        jmp   n685_disjunction_as
n688_lit_string_β:
                                                                                        jmp   n685_disjunction_af
.Lx1194_0:
                        .quad            .Lx1194_0_s
.Lx1194_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n689_call_proc_staged_α:
                        lea              rsi, [rbp + 4224]
                        call             proc_Image_dcα
                                                                                        jmp   .Lx1196_2
.Lx1196_2:
                        mov              qword ptr [rbp + 4176], rax
                        mov              qword ptr [rbp + 4184], rdx
                        cmp              eax, 99
                                                                                        je    n685_disjunction_af
                                                                                        jmp   n685_disjunction_as
n689_call_proc_staged_β:
                                                                                        jmp   n685_disjunction_af
.Lx1196_0:
                        .quad            .Lx1196_0_s
.Lx1196_0_s:
                        .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n690_lit_string_α:
                        mov              qword ptr [rbp + 3888], 1
                        mov              rax, qword ptr [rip + .Lx1197_0]
                        mov              qword ptr [rbp + 3896], rax
                                                                                        jmp   n692_disjunction_α
.Lx1197_0:
                        .quad            .Lx1197_0_s
.Lx1197_0_s:
                        .string          "real(\"22222222222222222222222222222\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n691_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 4272]
                        mov              qword ptr [rbp + 4240], rax
                        mov              rax, qword ptr [rbp + 4280]
                        mov              qword ptr [rbp + 4248], rax
                        .section         .rodata
.Lrkfn1199:             .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1199]
                        lea              rsi, [rbp + 4240]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4224], rax
                        mov              qword ptr [rbp + 4232], rdx
                        cmp              eax, 99
                                                                                        je    n685_disjunction_af
                                                                                        jmp   n689_call_proc_staged_α
n691_call_builtin_icon_β:
                                                                                        jmp   n685_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n692_disjunction_α:
                        mov              qword ptr [rbp + 3904], 0
                        mov              qword ptr [rbp + 3912], 0
                        mov              dword ptr [rbp + 3920], 0
                                                                                        jmp   n694_lit_string_α
n692_disjunction_as:
                        mov              eax, dword ptr [rbp + 3920]
                        cmp              eax, 0
                                                                                        jne   .Lx1201_0
                        mov              rax, qword ptr [rbp + 3936]
                        mov              qword ptr [rbp + 3904], rax
                        mov              rax, qword ptr [rbp + 3944]
                        mov              qword ptr [rbp + 3912], rax
                                                                                        jmp   n693_call_builtin_icon_α
.Lx1201_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1201_1
                        mov              rax, qword ptr [rbp + 4048]
                        mov              qword ptr [rbp + 3904], rax
                        mov              rax, qword ptr [rbp + 4056]
                        mov              qword ptr [rbp + 3912], rax
                                                                                        jmp   n693_call_builtin_icon_α
.Lx1201_1:
                                                                                        jmp   n693_call_builtin_icon_α
n692_disjunction_β:
                        mov              eax, dword ptr [rbp + 3920]
                        cmp              eax, 0
                                                                                        je    n692_disjunction_af
                                                                                        jmp   n692_disjunction_af
n692_disjunction_af:
                        add              dword ptr [rbp + 3920], 1
                        mov              eax, dword ptr [rbp + 3920]
                        cmp              eax, 1
                                                                                        je    n695_lit_string_α
                                                                                        jmp   n697_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n693_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3888]
                        mov              qword ptr [rbp + 3840], rax
                        mov              rax, qword ptr [rbp + 3896]
                        mov              qword ptr [rbp + 3848], rax
                        mov              rax, qword ptr [rbp + 3904]
                        mov              qword ptr [rbp + 3856], rax
                        mov              rax, qword ptr [rbp + 3912]
                        mov              qword ptr [rbp + 3864], rax
                        .section         .rodata
.Lrkfn1203:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1203]
                        lea              rsi, [rbp + 3840]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3824], rax
                        mov              qword ptr [rbp + 3832], rdx
                        cmp              eax, 99
                                                                                        je    n692_disjunction_β
                                                                                        jmp   n697_lit_string_α
n693_call_builtin_icon_β:
                                                                                        jmp   n692_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n694_lit_string_α:
                        mov              qword ptr [rbp + 4032], 1
                        mov              rax, qword ptr [rip + .Lx1204_0]
                        mov              qword ptr [rbp + 4040], rax
                                                                                        jmp   n698_call_builtin_icon_α
n694_lit_string_β:
                                                                                        jmp   n692_disjunction_af
.Lx1204_0:
                        .quad            .Lx1204_0_s
.Lx1204_0_s:
                        .string          "22222222222222222222222222222"
#-----------------------------------------------------------------------------------------------------------------------
n695_lit_string_α:
                        mov              qword ptr [rbp + 4048], 1
                        mov              rax, qword ptr [rip + .Lx1205_0]
                        mov              qword ptr [rbp + 4056], rax
                                                                                        jmp   n692_disjunction_as
n695_lit_string_β:
                                                                                        jmp   n692_disjunction_af
.Lx1205_0:
                        .quad            .Lx1205_0_s
.Lx1205_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n696_call_proc_staged_α:
                        lea              rsi, [rbp + 3984]
                        call             proc_Image_dcα
                                                                                        jmp   .Lx1207_2
.Lx1207_2:
                        mov              qword ptr [rbp + 3936], rax
                        mov              qword ptr [rbp + 3944], rdx
                        cmp              eax, 99
                                                                                        je    n692_disjunction_af
                                                                                        jmp   n692_disjunction_as
n696_call_proc_staged_β:
                                                                                        jmp   n692_disjunction_af
.Lx1207_0:
                        .quad            .Lx1207_0_s
.Lx1207_0_s:
                        .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n697_lit_string_α:
                        mov              qword ptr [rbp + 3648], 1
                        mov              rax, qword ptr [rip + .Lx1208_0]
                        mov              qword ptr [rbp + 3656], rax
                                                                                        jmp   n699_disjunction_α
.Lx1208_0:
                        .quad            .Lx1208_0_s
.Lx1208_0_s:
                        .string          "numeric(2.0) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n698_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 4032]
                        mov              qword ptr [rbp + 4000], rax
                        mov              rax, qword ptr [rbp + 4040]
                        mov              qword ptr [rbp + 4008], rax
                        .section         .rodata
.Lrkfn1210:             .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1210]
                        lea              rsi, [rbp + 4000]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3984], rax
                        mov              qword ptr [rbp + 3992], rdx
                        cmp              eax, 99
                                                                                        je    n692_disjunction_af
                                                                                        jmp   n696_call_proc_staged_α
n698_call_builtin_icon_β:
                                                                                        jmp   n692_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n699_disjunction_α:
                        mov              qword ptr [rbp + 3664], 0
                        mov              qword ptr [rbp + 3672], 0
                        mov              dword ptr [rbp + 3680], 0
                                                                                        jmp   n701_lit_real_α
n699_disjunction_as:
                        mov              eax, dword ptr [rbp + 3680]
                        cmp              eax, 0
                                                                                        jne   .Lx1212_0
                        mov              rax, qword ptr [rbp + 3696]
                        mov              qword ptr [rbp + 3664], rax
                        mov              rax, qword ptr [rbp + 3704]
                        mov              qword ptr [rbp + 3672], rax
                                                                                        jmp   n700_call_builtin_icon_α
.Lx1212_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1212_1
                        mov              rax, qword ptr [rbp + 3808]
                        mov              qword ptr [rbp + 3664], rax
                        mov              rax, qword ptr [rbp + 3816]
                        mov              qword ptr [rbp + 3672], rax
                                                                                        jmp   n700_call_builtin_icon_α
.Lx1212_1:
                                                                                        jmp   n700_call_builtin_icon_α
n699_disjunction_β:
                        mov              eax, dword ptr [rbp + 3680]
                        cmp              eax, 0
                                                                                        je    n699_disjunction_af
                                                                                        jmp   n699_disjunction_af
n699_disjunction_af:
                        add              dword ptr [rbp + 3680], 1
                        mov              eax, dword ptr [rbp + 3680]
                        cmp              eax, 1
                                                                                        je    n702_lit_string_α
                                                                                        jmp   n704_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n700_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3648]
                        mov              qword ptr [rbp + 3600], rax
                        mov              rax, qword ptr [rbp + 3656]
                        mov              qword ptr [rbp + 3608], rax
                        mov              rax, qword ptr [rbp + 3664]
                        mov              qword ptr [rbp + 3616], rax
                        mov              rax, qword ptr [rbp + 3672]
                        mov              qword ptr [rbp + 3624], rax
                        .section         .rodata
.Lrkfn1214:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1214]
                        lea              rsi, [rbp + 3600]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3584], rax
                        mov              qword ptr [rbp + 3592], rdx
                        cmp              eax, 99
                                                                                        je    n699_disjunction_β
                                                                                        jmp   n704_lit_string_α
n700_call_builtin_icon_β:
                                                                                        jmp   n699_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n701_lit_real_α:
                        mov              qword ptr [rbp + 3792], 7
                        mov              rax, qword ptr [rip + .Lx1215_0]
                        mov              qword ptr [rbp + 3800], rax
                                                                                        jmp   n705_call_builtin_icon_α
n701_lit_real_β:
                                                                                        jmp   n699_disjunction_af
.Lx1215_0:
                        .quad            4611686018427387904
#-----------------------------------------------------------------------------------------------------------------------
n702_lit_string_α:
                        mov              qword ptr [rbp + 3808], 1
                        mov              rax, qword ptr [rip + .Lx1216_0]
                        mov              qword ptr [rbp + 3816], rax
                                                                                        jmp   n699_disjunction_as
n702_lit_string_β:
                                                                                        jmp   n699_disjunction_af
.Lx1216_0:
                        .quad            .Lx1216_0_s
.Lx1216_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n703_call_proc_staged_α:
                        lea              rsi, [rbp + 3744]
                        call             proc_Image_dcα
                                                                                        jmp   .Lx1218_2
.Lx1218_2:
                        mov              qword ptr [rbp + 3696], rax
                        mov              qword ptr [rbp + 3704], rdx
                        cmp              eax, 99
                                                                                        je    n699_disjunction_af
                                                                                        jmp   n699_disjunction_as
n703_call_proc_staged_β:
                                                                                        jmp   n699_disjunction_af
.Lx1218_0:
                        .quad            .Lx1218_0_s
.Lx1218_0_s:
                        .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n704_lit_string_α:
                        mov              qword ptr [rbp + 3408], 1
                        mov              rax, qword ptr [rip + .Lx1219_0]
                        mov              qword ptr [rbp + 3416], rax
                                                                                        jmp   n706_disjunction_α
.Lx1219_0:
                        .quad            .Lx1219_0_s
.Lx1219_0_s:
                        .string          "numeric(2.7) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n705_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3792]
                        mov              qword ptr [rbp + 3760], rax
                        mov              rax, qword ptr [rbp + 3800]
                        mov              qword ptr [rbp + 3768], rax
                        .section         .rodata
.Lrkfn1221:             .string          "numeric"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1221]
                        lea              rsi, [rbp + 3760]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3744], rax
                        mov              qword ptr [rbp + 3752], rdx
                        cmp              eax, 99
                                                                                        je    n699_disjunction_af
                                                                                        jmp   n703_call_proc_staged_α
n705_call_builtin_icon_β:
                                                                                        jmp   n699_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n706_disjunction_α:
                        mov              qword ptr [rbp + 3424], 0
                        mov              qword ptr [rbp + 3432], 0
                        mov              dword ptr [rbp + 3440], 0
                                                                                        jmp   n708_lit_real_α
n706_disjunction_as:
                        mov              eax, dword ptr [rbp + 3440]
                        cmp              eax, 0
                                                                                        jne   .Lx1223_0
                        mov              rax, qword ptr [rbp + 3456]
                        mov              qword ptr [rbp + 3424], rax
                        mov              rax, qword ptr [rbp + 3464]
                        mov              qword ptr [rbp + 3432], rax
                                                                                        jmp   n707_call_builtin_icon_α
.Lx1223_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1223_1
                        mov              rax, qword ptr [rbp + 3568]
                        mov              qword ptr [rbp + 3424], rax
                        mov              rax, qword ptr [rbp + 3576]
                        mov              qword ptr [rbp + 3432], rax
                                                                                        jmp   n707_call_builtin_icon_α
.Lx1223_1:
                                                                                        jmp   n707_call_builtin_icon_α
n706_disjunction_β:
                        mov              eax, dword ptr [rbp + 3440]
                        cmp              eax, 0
                                                                                        je    n706_disjunction_af
                                                                                        jmp   n706_disjunction_af
n706_disjunction_af:
                        add              dword ptr [rbp + 3440], 1
                        mov              eax, dword ptr [rbp + 3440]
                        cmp              eax, 1
                                                                                        je    n709_lit_string_α
                                                                                        jmp   n711_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n707_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3408]
                        mov              qword ptr [rbp + 3360], rax
                        mov              rax, qword ptr [rbp + 3416]
                        mov              qword ptr [rbp + 3368], rax
                        mov              rax, qword ptr [rbp + 3424]
                        mov              qword ptr [rbp + 3376], rax
                        mov              rax, qword ptr [rbp + 3432]
                        mov              qword ptr [rbp + 3384], rax
                        .section         .rodata
.Lrkfn1225:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1225]
                        lea              rsi, [rbp + 3360]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3344], rax
                        mov              qword ptr [rbp + 3352], rdx
                        cmp              eax, 99
                                                                                        je    n706_disjunction_β
                                                                                        jmp   n711_lit_string_α
n707_call_builtin_icon_β:
                                                                                        jmp   n706_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n708_lit_real_α:
                        mov              qword ptr [rbp + 3552], 7
                        mov              rax, qword ptr [rip + .Lx1226_0]
                        mov              qword ptr [rbp + 3560], rax
                                                                                        jmp   n712_call_builtin_icon_α
n708_lit_real_β:
                                                                                        jmp   n706_disjunction_af
.Lx1226_0:
                        .quad            4613262278296967578
#-----------------------------------------------------------------------------------------------------------------------
n709_lit_string_α:
                        mov              qword ptr [rbp + 3568], 1
                        mov              rax, qword ptr [rip + .Lx1227_0]
                        mov              qword ptr [rbp + 3576], rax
                                                                                        jmp   n706_disjunction_as
n709_lit_string_β:
                                                                                        jmp   n706_disjunction_af
.Lx1227_0:
                        .quad            .Lx1227_0_s
.Lx1227_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n710_call_proc_staged_α:
                        lea              rsi, [rbp + 3504]
                        call             proc_Image_dcα
                                                                                        jmp   .Lx1229_2
.Lx1229_2:
                        mov              qword ptr [rbp + 3456], rax
                        mov              qword ptr [rbp + 3464], rdx
                        cmp              eax, 99
                                                                                        je    n706_disjunction_af
                                                                                        jmp   n706_disjunction_as
n710_call_proc_staged_β:
                                                                                        jmp   n706_disjunction_af
.Lx1229_0:
                        .quad            .Lx1229_0_s
.Lx1229_0_s:
                        .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n711_lit_string_α:
                        mov              qword ptr [rbp + 3168], 1
                        mov              rax, qword ptr [rip + .Lx1230_0]
                        mov              qword ptr [rbp + 3176], rax
                                                                                        jmp   n713_disjunction_α
.Lx1230_0:
                        .quad            .Lx1230_0_s
.Lx1230_0_s:
                        .string          "numeric(0.3) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n712_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3552]
                        mov              qword ptr [rbp + 3520], rax
                        mov              rax, qword ptr [rbp + 3560]
                        mov              qword ptr [rbp + 3528], rax
                        .section         .rodata
.Lrkfn1232:             .string          "numeric"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1232]
                        lea              rsi, [rbp + 3520]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3504], rax
                        mov              qword ptr [rbp + 3512], rdx
                        cmp              eax, 99
                                                                                        je    n706_disjunction_af
                                                                                        jmp   n710_call_proc_staged_α
n712_call_builtin_icon_β:
                                                                                        jmp   n706_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n713_disjunction_α:
                        mov              qword ptr [rbp + 3184], 0
                        mov              qword ptr [rbp + 3192], 0
                        mov              dword ptr [rbp + 3200], 0
                                                                                        jmp   n715_lit_real_α
n713_disjunction_as:
                        mov              eax, dword ptr [rbp + 3200]
                        cmp              eax, 0
                                                                                        jne   .Lx1234_0
                        mov              rax, qword ptr [rbp + 3216]
                        mov              qword ptr [rbp + 3184], rax
                        mov              rax, qword ptr [rbp + 3224]
                        mov              qword ptr [rbp + 3192], rax
                                                                                        jmp   n714_call_builtin_icon_α
.Lx1234_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1234_1
                        mov              rax, qword ptr [rbp + 3328]
                        mov              qword ptr [rbp + 3184], rax
                        mov              rax, qword ptr [rbp + 3336]
                        mov              qword ptr [rbp + 3192], rax
                                                                                        jmp   n714_call_builtin_icon_α
.Lx1234_1:
                                                                                        jmp   n714_call_builtin_icon_α
n713_disjunction_β:
                        mov              eax, dword ptr [rbp + 3200]
                        cmp              eax, 0
                                                                                        je    n713_disjunction_af
                                                                                        jmp   n713_disjunction_af
n713_disjunction_af:
                        add              dword ptr [rbp + 3200], 1
                        mov              eax, dword ptr [rbp + 3200]
                        cmp              eax, 1
                                                                                        je    n716_lit_string_α
                                                                                        jmp   n718_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n714_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3168]
                        mov              qword ptr [rbp + 3120], rax
                        mov              rax, qword ptr [rbp + 3176]
                        mov              qword ptr [rbp + 3128], rax
                        mov              rax, qword ptr [rbp + 3184]
                        mov              qword ptr [rbp + 3136], rax
                        mov              rax, qword ptr [rbp + 3192]
                        mov              qword ptr [rbp + 3144], rax
                        .section         .rodata
.Lrkfn1236:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1236]
                        lea              rsi, [rbp + 3120]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3104], rax
                        mov              qword ptr [rbp + 3112], rdx
                        cmp              eax, 99
                                                                                        je    n713_disjunction_β
                                                                                        jmp   n718_lit_string_α
n714_call_builtin_icon_β:
                                                                                        jmp   n713_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n715_lit_real_α:
                        mov              qword ptr [rbp + 3312], 7
                        mov              rax, qword ptr [rip + .Lx1237_0]
                        mov              qword ptr [rbp + 3320], rax
                                                                                        jmp   n719_call_builtin_icon_α
n715_lit_real_β:
                                                                                        jmp   n713_disjunction_af
.Lx1237_0:
                        .quad            4599075939470750515
#-----------------------------------------------------------------------------------------------------------------------
n716_lit_string_α:
                        mov              qword ptr [rbp + 3328], 1
                        mov              rax, qword ptr [rip + .Lx1238_0]
                        mov              qword ptr [rbp + 3336], rax
                                                                                        jmp   n713_disjunction_as
n716_lit_string_β:
                                                                                        jmp   n713_disjunction_af
.Lx1238_0:
                        .quad            .Lx1238_0_s
.Lx1238_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n717_call_proc_staged_α:
                        lea              rsi, [rbp + 3264]
                        call             proc_Image_dcα
                                                                                        jmp   .Lx1240_2
.Lx1240_2:
                        mov              qword ptr [rbp + 3216], rax
                        mov              qword ptr [rbp + 3224], rdx
                        cmp              eax, 99
                                                                                        je    n713_disjunction_af
                                                                                        jmp   n713_disjunction_as
n717_call_proc_staged_β:
                                                                                        jmp   n713_disjunction_af
.Lx1240_0:
                        .quad            .Lx1240_0_s
.Lx1240_0_s:
                        .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n718_lit_string_α:
                        mov              qword ptr [rbp + 2928], 1
                        mov              rax, qword ptr [rip + .Lx1241_0]
                        mov              qword ptr [rbp + 2936], rax
                                                                                        jmp   n720_disjunction_α
.Lx1241_0:
                        .quad            .Lx1241_0_s
.Lx1241_0_s:
                        .string          "numeric(e2) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n719_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3312]
                        mov              qword ptr [rbp + 3280], rax
                        mov              rax, qword ptr [rbp + 3320]
                        mov              qword ptr [rbp + 3288], rax
                        .section         .rodata
.Lrkfn1243:             .string          "numeric"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1243]
                        lea              rsi, [rbp + 3280]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3264], rax
                        mov              qword ptr [rbp + 3272], rdx
                        cmp              eax, 99
                                                                                        je    n713_disjunction_af
                                                                                        jmp   n717_call_proc_staged_α
n719_call_builtin_icon_β:
                                                                                        jmp   n713_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n720_disjunction_α:
                        mov              qword ptr [rbp + 2944], 0
                        mov              qword ptr [rbp + 2952], 0
                        mov              dword ptr [rbp + 2960], 0
                                                                                        jmp   n722_var_α
n720_disjunction_as:
                        mov              eax, dword ptr [rbp + 2960]
                        cmp              eax, 0
                                                                                        jne   .Lx1245_0
                        mov              rax, qword ptr [rbp + 2976]
                        mov              qword ptr [rbp + 2944], rax
                        mov              rax, qword ptr [rbp + 2984]
                        mov              qword ptr [rbp + 2952], rax
                                                                                        jmp   n721_call_builtin_icon_α
.Lx1245_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1245_1
                        mov              rax, qword ptr [rbp + 3088]
                        mov              qword ptr [rbp + 2944], rax
                        mov              rax, qword ptr [rbp + 3096]
                        mov              qword ptr [rbp + 2952], rax
                                                                                        jmp   n721_call_builtin_icon_α
.Lx1245_1:
                                                                                        jmp   n721_call_builtin_icon_α
n720_disjunction_β:
                        mov              eax, dword ptr [rbp + 2960]
                        cmp              eax, 0
                                                                                        je    n720_disjunction_af
                                                                                        jmp   n720_disjunction_af
n720_disjunction_af:
                        add              dword ptr [rbp + 2960], 1
                        mov              eax, dword ptr [rbp + 2960]
                        cmp              eax, 1
                                                                                        je    n723_lit_string_α
                                                                                        jmp   n725_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n721_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2928]
                        mov              qword ptr [rbp + 2880], rax
                        mov              rax, qword ptr [rbp + 2936]
                        mov              qword ptr [rbp + 2888], rax
                        mov              rax, qword ptr [rbp + 2944]
                        mov              qword ptr [rbp + 2896], rax
                        mov              rax, qword ptr [rbp + 2952]
                        mov              qword ptr [rbp + 2904], rax
                        .section         .rodata
.Lrkfn1247:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1247]
                        lea              rsi, [rbp + 2880]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2864], rax
                        mov              qword ptr [rbp + 2872], rdx
                        cmp              eax, 99
                                                                                        je    n720_disjunction_β
                                                                                        jmp   n725_lit_string_α
n721_call_builtin_icon_β:
                                                                                        jmp   n720_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n722_var_α:
                        mov              rax, qword ptr [rbp + 12240]
                        mov              qword ptr [rbp + 3072], rax
                        mov              rax, qword ptr [rbp + 12248]
                        mov              qword ptr [rbp + 3080], rax
                                                                                        jmp   n726_call_builtin_icon_α
n722_var_β:
                                                                                        jmp   n720_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n723_lit_string_α:
                        mov              qword ptr [rbp + 3088], 1
                        mov              rax, qword ptr [rip + .Lx1250_0]
                        mov              qword ptr [rbp + 3096], rax
                                                                                        jmp   n720_disjunction_as
n723_lit_string_β:
                                                                                        jmp   n720_disjunction_af
.Lx1250_0:
                        .quad            .Lx1250_0_s
.Lx1250_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n724_call_proc_staged_α:
                        lea              rsi, [rbp + 3024]
                        call             proc_Image_dcα
                                                                                        jmp   .Lx1252_2
.Lx1252_2:
                        mov              qword ptr [rbp + 2976], rax
                        mov              qword ptr [rbp + 2984], rdx
                        cmp              eax, 99
                                                                                        je    n720_disjunction_af
                                                                                        jmp   n720_disjunction_as
n724_call_proc_staged_β:
                                                                                        jmp   n720_disjunction_af
.Lx1252_0:
                        .quad            .Lx1252_0_s
.Lx1252_0_s:
                        .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n725_lit_string_α:
                        mov              qword ptr [rbp + 2736], 1
                        mov              rax, qword ptr [rip + .Lx1253_0]
                        mov              qword ptr [rbp + 2744], rax
                                                                                        jmp   n727_disjunction_α
.Lx1253_0:
                        .quad            .Lx1253_0_s
.Lx1253_0_s:
                        .string          "36. ^ 9 ----> "
#-----------------------------------------------------------------------------------------------------------------------
n726_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3072]
                        mov              qword ptr [rbp + 3040], rax
                        mov              rax, qword ptr [rbp + 3080]
                        mov              qword ptr [rbp + 3048], rax
                        .section         .rodata
.Lrkfn1255:             .string          "numeric"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1255]
                        lea              rsi, [rbp + 3040]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3024], rax
                        mov              qword ptr [rbp + 3032], rdx
                        cmp              eax, 99
                                                                                        je    n720_disjunction_af
                                                                                        jmp   n724_call_proc_staged_α
n726_call_builtin_icon_β:
                                                                                        jmp   n720_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n727_disjunction_α:
                        mov              qword ptr [rbp + 2752], 0
                        mov              qword ptr [rbp + 2760], 0
                        mov              dword ptr [rbp + 2768], 0
                                                                                        jmp   n729_lit_real_α
n727_disjunction_as:
                        mov              eax, dword ptr [rbp + 2768]
                        cmp              eax, 0
                                                                                        jne   .Lx1257_0
                        mov              rax, qword ptr [rbp + 2784]
                        mov              qword ptr [rbp + 2752], rax
                        mov              rax, qword ptr [rbp + 2792]
                        mov              qword ptr [rbp + 2760], rax
                                                                                        jmp   n728_call_builtin_icon_α
.Lx1257_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1257_1
                        mov              rax, qword ptr [rbp + 2848]
                        mov              qword ptr [rbp + 2752], rax
                        mov              rax, qword ptr [rbp + 2856]
                        mov              qword ptr [rbp + 2760], rax
                                                                                        jmp   n728_call_builtin_icon_α
.Lx1257_1:
                                                                                        jmp   n728_call_builtin_icon_α
n727_disjunction_β:
                        mov              eax, dword ptr [rbp + 2768]
                        cmp              eax, 0
                                                                                        je    n727_disjunction_af
                                                                                        jmp   n727_disjunction_af
n727_disjunction_af:
                        add              dword ptr [rbp + 2768], 1
                        mov              eax, dword ptr [rbp + 2768]
                        cmp              eax, 1
                                                                                        je    n730_lit_string_α
                                                                                        jmp   n732_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n728_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2736]
                        mov              qword ptr [rbp + 2688], rax
                        mov              rax, qword ptr [rbp + 2744]
                        mov              qword ptr [rbp + 2696], rax
                        mov              rax, qword ptr [rbp + 2752]
                        mov              qword ptr [rbp + 2704], rax
                        mov              rax, qword ptr [rbp + 2760]
                        mov              qword ptr [rbp + 2712], rax
                        .section         .rodata
.Lrkfn1259:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1259]
                        lea              rsi, [rbp + 2688]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2672], rax
                        mov              qword ptr [rbp + 2680], rdx
                        cmp              eax, 99
                                                                                        je    n727_disjunction_β
                                                                                        jmp   n732_lit_string_α
n728_call_builtin_icon_β:
                                                                                        jmp   n727_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n729_lit_real_α:
                        mov              qword ptr [rbp + 2832], 7
                        mov              rax, qword ptr [rip + .Lx1260_0]
                        mov              qword ptr [rbp + 2840], rax
                                                                                        jmp   n731_call_proc_staged_α
n729_lit_real_β:
                                                                                        jmp   n727_disjunction_af
.Lx1260_0:
                        .quad            4816344239258468352
#-----------------------------------------------------------------------------------------------------------------------
n730_lit_string_α:
                        mov              qword ptr [rbp + 2848], 1
                        mov              rax, qword ptr [rip + .Lx1261_0]
                        mov              qword ptr [rbp + 2856], rax
                                                                                        jmp   n727_disjunction_as
n730_lit_string_β:
                                                                                        jmp   n727_disjunction_af
.Lx1261_0:
                        .quad            .Lx1261_0_s
.Lx1261_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n731_call_proc_staged_α:
                        lea              rsi, [rbp + 2832]
                        call             proc_Image_dcα
                                                                                        jmp   .Lx1263_2
.Lx1263_2:
                        mov              qword ptr [rbp + 2784], rax
                        mov              qword ptr [rbp + 2792], rdx
                        cmp              eax, 99
                                                                                        je    n727_disjunction_af
                                                                                        jmp   n727_disjunction_as
n731_call_proc_staged_β:
                                                                                        jmp   n727_disjunction_af
.Lx1263_0:
                        .quad            .Lx1263_0_s
.Lx1263_0_s:
                        .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n732_lit_string_α:
                        mov              qword ptr [rbp + 2544], 1
                        mov              rax, qword ptr [rip + .Lx1264_0]
                        mov              qword ptr [rbp + 2552], rax
                                                                                        jmp   n733_disjunction_α
.Lx1264_0:
                        .quad            .Lx1264_0_s
.Lx1264_0_s:
                        .string          "36 ^ 9. ----> "
#-----------------------------------------------------------------------------------------------------------------------
n733_disjunction_α:
                        mov              qword ptr [rbp + 2560], 0
                        mov              qword ptr [rbp + 2568], 0
                        mov              dword ptr [rbp + 2576], 0
                                                                                        jmp   n735_lit_real_α
n733_disjunction_as:
                        mov              eax, dword ptr [rbp + 2576]
                        cmp              eax, 0
                                                                                        jne   .Lx1266_0
                        mov              rax, qword ptr [rbp + 2592]
                        mov              qword ptr [rbp + 2560], rax
                        mov              rax, qword ptr [rbp + 2600]
                        mov              qword ptr [rbp + 2568], rax
                                                                                        jmp   n734_call_builtin_icon_α
.Lx1266_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1266_1
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 2560], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 2568], rax
                                                                                        jmp   n734_call_builtin_icon_α
.Lx1266_1:
                                                                                        jmp   n734_call_builtin_icon_α
n733_disjunction_β:
                        mov              eax, dword ptr [rbp + 2576]
                        cmp              eax, 0
                                                                                        je    n733_disjunction_af
                                                                                        jmp   n733_disjunction_af
n733_disjunction_af:
                        add              dword ptr [rbp + 2576], 1
                        mov              eax, dword ptr [rbp + 2576]
                        cmp              eax, 1
                                                                                        je    n736_lit_string_α
                                                                                        jmp   n738_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n734_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2544]
                        mov              qword ptr [rbp + 2496], rax
                        mov              rax, qword ptr [rbp + 2552]
                        mov              qword ptr [rbp + 2504], rax
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 2512], rax
                        mov              rax, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 2520], rax
                        .section         .rodata
.Lrkfn1268:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1268]
                        lea              rsi, [rbp + 2496]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2480], rax
                        mov              qword ptr [rbp + 2488], rdx
                        cmp              eax, 99
                                                                                        je    n733_disjunction_β
                                                                                        jmp   n738_lit_string_α
n734_call_builtin_icon_β:
                                                                                        jmp   n733_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n735_lit_real_α:
                        mov              qword ptr [rbp + 2640], 7
                        mov              rax, qword ptr [rip + .Lx1269_0]
                        mov              qword ptr [rbp + 2648], rax
                                                                                        jmp   n737_call_proc_staged_α
n735_lit_real_β:
                                                                                        jmp   n733_disjunction_af
.Lx1269_0:
                        .quad            4816344239258468352
#-----------------------------------------------------------------------------------------------------------------------
n736_lit_string_α:
                        mov              qword ptr [rbp + 2656], 1
                        mov              rax, qword ptr [rip + .Lx1270_0]
                        mov              qword ptr [rbp + 2664], rax
                                                                                        jmp   n733_disjunction_as
n736_lit_string_β:
                                                                                        jmp   n733_disjunction_af
.Lx1270_0:
                        .quad            .Lx1270_0_s
.Lx1270_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n737_call_proc_staged_α:
                        lea              rsi, [rbp + 2640]
                        call             proc_Image_dcα
                                                                                        jmp   .Lx1272_2
.Lx1272_2:
                        mov              qword ptr [rbp + 2592], rax
                        mov              qword ptr [rbp + 2600], rdx
                        cmp              eax, 99
                                                                                        je    n733_disjunction_af
                                                                                        jmp   n733_disjunction_as
n737_call_proc_staged_β:
                                                                                        jmp   n733_disjunction_af
.Lx1272_0:
                        .quad            .Lx1272_0_s
.Lx1272_0_s:
                        .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n738_lit_string_α:
                        mov              qword ptr [rbp + 2352], 1
                        mov              rax, qword ptr [rip + .Lx1273_0]
                        mov              qword ptr [rbp + 2360], rax
                                                                                        jmp   n739_disjunction_α
.Lx1273_0:
                        .quad            .Lx1273_0_s
.Lx1273_0_s:
                        .string          "36. ^ 9. ----> "
#-----------------------------------------------------------------------------------------------------------------------
n739_disjunction_α:
                        mov              qword ptr [rbp + 2368], 0
                        mov              qword ptr [rbp + 2376], 0
                        mov              dword ptr [rbp + 2384], 0
                                                                                        jmp   n741_lit_real_α
n739_disjunction_as:
                        mov              eax, dword ptr [rbp + 2384]
                        cmp              eax, 0
                                                                                        jne   .Lx1275_0
                        mov              rax, qword ptr [rbp + 2400]
                        mov              qword ptr [rbp + 2368], rax
                        mov              rax, qword ptr [rbp + 2408]
                        mov              qword ptr [rbp + 2376], rax
                                                                                        jmp   n740_call_builtin_icon_α
.Lx1275_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1275_1
                        mov              rax, qword ptr [rbp + 2464]
                        mov              qword ptr [rbp + 2368], rax
                        mov              rax, qword ptr [rbp + 2472]
                        mov              qword ptr [rbp + 2376], rax
                                                                                        jmp   n740_call_builtin_icon_α
.Lx1275_1:
                                                                                        jmp   n740_call_builtin_icon_α
n739_disjunction_β:
                        mov              eax, dword ptr [rbp + 2384]
                        cmp              eax, 0
                                                                                        je    n739_disjunction_af
                                                                                        jmp   n739_disjunction_af
n739_disjunction_af:
                        add              dword ptr [rbp + 2384], 1
                        mov              eax, dword ptr [rbp + 2384]
                        cmp              eax, 1
                                                                                        je    n742_lit_string_α
                                                                                        jmp   n744_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n740_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2352]
                        mov              qword ptr [rbp + 2304], rax
                        mov              rax, qword ptr [rbp + 2360]
                        mov              qword ptr [rbp + 2312], rax
                        mov              rax, qword ptr [rbp + 2368]
                        mov              qword ptr [rbp + 2320], rax
                        mov              rax, qword ptr [rbp + 2376]
                        mov              qword ptr [rbp + 2328], rax
                        .section         .rodata
.Lrkfn1277:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1277]
                        lea              rsi, [rbp + 2304]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2288], rax
                        mov              qword ptr [rbp + 2296], rdx
                        cmp              eax, 99
                                                                                        je    n739_disjunction_β
                                                                                        jmp   n744_lit_string_α
n740_call_builtin_icon_β:
                                                                                        jmp   n739_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n741_lit_real_α:
                        mov              qword ptr [rbp + 2448], 7
                        mov              rax, qword ptr [rip + .Lx1278_0]
                        mov              qword ptr [rbp + 2456], rax
                                                                                        jmp   n743_call_proc_staged_α
n741_lit_real_β:
                                                                                        jmp   n739_disjunction_af
.Lx1278_0:
                        .quad            4816344239258468352
#-----------------------------------------------------------------------------------------------------------------------
n742_lit_string_α:
                        mov              qword ptr [rbp + 2464], 1
                        mov              rax, qword ptr [rip + .Lx1279_0]
                        mov              qword ptr [rbp + 2472], rax
                                                                                        jmp   n739_disjunction_as
n742_lit_string_β:
                                                                                        jmp   n739_disjunction_af
.Lx1279_0:
                        .quad            .Lx1279_0_s
.Lx1279_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n743_call_proc_staged_α:
                        lea              rsi, [rbp + 2448]
                        call             proc_Image_dcα
                                                                                        jmp   .Lx1281_2
.Lx1281_2:
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx
                        cmp              eax, 99
                                                                                        je    n739_disjunction_af
                                                                                        jmp   n739_disjunction_as
n743_call_proc_staged_β:
                                                                                        jmp   n739_disjunction_af
.Lx1281_0:
                        .quad            .Lx1281_0_s
.Lx1281_0_s:
                        .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n744_lit_string_α:
                        mov              qword ptr [rbp + 2160], 1
                        mov              rax, qword ptr [rip + .Lx1282_0]
                        mov              qword ptr [rbp + 2168], rax
                                                                                        jmp   n745_disjunction_α
.Lx1282_0:
                        .quad            .Lx1282_0_s
.Lx1282_0_s:
                        .string          "-36. ^ 9 ----> "
#-----------------------------------------------------------------------------------------------------------------------
n745_disjunction_α:
                        mov              qword ptr [rbp + 2176], 0
                        mov              qword ptr [rbp + 2184], 0
                        mov              dword ptr [rbp + 2192], 0
                                                                                        jmp   n747_lit_real_α
n745_disjunction_as:
                        mov              eax, dword ptr [rbp + 2192]
                        cmp              eax, 0
                                                                                        jne   .Lx1284_0
                        mov              rax, qword ptr [rbp + 2208]
                        mov              qword ptr [rbp + 2176], rax
                        mov              rax, qword ptr [rbp + 2216]
                        mov              qword ptr [rbp + 2184], rax
                                                                                        jmp   n746_call_builtin_icon_α
.Lx1284_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1284_1
                        mov              rax, qword ptr [rbp + 2272]
                        mov              qword ptr [rbp + 2176], rax
                        mov              rax, qword ptr [rbp + 2280]
                        mov              qword ptr [rbp + 2184], rax
                                                                                        jmp   n746_call_builtin_icon_α
.Lx1284_1:
                                                                                        jmp   n746_call_builtin_icon_α
n745_disjunction_β:
                        mov              eax, dword ptr [rbp + 2192]
                        cmp              eax, 0
                                                                                        je    n745_disjunction_af
                                                                                        jmp   n745_disjunction_af
n745_disjunction_af:
                        add              dword ptr [rbp + 2192], 1
                        mov              eax, dword ptr [rbp + 2192]
                        cmp              eax, 1
                                                                                        je    n748_lit_string_α
                                                                                        jmp   n750_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n746_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 2112], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 2120], rax
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 2128], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 2136], rax
                        .section         .rodata
.Lrkfn1286:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1286]
                        lea              rsi, [rbp + 2112]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2096], rax
                        mov              qword ptr [rbp + 2104], rdx
                        cmp              eax, 99
                                                                                        je    n745_disjunction_β
                                                                                        jmp   n750_lit_string_α
n746_call_builtin_icon_β:
                                                                                        jmp   n745_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n747_lit_real_α:
                        mov              qword ptr [rbp + 2256], 7
                        mov              rax, qword ptr [rip + .Lx1287_0]
                        mov              qword ptr [rbp + 2264], rax
                                                                                        jmp   n749_call_proc_staged_α
n747_lit_real_β:
                                                                                        jmp   n745_disjunction_af
.Lx1287_0:
                        .quad            14039716276113244160
#-----------------------------------------------------------------------------------------------------------------------
n748_lit_string_α:
                        mov              qword ptr [rbp + 2272], 1
                        mov              rax, qword ptr [rip + .Lx1288_0]
                        mov              qword ptr [rbp + 2280], rax
                                                                                        jmp   n745_disjunction_as
n748_lit_string_β:
                                                                                        jmp   n745_disjunction_af
.Lx1288_0:
                        .quad            .Lx1288_0_s
.Lx1288_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n749_call_proc_staged_α:
                        lea              rsi, [rbp + 2256]
                        call             proc_Image_dcα
                                                                                        jmp   .Lx1290_2
.Lx1290_2:
                        mov              qword ptr [rbp + 2208], rax
                        mov              qword ptr [rbp + 2216], rdx
                        cmp              eax, 99
                                                                                        je    n745_disjunction_af
                                                                                        jmp   n745_disjunction_as
n749_call_proc_staged_β:
                                                                                        jmp   n745_disjunction_af
.Lx1290_0:
                        .quad            .Lx1290_0_s
.Lx1290_0_s:
                        .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n750_lit_string_α:
                        mov              qword ptr [rbp + 1968], 1
                        mov              rax, qword ptr [rip + .Lx1291_0]
                        mov              qword ptr [rbp + 1976], rax
                                                                                        jmp   n751_disjunction_α
.Lx1291_0:
                        .quad            .Lx1291_0_s
.Lx1291_0_s:
                        .string          "-36. ^ -9 ----> "
#-----------------------------------------------------------------------------------------------------------------------
n751_disjunction_α:
                        mov              qword ptr [rbp + 1984], 0
                        mov              qword ptr [rbp + 1992], 0
                        mov              dword ptr [rbp + 2000], 0
                                                                                        jmp   n753_lit_real_α
n751_disjunction_as:
                        mov              eax, dword ptr [rbp + 2000]
                        cmp              eax, 0
                                                                                        jne   .Lx1293_0
                        mov              rax, qword ptr [rbp + 2016]
                        mov              qword ptr [rbp + 1984], rax
                        mov              rax, qword ptr [rbp + 2024]
                        mov              qword ptr [rbp + 1992], rax
                                                                                        jmp   n752_call_builtin_icon_α
.Lx1293_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1293_1
                        mov              rax, qword ptr [rbp + 2080]
                        mov              qword ptr [rbp + 1984], rax
                        mov              rax, qword ptr [rbp + 2088]
                        mov              qword ptr [rbp + 1992], rax
                                                                                        jmp   n752_call_builtin_icon_α
.Lx1293_1:
                                                                                        jmp   n752_call_builtin_icon_α
n751_disjunction_β:
                        mov              eax, dword ptr [rbp + 2000]
                        cmp              eax, 0
                                                                                        je    n751_disjunction_af
                                                                                        jmp   n751_disjunction_af
n751_disjunction_af:
                        add              dword ptr [rbp + 2000], 1
                        mov              eax, dword ptr [rbp + 2000]
                        cmp              eax, 1
                                                                                        je    n754_lit_string_α
                                                                                        jmp   n756_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n752_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1968]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 1976]
                        mov              qword ptr [rbp + 1928], rax
                        mov              rax, qword ptr [rbp + 1984]
                        mov              qword ptr [rbp + 1936], rax
                        mov              rax, qword ptr [rbp + 1992]
                        mov              qword ptr [rbp + 1944], rax
                        .section         .rodata
.Lrkfn1295:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1295]
                        lea              rsi, [rbp + 1920]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx
                        cmp              eax, 99
                                                                                        je    n751_disjunction_β
                                                                                        jmp   n756_disjunction_α
n752_call_builtin_icon_β:
                                                                                        jmp   n751_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n753_lit_real_α:
                        mov              qword ptr [rbp + 2064], 7
                        mov              rax, qword ptr [rip + .Lx1296_0]
                        mov              qword ptr [rbp + 2072], rax
                                                                                        jmp   n755_call_proc_staged_α
n753_lit_real_β:
                                                                                        jmp   n751_disjunction_af
.Lx1296_0:
                        .quad            13620622571242290401
#-----------------------------------------------------------------------------------------------------------------------
n754_lit_string_α:
                        mov              qword ptr [rbp + 2080], 1
                        mov              rax, qword ptr [rip + .Lx1297_0]
                        mov              qword ptr [rbp + 2088], rax
                                                                                        jmp   n751_disjunction_as
n754_lit_string_β:
                                                                                        jmp   n751_disjunction_af
.Lx1297_0:
                        .quad            .Lx1297_0_s
.Lx1297_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n755_call_proc_staged_α:
                        lea              rsi, [rbp + 2064]
                        call             proc_Image_dcα
                                                                                        jmp   .Lx1299_2
.Lx1299_2:
                        mov              qword ptr [rbp + 2016], rax
                        mov              qword ptr [rbp + 2024], rdx
                        cmp              eax, 99
                                                                                        je    n751_disjunction_af
                                                                                        jmp   n751_disjunction_as
n755_call_proc_staged_β:
                                                                                        jmp   n751_disjunction_af
.Lx1299_0:
                        .quad            .Lx1299_0_s
.Lx1299_0_s:
                        .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n756_disjunction_α:
                        mov              qword ptr [rbp + 1472], 0
                        mov              qword ptr [rbp + 1480], 0
                        mov              dword ptr [rbp + 1488], 0
                                                                                        jmp   n758_lit_integer_α
n756_disjunction_as:
                        mov              eax, dword ptr [rbp + 1488]
                        cmp              eax, 0
                                                                                        jne   .Lx1301_0
                                                                                        jmp   n757_call_builtin_icon_α
.Lx1301_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1301_1
                        mov              rax, qword ptr [rbp + 1888]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1896]
                        mov              qword ptr [rbp + 1480], rax
                                                                                        jmp   n757_call_builtin_icon_α
.Lx1301_1:
                                                                                        jmp   n757_call_builtin_icon_α
n756_disjunction_β:
                        mov              eax, dword ptr [rbp + 1488]
                        cmp              eax, 0
                                                                                        je    n756_disjunction_af
                                                                                        jmp   n756_disjunction_af
n756_disjunction_af:
                        add              dword ptr [rbp + 1488], 1
                        mov              eax, dword ptr [rbp + 1488]
                        cmp              eax, 1
                                                                                        je    n759_lit_string_α
                                                                                        jmp   n760_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n757_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1448], rax
                        .section         .rodata
.Lrkfn1303:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1303]
                        lea              rsi, [rbp + 1440]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                        cmp              eax, 99
                                                                                        je    n756_disjunction_β
                                                                                        jmp   n760_disjunction_α
n757_call_builtin_icon_β:
                                                                                        jmp   n756_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n758_lit_integer_α:
                        mov              qword ptr [rbp + 1536], 6
                        mov              rax, qword ptr [rip + .Lx1304_0]
                        mov              qword ptr [rbp + 1544], rax
                                                                                        jmp   n761_lit_integer_α
n758_lit_integer_β:
                                                                                        jmp   n756_disjunction_af
.Lx1304_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n759_lit_string_α:
                        mov              qword ptr [rbp + 1888], 1
                        mov              rax, qword ptr [rip + .Lx1305_0]
                        mov              qword ptr [rbp + 1896], rax
                                                                                        jmp   n756_disjunction_as
n759_lit_string_β:
                                                                                        jmp   n756_disjunction_af
.Lx1305_0:
                        .quad            .Lx1305_0_s
.Lx1305_0_s:
                        .string          "failed"
#-----------------------------------------------------------------------------------------------------------------------
n760_disjunction_α:
                        mov              qword ptr [rbp + 992], 0
                        mov              qword ptr [rbp + 1000], 0
                        mov              dword ptr [rbp + 1008], 0
                                                                                        jmp   n763_lit_integer_α
n760_disjunction_as:
                        mov              eax, dword ptr [rbp + 1008]
                        cmp              eax, 0
                                                                                        jne   .Lx1307_0
                                                                                        jmp   n762_call_builtin_icon_α
.Lx1307_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1307_1
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n762_call_builtin_icon_α
.Lx1307_1:
                                                                                        jmp   n762_call_builtin_icon_α
n760_disjunction_β:
                        mov              eax, dword ptr [rbp + 1008]
                        cmp              eax, 0
                                                                                        je    n760_disjunction_af
                                                                                        jmp   n760_disjunction_af
n760_disjunction_af:
                        add              dword ptr [rbp + 1008], 1
                        mov              eax, dword ptr [rbp + 1008]
                        cmp              eax, 1
                                                                                        je    n764_lit_string_α
                                                                                        jmp   n766_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n761_lit_integer_α:
                        mov              qword ptr [rbp + 1552], 6
                        mov              rax, qword ptr [rip + .Lx1308_0]
                        mov              qword ptr [rbp + 1560], rax
                                                                                        jmp   n765_to_α
.Lx1308_0:
                        .quad            37
#-----------------------------------------------------------------------------------------------------------------------
n762_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 968], rax
                        .section         .rodata
.Lrkfn1310:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1310]
                        lea              rsi, [rbp + 960]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                        cmp              eax, 99
                                                                                        je    n760_disjunction_β
                                                                                        jmp   n766_disjunction_α
n762_call_builtin_icon_β:
                                                                                        jmp   n760_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n763_lit_integer_α:
                        mov              qword ptr [rbp + 1056], 6
                        mov              rax, qword ptr [rip + .Lx1311_0]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n767_lit_integer_α
n763_lit_integer_β:
                                                                                        jmp   n760_disjunction_af
.Lx1311_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n764_lit_string_α:
                        mov              qword ptr [rbp + 1408], 1
                        mov              rax, qword ptr [rip + .Lx1312_0]
                        mov              qword ptr [rbp + 1416], rax
                                                                                        jmp   n760_disjunction_as
n764_lit_string_β:
                                                                                        jmp   n760_disjunction_af
.Lx1312_0:
                        .quad            .Lx1312_0_s
.Lx1312_0_s:
                        .string          "failed"
#-----------------------------------------------------------------------------------------------------------------------
n765_to_α:
                        mov              rdi, qword ptr [rbp + 1536]
                        mov              rsi, qword ptr [rbp + 1544]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 1536], 6
                        mov              qword ptr [rbp + 1544], rax
                        mov              rdi, qword ptr [rbp + 1552]
                        mov              rsi, qword ptr [rbp + 1560]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 1552], 6
                        mov              qword ptr [rbp + 1560], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 1520], rax
.Lx1314_0:
                        mov              rax, qword ptr [rbp + 1520]
                        mov              rcx, qword ptr [rbp + 1560]
                        cmp              rax, rcx
                                                                                        jg    n756_disjunction_af
                        mov              qword ptr [rbp + 1504], 6
                        mov              qword ptr [rbp + 1512], rax
                                                                                        jmp   n768_assign_α
n765_to_β:
                        inc              qword ptr [rbp + 1520]
                                                                                        jmp   .Lx1314_0
#-----------------------------------------------------------------------------------------------------------------------
n766_disjunction_α:
                        mov              qword ptr [rbp + 496], 0
                        mov              qword ptr [rbp + 504], 0
                        mov              dword ptr [rbp + 512], 0
                                                                                        jmp   n770_lit_integer_α
n766_disjunction_as:
                        mov              eax, dword ptr [rbp + 512]
                        cmp              eax, 0
                                                                                        jne   .Lx1316_0
                                                                                        jmp   n769_call_builtin_icon_α
.Lx1316_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1316_1
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n769_call_builtin_icon_α
.Lx1316_1:
                                                                                        jmp   n769_call_builtin_icon_α
n766_disjunction_β:
                        mov              eax, dword ptr [rbp + 512]
                        cmp              eax, 0
                                                                                        je    n766_disjunction_af
                                                                                        jmp   n766_disjunction_af
n766_disjunction_af:
                        add              dword ptr [rbp + 512], 1
                        mov              eax, dword ptr [rbp + 512]
                        cmp              eax, 1
                                                                                        je    n771_lit_string_α
                                                                                        jmp   n774_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n767_lit_integer_α:
                        mov              qword ptr [rbp + 1072], 6
                        mov              rax, qword ptr [rip + .Lx1317_0]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n772_to_α
.Lx1317_0:
                        .quad            37
#-----------------------------------------------------------------------------------------------------------------------
n768_assign_α:
                        mov              rax, qword ptr [rbp + 1504]
                        mov              rdx, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 12224], rax
                        mov              qword ptr [rbp + 12232], rdx
                                                                                        jmp   n773_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n769_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 472], rax
                        .section         .rodata
.Lrkfn1320:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1320]
                        lea              rsi, [rbp + 464]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              eax, 99
                                                                                        je    n766_disjunction_β
                                                                                        jmp   n774_lit_string_α
n769_call_builtin_icon_β:
                                                                                        jmp   n766_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n770_lit_integer_α:
                        mov              qword ptr [rbp + 576], 6
                        mov              rax, qword ptr [rip + .Lx1321_0]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n775_lit_integer_α
n770_lit_integer_β:
                                                                                        jmp   n766_disjunction_af
.Lx1321_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n771_lit_string_α:
                        mov              qword ptr [rbp + 928], 1
                        mov              rax, qword ptr [rip + .Lx1322_0]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n766_disjunction_as
n771_lit_string_β:
                                                                                        jmp   n766_disjunction_af
.Lx1322_0:
                        .quad            .Lx1322_0_s
.Lx1322_0_s:
                        .string          "failed"
#-----------------------------------------------------------------------------------------------------------------------
n772_to_α:
                        mov              rdi, qword ptr [rbp + 1056]
                        mov              rsi, qword ptr [rbp + 1064]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 1056], 6
                        mov              qword ptr [rbp + 1064], rax
                        mov              rdi, qword ptr [rbp + 1072]
                        mov              rsi, qword ptr [rbp + 1080]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 1072], 6
                        mov              qword ptr [rbp + 1080], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1040], rax
.Lx1324_0:
                        mov              rax, qword ptr [rbp + 1040]
                        mov              rcx, qword ptr [rbp + 1080]
                        cmp              rax, rcx
                                                                                        jg    n760_disjunction_af
                        mov              qword ptr [rbp + 1024], 6
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n776_assign_α
n772_to_β:
                        inc              qword ptr [rbp + 1040]
                                                                                        jmp   .Lx1324_0
#-----------------------------------------------------------------------------------------------------------------------
n773_bound_α:
                        mov              qword ptr [rbp + 1568], rsp
                                                                                        jmp   n777_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n774_lit_string_α:
                        mov              qword ptr [rbp + 288], 1
                        mov              rax, qword ptr [rip + .Lx1327_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n778_disjunction_α
.Lx1327_0:
                        .quad            .Lx1327_0_s
.Lx1327_0_s:
                        .string          "2.0 === +2.0 ----> "
#-----------------------------------------------------------------------------------------------------------------------
n775_lit_integer_α:
                        mov              qword ptr [rbp + 592], 6
                        mov              rax, qword ptr [rip + .Lx1328_0]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n779_to_α
.Lx1328_0:
                        .quad            37
#-----------------------------------------------------------------------------------------------------------------------
n776_assign_α:
                        mov              rax, qword ptr [rbp + 1024]
                        mov              rdx, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 12224], rax
                        mov              qword ptr [rbp + 12232], rdx
                                                                                        jmp   n780_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n777_lit_string_α:
                        mov              qword ptr [rbp + 1840], 1
                        mov              rax, qword ptr [rip + .Lx1330_0]
                        mov              qword ptr [rbp + 1848], rax
                                                                                        jmp   n781_var_α
.Lx1330_0:
                        .quad            .Lx1330_0_s
.Lx1330_0_s:
                        .string          "2"
#-----------------------------------------------------------------------------------------------------------------------
n778_disjunction_α:
                        mov              qword ptr [rbp + 304], 0
                        mov              qword ptr [rbp + 312], 0
                        mov              dword ptr [rbp + 320], 0
                                                                                        jmp   n783_lit_real_α
n778_disjunction_as:
                        mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 0
                                                                                        jne   .Lx1332_0
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n782_call_builtin_icon_α
.Lx1332_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1332_1
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n782_call_builtin_icon_α
.Lx1332_1:
                                                                                        jmp   n782_call_builtin_icon_α
n778_disjunction_β:
                        mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 0
                                                                                        je    n778_disjunction_af
                                                                                        jmp   n778_disjunction_af
n778_disjunction_af:
                        add              dword ptr [rbp + 320], 1
                        mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 1
                                                                                        je    n784_lit_string_α
                                                                                        jmp   n790_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n779_to_α:
                        mov              rdi, qword ptr [rbp + 576]
                        mov              rsi, qword ptr [rbp + 584]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 576], 6
                        mov              qword ptr [rbp + 584], rax
                        mov              rdi, qword ptr [rbp + 592]
                        mov              rsi, qword ptr [rbp + 600]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 592], 6
                        mov              qword ptr [rbp + 600], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 560], rax
.Lx1334_0:
                        mov              rax, qword ptr [rbp + 560]
                        mov              rcx, qword ptr [rbp + 600]
                        cmp              rax, rcx
                                                                                        jg    n766_disjunction_af
                        mov              qword ptr [rbp + 544], 6
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n786_assign_α
n779_to_β:
                        inc              qword ptr [rbp + 560]
                                                                                        jmp   .Lx1334_0
#-----------------------------------------------------------------------------------------------------------------------
n780_bound_α:
                        mov              qword ptr [rbp + 1088], rsp
                                                                                        jmp   n787_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n781_var_α:
                        mov              rax, qword ptr [rbp + 12224]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 12232]
                        mov              qword ptr [rbp + 1864], rax
                                                                                        jmp   n788_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n782_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 248], rax
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 264], rax
                        .section         .rodata
.Lrkfn1340:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1340]
                        lea              rsi, [rbp + 240]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n778_disjunction_β
                                                                                        jmp   n790_lit_string_α
n782_call_builtin_icon_β:
                                                                                        jmp   n778_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n783_lit_real_α:
                        mov              qword ptr [rbp + 400], 7
                        mov              rax, qword ptr [rip + .Lx1341_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n791_lit_real_α
n783_lit_real_β:
                                                                                        jmp   n778_disjunction_af
.Lx1341_0:
                        .quad            4611686018427387904
#-----------------------------------------------------------------------------------------------------------------------
n784_lit_string_α:
                        mov              qword ptr [rbp + 432], 1
                        mov              rax, qword ptr [rip + .Lx1342_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n778_disjunction_as
n784_lit_string_β:
                                                                                        jmp   n778_disjunction_af
.Lx1342_0:
                        .quad            .Lx1342_0_s
.Lx1342_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n785_call_proc_staged_α:
                        lea              rsi, [rbp + 384]
                        call             proc_Image_dcα
                                                                                        jmp   .Lx1344_2
.Lx1344_2:
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n778_disjunction_af
                                                                                        jmp   n778_disjunction_as
n785_call_proc_staged_β:
                                                                                        jmp   n778_disjunction_af
.Lx1344_0:
                        .quad            .Lx1344_0_s
.Lx1344_0_s:
                        .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n786_assign_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              rdx, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 12224], rax
                        mov              qword ptr [rbp + 12232], rdx
                                                                                        jmp   n792_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n787_lit_string_α:
                        mov              qword ptr [rbp + 1360], 1
                        mov              rax, qword ptr [rip + .Lx1346_0]
                        mov              qword ptr [rbp + 1368], rax
                                                                                        jmp   n793_var_α
.Lx1346_0:
                        .quad            .Lx1346_0_s
.Lx1346_0_s:
                        .string          "2"
#-----------------------------------------------------------------------------------------------------------------------
n788_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1792], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1800], rax
                        mov              rax, qword ptr [rbp + 1856]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 1864]
                        mov              qword ptr [rbp + 1816], rax
                        .section         .rodata
.Lrkfn1348:             .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1348]
                        lea              rsi, [rbp + 1792]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx
                        cmp              eax, 99
                                                                                        je    n789_unmark_α
                                                                                        jmp   n794_lit_string_α
n788_call_builtin_icon_β:
                                                                                        jmp   n789_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n789_unmark_α:
                        mov              rsp, qword ptr [rbp + 1568]
                                                                                        jmp   n765_to_β
#-----------------------------------------------------------------------------------------------------------------------
n790_lit_string_α:
                        mov              qword ptr [rbp + 64], 1
                        mov              rax, qword ptr [rip + .Lx1351_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n795_disjunction_α
.Lx1351_0:
                        .quad            .Lx1351_0_s
.Lx1351_0_s:
                        .string          "?30.0 ----> "
#-----------------------------------------------------------------------------------------------------------------------
n791_lit_real_α:
                        mov              qword ptr [rbp + 416], 7
                        mov              rax, qword ptr [rip + .Lx1352_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n796_binop_test_α
.Lx1352_0:
                        .quad            4611686018427387904
#-----------------------------------------------------------------------------------------------------------------------
n792_bound_α:
                        mov              qword ptr [rbp + 608], rsp
                                                                                        jmp   n797_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n793_var_α:
                        mov              rax, qword ptr [rbp + 12224]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 12232]
                        mov              qword ptr [rbp + 1384], rax
                                                                                        jmp   n798_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n794_lit_string_α:
                        mov              qword ptr [rbp + 1872], 1
                        mov              rax, qword ptr [rip + .Lx1357_0]
                        mov              qword ptr [rbp + 1880], rax
                                                                                        jmp   n800_binop_α
.Lx1357_0:
                        .quad            .Lx1357_0_s
.Lx1357_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n795_disjunction_α:
                        mov              qword ptr [rbp + 80], 0
                        mov              qword ptr [rbp + 88], 0
                        mov              dword ptr [rbp + 96], 0
                                                                                        jmp   n802_lit_real_α
n795_disjunction_as:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 0
                                                                                        jne   .Lx1359_0
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n801_call_builtin_icon_α
.Lx1359_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1359_1
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n801_call_builtin_icon_α
.Lx1359_1:
                                                                                        jmp   n801_call_builtin_icon_α
n795_disjunction_β:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 0
                                                                                        je    n795_disjunction_af
                                                                                        jmp   n795_disjunction_af
n795_disjunction_af:
                        add              dword ptr [rbp + 96], 1
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 1
                                                                                        je    n803_lit_string_α
                                                                                        jmp   proc_p2_ω
#-----------------------------------------------------------------------------------------------------------------------
n796_binop_test_α:
                        mov              rdi, qword ptr [rbp + 400]
                        mov              rsi, qword ptr [rbp + 408]
                        mov              rdx, qword ptr [rbp + 416]
                        mov              rcx, qword ptr [rbp + 424]
                        mov              r8d, 22
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n778_disjunction_af
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n785_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n797_lit_string_α:
                        mov              qword ptr [rbp + 864], 1
                        mov              rax, qword ptr [rip + .Lx1361_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n805_var_α
.Lx1361_0:
                        .quad            .Lx1361_0_s
.Lx1361_0_s:
                        .string          "2"
#-----------------------------------------------------------------------------------------------------------------------
n798_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1320], rax
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1336], rax
                        .section         .rodata
.Lrkfn1363:             .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1363]
                        lea              rsi, [rbp + 1312]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                        cmp              eax, 99
                                                                                        je    n799_unmark_α
                                                                                        jmp   n806_lit_string_α
n798_call_builtin_icon_β:
                                                                                        jmp   n799_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n799_unmark_α:
                        mov              rsp, qword ptr [rbp + 1088]
                                                                                        jmp   n772_to_β
#-----------------------------------------------------------------------------------------------------------------------
n800_binop_α:
                        mov              rdi, qword ptr [rbp + 1776]
                        mov              rsi, qword ptr [rbp + 1784]
                        mov              rdx, qword ptr [rbp + 1872]
                        mov              rcx, qword ptr [rbp + 1880]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx
                                                                                        jmp   n807_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n801_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 24], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 40], rax
                        .section         .rodata
.Lrkfn1368:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1368]
                        lea              rsi, [rbp + 16]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 99
                                                                                        je    n795_disjunction_β
                                                                                        jmp   proc_p2_ω
n801_call_builtin_icon_β:
                                                                                        jmp   n795_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n802_lit_real_α:
                        mov              qword ptr [rbp + 176], 7
                        mov              rax, qword ptr [rip + .Lx1369_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n808_random_α
n802_lit_real_β:
                                                                                        jmp   n795_disjunction_af
.Lx1369_0:
                        .quad            4629137466983448576
#-----------------------------------------------------------------------------------------------------------------------
n803_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx1370_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n795_disjunction_as
n803_lit_string_β:
                                                                                        jmp   n795_disjunction_af
.Lx1370_0:
                        .quad            .Lx1370_0_s
.Lx1370_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n804_call_proc_staged_α:
                        lea              rsi, [rbp + 192]
                        call             proc_Image_dcα
                                                                                        jmp   .Lx1372_2
.Lx1372_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n795_disjunction_af
                                                                                        jmp   n795_disjunction_as
n804_call_proc_staged_β:
                                                                                        jmp   n795_disjunction_af
.Lx1372_0:
                        .quad            .Lx1372_0_s
.Lx1372_0_s:
                        .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n805_var_α:
                        mov              rax, qword ptr [rbp + 12224]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 12232]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n809_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n806_lit_string_α:
                        mov              qword ptr [rbp + 1392], 1
                        mov              rax, qword ptr [rip + .Lx1375_0]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n811_binop_α
.Lx1375_0:
                        .quad            .Lx1375_0_s
.Lx1375_0_s:
                        .string          ".2"
#-----------------------------------------------------------------------------------------------------------------------
n807_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1760]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 1768]
                        mov              qword ptr [rbp + 1736], rax
                        .section         .rodata
.Lrkfn1377:             .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1377]
                        lea              rsi, [rbp + 1728]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                        cmp              eax, 99
                                                                                        je    n789_unmark_α
                                                                                        jmp   n812_call_proc_staged_α
n807_call_builtin_icon_β:
                                                                                        jmp   n789_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n808_random_α:
                        mov              rdi, qword ptr [rbp + 176]
                        mov              rsi, qword ptr [rbp + 184]
                        call             rt_random_var@PLT
                        cmp              eax, 99
                                                                                        je    n795_disjunction_af
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n813_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n809_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 824], rax
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 840], rax
                        .section         .rodata
.Lrkfn1380:             .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1380]
                        lea              rsi, [rbp + 816]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              eax, 99
                                                                                        je    n810_unmark_α
                                                                                        jmp   n814_lit_string_α
n809_call_builtin_icon_β:
                                                                                        jmp   n810_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n810_unmark_α:
                        mov              rsp, qword ptr [rbp + 608]
                                                                                        jmp   n779_to_β
#-----------------------------------------------------------------------------------------------------------------------
n811_binop_α:
                        mov              rdi, qword ptr [rbp + 1296]
                        mov              rsi, qword ptr [rbp + 1304]
                        mov              rdx, qword ptr [rbp + 1392]
                        mov              rcx, qword ptr [rbp + 1400]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                                                                                        jmp   n815_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n812_call_proc_staged_α:
                        lea              rsi, [rbp + 1712]
                        call             proc_Image_dcα
                                                                                        jmp   .Lx1385_2
.Lx1385_2:
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                        cmp              eax, 99
                                                                                        je    n789_unmark_α
                                                                                        jmp   n816_call_builtin_icon_α
n812_call_proc_staged_β:
                                                                                        jmp   n789_unmark_α
.Lx1385_0:
                        .quad            .Lx1385_0_s
.Lx1385_0_s:
                        .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n813_deref_α:
                        mov              rdi, qword ptr [rbp + 160]
                        mov              rsi, qword ptr [rbp + 168]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n795_disjunction_af
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n804_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n814_lit_string_α:
                        mov              qword ptr [rbp + 896], 1
                        mov              rax, qword ptr [rip + .Lx1387_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n817_binop_α
.Lx1387_0:
                        .quad            .Lx1387_0_s
.Lx1387_0_s:
                        .string          ".2"
#-----------------------------------------------------------------------------------------------------------------------
n815_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1256], rax
                        .section         .rodata
.Lrkfn1389:             .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1389]
                        lea              rsi, [rbp + 1248]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                        cmp              eax, 99
                                                                                        je    n799_unmark_α
                                                                                        jmp   n818_call_proc_staged_α
n815_call_builtin_icon_β:
                                                                                        jmp   n799_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n816_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1664]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 1672]
                        mov              qword ptr [rbp + 1640], rax
                        .section         .rodata
.Lrkfn1391:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1391]
                        lea              rsi, [rbp + 1632]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                        cmp              eax, 99
                                                                                        je    n789_unmark_α
                                                                                        jmp   n789_unmark_α
n816_call_builtin_icon_β:
                                                                                        jmp   n789_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n817_binop_α:
                        mov              rdi, qword ptr [rbp + 800]
                        mov              rsi, qword ptr [rbp + 808]
                        mov              rdx, qword ptr [rbp + 896]
                        mov              rcx, qword ptr [rbp + 904]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n819_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n818_call_proc_staged_α:
                        lea              rsi, [rbp + 1232]
                        call             proc_Image_dcα
                                                                                        jmp   .Lx1394_2
.Lx1394_2:
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                        cmp              eax, 99
                                                                                        je    n799_unmark_α
                                                                                        jmp   n820_call_builtin_icon_α
n818_call_proc_staged_β:
                                                                                        jmp   n799_unmark_α
.Lx1394_0:
                        .quad            .Lx1394_0_s
.Lx1394_0_s:
                        .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n819_lit_integer_α:
                        mov              qword ptr [rbp + 912], 6
                        mov              rax, qword ptr [rip + .Lx1395_0]
                        mov              qword ptr [rbp + 920], rax
                                                                                        jmp   n821_op75_α
.Lx1395_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n820_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1160], rax
                        .section         .rodata
.Lrkfn1397:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1397]
                        lea              rsi, [rbp + 1152]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                        cmp              eax, 99
                                                                                        je    n799_unmark_α
                                                                                        jmp   n799_unmark_α
n820_call_builtin_icon_β:
                                                                                        jmp   n799_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n821_op75_α:
                        mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 7
                                                                                        je    .Lx1399_1
                        cmp              eax, 6
                                                                                        jne   .Lx1399_0
                        mov              eax, dword ptr [rbp + 912]
                        cmp              eax, 6
                                                                                        jne   .Lx1399_0
.Lx1399_1:
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n822_binop_α
.Lx1399_0:
                        lea              rdi, [rbp + 784]
                        lea              rsi, [rbp + 912]
                        lea              rdx, [rbp + 768]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n822_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n822_binop_α:
                        mov              eax, dword ptr [rbp + 768]
                        cmp              eax, 6
                                                                                        jne   .Lx1400_0
                        mov              rax, qword ptr [rbp + 776]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 752], 6
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n823_call_proc_staged_α
.Lx1400_0:
                        mov              rdi, qword ptr [rbp + 768]
                        mov              rsi, qword ptr [rbp + 776]
                        mov              rdx, qword ptr [rbp + 912]
                        mov              rcx, qword ptr [rbp + 920]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n810_unmark_α
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n823_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n823_call_proc_staged_α:
                        lea              rsi, [rbp + 752]
                        call             proc_Image_dcα
                                                                                        jmp   .Lx1402_2
.Lx1402_2:
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              eax, 99
                                                                                        je    n810_unmark_α
                                                                                        jmp   n824_call_builtin_icon_α
n823_call_proc_staged_β:
                                                                                        jmp   n810_unmark_α
.Lx1402_0:
                        .quad            .Lx1402_0_s
.Lx1402_0_s:
                        .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n824_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 680], rax
                        .section         .rodata
.Lrkfn1404:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1404]
                        lea              rsi, [rbp + 672]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              eax, 99
                                                                                        je    n810_unmark_α
                                                                                        jmp   n810_unmark_α
n824_call_builtin_icon_β:
                                                                                        jmp   n810_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
proc_p2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_p2_β:
                                                                                        jmp   proc_p2_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_p2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 12264]
                        lea              rsp, [rbp + 12288]
                        mov              rbp, [rbp + 12280]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_p2_ω:
                        mov              rax, [rbp + 12272]
                        lea              rsp, [rbp + 12288]
                        mov              rbp, [rbp + 12280]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_p2_dcα:
                        pop              r11
                        sub              rsp, 12304
                        mov              qword ptr [rsp + 12280], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 12256], r11
                        lea              rax, [rip + .Lx1405_2]
                        mov              qword ptr [rbp + 12264], rax
                        lea              rax, [rip + .Lx1405_3]
                        mov              qword ptr [rbp + 12272], rax
                        mov              rdi, rbp
                        mov              esi, 12224
                        mov              edx, 12256
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_p2_α_body
.Lx1405_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -12288
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx1405_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -12288
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_p3_α
proc_p3_α:
                        .global          proc_p3_α
                        .global          proc_p3_β
                        .global          proc_p3_γ
                        .global          proc_p3_ω
                        sub              rsp, 1024
                        mov              [rsp + 1000], rcx
                        mov              [rsp + 1008], rdx
                        mov              [rsp + 1016], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 992
                        mov              edx, 992
                        call             rt_jmp_frame_lexprep2@PLT
proc_p3_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n1406_lit_string_α:
                        mov              qword ptr [rbp + 816], 1
                        mov              rax, qword ptr [rip + .Lx1435_0]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n1407_disjunction_α
.Lx1435_0:
                        .quad            .Lx1435_0_s
.Lx1435_0_s:
                        .string          "copy(1.0) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n1407_disjunction_α:
                        mov              qword ptr [rbp + 832], 0
                        mov              qword ptr [rbp + 840], 0
                        mov              dword ptr [rbp + 848], 0
                                                                                        jmp   n1409_lit_real_α
n1407_disjunction_as:
                        mov              eax, dword ptr [rbp + 848]
                        cmp              eax, 0
                                                                                        jne   .Lx1437_0
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n1408_call_builtin_icon_α
.Lx1437_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1437_1
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n1408_call_builtin_icon_α
.Lx1437_1:
                                                                                        jmp   n1408_call_builtin_icon_α
n1407_disjunction_β:
                        mov              eax, dword ptr [rbp + 848]
                        cmp              eax, 0
                                                                                        je    n1407_disjunction_af
                                                                                        jmp   n1407_disjunction_af
n1407_disjunction_af:
                        add              dword ptr [rbp + 848], 1
                        mov              eax, dword ptr [rbp + 848]
                        cmp              eax, 1
                                                                                        je    n1410_lit_string_α
                                                                                        jmp   n1412_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1408_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 776], rax
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 792], rax
                        .section         .rodata
.Lrkfn1439:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1439]
                        lea              rsi, [rbp + 768]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        cmp              eax, 99
                                                                                        je    n1407_disjunction_β
                                                                                        jmp   n1412_lit_string_α
n1408_call_builtin_icon_β:
                                                                                        jmp   n1407_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n1409_lit_real_α:
                        mov              qword ptr [rbp + 960], 7
                        mov              rax, qword ptr [rip + .Lx1440_0]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n1413_call_builtin_icon_α
n1409_lit_real_β:
                                                                                        jmp   n1407_disjunction_af
.Lx1440_0:
                        .quad            4607182418800017408
#-----------------------------------------------------------------------------------------------------------------------
n1410_lit_string_α:
                        mov              qword ptr [rbp + 976], 1
                        mov              rax, qword ptr [rip + .Lx1441_0]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n1407_disjunction_as
n1410_lit_string_β:
                                                                                        jmp   n1407_disjunction_af
.Lx1441_0:
                        .quad            .Lx1441_0_s
.Lx1441_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n1411_call_proc_staged_α:
                        lea              rsi, [rbp + 912]
                        call             proc_Image_dcα
                                                                                        jmp   .Lx1443_2
.Lx1443_2:
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              eax, 99
                                                                                        je    n1407_disjunction_af
                                                                                        jmp   n1407_disjunction_as
n1411_call_proc_staged_β:
                                                                                        jmp   n1407_disjunction_af
.Lx1443_0:
                        .quad            .Lx1443_0_s
.Lx1443_0_s:
                        .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n1412_lit_string_α:
                        mov              qword ptr [rbp + 544], 1
                        mov              rax, qword ptr [rip + .Lx1444_0]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n1414_disjunction_α
.Lx1444_0:
                        .quad            .Lx1444_0_s
.Lx1444_0_s:
                        .string          "trim(3.14159,58) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n1413_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 936], rax
                        .section         .rodata
.Lrkfn1446:             .string          "copy"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1446]
                        lea              rsi, [rbp + 928]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              eax, 99
                                                                                        je    n1407_disjunction_af
                                                                                        jmp   n1411_call_proc_staged_α
n1413_call_builtin_icon_β:
                                                                                        jmp   n1407_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1414_disjunction_α:
                        mov              qword ptr [rbp + 560], 0
                        mov              qword ptr [rbp + 568], 0
                        mov              dword ptr [rbp + 576], 0
                                                                                        jmp   n1416_lit_real_α
n1414_disjunction_as:
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 0
                                                                                        jne   .Lx1448_0
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n1415_call_builtin_icon_α
.Lx1448_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1448_1
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n1415_call_builtin_icon_α
.Lx1448_1:
                                                                                        jmp   n1415_call_builtin_icon_α
n1414_disjunction_β:
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 0
                                                                                        je    n1414_disjunction_af
                                                                                        jmp   n1414_disjunction_af
n1414_disjunction_af:
                        add              dword ptr [rbp + 576], 1
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 1
                                                                                        je    n1417_lit_string_α
                                                                                        jmp   n1419_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1415_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 504], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 520], rax
                        .section         .rodata
.Lrkfn1450:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1450]
                        lea              rsi, [rbp + 496]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 99
                                                                                        je    n1414_disjunction_β
                                                                                        jmp   n1419_lit_string_α
n1415_call_builtin_icon_β:
                                                                                        jmp   n1414_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n1416_lit_real_α:
                        mov              qword ptr [rbp + 704], 7
                        mov              rax, qword ptr [rip + .Lx1451_0]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n1420_lit_integer_α
n1416_lit_real_β:
                                                                                        jmp   n1414_disjunction_af
.Lx1451_0:
                        .quad            4614256650576692846
#-----------------------------------------------------------------------------------------------------------------------
n1417_lit_string_α:
                        mov              qword ptr [rbp + 736], 1
                        mov              rax, qword ptr [rip + .Lx1452_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n1414_disjunction_as
n1417_lit_string_β:
                                                                                        jmp   n1414_disjunction_af
.Lx1452_0:
                        .quad            .Lx1452_0_s
.Lx1452_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n1418_call_proc_staged_α:
                        lea              rsi, [rbp + 640]
                        call             proc_Image_dcα
                                                                                        jmp   .Lx1454_2
.Lx1454_2:
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 99
                                                                                        je    n1414_disjunction_af
                                                                                        jmp   n1414_disjunction_as
n1418_call_proc_staged_β:
                                                                                        jmp   n1414_disjunction_af
.Lx1454_0:
                        .quad            .Lx1454_0_s
.Lx1454_0_s:
                        .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n1419_lit_string_α:
                        mov              qword ptr [rbp + 304], 1
                        mov              rax, qword ptr [rip + .Lx1455_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n1421_disjunction_α
.Lx1455_0:
                        .quad            .Lx1455_0_s
.Lx1455_0_s:
                        .string          "Image(2e13) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n1420_lit_integer_α:
                        mov              qword ptr [rbp + 720], 6
                        mov              rax, qword ptr [rip + .Lx1456_0]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n1422_call_builtin_icon_α
.Lx1456_0:
                        .quad            58
#-----------------------------------------------------------------------------------------------------------------------
n1421_disjunction_α:
                        mov              qword ptr [rbp + 320], 0
                        mov              qword ptr [rbp + 328], 0
                        mov              dword ptr [rbp + 336], 0
                                                                                        jmp   n1424_lit_real_α
n1421_disjunction_as:
                        mov              eax, dword ptr [rbp + 336]
                        cmp              eax, 0
                                                                                        jne   .Lx1458_0
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n1423_call_builtin_icon_α
.Lx1458_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1458_1
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n1423_call_builtin_icon_α
.Lx1458_1:
                                                                                        jmp   n1423_call_builtin_icon_α
n1421_disjunction_β:
                        mov              eax, dword ptr [rbp + 336]
                        cmp              eax, 0
                                                                                        je    n1421_disjunction_af
                                                                                        jmp   n1421_disjunction_af
n1421_disjunction_af:
                        add              dword ptr [rbp + 336], 1
                        mov              eax, dword ptr [rbp + 336]
                        cmp              eax, 1
                                                                                        je    n1425_lit_string_α
                                                                                        jmp   n1427_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1422_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 664], rax
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 680], rax
                        .section         .rodata
.Lrkfn1460:             .string          "trim"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1460]
                        lea              rsi, [rbp + 656]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              eax, 99
                                                                                        je    n1414_disjunction_af
                                                                                        jmp   n1418_call_proc_staged_α
n1422_call_builtin_icon_β:
                                                                                        jmp   n1414_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1423_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 280], rax
                        .section         .rodata
.Lrkfn1462:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1462]
                        lea              rsi, [rbp + 256]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n1421_disjunction_β
                                                                                        jmp   n1427_lit_string_α
n1423_call_builtin_icon_β:
                                                                                        jmp   n1421_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n1424_lit_real_α:
                        mov              qword ptr [rbp + 448], 7
                        mov              rax, qword ptr [rip + .Lx1463_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n1428_call_proc_staged_α
n1424_lit_real_β:
                                                                                        jmp   n1421_disjunction_af
.Lx1463_0:
                        .quad            4805957202776948736
#-----------------------------------------------------------------------------------------------------------------------
n1425_lit_string_α:
                        mov              qword ptr [rbp + 464], 1
                        mov              rax, qword ptr [rip + .Lx1464_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n1421_disjunction_as
n1425_lit_string_β:
                                                                                        jmp   n1421_disjunction_af
.Lx1464_0:
                        .quad            .Lx1464_0_s
.Lx1464_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n1426_call_proc_staged_α:
                        lea              rsi, [rbp + 400]
                        call             proc_Image_dcα
                                                                                        jmp   .Lx1466_2
.Lx1466_2:
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 99
                                                                                        je    n1421_disjunction_af
                                                                                        jmp   n1421_disjunction_as
n1426_call_proc_staged_β:
                                                                                        jmp   n1421_disjunction_af
.Lx1466_0:
                        .quad            .Lx1466_0_s
.Lx1466_0_s:
                        .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n1427_lit_string_α:
                        mov              qword ptr [rbp + 64], 1
                        mov              rax, qword ptr [rip + .Lx1467_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n1429_disjunction_α
.Lx1467_0:
                        .quad            .Lx1467_0_s
.Lx1467_0_s:
                        .string          "Image(0.0006) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n1428_call_proc_staged_α:
                        lea              rsi, [rbp + 448]
                        call             proc_Image_dcα
                                                                                        jmp   .Lx1469_2
.Lx1469_2:
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    n1421_disjunction_af
                                                                                        jmp   n1426_call_proc_staged_α
n1428_call_proc_staged_β:
                                                                                        jmp   n1421_disjunction_af
.Lx1469_0:
                        .quad            .Lx1469_0_s
.Lx1469_0_s:
                        .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n1429_disjunction_α:
                        mov              qword ptr [rbp + 80], 0
                        mov              qword ptr [rbp + 88], 0
                        mov              dword ptr [rbp + 96], 0
                                                                                        jmp   n1431_lit_real_α
n1429_disjunction_as:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 0
                                                                                        jne   .Lx1471_0
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n1430_call_builtin_icon_α
.Lx1471_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1471_1
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n1430_call_builtin_icon_α
.Lx1471_1:
                                                                                        jmp   n1430_call_builtin_icon_α
n1429_disjunction_β:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 0
                                                                                        je    n1429_disjunction_af
                                                                                        jmp   n1429_disjunction_af
n1429_disjunction_af:
                        add              dword ptr [rbp + 96], 1
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 1
                                                                                        je    n1432_lit_string_α
                                                                                        jmp   proc_p3_ω
#-----------------------------------------------------------------------------------------------------------------------
n1430_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 24], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 40], rax
                        .section         .rodata
.Lrkfn1473:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1473]
                        lea              rsi, [rbp + 16]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 99
                                                                                        je    n1429_disjunction_β
                                                                                        jmp   proc_p3_ω
n1430_call_builtin_icon_β:
                                                                                        jmp   n1429_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n1431_lit_real_α:
                        mov              qword ptr [rbp + 208], 7
                        mov              rax, qword ptr [rip + .Lx1474_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n1434_call_proc_staged_α
n1431_lit_real_β:
                                                                                        jmp   n1429_disjunction_af
.Lx1474_0:
                        .quad            4558673246493684321
#-----------------------------------------------------------------------------------------------------------------------
n1432_lit_string_α:
                        mov              qword ptr [rbp + 224], 1
                        mov              rax, qword ptr [rip + .Lx1475_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n1429_disjunction_as
n1432_lit_string_β:
                                                                                        jmp   n1429_disjunction_af
.Lx1475_0:
                        .quad            .Lx1475_0_s
.Lx1475_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n1433_call_proc_staged_α:
                        lea              rsi, [rbp + 160]
                        call             proc_Image_dcα
                                                                                        jmp   .Lx1477_2
.Lx1477_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n1429_disjunction_af
                                                                                        jmp   n1429_disjunction_as
n1433_call_proc_staged_β:
                                                                                        jmp   n1429_disjunction_af
.Lx1477_0:
                        .quad            .Lx1477_0_s
.Lx1477_0_s:
                        .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n1434_call_proc_staged_α:
                        lea              rsi, [rbp + 208]
                        call             proc_Image_dcα
                                                                                        jmp   .Lx1479_2
.Lx1479_2:
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n1429_disjunction_af
                                                                                        jmp   n1433_call_proc_staged_α
n1434_call_proc_staged_β:
                                                                                        jmp   n1429_disjunction_af
.Lx1479_0:
                        .quad            .Lx1479_0_s
.Lx1479_0_s:
                        .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
proc_p3_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_p3_β:
                                                                                        jmp   proc_p3_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_p3_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 1000]
                        lea              rsp, [rbp + 1024]
                        mov              rbp, [rbp + 1016]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_p3_ω:
                        mov              rax, [rbp + 1008]
                        lea              rsp, [rbp + 1024]
                        mov              rbp, [rbp + 1016]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_p3_dcα:
                        pop              r11
                        sub              rsp, 1040
                        mov              qword ptr [rsp + 1016], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 992], r11
                        lea              rax, [rip + .Lx1480_2]
                        mov              qword ptr [rbp + 1000], rax
                        lea              rax, [rip + .Lx1480_3]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rdi, rbp
                        mov              esi, 992
                        mov              edx, 992
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_p3_α_body
.Lx1480_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -1024
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx1480_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -1024
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_Image_α
proc_Image_α:
                        .global          proc_Image_α
                        .global          proc_Image_β
                        .global          proc_Image_γ
                        .global          proc_Image_ω
                        sub              rsp, 1904
                        mov              [rsp + 1880], rcx
                        mov              [rsp + 1888], rdx
                        mov              [rsp + 1896], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1808
                        mov              edx, 1872
                        call             rt_jmp_frame_lexprep2@PLT
proc_Image_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n1481_lit_integer_α:
                        mov              qword ptr [rbp + 1792], 6
                        mov              rax, qword ptr [rip + .Lx1570_0]
                        mov              qword ptr [rbp + 1800], rax
                                                                                        jmp   n1482_assign_α
.Lx1570_0:
                        .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n1482_assign_α:
                        mov              rax, qword ptr [rbp + 1792]
                        mov              rdx, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                                                                                        jmp   n1483_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n1483_disjunction_α:
                        mov              qword ptr [rbp + 32], 0
                        mov              qword ptr [rbp + 40], 0
                        mov              dword ptr [rbp + 48], 0
                                                                                        jmp   n1484_var_α
n1483_disjunction_as:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 0
                                                                                        jne   .Lx1573_0
                                                                                        jmp   proc_Image_ω
.Lx1573_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1573_1
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   proc_Image_ω
.Lx1573_1:
                                                                                        jmp   proc_Image_ω
n1483_disjunction_β:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 0
                                                                                        je    proc_Image_ω
                                                                                        jmp   n1486_scan_β
n1483_disjunction_af:
                        add              dword ptr [rbp + 48], 1
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 1
                                                                                        je    n1485_var_α
                                                                                        jmp   proc_Image_ω
#-----------------------------------------------------------------------------------------------------------------------
n1484_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n1487_call_builtin_icon_α
n1484_var_β:
                                                                                        jmp   n1483_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1485_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1784], rax
                                                                                        jmp   n1488_scan_enter_α
n1485_var_β:
                                                                                        jmp   proc_Image_ω
#-----------------------------------------------------------------------------------------------------------------------
n1486_scan_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 280], rax
                        lea              rdi, [rbp + 240]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 240]
                        mov              r14, qword ptr [rbp + 248]
                        mov              r15, qword ptr [rbp + 256]
                                                                                        jmp   n1483_disjunction_as
n1486_scan_β:
                        call             rt_scan_reenter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                                                                                        jmp   n1490_disjunction_β
                                                                                        jmp   proc_Image_ω
#-----------------------------------------------------------------------------------------------------------------------
n1487_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn1581:             .string          "type"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1581]
                        lea              rsi, [rbp + 160]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n1483_disjunction_af
                                                                                        jmp   n1489_lit_string_α
n1487_call_builtin_icon_β:
                                                                                        jmp   n1483_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1488_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 1776]
                        mov              rsi, qword ptr [rbp + 1784]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n1490_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n1489_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx1584_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n1491_binop_test_α
.Lx1584_0:
                        .quad            .Lx1584_0_s
.Lx1584_0_s:
                        .string          "real"
#-----------------------------------------------------------------------------------------------------------------------
n1490_disjunction_α:
                        mov              qword ptr [rbp + 304], 0
                        mov              qword ptr [rbp + 312], 0
                        mov              dword ptr [rbp + 320], 0
                                                                                        jmp   n1492_lit_charset_α
n1490_disjunction_as:
                        mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 0
                                                                                        jne   .Lx1586_0
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n1486_scan_α
.Lx1586_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1586_1
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n1486_scan_α
.Lx1586_1:
                                                                                        jmp   n1486_scan_α
n1490_disjunction_β:
                        mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 0
                                                                                        je    n1537_scan_α
                                                                                        jmp   n1494_disjunction_β
n1490_disjunction_af:
                        add              dword ptr [rbp + 320], 1
                        mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 1
                                                                                        je    n1493_disjunction_α
                                                                                        jmp   n1537_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n1491_binop_test_α:
                        mov              rdi, qword ptr [rbp + 144]
                        mov              rsi, qword ptr [rbp + 152]
                        mov              rdx, qword ptr [rbp + 208]
                        mov              rcx, qword ptr [rbp + 216]
                        mov              r8d, 17
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n1483_disjunction_af
                        mov              rdi, qword ptr [rbp + 208]
                        mov              rsi, qword ptr [rbp + 216]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                                                                                        jmp   n1497_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1492_lit_charset_α:
                        mov              qword ptr [rbp + 704], 1
                        mov              dword ptr [rbp + 708], -1
                        mov              rax, qword ptr [rip + .Lx1588_0]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n1498_scan_upto_α
n1492_lit_charset_β:
                                                                                        jmp   n1490_disjunction_af
.Lx1588_0:
                        .quad            .Lx1588_0_s
.Lx1588_0_s:
                        .string          "e"
#-----------------------------------------------------------------------------------------------------------------------
n1493_disjunction_α:
                        mov              qword ptr [rbp + 1664], 0
                        mov              qword ptr [rbp + 1672], 0
                        mov              dword ptr [rbp + 1680], 0
                                                                                        jmp   n1500_var_α
n1493_disjunction_as:
                        mov              eax, dword ptr [rbp + 1680]
                        cmp              eax, 0
                                                                                        jne   .Lx1590_0
                        mov              rax, qword ptr [rbp + 1696]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1704]
                        mov              qword ptr [rbp + 1672], rax
                                                                                        jmp   n1499_scan_tab_α
.Lx1590_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1590_1
                        mov              rax, qword ptr [rbp + 1760]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1768]
                        mov              qword ptr [rbp + 1672], rax
                                                                                        jmp   n1499_scan_tab_α
.Lx1590_1:
                                                                                        jmp   n1499_scan_tab_α
n1493_disjunction_β:
                        mov              eax, dword ptr [rbp + 1680]
                        cmp              eax, 0
                                                                                        je    n1493_disjunction_af
                                                                                        jmp   n1493_disjunction_af
n1493_disjunction_af:
                        add              dword ptr [rbp + 1680], 1
                        mov              eax, dword ptr [rbp + 1680]
                        cmp              eax, 1
                                                                                        je    n1501_lit_integer_α
                                                                                        jmp   n1494_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n1494_disjunction_α:
                        mov              qword ptr [rbp + 736], 0
                        mov              qword ptr [rbp + 744], 0
                        mov              dword ptr [rbp + 752], 0
                                                                                        jmp   n1503_lit_charset_α
n1494_disjunction_as:
                        mov              eax, dword ptr [rbp + 752]
                        cmp              eax, 0
                                                                                        jne   .Lx1592_0
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n1496_conjunction_α
.Lx1592_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1592_1
                                                                                        jmp   n1496_conjunction_α
.Lx1592_1:
                                                                                        jmp   n1496_conjunction_α
n1494_disjunction_β:
                        mov              eax, dword ptr [rbp + 752]
                        cmp              eax, 0
                                                                                        je    n1537_scan_α
                                                                                        jmp   n1537_scan_α
n1494_disjunction_af:
                        add              dword ptr [rbp + 752], 1
                        mov              eax, dword ptr [rbp + 752]
                        cmp              eax, 1
                                                                                        je    n1504_disjunction_α
                                                                                        jmp   n1537_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n1495_conjunction_α:
                                                                                        jmp   n1490_disjunction_as
n1495_conjunction_β:
                                                                                        jmp   n1537_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n1496_conjunction_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n1490_disjunction_as
n1496_conjunction_β:
                                                                                        jmp   n1537_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n1497_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n1507_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1498_scan_upto_α:
                        mov              qword ptr [rbp + 688], r14
.Lx1598_0:
                        mov              rax, qword ptr [rbp + 688]
                        cmp              rax, r15
                                                                                        jge   n1490_disjunction_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx1598_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx1598_1
                        mov              qword ptr [rbp + 672], 6
                        add              rax, 1
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n1508_scan_tab_α
.Lx1598_1:
                        inc              qword ptr [rbp + 688]
                                                                                        jmp   .Lx1598_0
n1498_scan_upto_β:
                        inc              qword ptr [rbp + 688]
                                                                                        jmp   .Lx1598_0
.Lx1598_2:
                        .quad            .Lx1598_2_s
.Lx1598_2_s:
                        .string          "e"
#-----------------------------------------------------------------------------------------------------------------------
n1499_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 1672]
                        cmp              rax, 1
                                                                                        jge   .Lx1600_0
                        add              rax, r15
                        add              rax, 1
.Lx1600_0:
                        cmp              rax, 1
                                                                                        jge   .Lx1600_239
                        add              rsp, 16
                                                                                        jmp   n1493_disjunction_β
.Lx1600_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx1600_240
                        add              rsp, 16
                                                                                        jmp   n1493_disjunction_β
.Lx1600_240:
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
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                                                                                        jmp   n1509_assign_α
n1499_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n1493_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n1500_var_α:
                        mov              rax, qword ptr [rbp + 1808]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 1736], rax
                                                                                        jmp   n1510_lit_integer_α
n1500_var_β:
                                                                                        jmp   n1493_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1501_lit_integer_α:
                        mov              qword ptr [rbp + 1760], 6
                        mov              rax, qword ptr [rip + .Lx1603_0]
                        mov              qword ptr [rbp + 1768], rax
                                                                                        jmp   n1493_disjunction_as
n1501_lit_integer_β:
                                                                                        jmp   n1493_disjunction_af
.Lx1603_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n1502_binop_α:
                        mov              eax, dword ptr [rbp + 1712]
                        cmp              eax, 6
                                                                                        jne   .Lx1604_0
                        mov              rax, qword ptr [rbp + 1720]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rbp + 1696], 6
                        mov              qword ptr [rbp + 1704], rax
                                                                                        jmp   n1493_disjunction_as
.Lx1604_0:
                        mov              rdi, qword ptr [rbp + 1712]
                        mov              rsi, qword ptr [rbp + 1720]
                        mov              rdx, qword ptr [rbp + 1744]
                        mov              rcx, qword ptr [rbp + 1752]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        je    n1493_disjunction_af
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                                                                                        jmp   n1493_disjunction_as
n1502_binop_β:
                                                                                        jmp   n1493_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1503_lit_charset_α:
                        mov              qword ptr [rbp + 1312], 1
                        mov              dword ptr [rbp + 1316], -1
                        mov              rax, qword ptr [rip + .Lx1605_0]
                        mov              qword ptr [rbp + 1320], rax
                                                                                        jmp   n1511_scan_upto_α
n1503_lit_charset_β:
                                                                                        jmp   n1494_disjunction_af
.Lx1605_0:
                        .quad            .Lx1605_0_s
.Lx1605_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n1504_disjunction_α:
                        mov              qword ptr [rbp + 1360], 0
                        mov              qword ptr [rbp + 1368], 0
                        mov              dword ptr [rbp + 1376], 0
                                                                                        jmp   n1513_var_ref_α
n1504_disjunction_as:
                        mov              eax, dword ptr [rbp + 1376]
                        cmp              eax, 0
                                                                                        jne   .Lx1607_0
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1368], rax
                                                                                        jmp   n1512_var_α
.Lx1607_0:
                                                                                        jmp   n1512_var_α
n1504_disjunction_β:
                        mov              eax, dword ptr [rbp + 1376]
                                                                                        jmp   n1514_disjunction_β
n1504_disjunction_af:
                        add              dword ptr [rbp + 1376], 1
                        mov              eax, dword ptr [rbp + 1376]
                                                                                        jmp   n1512_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1505_scan_α:
                        lea              rdi, [rbp + 784]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 784]
                        mov              r14, qword ptr [rbp + 792]
                        mov              r15, qword ptr [rbp + 800]
                                                                                        jmp   n1494_disjunction_as
n1505_scan_β:
                                                                                        jmp   n1537_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n1506_conjunction_α:
                                                                                        jmp   n1494_disjunction_as
n1506_conjunction_β:
                                                                                        jmp   n1537_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n1507_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 88], rax
                        .section         .rodata
.Lrkfn1612:             .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1612]
                        lea              rsi, [rbp + 80]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_Image_ω
                                                                                        jmp   n1516_return_α
n1507_call_builtin_icon_β:
                                                                                        jmp   proc_Image_ω
#-----------------------------------------------------------------------------------------------------------------------
n1508_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 680]
                        cmp              rax, 1
                                                                                        jge   .Lx1614_0
                        add              rax, r15
                        add              rax, 1
.Lx1614_0:
                        cmp              rax, 1
                                                                                        jge   .Lx1614_239
                        add              rsp, 16
                                                                                        jmp   n1498_scan_upto_β
.Lx1614_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx1614_240
                        add              rsp, 16
                                                                                        jmp   n1498_scan_upto_β
.Lx1614_240:
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
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n1517_assign_α
n1508_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n1498_scan_upto_β
#-----------------------------------------------------------------------------------------------------------------------
n1509_assign_α:
                        mov              rax, qword ptr [rbp + 1632]
                        mov              rdx, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
                                                                                        jmp   n1494_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n1510_lit_integer_α:
                        mov              qword ptr [rbp + 1744], 6
                        mov              rax, qword ptr [rip + .Lx1616_0]
                        mov              qword ptr [rbp + 1752], rax
                                                                                        jmp   n1518_op75_α
.Lx1616_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1511_scan_upto_α:
                        mov              qword ptr [rbp + 1296], r14
.Lx1618_0:
                        mov              rax, qword ptr [rbp + 1296]
                        cmp              rax, r15
                                                                                        jge   n1494_disjunction_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx1618_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx1618_1
                        mov              qword ptr [rbp + 1280], 6
                        add              rax, 1
                        mov              qword ptr [rbp + 1288], rax
                                                                                        jmp   n1519_scan_tab_α
.Lx1618_1:
                        inc              qword ptr [rbp + 1296]
                                                                                        jmp   .Lx1618_0
n1511_scan_upto_β:
                        inc              qword ptr [rbp + 1296]
                                                                                        jmp   .Lx1618_0
.Lx1618_2:
                        .quad            .Lx1618_2_s
.Lx1618_2_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n1512_var_α:
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n1520_return_α
#-----------------------------------------------------------------------------------------------------------------------
n1513_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1840]
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                                                                                        jmp   n1521_lit_integer_α
n1513_var_ref_β:
                                                                                        jmp   n1504_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1514_disjunction_α:
                        mov              qword ptr [rbp + 1440], 0
                        mov              qword ptr [rbp + 1448], 0
                        mov              dword ptr [rbp + 1456], 0
                                                                                        jmp   n1523_lit_integer_α
n1514_disjunction_as:
                        mov              eax, dword ptr [rbp + 1456]
                        cmp              eax, 0
                                                                                        jne   .Lx1624_0
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1448], rax
                                                                                        jmp   n1522_binop_α
.Lx1624_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1624_1
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1448], rax
                                                                                        jmp   n1522_binop_α
.Lx1624_1:
                                                                                        jmp   n1522_binop_α
n1514_disjunction_β:
                        mov              eax, dword ptr [rbp + 1456]
                        cmp              eax, 0
                                                                                        je    n1514_disjunction_af
                                                                                        jmp   n1514_disjunction_af
n1514_disjunction_af:
                        add              dword ptr [rbp + 1456], 1
                        mov              eax, dword ptr [rbp + 1456]
                        cmp              eax, 1
                                                                                        je    n1524_lit_string_α
                                                                                        jmp   n1512_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1515_assign_α:
                        mov              rax, qword ptr [rbp + 1408]
                        mov              rdx, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                                                                                        jmp   n1504_disjunction_as
n1515_assign_β:
                                                                                        jmp   n1512_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1516_return_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              rdx, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_Image_γ
#-----------------------------------------------------------------------------------------------------------------------
n1517_assign_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              rdx, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
                                                                                        jmp   n1526_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1518_op75_α:
                        mov              eax, dword ptr [rbp + 1808]
                        cmp              eax, 7
                                                                                        je    .Lx1629_1
                        cmp              eax, 6
                                                                                        jne   .Lx1629_0
                        mov              eax, dword ptr [rbp + 1744]
                        cmp              eax, 6
                                                                                        jne   .Lx1629_0
.Lx1629_1:
                        mov              rax, qword ptr [rbp + 1808]
                        mov              qword ptr [rbp + 1712], rax
                        mov              rax, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 1720], rax
                                                                                        jmp   n1502_binop_α
.Lx1629_0:
                        lea              rdi, [rbp + 1808]
                        lea              rsi, [rbp + 1744]
                        lea              rdx, [rbp + 1712]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n1502_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n1519_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 1288]
                        cmp              rax, 1
                                                                                        jge   .Lx1631_0
                        add              rax, r15
                        add              rax, 1
.Lx1631_0:
                        cmp              rax, 1
                                                                                        jge   .Lx1631_239
                        add              rsp, 16
                                                                                        jmp   n1511_scan_upto_β
.Lx1631_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx1631_240
                        add              rsp, 16
                                                                                        jmp   n1511_scan_upto_β
.Lx1631_240:
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
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                                                                                        jmp   n1527_unop_α
n1519_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n1511_scan_upto_β
#-----------------------------------------------------------------------------------------------------------------------
n1520_return_α:
                        mov              rax, qword ptr [rbp + 1344]
                        mov              rdx, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_Image_γ
#-----------------------------------------------------------------------------------------------------------------------
n1521_lit_integer_α:
                        mov              qword ptr [rbp + 1568], 6
                        mov              rax, qword ptr [rip + .Lx1633_0]
                        mov              qword ptr [rbp + 1576], rax
                                                                                        jmp   n1528_subscript_α
.Lx1633_0:
                        .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n1522_binop_α:
                        mov              rdi, qword ptr [rbp + 1840]
                        mov              rsi, qword ptr [rbp + 1848]
                        mov              rdx, qword ptr [rbp + 1440]
                        mov              rcx, qword ptr [rbp + 1448]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                                                                                        jmp   n1515_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1523_lit_integer_α:
                        mov              qword ptr [rbp + 1504], 6
                        mov              rax, qword ptr [rip + .Lx1635_0]
                        mov              qword ptr [rbp + 1512], rax
                                                                                        jmp   n1525_scan_move_α
n1523_lit_integer_β:
                                                                                        jmp   n1514_disjunction_af
.Lx1635_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1524_lit_string_α:
                        mov              qword ptr [rbp + 1520], 1
                        mov              rax, qword ptr [rip + .Lx1636_0]
                        mov              qword ptr [rbp + 1528], rax
                                                                                        jmp   n1514_disjunction_as
n1524_lit_string_β:
                                                                                        jmp   n1514_disjunction_af
.Lx1636_0:
                        .quad            .Lx1636_0_s
.Lx1636_0_s:
                        .string          "0"
#-----------------------------------------------------------------------------------------------------------------------
n1525_scan_move_α:
                        sub              rsp, 16
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1
                                                                                        jge   .Lx1638_239
                        add              rsp, 16
                                                                                        jmp   n1514_disjunction_af
.Lx1638_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx1638_240
                        add              rsp, 16
                                                                                        jmp   n1514_disjunction_af
.Lx1638_240:
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
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
                                                                                        jmp   n1514_disjunction_as
n1525_scan_move_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n1514_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1526_lit_integer_α:
                        mov              qword ptr [rbp + 624], 6
                        mov              rax, qword ptr [rip + .Lx1639_0]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n1529_scan_tab_α
.Lx1639_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n1527_unop_α:
                        mov              rdi, qword ptr [rbp + 1248]
                        mov              rsi, qword ptr [rbp + 1256]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                                                                                        jmp   n1530_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1528_subscript_α:
                        mov              rdi, qword ptr [rbp + 1552]
                        mov              rsi, qword ptr [rbp + 1560]
                        mov              rdx, qword ptr [rbp + 1568]
                        mov              rcx, qword ptr [rbp + 1576]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n1504_disjunction_af
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                                                                                        jmp   n1531_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n1529_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, 0
                        cmp              rax, 1
                                                                                        jge   .Lx1643_0
                        add              rax, r15
                        add              rax, 1
.Lx1643_0:
                        cmp              rax, 1
                                                                                        jge   .Lx1643_239
                        add              rsp, 16
                                                                                        jmp   n1533_var_α
.Lx1643_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx1643_240
                        add              rsp, 16
                                                                                        jmp   n1533_var_α
.Lx1643_240:
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
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n1532_assign_α
n1529_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n1533_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1530_assign_α:
                        mov              rax, qword ptr [rbp + 1232]
                        mov              rdx, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx
                                                                                        jmp   n1534_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1531_deref_α:
                        mov              rdi, qword ptr [rbp + 1584]
                        mov              rsi, qword ptr [rbp + 1592]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n1504_disjunction_af
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                                                                                        jmp   n1535_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1532_assign_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              rdx, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx
                                                                                        jmp   n1533_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1533_var_α:
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n1536_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n1534_var_α:
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1224], rax
                                                                                        jmp   n1538_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n1535_lit_string_α:
                        mov              qword ptr [rbp + 1616], 1
                        mov              rax, qword ptr [rip + .Lx1651_0]
                        mov              qword ptr [rbp + 1624], rax
                                                                                        jmp   n1539_binop_test_α
.Lx1651_0:
                        .quad            .Lx1651_0_s
.Lx1651_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n1536_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 560]
                        mov              rsi, qword ptr [rbp + 568]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n1540_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n1537_scan_α:
                        lea              rdi, [rbp + 240]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 240]
                        mov              r14, qword ptr [rbp + 248]
                        mov              r15, qword ptr [rbp + 256]
                                                                                        jmp   proc_Image_ω
n1537_scan_β:
                                                                                        jmp   proc_Image_ω
#-----------------------------------------------------------------------------------------------------------------------
n1538_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 1216]
                        mov              rsi, qword ptr [rbp + 1224]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n1541_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1539_binop_test_α:
                        mov              rdi, qword ptr [rbp + 1600]
                        mov              rsi, qword ptr [rbp + 1608]
                        mov              rdx, qword ptr [rbp + 1616]
                        mov              rcx, qword ptr [rbp + 1624]
                        mov              r8d, 16
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n1504_disjunction_af
                        mov              rdi, qword ptr [rbp + 1616]
                        mov              rsi, qword ptr [rbp + 1624]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                                                                                        jmp   n1542_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1540_disjunction_α:
                        mov              qword ptr [rbp + 480], 0
                        mov              qword ptr [rbp + 488], 0
                        mov              dword ptr [rbp + 496], 0
                                                                                        jmp   n1544_var_α
n1540_disjunction_as:
                        mov              eax, dword ptr [rbp + 496]
                        cmp              eax, 0
                                                                                        jne   .Lx1660_0
                        mov              rax, qword ptr [rbp + 1808]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n1543_scan_tab_α
.Lx1660_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1660_1
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n1543_scan_tab_α
.Lx1660_1:
                                                                                        jmp   n1543_scan_tab_α
n1540_disjunction_β:
                        mov              eax, dword ptr [rbp + 496]
                        cmp              eax, 0
                                                                                        je    n1540_disjunction_af
                                                                                        jmp   n1540_disjunction_af
n1540_disjunction_af:
                        add              dword ptr [rbp + 496], 1
                        mov              eax, dword ptr [rbp + 496]
                        cmp              eax, 1
                                                                                        je    n1545_lit_integer_α
                                                                                        jmp   proc_Image_ω
#-----------------------------------------------------------------------------------------------------------------------
n1541_lit_integer_α:
                        mov              qword ptr [rbp + 944], 6
                        mov              rax, qword ptr [rip + .Lx1661_0]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n1546_scan_move_α
.Lx1661_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1542_var_α:
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1432], rax
                                                                                        jmp   n1514_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n1543_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 488]
                        cmp              rax, 1
                                                                                        jge   .Lx1665_0
                        add              rax, r15
                        add              rax, 1
.Lx1665_0:
                        cmp              rax, 1
                                                                                        jge   .Lx1665_239
                        add              rsp, 16
                                                                                        jmp   n1540_disjunction_β
.Lx1665_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx1665_240
                        add              rsp, 16
                                                                                        jmp   n1540_disjunction_β
.Lx1665_240:
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
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n1547_var_α
n1543_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n1540_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n1544_var_α:
                        mov              rax, qword ptr [rbp + 1808]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n1540_disjunction_as
n1544_var_β:
                                                                                        jmp   n1540_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1545_lit_integer_α:
                        mov              qword ptr [rbp + 528], 6
                        mov              rax, qword ptr [rip + .Lx1668_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n1540_disjunction_as
n1545_lit_integer_β:
                                                                                        jmp   n1540_disjunction_af
.Lx1668_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n1546_scan_move_α:
                        sub              rsp, 16
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1
                                                                                        jge   .Lx1670_239
                        add              rsp, 16
                                                                                        jmp   proc_Image_ω
.Lx1670_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx1670_240
                        add              rsp, 16
                                                                                        jmp   proc_Image_ω
.Lx1670_240:
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
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                                                                                        jmp   n1548_lit_string_α
n1546_scan_move_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   proc_Image_ω
#-----------------------------------------------------------------------------------------------------------------------
n1547_var_α:
                        mov              rax, qword ptr [rbp + 1824]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 1832]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n1549_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n1548_lit_string_α:
                        mov              qword ptr [rbp + 960], 1
                        mov              rax, qword ptr [rip + .Lx1673_0]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n1550_binop_α
.Lx1673_0:
                        .quad            .Lx1673_0_s
.Lx1673_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n1549_binop_α:
                        mov              rdi, qword ptr [rbp + 448]
                        mov              rsi, qword ptr [rbp + 456]
                        mov              rdx, qword ptr [rbp + 1824]
                        mov              rcx, qword ptr [rbp + 1832]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n1551_return_α
#-----------------------------------------------------------------------------------------------------------------------
n1550_binop_α:
                        mov              rdi, qword ptr [rbp + 912]
                        mov              rsi, qword ptr [rbp + 920]
                        mov              rdx, qword ptr [rbp + 960]
                        mov              rcx, qword ptr [rbp + 968]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                                                                                        jmp   n1552_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1551_return_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_Image_γ
#-----------------------------------------------------------------------------------------------------------------------
n1552_var_α:
                        mov              rax, qword ptr [rbp + 1808]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n1553_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1553_lit_integer_α:
                        mov              qword ptr [rbp + 1056], 6
                        mov              rax, qword ptr [rip + .Lx1679_0]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n1554_op75_α
.Lx1679_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n1554_op75_α:
                        mov              eax, dword ptr [rbp + 1808]
                        cmp              eax, 7
                                                                                        je    .Lx1681_1
                        cmp              eax, 6
                                                                                        jne   .Lx1681_0
                        mov              eax, dword ptr [rbp + 1056]
                        cmp              eax, 6
                                                                                        jne   .Lx1681_0
.Lx1681_1:
                        mov              rax, qword ptr [rbp + 1808]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n1555_binop_α
.Lx1681_0:
                        lea              rdi, [rbp + 1808]
                        lea              rsi, [rbp + 1056]
                        lea              rdx, [rbp + 1024]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n1555_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n1555_binop_α:
                        mov              eax, dword ptr [rbp + 1024]
                        cmp              eax, 6
                                                                                        jne   .Lx1682_0
                        mov              rax, qword ptr [rbp + 1032]
                        mov              rcx, 3
                        sub              rax, rcx
                        mov              qword ptr [rbp + 1008], 6
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n1556_scan_move_α
.Lx1682_0:
                        mov              rdi, qword ptr [rbp + 1024]
                        mov              rsi, qword ptr [rbp + 1032]
                        mov              rdx, qword ptr [rbp + 1056]
                        mov              rcx, qword ptr [rbp + 1064]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        je    proc_Image_ω
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   n1556_scan_move_α
#-----------------------------------------------------------------------------------------------------------------------
n1556_scan_move_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 1016]
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1
                                                                                        jge   .Lx1684_239
                        add              rsp, 16
                                                                                        jmp   proc_Image_ω
.Lx1684_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx1684_240
                        add              rsp, 16
                                                                                        jmp   proc_Image_ω
.Lx1684_240:
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
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                                                                                        jmp   n1557_binop_α
n1556_scan_move_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   proc_Image_ω
#-----------------------------------------------------------------------------------------------------------------------
n1557_binop_α:
                        mov              rdi, qword ptr [rbp + 896]
                        mov              rsi, qword ptr [rbp + 904]
                        mov              rdx, qword ptr [rbp + 976]
                        mov              rcx, qword ptr [rbp + 984]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n1558_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1558_lit_string_α:
                        mov              qword ptr [rbp + 1072], 1
                        mov              rax, qword ptr [rip + .Lx1686_0]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n1559_binop_α
.Lx1686_0:
                        .quad            .Lx1686_0_s
.Lx1686_0_s:
                        .string          "e+"
#-----------------------------------------------------------------------------------------------------------------------
n1559_binop_α:
                        mov              rdi, qword ptr [rbp + 880]
                        mov              rsi, qword ptr [rbp + 888]
                        mov              rdx, qword ptr [rbp + 1072]
                        mov              rcx, qword ptr [rbp + 1080]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n1560_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1560_var_α:
                        mov              rax, qword ptr [rbp + 1808]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n1561_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1561_lit_integer_α:
                        mov              qword ptr [rbp + 1184], 6
                        mov              rax, qword ptr [rip + .Lx1690_0]
                        mov              qword ptr [rbp + 1192], rax
                                                                                        jmp   n1562_op75_α
.Lx1690_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n1562_op75_α:
                        mov              eax, dword ptr [rbp + 1808]
                        cmp              eax, 7
                                                                                        je    .Lx1692_1
                        cmp              eax, 6
                                                                                        jne   .Lx1692_0
                        mov              eax, dword ptr [rbp + 1184]
                        cmp              eax, 6
                                                                                        jne   .Lx1692_0
.Lx1692_1:
                        mov              rax, qword ptr [rbp + 1808]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n1563_binop_α
.Lx1692_0:
                        lea              rdi, [rbp + 1808]
                        lea              rsi, [rbp + 1184]
                        lea              rdx, [rbp + 1152]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n1563_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n1563_binop_α:
                        mov              eax, dword ptr [rbp + 1152]
                        cmp              eax, 6
                                                                                        jne   .Lx1693_0
                        mov              rax, qword ptr [rbp + 1160]
                        mov              rcx, 3
                        sub              rax, rcx
                        mov              qword ptr [rbp + 1136], 6
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n1564_var_α
.Lx1693_0:
                        mov              rdi, qword ptr [rbp + 1152]
                        mov              rsi, qword ptr [rbp + 1160]
                        mov              rdx, qword ptr [rbp + 1184]
                        mov              rcx, qword ptr [rbp + 1192]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        je    proc_Image_ω
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   n1564_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1564_var_α:
                        mov              rax, qword ptr [rbp + 1856]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1864]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n1565_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n1565_op75_α:
                        mov              eax, dword ptr [rbp + 1136]
                        cmp              eax, 7
                                                                                        je    .Lx1697_1
                        cmp              eax, 6
                                                                                        jne   .Lx1697_0
                        mov              eax, dword ptr [rbp + 1856]
                        cmp              eax, 6
                                                                                        jne   .Lx1697_0
.Lx1697_1:
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n1566_op75_α
.Lx1697_0:
                        lea              rdi, [rbp + 1136]
                        lea              rsi, [rbp + 1856]
                        lea              rdx, [rbp + 1120]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n1566_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n1566_op75_α:
                        mov              eax, dword ptr [rbp + 1856]
                        cmp              eax, 7
                                                                                        je    .Lx1699_1
                        cmp              eax, 6
                                                                                        jne   .Lx1699_0
                        mov              eax, dword ptr [rbp + 1136]
                        cmp              eax, 6
                                                                                        jne   .Lx1699_0
.Lx1699_1:
                        mov              rax, qword ptr [rbp + 1856]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1864]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n1567_binop_α
.Lx1699_0:
                        lea              rdi, [rbp + 1856]
                        lea              rsi, [rbp + 1136]
                        lea              rdx, [rbp + 1104]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n1567_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n1567_binop_α:
                        mov              eax, dword ptr [rbp + 1120]
                        cmp              eax, 6
                                                                                        jne   .Lx1700_0
                        mov              eax, dword ptr [rbp + 1104]
                        cmp              eax, 6
                                                                                        jne   .Lx1700_0
                        mov              rax, qword ptr [rbp + 1128]
                        mov              rcx, qword ptr [rbp + 1112]
                        add              rax, rcx
                        mov              qword ptr [rbp + 1088], 6
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n1568_binop_α
.Lx1700_0:
                        mov              rdi, qword ptr [rbp + 1120]
                        mov              rsi, qword ptr [rbp + 1128]
                        mov              rdx, qword ptr [rbp + 1104]
                        mov              rcx, qword ptr [rbp + 1112]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    proc_Image_ω
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                                                                                        jmp   n1568_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n1568_binop_α:
                        mov              rdi, qword ptr [rbp + 864]
                        mov              rsi, qword ptr [rbp + 872]
                        mov              rdx, qword ptr [rbp + 1088]
                        mov              rcx, qword ptr [rbp + 1096]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   n1569_return_α
#-----------------------------------------------------------------------------------------------------------------------
n1569_return_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              rdx, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_Image_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_Image_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_Image_β:
                                                                                        jmp   proc_Image_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_Image_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 1880]
                        lea              rsp, [rbp + 1904]
                        mov              rbp, [rbp + 1896]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_Image_ω:
                        mov              rax, [rbp + 1888]
                        lea              rsp, [rbp + 1904]
                        mov              rbp, [rbp + 1896]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_Image_dcα:
                        pop              r11
                        sub              rsp, 1920
                        mov              qword ptr [rsp + 1896], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 1872], r11
                        lea              rax, [rip + .Lx1703_2]
                        mov              qword ptr [rbp + 1880], rax
                        lea              rax, [rip + .Lx1703_3]
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 1808
                        mov              edx, 1872
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_Image_α_body
.Lx1703_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -1904
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx1703_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -1904
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "p1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_p1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 5712
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_p1_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "p2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_p2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 12256
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_p2_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "p3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_p3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 992
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_p3_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "Image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_Image_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1872
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_Image_dcα]
                        call             rt_proc_set_dcfn@PLT
                        add              rsp, 8
                        ret
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
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
                        sub              rsp, 616
                        mov              rdi, rsp
                        mov              ecx, 616
                        xor              eax, eax
                        rep stosb
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n1704_lit_string_α:
                        mov              qword ptr [rsp + 592], 1
                        mov              rax, qword ptr [rip + .Lx1723_0]
                        mov              qword ptr [rsp + 600], rax
                                                                                        jmp   n1705_call_builtin_icon_α
.Lx1723_0:
                        .quad            .Lx1723_0_s
.Lx1723_0_s:
                        .string          "This test of floating-point arithmetic is likely to show"
#-----------------------------------------------------------------------------------------------------------------------
n1705_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 568], rax
                        .section         .rodata
.Lrkfn1725:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1725]
                        lea              rsi, [rsp + 560]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                        cmp              eax, 99
                                                                                        je    n1706_lit_string_α
                                                                                        jmp   n1706_lit_string_α
n1705_call_builtin_icon_β:
                                                                                        jmp   n1706_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1706_lit_string_α:
                        mov              qword ptr [rsp + 528], 1
                        mov              rax, qword ptr [rip + .Lx1726_0]
                        mov              qword ptr [rsp + 536], rax
                                                                                        jmp   n1707_call_builtin_icon_α
.Lx1726_0:
                        .quad            .Lx1726_0_s
.Lx1726_0_s:
                        .string          "differences from platform to platform because of differences"
#-----------------------------------------------------------------------------------------------------------------------
n1707_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 504], rax
                        .section         .rodata
.Lrkfn1728:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1728]
                        lea              rsi, [rsp + 496]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                        cmp              eax, 99
                                                                                        je    n1708_lit_string_α
                                                                                        jmp   n1708_lit_string_α
n1707_call_builtin_icon_β:
                                                                                        jmp   n1708_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1708_lit_string_α:
                        mov              qword ptr [rsp + 464], 1
                        mov              rax, qword ptr [rip + .Lx1729_0]
                        mov              qword ptr [rsp + 472], rax
                                                                                        jmp   n1709_call_builtin_icon_α
.Lx1729_0:
                        .quad            .Lx1729_0_s
.Lx1729_0_s:
                        .string          "in floating-point precision and details of the routines that"
#-----------------------------------------------------------------------------------------------------------------------
n1709_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 440], rax
                        .section         .rodata
.Lrkfn1731:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1731]
                        lea              rsi, [rsp + 432]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                        cmp              eax, 99
                                                                                        je    n1710_lit_string_α
                                                                                        jmp   n1710_lit_string_α
n1709_call_builtin_icon_β:
                                                                                        jmp   n1710_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1710_lit_string_α:
                        mov              qword ptr [rsp + 400], 1
                        mov              rax, qword ptr [rip + .Lx1732_0]
                        mov              qword ptr [rsp + 408], rax
                                                                                        jmp   n1711_call_builtin_icon_α
.Lx1732_0:
                        .quad            .Lx1732_0_s
.Lx1732_0_s:
                        .string          "convert floating-point numbers to strings.  If the values"
#-----------------------------------------------------------------------------------------------------------------------
n1711_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 376], rax
                        .section         .rodata
.Lrkfn1734:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1734]
                        lea              rsi, [rsp + 368]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        cmp              eax, 99
                                                                                        je    n1712_lit_string_α
                                                                                        jmp   n1712_lit_string_α
n1711_call_builtin_icon_β:
                                                                                        jmp   n1712_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1712_lit_string_α:
                        mov              qword ptr [rsp + 336], 1
                        mov              rax, qword ptr [rip + .Lx1735_0]
                        mov              qword ptr [rsp + 344], rax
                                                                                        jmp   n1713_call_builtin_icon_α
.Lx1735_0:
                        .quad            .Lx1735_0_s
.Lx1735_0_s:
                        .string          "produced in local tests are approximately the same in magnitude"
#-----------------------------------------------------------------------------------------------------------------------
n1713_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 312], rax
                        .section         .rodata
.Lrkfn1737:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1737]
                        lea              rsi, [rsp + 304]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n1714_lit_string_α
                                                                                        jmp   n1714_lit_string_α
n1713_call_builtin_icon_β:
                                                                                        jmp   n1714_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1714_lit_string_α:
                        mov              qword ptr [rsp + 272], 1
                        mov              rax, qword ptr [rip + .Lx1738_0]
                        mov              qword ptr [rsp + 280], rax
                                                                                        jmp   n1715_call_builtin_icon_α
.Lx1738_0:
                        .quad            .Lx1738_0_s
.Lx1738_0_s:
                        .string          "as shown in the standard results, there's nothing to worry about."
#-----------------------------------------------------------------------------------------------------------------------
n1715_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 248], rax
                        .section         .rodata
.Lrkfn1740:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1740]
                        lea              rsi, [rsp + 240]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n1716_lit_string_α
                                                                                        jmp   n1716_lit_string_α
n1715_call_builtin_icon_β:
                                                                                        jmp   n1716_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1716_lit_string_α:
                        mov              qword ptr [rsp + 208], 1
                        mov              rax, qword ptr [rip + .Lx1741_0]
                        mov              qword ptr [rsp + 216], rax
                                                                                        jmp   n1717_call_builtin_icon_α
.Lx1741_0:
                        .quad            .Lx1741_0_s
.Lx1741_0_s:
                        .string          "In addition, some platforms may show 0.0 as \"-0.0\".  You can"
#-----------------------------------------------------------------------------------------------------------------------
n1717_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 184], rax
                        .section         .rodata
.Lrkfn1743:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1743]
                        lea              rsi, [rsp + 176]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n1718_lit_string_α
                                                                                        jmp   n1718_lit_string_α
n1717_call_builtin_icon_β:
                                                                                        jmp   n1718_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1718_lit_string_α:
                        mov              qword ptr [rsp + 144], 1
                        mov              rax, qword ptr [rip + .Lx1744_0]
                        mov              qword ptr [rsp + 152], rax
                                                                                        jmp   n1719_call_builtin_icon_α
.Lx1744_0:
                        .quad            .Lx1744_0_s
.Lx1744_0_s:
                        .string          "ignore this if you wish."
#-----------------------------------------------------------------------------------------------------------------------
n1719_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 120], rax
                        .section         .rodata
.Lrkfn1746:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1746]
                        lea              rsi, [rsp + 112]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n1720_call_proc_staged_α
                                                                                        jmp   n1720_call_proc_staged_α
n1719_call_builtin_icon_β:
                                                                                        jmp   n1720_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n1720_call_proc_staged_α:
                        call             proc_p1_dcα
                                                                                        jmp   .Lx1748_2
.Lx1748_2:
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              eax, 99
                                                                                        je    n1721_call_proc_staged_α
                                                                                        jmp   n1721_call_proc_staged_α
n1720_call_proc_staged_β:
                                                                                        jmp   n1721_call_proc_staged_α
.Lx1748_0:
                        .quad            .Lx1748_0_s
.Lx1748_0_s:
                        .string          "p1"
#-----------------------------------------------------------------------------------------------------------------------
n1721_call_proc_staged_α:
                        call             proc_p2_dcα
                                                                                        jmp   .Lx1750_2
.Lx1750_2:
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              eax, 99
                                                                                        je    n1722_call_proc_staged_α
                                                                                        jmp   n1722_call_proc_staged_α
n1721_call_proc_staged_β:
                                                                                        jmp   n1722_call_proc_staged_α
.Lx1750_0:
                        .quad            .Lx1750_0_s
.Lx1750_0_s:
                        .string          "p2"
#-----------------------------------------------------------------------------------------------------------------------
n1722_call_proc_staged_α:
                        call             proc_p3_dcα
                                                                                        jmp   .Lx1752_2
.Lx1752_2:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   main_ω
n1722_call_proc_staged_β:
                                                                                        jmp   main_ω
.Lx1752_0:
                        .quad            .Lx1752_0_s
.Lx1752_0_s:
                        .string          "p3"
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        add              rsp, 616
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              eax, 99
                        xor              edx, edx
                        add              rsp, 616
                        ret
                        .section         .note.GNU-stack,"",@progbits
