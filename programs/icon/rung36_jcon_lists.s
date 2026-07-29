                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_limage_α
proc_limage_α:
                        .global          proc_limage_α
                        .global          proc_limage_β
                        .global          proc_limage_γ
                        .global          proc_limage_ω
                        sub              rsp, 464
                        mov              [rsp + 440], rcx
                        mov              [rsp + 448], rdx
                        mov              [rsp + 456], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 432
                        mov              edx, 432
                        call             rt_jmp_frame_lexprep2@PLT
proc_limage_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n1_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:
                        mov              qword ptr [rbp + 368], 1
                        mov              rax, qword ptr [rip + .Lx15_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n3_var_α
.Lx15_0:
                        .quad            .Lx15_0_s
.Lx15_0_s:
                        .string          ". ["
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:
                        mov              qword ptr [rbp + 144], 1
                        mov              rax, qword ptr [rip + .Lx16_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n4_var_α
.Lx16_0:
                        .quad            .Lx16_0_s
.Lx16_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n3_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n5_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n6_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n5_unop_α:
                        mov              rdi, qword ptr [rbp + 32]
                        mov              rsi, qword ptr [rbp + 40]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n8_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n6_iterate_α:
                        mov              qword ptr [rbp + 224], 0
.Lx23_0:
                        mov              rdi, qword ptr [rbp + 240]
                        mov              rsi, qword ptr [rbp + 248]
                        mov              rdx, qword ptr [rbp + 224]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              rax, 99
                                                                                        je    n7_call_builtin_icon_α
                                                                                        jmp   n9_call_builtin_icon_α
n6_iterate_β:
                        inc              qword ptr [rbp + 224]
                                                                                        jmp   .Lx23_0
#-----------------------------------------------------------------------------------------------------------------------
n7_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn25:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn25]
                        lea              rsi, [rbp + 64]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    n10_return_α
                                                                                        jmp   n10_return_α
n7_call_builtin_icon_β:
                                                                                        jmp   n10_return_α
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:
                        mov              qword ptr [rbp + 416], 1
                        mov              rax, qword ptr [rip + .Lx26_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n11_call_builtin_icon_α
.Lx26_0:
                        .quad            .Lx26_0_s
.Lx26_0_s:
                        .string          "]"
#-----------------------------------------------------------------------------------------------------------------------
n9_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 184], rax
                        .section         .rodata
.Lrkfn28:               .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn28]
                        lea              rsi, [rbp + 176]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n6_iterate_β
                                                                                        jmp   n12_call_builtin_icon_α
n9_call_builtin_icon_β:
                                                                                        jmp   n6_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n10_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_limage_γ
#-----------------------------------------------------------------------------------------------------------------------
n11_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 280], rax
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 296], rax
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 328], rax
                        .section         .rodata
.Lrkfn31:               .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn31]
                        lea              rsi, [rbp + 272]
                        mov              edx, 4
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 99
                                                                                        je    n2_lit_string_α
                                                                                        jmp   n2_lit_string_α
n11_call_builtin_icon_β:
                                                                                        jmp   n2_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n12_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 104], rax
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn33:               .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn33]
                        lea              rsi, [rbp + 96]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n6_iterate_β
                                                                                        jmp   n6_iterate_β
n12_call_builtin_icon_β:
                                                                                        jmp   n6_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
proc_limage_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_limage_β:
                                                                                        jmp   proc_limage_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_limage_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 440]
                        lea              rsp, [rbp + 464]
                        mov              rbp, [rbp + 456]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_limage_ω:
                        mov              rax, [rbp + 448]
                        lea              rsp, [rbp + 464]
                        mov              rbp, [rbp + 456]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_limage_dcα:
                        pop              r11
                        sub              rsp, 480
                        mov              qword ptr [rsp + 456], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 432], r11
                        lea              rax, [rip + .Lx34_2]
                        mov              qword ptr [rbp + 440], rax
                        lea              rax, [rip + .Lx34_3]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              rdi, rbp
                        mov              esi, 432
                        mov              edx, 432
                        mov              ecx, 2
                        mov              r8d, 2
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_limage_α_body
.Lx34_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -464
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx34_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -464
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "limage"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_limage_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 432
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_limage_dcα]
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
                        sub              rsp, 10536
                        mov              rdi, rsp
                        mov              ecx, 10536
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 10528], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n35_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx412_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 10448], rax
                        mov              qword ptr [rbp + 10456], rdx
                                                                                        jmp   n36_call_builtin_icon_α
.Lx412_0:
                        .quad            .Lx412_0_s
.Lx412_0_s:
                        .string          "push"
#-----------------------------------------------------------------------------------------------------------------------
n36_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 10448]
                        mov              qword ptr [rbp + 10416], rax
                        mov              rax, qword ptr [rbp + 10456]
                        mov              qword ptr [rbp + 10424], rax
                        .section         .rodata
.Lrkfn414:              .string          "args"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn414]
                        lea              rsi, [rbp + 10416]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 10400], rax
                        mov              qword ptr [rbp + 10408], rdx
                        cmp              eax, 99
                                                                                        je    n38_proc_value_α
                                                                                        jmp   n37_call_builtin_icon_α
n36_call_builtin_icon_β:
                                                                                        jmp   n38_proc_value_α
#-----------------------------------------------------------------------------------------------------------------------
n37_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 10400]
                        mov              qword ptr [rbp + 10368], rax
                        mov              rax, qword ptr [rbp + 10408]
                        mov              qword ptr [rbp + 10376], rax
                        .section         .rodata
.Lrkfn416:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn416]
                        lea              rsi, [rbp + 10368]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 10352], rax
                        mov              qword ptr [rbp + 10360], rdx
                        cmp              eax, 99
                                                                                        je    n38_proc_value_α
                                                                                        jmp   n38_proc_value_α
n37_call_builtin_icon_β:
                                                                                        jmp   n38_proc_value_α
#-----------------------------------------------------------------------------------------------------------------------
n38_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx418_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 10336], rax
                        mov              qword ptr [rbp + 10344], rdx
                                                                                        jmp   n39_call_builtin_icon_α
.Lx418_0:
                        .quad            .Lx418_0_s
.Lx418_0_s:
                        .string          "put"
#-----------------------------------------------------------------------------------------------------------------------
n39_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 10336]
                        mov              qword ptr [rbp + 10304], rax
                        mov              rax, qword ptr [rbp + 10344]
                        mov              qword ptr [rbp + 10312], rax
                        .section         .rodata
.Lrkfn420:              .string          "args"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn420]
                        lea              rsi, [rbp + 10304]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 10288], rax
                        mov              qword ptr [rbp + 10296], rdx
                        cmp              eax, 99
                                                                                        je    n41_lit_string_α
                                                                                        jmp   n40_call_builtin_icon_α
n39_call_builtin_icon_β:
                                                                                        jmp   n41_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n40_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 10288]
                        mov              qword ptr [rbp + 10256], rax
                        mov              rax, qword ptr [rbp + 10296]
                        mov              qword ptr [rbp + 10264], rax
                        .section         .rodata
.Lrkfn422:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn422]
                        lea              rsi, [rbp + 10256]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 10240], rax
                        mov              qword ptr [rbp + 10248], rdx
                        cmp              eax, 99
                                                                                        je    n41_lit_string_α
                                                                                        jmp   n41_lit_string_α
n40_call_builtin_icon_β:
                                                                                        jmp   n41_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_string_α:
                        mov              qword ptr [rbp + 10192], 1
                        mov              rax, qword ptr [rip + .Lx423_0]
                        mov              qword ptr [rbp + 10200], rax
                                                                                        jmp   n42_call_builtin_icon_α
.Lx423_0:
                        .quad            .Lx423_0_s
.Lx423_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n42_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn425:              .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn425]
                        lea              rsi, [rbp + 10224]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 10208], rax
                        mov              qword ptr [rbp + 10216], rdx
                        cmp              eax, 99
                                                                                        je    n44_lit_string_α
                                                                                        jmp   n43_call_proc_staged_α
n42_call_builtin_icon_β:
                                                                                        jmp   n44_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n43_call_proc_staged_α:
                        lea              rsi, [rbp + 10192]
                        lea              rdx, [rbp + 10208]
                        call             proc_limage_dcα
                                                                                        jmp   .Lx427_2
.Lx427_2:
                        mov              qword ptr [rbp + 10128], rax
                        mov              qword ptr [rbp + 10136], rdx
                        cmp              eax, 99
                                                                                        je    n44_lit_string_α
                                                                                        jmp   n44_lit_string_α
n43_call_proc_staged_β:
                                                                                        jmp   n44_lit_string_α
.Lx427_0:
                        .quad            .Lx427_0_s
.Lx427_0_s:
                        .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_string_α:
                        mov              qword ptr [rbp + 10048], 1
                        mov              rax, qword ptr [rip + .Lx428_0]
                        mov              qword ptr [rbp + 10056], rax
                                                                                        jmp   n45_lit_integer_α
.Lx428_0:
                        .quad            .Lx428_0_s
.Lx428_0_s:
                        .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_integer_α:
                        mov              qword ptr [rbp + 10112], 6
                        mov              rax, qword ptr [rip + .Lx429_0]
                        mov              qword ptr [rbp + 10120], rax
                                                                                        jmp   n46_call_builtin_icon_α
.Lx429_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n46_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 10112]
                        mov              qword ptr [rbp + 10080], rax
                        mov              rax, qword ptr [rbp + 10120]
                        mov              qword ptr [rbp + 10088], rax
                        .section         .rodata
.Lrkfn431:              .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn431]
                        lea              rsi, [rbp + 10080]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 10064], rax
                        mov              qword ptr [rbp + 10072], rdx
                        cmp              eax, 99
                                                                                        je    n48_lit_string_α
                                                                                        jmp   n47_call_proc_staged_α
n46_call_builtin_icon_β:
                                                                                        jmp   n48_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n47_call_proc_staged_α:
                        lea              rsi, [rbp + 10048]
                        lea              rdx, [rbp + 10064]
                        call             proc_limage_dcα
                                                                                        jmp   .Lx433_2
.Lx433_2:
                        mov              qword ptr [rbp + 9984], rax
                        mov              qword ptr [rbp + 9992], rdx
                        cmp              eax, 99
                                                                                        je    n48_lit_string_α
                                                                                        jmp   n48_lit_string_α
n47_call_proc_staged_β:
                                                                                        jmp   n48_lit_string_α
.Lx433_0:
                        .quad            .Lx433_0_s
.Lx433_0_s:
                        .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_string_α:
                        mov              qword ptr [rbp + 9856], 1
                        mov              rax, qword ptr [rip + .Lx434_0]
                        mov              qword ptr [rbp + 9864], rax
                                                                                        jmp   n49_keyword_icon_α
.Lx434_0:
                        .quad            .Lx434_0_s
.Lx434_0_s:
                        .string          "c"
#-----------------------------------------------------------------------------------------------------------------------
n49_keyword_icon_α:
                        mov              qword ptr [rbp + 9936], 0
                        mov              qword ptr [rbp + 9944], 0
                                                                                        jmp   n50_lit_integer_α
n49_keyword_icon_β:
                                                                                        jmp   n53_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_integer_α:
                        mov              qword ptr [rbp + 9968], 6
                        mov              rax, qword ptr [rip + .Lx436_0]
                        mov              qword ptr [rbp + 9976], rax
                                                                                        jmp   n51_call_builtin_icon_α
.Lx436_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n51_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 9936]
                        mov              qword ptr [rbp + 9888], rax
                        mov              rax, qword ptr [rbp + 9944]
                        mov              qword ptr [rbp + 9896], rax
                        mov              rax, qword ptr [rbp + 9968]
                        mov              qword ptr [rbp + 9904], rax
                        mov              rax, qword ptr [rbp + 9976]
                        mov              qword ptr [rbp + 9912], rax
                        .section         .rodata
.Lrkfn438:              .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn438]
                        lea              rsi, [rbp + 9888]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 9872], rax
                        mov              qword ptr [rbp + 9880], rdx
                        cmp              eax, 99
                                                                                        je    n53_lit_string_α
                                                                                        jmp   n52_call_proc_staged_α
n51_call_builtin_icon_β:
                                                                                        jmp   n53_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n52_call_proc_staged_α:
                        lea              rsi, [rbp + 9856]
                        lea              rdx, [rbp + 9872]
                        call             proc_limage_dcα
                                                                                        jmp   .Lx440_2
.Lx440_2:
                        mov              qword ptr [rbp + 9792], rax
                        mov              qword ptr [rbp + 9800], rdx
                        cmp              eax, 99
                                                                                        je    n53_lit_string_α
                                                                                        jmp   n53_lit_string_α
n52_call_proc_staged_β:
                                                                                        jmp   n53_lit_string_α
.Lx440_0:
                        .quad            .Lx440_0_s
.Lx440_0_s:
                        .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_string_α:
                        mov              qword ptr [rbp + 9680], 1
                        mov              rax, qword ptr [rip + .Lx441_0]
                        mov              qword ptr [rbp + 9688], rax
                                                                                        jmp   n54_lit_integer_α
.Lx441_0:
                        .quad            .Lx441_0_s
.Lx441_0_s:
                        .string          "d"
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_integer_α:
                        mov              qword ptr [rbp + 9760], 6
                        mov              rax, qword ptr [rip + .Lx442_0]
                        mov              qword ptr [rbp + 9768], rax
                                                                                        jmp   n55_lit_integer_α
.Lx442_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_integer_α:
                        mov              qword ptr [rbp + 9776], 6
                        mov              rax, qword ptr [rip + .Lx443_0]
                        mov              qword ptr [rbp + 9784], rax
                                                                                        jmp   n56_call_builtin_icon_α
.Lx443_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n56_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 9760]
                        mov              qword ptr [rbp + 9712], rax
                        mov              rax, qword ptr [rbp + 9768]
                        mov              qword ptr [rbp + 9720], rax
                        mov              rax, qword ptr [rbp + 9776]
                        mov              qword ptr [rbp + 9728], rax
                        mov              rax, qword ptr [rbp + 9784]
                        mov              qword ptr [rbp + 9736], rax
                        .section         .rodata
.Lrkfn445:              .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn445]
                        lea              rsi, [rbp + 9712]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 9696], rax
                        mov              qword ptr [rbp + 9704], rdx
                        cmp              eax, 99
                                                                                        je    n58_lit_string_α
                                                                                        jmp   n57_call_proc_staged_α
n56_call_builtin_icon_β:
                                                                                        jmp   n58_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n57_call_proc_staged_α:
                        lea              rsi, [rbp + 9680]
                        lea              rdx, [rbp + 9696]
                        call             proc_limage_dcα
                                                                                        jmp   .Lx447_2
.Lx447_2:
                        mov              qword ptr [rbp + 9616], rax
                        mov              qword ptr [rbp + 9624], rdx
                        cmp              eax, 99
                                                                                        je    n58_lit_string_α
                                                                                        jmp   n58_lit_string_α
n57_call_proc_staged_β:
                                                                                        jmp   n58_lit_string_α
.Lx447_0:
                        .quad            .Lx447_0_s
.Lx447_0_s:
                        .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_string_α:
                        mov              qword ptr [rbp + 9472], 1
                        mov              rax, qword ptr [rip + .Lx448_0]
                        mov              qword ptr [rbp + 9480], rax
                                                                                        jmp   n59_lit_integer_α
.Lx448_0:
                        .quad            .Lx448_0_s
.Lx448_0_s:
                        .string          "d"
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_integer_α:
                        mov              qword ptr [rbp + 9568], 6
                        mov              rax, qword ptr [rip + .Lx449_0]
                        mov              qword ptr [rbp + 9576], rax
                                                                                        jmp   n60_lit_integer_α
.Lx449_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_integer_α:
                        mov              qword ptr [rbp + 9584], 6
                        mov              rax, qword ptr [rip + .Lx450_0]
                        mov              qword ptr [rbp + 9592], rax
                                                                                        jmp   n61_lit_integer_α
.Lx450_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n61_lit_integer_α:
                        mov              qword ptr [rbp + 9600], 6
                        mov              rax, qword ptr [rip + .Lx451_0]
                        mov              qword ptr [rbp + 9608], rax
                                                                                        jmp   n62_call_builtin_icon_α
.Lx451_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n62_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 9568]
                        mov              qword ptr [rbp + 9504], rax
                        mov              rax, qword ptr [rbp + 9576]
                        mov              qword ptr [rbp + 9512], rax
                        mov              rax, qword ptr [rbp + 9584]
                        mov              qword ptr [rbp + 9520], rax
                        mov              rax, qword ptr [rbp + 9592]
                        mov              qword ptr [rbp + 9528], rax
                        mov              rax, qword ptr [rbp + 9600]
                        mov              qword ptr [rbp + 9536], rax
                        mov              rax, qword ptr [rbp + 9608]
                        mov              qword ptr [rbp + 9544], rax
                        .section         .rodata
.Lrkfn453:              .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn453]
                        lea              rsi, [rbp + 9504]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 9488], rax
                        mov              qword ptr [rbp + 9496], rdx
                        cmp              eax, 99
                                                                                        je    n64_lit_string_α
                                                                                        jmp   n63_call_proc_staged_α
n62_call_builtin_icon_β:
                                                                                        jmp   n64_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n63_call_proc_staged_α:
                        lea              rsi, [rbp + 9472]
                        lea              rdx, [rbp + 9488]
                        call             proc_limage_dcα
                                                                                        jmp   .Lx455_2
.Lx455_2:
                        mov              qword ptr [rbp + 9408], rax
                        mov              qword ptr [rbp + 9416], rdx
                        cmp              eax, 99
                                                                                        je    n64_lit_string_α
                                                                                        jmp   n64_lit_string_α
n63_call_proc_staged_β:
                                                                                        jmp   n64_lit_string_α
.Lx455_0:
                        .quad            .Lx455_0_s
.Lx455_0_s:
                        .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n64_lit_string_α:
                        mov              qword ptr [rbp + 9376], 1
                        mov              rax, qword ptr [rip + .Lx456_0]
                        mov              qword ptr [rbp + 9384], rax
                                                                                        jmp   n65_make_list_α
.Lx456_0:
                        .quad            .Lx456_0_s
.Lx456_0_s:
                        .string          "e"
#-----------------------------------------------------------------------------------------------------------------------
n65_make_list_α:
                        lea              rdi, [rbp + 9408]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 9392], rax
                        mov              qword ptr [rbp + 9400], rdx
                                                                                        jmp   n66_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n66_call_proc_staged_α:
                        lea              rsi, [rbp + 9376]
                        lea              rdx, [rbp + 9392]
                        call             proc_limage_dcα
                                                                                        jmp   .Lx460_2
.Lx460_2:
                        mov              qword ptr [rbp + 9312], rax
                        mov              qword ptr [rbp + 9320], rdx
                        cmp              eax, 99
                                                                                        je    n67_lit_string_α
                                                                                        jmp   n67_lit_string_α
n66_call_proc_staged_β:
                                                                                        jmp   n67_lit_string_α
.Lx460_0:
                        .quad            .Lx460_0_s
.Lx460_0_s:
                        .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n67_lit_string_α:
                        mov              qword ptr [rbp + 9232], 1
                        mov              rax, qword ptr [rip + .Lx461_0]
                        mov              qword ptr [rbp + 9240], rax
                                                                                        jmp   n68_keyword_icon_α
.Lx461_0:
                        .quad            .Lx461_0_s
.Lx461_0_s:
                        .string          "f"
#-----------------------------------------------------------------------------------------------------------------------
n68_keyword_icon_α:
                        mov              qword ptr [rbp + 9280], 0
                        mov              qword ptr [rbp + 9288], 0
                                                                                        jmp   n69_make_list_α
n68_keyword_icon_β:
                                                                                        jmp   n71_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n69_make_list_α:
                        mov              rax, qword ptr [rbp + 9280]
                        mov              qword ptr [rbp + 9264], rax
                        mov              rax, qword ptr [rbp + 9288]
                        mov              qword ptr [rbp + 9272], rax
                        lea              rdi, [rbp + 9264]
                        mov              esi, 1
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 9248], rax
                        mov              qword ptr [rbp + 9256], rdx
                                                                                        jmp   n70_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n70_call_proc_staged_α:
                        lea              rsi, [rbp + 9232]
                        lea              rdx, [rbp + 9248]
                        call             proc_limage_dcα
                                                                                        jmp   .Lx466_2
.Lx466_2:
                        mov              qword ptr [rbp + 9168], rax
                        mov              qword ptr [rbp + 9176], rdx
                        cmp              eax, 99
                                                                                        je    n71_lit_string_α
                                                                                        jmp   n71_lit_string_α
n70_call_proc_staged_β:
                                                                                        jmp   n71_lit_string_α
.Lx466_0:
                        .quad            .Lx466_0_s
.Lx466_0_s:
                        .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n71_lit_string_α:
                        mov              qword ptr [rbp + 9104], 1
                        mov              rax, qword ptr [rip + .Lx467_0]
                        mov              qword ptr [rbp + 9112], rax
                                                                                        jmp   n72_lit_integer_α
.Lx467_0:
                        .quad            .Lx467_0_s
.Lx467_0_s:
                        .string          "g"
#-----------------------------------------------------------------------------------------------------------------------
n72_lit_integer_α:
                        mov              qword ptr [rbp + 9152], 6
                        mov              rax, qword ptr [rip + .Lx468_0]
                        mov              qword ptr [rbp + 9160], rax
                                                                                        jmp   n73_make_list_α
.Lx468_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n73_make_list_α:
                        mov              rax, qword ptr [rbp + 9152]
                        mov              qword ptr [rbp + 9136], rax
                        mov              rax, qword ptr [rbp + 9160]
                        mov              qword ptr [rbp + 9144], rax
                        lea              rdi, [rbp + 9136]
                        mov              esi, 1
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 9120], rax
                        mov              qword ptr [rbp + 9128], rdx
                                                                                        jmp   n74_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n74_call_proc_staged_α:
                        lea              rsi, [rbp + 9104]
                        lea              rdx, [rbp + 9120]
                        call             proc_limage_dcα
                                                                                        jmp   .Lx472_2
.Lx472_2:
                        mov              qword ptr [rbp + 9040], rax
                        mov              qword ptr [rbp + 9048], rdx
                        cmp              eax, 99
                                                                                        je    n75_lit_string_α
                                                                                        jmp   n75_lit_string_α
n74_call_proc_staged_β:
                                                                                        jmp   n75_lit_string_α
.Lx472_0:
                        .quad            .Lx472_0_s
.Lx472_0_s:
                        .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_string_α:
                        mov              qword ptr [rbp + 8880], 1
                        mov              rax, qword ptr [rip + .Lx473_0]
                        mov              qword ptr [rbp + 8888], rax
                                                                                        jmp   n76_lit_integer_α
.Lx473_0:
                        .quad            .Lx473_0_s
.Lx473_0_s:
                        .string          "h"
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_integer_α:
                        mov              qword ptr [rbp + 8976], 6
                        mov              rax, qword ptr [rip + .Lx474_0]
                        mov              qword ptr [rbp + 8984], rax
                                                                                        jmp   n77_lit_integer_α
.Lx474_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_integer_α:
                        mov              qword ptr [rbp + 8992], 6
                        mov              rax, qword ptr [rip + .Lx475_0]
                        mov              qword ptr [rbp + 9000], rax
                                                                                        jmp   n78_lit_integer_α
.Lx475_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_integer_α:
                        mov              qword ptr [rbp + 9008], 6
                        mov              rax, qword ptr [rip + .Lx476_0]
                        mov              qword ptr [rbp + 9016], rax
                                                                                        jmp   n79_lit_integer_α
.Lx476_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n79_lit_integer_α:
                        mov              qword ptr [rbp + 9024], 6
                        mov              rax, qword ptr [rip + .Lx477_0]
                        mov              qword ptr [rbp + 9032], rax
                                                                                        jmp   n80_make_list_α
.Lx477_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n80_make_list_α:
                        mov              rax, qword ptr [rbp + 8976]
                        mov              qword ptr [rbp + 8912], rax
                        mov              rax, qword ptr [rbp + 8984]
                        mov              qword ptr [rbp + 8920], rax
                        mov              rax, qword ptr [rbp + 8992]
                        mov              qword ptr [rbp + 8928], rax
                        mov              rax, qword ptr [rbp + 9000]
                        mov              qword ptr [rbp + 8936], rax
                        mov              rax, qword ptr [rbp + 9008]
                        mov              qword ptr [rbp + 8944], rax
                        mov              rax, qword ptr [rbp + 9016]
                        mov              qword ptr [rbp + 8952], rax
                        mov              rax, qword ptr [rbp + 9024]
                        mov              qword ptr [rbp + 8960], rax
                        mov              rax, qword ptr [rbp + 9032]
                        mov              qword ptr [rbp + 8968], rax
                        lea              rdi, [rbp + 8912]
                        mov              esi, 4
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 8896], rax
                        mov              qword ptr [rbp + 8904], rdx
                                                                                        jmp   n81_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n81_call_proc_staged_α:
                        lea              rsi, [rbp + 8880]
                        lea              rdx, [rbp + 8896]
                        call             proc_limage_dcα
                                                                                        jmp   .Lx481_2
.Lx481_2:
                        mov              qword ptr [rbp + 8816], rax
                        mov              qword ptr [rbp + 8824], rdx
                        cmp              eax, 99
                                                                                        je    n82_lit_string_α
                                                                                        jmp   n82_lit_string_α
n81_call_proc_staged_β:
                                                                                        jmp   n82_lit_string_α
.Lx481_0:
                        .quad            .Lx481_0_s
.Lx481_0_s:
                        .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_string_α:
                        mov              qword ptr [rbp + 8496], 1
                        mov              rax, qword ptr [rip + .Lx482_0]
                        mov              qword ptr [rbp + 8504], rax
                                                                                        jmp   n83_lit_integer_α
.Lx482_0:
                        .quad            .Lx482_0_s
.Lx482_0_s:
                        .string          "i"
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_integer_α:
                        mov              qword ptr [rbp + 8592], 6
                        mov              rax, qword ptr [rip + .Lx483_0]
                        mov              qword ptr [rbp + 8600], rax
                                                                                        jmp   n84_lit_integer_α
.Lx483_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n84_lit_integer_α:
                        mov              qword ptr [rbp + 8608], 6
                        mov              rax, qword ptr [rip + .Lx484_0]
                        mov              qword ptr [rbp + 8616], rax
                                                                                        jmp   n85_lit_integer_α
.Lx484_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_integer_α:
                        mov              qword ptr [rbp + 8624], 6
                        mov              rax, qword ptr [rip + .Lx485_0]
                        mov              qword ptr [rbp + 8632], rax
                                                                                        jmp   n86_make_list_α
.Lx485_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n86_make_list_α:
                        mov              rax, qword ptr [rbp + 8592]
                        mov              qword ptr [rbp + 8544], rax
                        mov              rax, qword ptr [rbp + 8600]
                        mov              qword ptr [rbp + 8552], rax
                        mov              rax, qword ptr [rbp + 8608]
                        mov              qword ptr [rbp + 8560], rax
                        mov              rax, qword ptr [rbp + 8616]
                        mov              qword ptr [rbp + 8568], rax
                        mov              rax, qword ptr [rbp + 8624]
                        mov              qword ptr [rbp + 8576], rax
                        mov              rax, qword ptr [rbp + 8632]
                        mov              qword ptr [rbp + 8584], rax
                        lea              rdi, [rbp + 8544]
                        mov              esi, 3
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 8528], rax
                        mov              qword ptr [rbp + 8536], rdx
                                                                                        jmp   n87_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n87_lit_integer_α:
                        mov              qword ptr [rbp + 8736], 6
                        mov              rax, qword ptr [rip + .Lx488_0]
                        mov              qword ptr [rbp + 8744], rax
                                                                                        jmp   n88_lit_integer_α
.Lx488_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_integer_α:
                        mov              qword ptr [rbp + 8752], 6
                        mov              rax, qword ptr [rip + .Lx489_0]
                        mov              qword ptr [rbp + 8760], rax
                                                                                        jmp   n89_lit_integer_α
.Lx489_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_integer_α:
                        mov              qword ptr [rbp + 8768], 6
                        mov              rax, qword ptr [rip + .Lx490_0]
                        mov              qword ptr [rbp + 8776], rax
                                                                                        jmp   n90_lit_integer_α
.Lx490_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_integer_α:
                        mov              qword ptr [rbp + 8784], 6
                        mov              rax, qword ptr [rip + .Lx491_0]
                        mov              qword ptr [rbp + 8792], rax
                                                                                        jmp   n91_lit_integer_α
.Lx491_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n91_lit_integer_α:
                        mov              qword ptr [rbp + 8800], 6
                        mov              rax, qword ptr [rip + .Lx492_0]
                        mov              qword ptr [rbp + 8808], rax
                                                                                        jmp   n92_make_list_α
.Lx492_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n92_make_list_α:
                        mov              rax, qword ptr [rbp + 8736]
                        mov              qword ptr [rbp + 8656], rax
                        mov              rax, qword ptr [rbp + 8744]
                        mov              qword ptr [rbp + 8664], rax
                        mov              rax, qword ptr [rbp + 8752]
                        mov              qword ptr [rbp + 8672], rax
                        mov              rax, qword ptr [rbp + 8760]
                        mov              qword ptr [rbp + 8680], rax
                        mov              rax, qword ptr [rbp + 8768]
                        mov              qword ptr [rbp + 8688], rax
                        mov              rax, qword ptr [rbp + 8776]
                        mov              qword ptr [rbp + 8696], rax
                        mov              rax, qword ptr [rbp + 8784]
                        mov              qword ptr [rbp + 8704], rax
                        mov              rax, qword ptr [rbp + 8792]
                        mov              qword ptr [rbp + 8712], rax
                        mov              rax, qword ptr [rbp + 8800]
                        mov              qword ptr [rbp + 8720], rax
                        mov              rax, qword ptr [rbp + 8808]
                        mov              qword ptr [rbp + 8728], rax
                        lea              rdi, [rbp + 8656]
                        mov              esi, 5
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 8640], rax
                        mov              qword ptr [rbp + 8648], rdx
                                                                                        jmp   n93_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n93_binop_α:
                        mov              rdi, qword ptr [rbp + 8528]
                        mov              rsi, qword ptr [rbp + 8536]
                        mov              rdx, qword ptr [rbp + 8640]
                        mov              rcx, qword ptr [rbp + 8648]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 8512], rax
                        mov              qword ptr [rbp + 8520], rdx
                                                                                        jmp   n94_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n94_call_proc_staged_α:
                        lea              rsi, [rbp + 8496]
                        lea              rdx, [rbp + 8512]
                        call             proc_limage_dcα
                                                                                        jmp   .Lx497_2
.Lx497_2:
                        mov              qword ptr [rbp + 8432], rax
                        mov              qword ptr [rbp + 8440], rdx
                        cmp              eax, 99
                                                                                        je    n95_lit_integer_α
                                                                                        jmp   n95_lit_integer_α
n94_call_proc_staged_β:
                                                                                        jmp   n95_lit_integer_α
.Lx497_0:
                        .quad            .Lx497_0_s
.Lx497_0_s:
                        .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n95_lit_integer_α:
                        mov              qword ptr [rbp + 8384], 6
                        mov              rax, qword ptr [rip + .Lx498_0]
                        mov              qword ptr [rbp + 8392], rax
                                                                                        jmp   n96_lit_integer_α
.Lx498_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_integer_α:
                        mov              qword ptr [rbp + 8400], 6
                        mov              rax, qword ptr [rip + .Lx499_0]
                        mov              qword ptr [rbp + 8408], rax
                                                                                        jmp   n97_lit_integer_α
.Lx499_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n97_lit_integer_α:
                        mov              qword ptr [rbp + 8416], 6
                        mov              rax, qword ptr [rip + .Lx500_0]
                        mov              qword ptr [rbp + 8424], rax
                                                                                        jmp   n98_make_list_α
.Lx500_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n98_make_list_α:
                        mov              rax, qword ptr [rbp + 8384]
                        mov              qword ptr [rbp + 8336], rax
                        mov              rax, qword ptr [rbp + 8392]
                        mov              qword ptr [rbp + 8344], rax
                        mov              rax, qword ptr [rbp + 8400]
                        mov              qword ptr [rbp + 8352], rax
                        mov              rax, qword ptr [rbp + 8408]
                        mov              qword ptr [rbp + 8360], rax
                        mov              rax, qword ptr [rbp + 8416]
                        mov              qword ptr [rbp + 8368], rax
                        mov              rax, qword ptr [rbp + 8424]
                        mov              qword ptr [rbp + 8376], rax
                        lea              rdi, [rbp + 8336]
                        mov              esi, 3
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 8320], rax
                        mov              qword ptr [rbp + 8328], rdx
                                                                                        jmp   n99_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n99_assign_α:
                        mov              rax, qword ptr [rbp + 8320]
                        mov              rdx, qword ptr [rbp + 8328]
                        mov              qword ptr [rbp + 10496], rax
                        mov              qword ptr [rbp + 10504], rdx
                                                                                        jmp   n100_var_α
#-----------------------------------------------------------------------------------------------------------------------
n100_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 8304], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 8312], rax
                                                                                        jmp   n101_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n101_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 8304]
                        mov              qword ptr [rbp + 8272], rax
                        mov              rax, qword ptr [rbp + 8312]
                        mov              qword ptr [rbp + 8280], rax
                        .section         .rodata
.Lrkfn507:              .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn507]
                        lea              rsi, [rbp + 8272]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 8256], rax
                        mov              qword ptr [rbp + 8264], rdx
                        cmp              eax, 99
                                                                                        je    n102_lit_string_α
                                                                                        jmp   n102_lit_string_α
n101_call_builtin_icon_β:
                                                                                        jmp   n102_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n102_lit_string_α:
                        mov              qword ptr [rbp + 8224], 1
                        mov              rax, qword ptr [rip + .Lx508_0]
                        mov              qword ptr [rbp + 8232], rax
                                                                                        jmp   n103_var_α
.Lx508_0:
                        .quad            .Lx508_0_s
.Lx508_0_s:
                        .string          "A"
#-----------------------------------------------------------------------------------------------------------------------
n103_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 8240], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 8248], rax
                                                                                        jmp   n104_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n104_call_proc_staged_α:
                        lea              rsi, [rbp + 8224]
                        lea              rdx, [rbp + 8240]
                        call             proc_limage_dcα
                                                                                        jmp   .Lx512_2
.Lx512_2:
                        mov              qword ptr [rbp + 8160], rax
                        mov              qword ptr [rbp + 8168], rdx
                        cmp              eax, 99
                                                                                        je    n105_var_α
                                                                                        jmp   n105_var_α
n104_call_proc_staged_β:
                                                                                        jmp   n105_var_α
.Lx512_0:
                        .quad            .Lx512_0_s
.Lx512_0_s:
                        .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n105_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 8144], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 8152], rax
                                                                                        jmp   n106_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n106_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 8144]
                        mov              qword ptr [rbp + 8112], rax
                        mov              rax, qword ptr [rbp + 8152]
                        mov              qword ptr [rbp + 8120], rax
                        .section         .rodata
.Lrkfn516:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn516]
                        lea              rsi, [rbp + 8112]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 8096], rax
                        mov              qword ptr [rbp + 8104], rdx
                        cmp              eax, 99
                                                                                        je    n107_lit_string_α
                                                                                        jmp   n107_lit_string_α
n106_call_builtin_icon_β:
                                                                                        jmp   n107_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n107_lit_string_α:
                        mov              qword ptr [rbp + 8064], 1
                        mov              rax, qword ptr [rip + .Lx517_0]
                        mov              qword ptr [rbp + 8072], rax
                                                                                        jmp   n108_var_α
.Lx517_0:
                        .quad            .Lx517_0_s
.Lx517_0_s:
                        .string          "B"
#-----------------------------------------------------------------------------------------------------------------------
n108_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 8080], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 8088], rax
                                                                                        jmp   n109_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n109_call_proc_staged_α:
                        lea              rsi, [rbp + 8064]
                        lea              rdx, [rbp + 8080]
                        call             proc_limage_dcα
                                                                                        jmp   .Lx521_2
.Lx521_2:
                        mov              qword ptr [rbp + 8000], rax
                        mov              qword ptr [rbp + 8008], rdx
                        cmp              eax, 99
                                                                                        je    n110_lit_string_α
                                                                                        jmp   n110_lit_string_α
n109_call_proc_staged_β:
                                                                                        jmp   n110_lit_string_α
.Lx521_0:
                        .quad            .Lx521_0_s
.Lx521_0_s:
                        .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n110_lit_string_α:
                        mov              qword ptr [rbp + 7872], 1
                        mov              rax, qword ptr [rip + .Lx522_0]
                        mov              qword ptr [rbp + 7880], rax
                                                                                        jmp   n111_var_α
.Lx522_0:
                        .quad            .Lx522_0_s
.Lx522_0_s:
                        .string          "\t"
#-----------------------------------------------------------------------------------------------------------------------
n111_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 7984], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 7992], rax
                                                                                        jmp   n112_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n112_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 7984]
                        mov              qword ptr [rbp + 7952], rax
                        mov              rax, qword ptr [rbp + 7992]
                        mov              qword ptr [rbp + 7960], rax
                        .section         .rodata
.Lrkfn526:              .string          "pop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn526]
                        lea              rsi, [rbp + 7952]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 7936], rax
                        mov              qword ptr [rbp + 7944], rdx
                        cmp              eax, 99
                                                                                        je    n113_lit_string_α
                                                                                        jmp   n114_call_builtin_icon_α
n112_call_builtin_icon_β:
                                                                                        jmp   n113_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n113_lit_string_α:
                        mov              qword ptr [rbp + 7776], 1
                        mov              rax, qword ptr [rip + .Lx527_0]
                        mov              qword ptr [rbp + 7784], rax
                                                                                        jmp   n115_var_α
.Lx527_0:
                        .quad            .Lx527_0_s
.Lx527_0_s:
                        .string          "C"
#-----------------------------------------------------------------------------------------------------------------------
n114_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 7936]
                        mov              qword ptr [rbp + 7904], rax
                        mov              rax, qword ptr [rbp + 7944]
                        mov              qword ptr [rbp + 7912], rax
                        .section         .rodata
.Lrkfn529:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn529]
                        lea              rsi, [rbp + 7904]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 7888], rax
                        mov              qword ptr [rbp + 7896], rdx
                        cmp              eax, 99
                                                                                        je    n113_lit_string_α
                                                                                        jmp   n116_call_builtin_icon_α
n114_call_builtin_icon_β:
                                                                                        jmp   n113_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n115_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 7792], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 7800], rax
                                                                                        jmp   n117_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n116_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 7872]
                        mov              qword ptr [rbp + 7824], rax
                        mov              rax, qword ptr [rbp + 7880]
                        mov              qword ptr [rbp + 7832], rax
                        mov              rax, qword ptr [rbp + 7888]
                        mov              qword ptr [rbp + 7840], rax
                        mov              rax, qword ptr [rbp + 7896]
                        mov              qword ptr [rbp + 7848], rax
                        .section         .rodata
.Lrkfn533:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn533]
                        lea              rsi, [rbp + 7824]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 7808], rax
                        mov              qword ptr [rbp + 7816], rdx
                        cmp              eax, 99
                                                                                        je    n113_lit_string_α
                                                                                        jmp   n113_lit_string_α
n116_call_builtin_icon_β:
                                                                                        jmp   n113_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n117_call_proc_staged_α:
                        lea              rsi, [rbp + 7776]
                        lea              rdx, [rbp + 7792]
                        call             proc_limage_dcα
                                                                                        jmp   .Lx535_2
.Lx535_2:
                        mov              qword ptr [rbp + 7712], rax
                        mov              qword ptr [rbp + 7720], rdx
                        cmp              eax, 99
                                                                                        je    n118_lit_string_α
                                                                                        jmp   n118_lit_string_α
n117_call_proc_staged_β:
                                                                                        jmp   n118_lit_string_α
.Lx535_0:
                        .quad            .Lx535_0_s
.Lx535_0_s:
                        .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n118_lit_string_α:
                        mov              qword ptr [rbp + 7584], 1
                        mov              rax, qword ptr [rip + .Lx536_0]
                        mov              qword ptr [rbp + 7592], rax
                                                                                        jmp   n119_var_α
.Lx536_0:
                        .quad            .Lx536_0_s
.Lx536_0_s:
                        .string          "\t"
#-----------------------------------------------------------------------------------------------------------------------
n119_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 7696], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 7704], rax
                                                                                        jmp   n120_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n120_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 7696]
                        mov              qword ptr [rbp + 7664], rax
                        mov              rax, qword ptr [rbp + 7704]
                        mov              qword ptr [rbp + 7672], rax
                        .section         .rodata
.Lrkfn540:              .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn540]
                        lea              rsi, [rbp + 7664]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 7648], rax
                        mov              qword ptr [rbp + 7656], rdx
                        cmp              eax, 99
                                                                                        je    n121_lit_string_α
                                                                                        jmp   n122_call_builtin_icon_α
n120_call_builtin_icon_β:
                                                                                        jmp   n121_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n121_lit_string_α:
                        mov              qword ptr [rbp + 7488], 1
                        mov              rax, qword ptr [rip + .Lx541_0]
                        mov              qword ptr [rbp + 7496], rax
                                                                                        jmp   n123_var_α
.Lx541_0:
                        .quad            .Lx541_0_s
.Lx541_0_s:
                        .string          "D"
#-----------------------------------------------------------------------------------------------------------------------
n122_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 7648]
                        mov              qword ptr [rbp + 7616], rax
                        mov              rax, qword ptr [rbp + 7656]
                        mov              qword ptr [rbp + 7624], rax
                        .section         .rodata
.Lrkfn543:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn543]
                        lea              rsi, [rbp + 7616]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 7600], rax
                        mov              qword ptr [rbp + 7608], rdx
                        cmp              eax, 99
                                                                                        je    n121_lit_string_α
                                                                                        jmp   n124_call_builtin_icon_α
n122_call_builtin_icon_β:
                                                                                        jmp   n121_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n123_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 7504], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 7512], rax
                                                                                        jmp   n125_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n124_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 7584]
                        mov              qword ptr [rbp + 7536], rax
                        mov              rax, qword ptr [rbp + 7592]
                        mov              qword ptr [rbp + 7544], rax
                        mov              rax, qword ptr [rbp + 7600]
                        mov              qword ptr [rbp + 7552], rax
                        mov              rax, qword ptr [rbp + 7608]
                        mov              qword ptr [rbp + 7560], rax
                        .section         .rodata
.Lrkfn547:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn547]
                        lea              rsi, [rbp + 7536]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 7520], rax
                        mov              qword ptr [rbp + 7528], rdx
                        cmp              eax, 99
                                                                                        je    n121_lit_string_α
                                                                                        jmp   n121_lit_string_α
n124_call_builtin_icon_β:
                                                                                        jmp   n121_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n125_call_proc_staged_α:
                        lea              rsi, [rbp + 7488]
                        lea              rdx, [rbp + 7504]
                        call             proc_limage_dcα
                                                                                        jmp   .Lx549_2
.Lx549_2:
                        mov              qword ptr [rbp + 7424], rax
                        mov              qword ptr [rbp + 7432], rdx
                        cmp              eax, 99
                                                                                        je    n126_lit_string_α
                                                                                        jmp   n126_lit_string_α
n125_call_proc_staged_β:
                                                                                        jmp   n126_lit_string_α
.Lx549_0:
                        .quad            .Lx549_0_s
.Lx549_0_s:
                        .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n126_lit_string_α:
                        mov              qword ptr [rbp + 7296], 1
                        mov              rax, qword ptr [rip + .Lx550_0]
                        mov              qword ptr [rbp + 7304], rax
                                                                                        jmp   n127_var_α
.Lx550_0:
                        .quad            .Lx550_0_s
.Lx550_0_s:
                        .string          "\t"
#-----------------------------------------------------------------------------------------------------------------------
n127_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 7408], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 7416], rax
                                                                                        jmp   n128_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n128_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 7408]
                        mov              qword ptr [rbp + 7376], rax
                        mov              rax, qword ptr [rbp + 7416]
                        mov              qword ptr [rbp + 7384], rax
                        .section         .rodata
.Lrkfn554:              .string          "pull"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn554]
                        lea              rsi, [rbp + 7376]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 7360], rax
                        mov              qword ptr [rbp + 7368], rdx
                        cmp              eax, 99
                                                                                        je    n129_lit_string_α
                                                                                        jmp   n130_call_builtin_icon_α
n128_call_builtin_icon_β:
                                                                                        jmp   n129_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n129_lit_string_α:
                        mov              qword ptr [rbp + 7200], 1
                        mov              rax, qword ptr [rip + .Lx555_0]
                        mov              qword ptr [rbp + 7208], rax
                                                                                        jmp   n131_var_α
.Lx555_0:
                        .quad            .Lx555_0_s
.Lx555_0_s:
                        .string          "E"
#-----------------------------------------------------------------------------------------------------------------------
n130_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 7360]
                        mov              qword ptr [rbp + 7328], rax
                        mov              rax, qword ptr [rbp + 7368]
                        mov              qword ptr [rbp + 7336], rax
                        .section         .rodata
.Lrkfn557:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn557]
                        lea              rsi, [rbp + 7328]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 7312], rax
                        mov              qword ptr [rbp + 7320], rdx
                        cmp              eax, 99
                                                                                        je    n129_lit_string_α
                                                                                        jmp   n132_call_builtin_icon_α
n130_call_builtin_icon_β:
                                                                                        jmp   n129_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n131_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 7216], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 7224], rax
                                                                                        jmp   n133_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n132_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 7296]
                        mov              qword ptr [rbp + 7248], rax
                        mov              rax, qword ptr [rbp + 7304]
                        mov              qword ptr [rbp + 7256], rax
                        mov              rax, qword ptr [rbp + 7312]
                        mov              qword ptr [rbp + 7264], rax
                        mov              rax, qword ptr [rbp + 7320]
                        mov              qword ptr [rbp + 7272], rax
                        .section         .rodata
.Lrkfn561:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn561]
                        lea              rsi, [rbp + 7248]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 7232], rax
                        mov              qword ptr [rbp + 7240], rdx
                        cmp              eax, 99
                                                                                        je    n129_lit_string_α
                                                                                        jmp   n129_lit_string_α
n132_call_builtin_icon_β:
                                                                                        jmp   n129_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n133_call_proc_staged_α:
                        lea              rsi, [rbp + 7200]
                        lea              rdx, [rbp + 7216]
                        call             proc_limage_dcα
                                                                                        jmp   .Lx563_2
.Lx563_2:
                        mov              qword ptr [rbp + 7136], rax
                        mov              qword ptr [rbp + 7144], rdx
                        cmp              eax, 99
                                                                                        je    n134_var_α
                                                                                        jmp   n134_var_α
n133_call_proc_staged_β:
                                                                                        jmp   n134_var_α
.Lx563_0:
                        .quad            .Lx563_0_s
.Lx563_0_s:
                        .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n134_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 7104], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 7112], rax
                                                                                        jmp   n135_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n135_lit_integer_α:
                        mov              qword ptr [rbp + 7120], 6
                        mov              rax, qword ptr [rip + .Lx566_0]
                        mov              qword ptr [rbp + 7128], rax
                                                                                        jmp   n137_call_builtin_icon_α
.Lx566_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n136_lit_string_α:
                        mov              qword ptr [rbp + 7008], 1
                        mov              rax, qword ptr [rip + .Lx567_0]
                        mov              qword ptr [rbp + 7016], rax
                                                                                        jmp   n138_var_α
.Lx567_0:
                        .quad            .Lx567_0_s
.Lx567_0_s:
                        .string          "F"
#-----------------------------------------------------------------------------------------------------------------------
n137_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 7104]
                        mov              qword ptr [rbp + 7056], rax
                        mov              rax, qword ptr [rbp + 7112]
                        mov              qword ptr [rbp + 7064], rax
                        mov              rax, qword ptr [rbp + 7120]
                        mov              qword ptr [rbp + 7072], rax
                        mov              rax, qword ptr [rbp + 7128]
                        mov              qword ptr [rbp + 7080], rax
                        .section         .rodata
.Lrkfn569:              .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn569]
                        lea              rsi, [rbp + 7056]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 7040], rax
                        mov              qword ptr [rbp + 7048], rdx
                        cmp              eax, 99
                                                                                        je    n136_lit_string_α
                                                                                        jmp   n136_lit_string_α
n137_call_builtin_icon_β:
                                                                                        jmp   n136_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n138_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 7024], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 7032], rax
                                                                                        jmp   n139_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n139_call_proc_staged_α:
                        lea              rsi, [rbp + 7008]
                        lea              rdx, [rbp + 7024]
                        call             proc_limage_dcα
                                                                                        jmp   .Lx573_2
.Lx573_2:
                        mov              qword ptr [rbp + 6944], rax
                        mov              qword ptr [rbp + 6952], rdx
                        cmp              eax, 99
                                                                                        je    n140_var_α
                                                                                        jmp   n140_var_α
n139_call_proc_staged_β:
                                                                                        jmp   n140_var_α
.Lx573_0:
                        .quad            .Lx573_0_s
.Lx573_0_s:
                        .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n140_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 6880], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 6888], rax
                                                                                        jmp   n141_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n141_lit_integer_α:
                        mov              qword ptr [rbp + 6896], 6
                        mov              rax, qword ptr [rip + .Lx576_0]
                        mov              qword ptr [rbp + 6904], rax
                                                                                        jmp   n143_lit_integer_α
.Lx576_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n142_lit_string_α:
                        mov              qword ptr [rbp + 6752], 1
                        mov              rax, qword ptr [rip + .Lx577_0]
                        mov              qword ptr [rbp + 6760], rax
                                                                                        jmp   n144_var_α
.Lx577_0:
                        .quad            .Lx577_0_s
.Lx577_0_s:
                        .string          "G"
#-----------------------------------------------------------------------------------------------------------------------
n143_lit_integer_α:
                        mov              qword ptr [rbp + 6912], 6
                        mov              rax, qword ptr [rip + .Lx578_0]
                        mov              qword ptr [rbp + 6920], rax
                                                                                        jmp   n145_lit_integer_α
.Lx578_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n144_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 6768], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 6776], rax
                                                                                        jmp   n146_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n145_lit_integer_α:
                        mov              qword ptr [rbp + 6928], 6
                        mov              rax, qword ptr [rip + .Lx581_0]
                        mov              qword ptr [rbp + 6936], rax
                                                                                        jmp   n148_call_builtin_icon_α
.Lx581_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n146_call_proc_staged_α:
                        lea              rsi, [rbp + 6752]
                        lea              rdx, [rbp + 6768]
                        call             proc_limage_dcα
                                                                                        jmp   .Lx583_2
.Lx583_2:
                        mov              qword ptr [rbp + 6688], rax
                        mov              qword ptr [rbp + 6696], rdx
                        cmp              eax, 99
                                                                                        je    n147_var_α
                                                                                        jmp   n147_var_α
n146_call_proc_staged_β:
                                                                                        jmp   n147_var_α
.Lx583_0:
                        .quad            .Lx583_0_s
.Lx583_0_s:
                        .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n147_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 6608], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 6616], rax
                                                                                        jmp   n149_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n148_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 6880]
                        mov              qword ptr [rbp + 6800], rax
                        mov              rax, qword ptr [rbp + 6888]
                        mov              qword ptr [rbp + 6808], rax
                        mov              rax, qword ptr [rbp + 6896]
                        mov              qword ptr [rbp + 6816], rax
                        mov              rax, qword ptr [rbp + 6904]
                        mov              qword ptr [rbp + 6824], rax
                        mov              rax, qword ptr [rbp + 6912]
                        mov              qword ptr [rbp + 6832], rax
                        mov              rax, qword ptr [rbp + 6920]
                        mov              qword ptr [rbp + 6840], rax
                        mov              rax, qword ptr [rbp + 6928]
                        mov              qword ptr [rbp + 6848], rax
                        mov              rax, qword ptr [rbp + 6936]
                        mov              qword ptr [rbp + 6856], rax
                        .section         .rodata
.Lrkfn587:              .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn587]
                        lea              rsi, [rbp + 6800]
                        mov              edx, 4
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 6784], rax
                        mov              qword ptr [rbp + 6792], rdx
                        cmp              eax, 99
                                                                                        je    n142_lit_string_α
                                                                                        jmp   n142_lit_string_α
n148_call_builtin_icon_β:
                                                                                        jmp   n142_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n149_lit_integer_α:
                        mov              qword ptr [rbp + 6624], 6
                        mov              rax, qword ptr [rip + .Lx588_0]
                        mov              qword ptr [rbp + 6632], rax
                                                                                        jmp   n151_lit_integer_α
.Lx588_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n150_lit_string_α:
                        mov              qword ptr [rbp + 6416], 1
                        mov              rax, qword ptr [rip + .Lx589_0]
                        mov              qword ptr [rbp + 6424], rax
                                                                                        jmp   n152_var_α
.Lx589_0:
                        .quad            .Lx589_0_s
.Lx589_0_s:
                        .string          "H"
#-----------------------------------------------------------------------------------------------------------------------
n151_lit_integer_α:
                        mov              qword ptr [rbp + 6640], 6
                        mov              rax, qword ptr [rip + .Lx590_0]
                        mov              qword ptr [rbp + 6648], rax
                                                                                        jmp   n153_call_builtin_icon_α
.Lx590_0:
                        .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n152_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 6432], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 6440], rax
                                                                                        jmp   n154_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n153_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 6608]
                        mov              qword ptr [rbp + 6544], rax
                        mov              rax, qword ptr [rbp + 6616]
                        mov              qword ptr [rbp + 6552], rax
                        mov              rax, qword ptr [rbp + 6624]
                        mov              qword ptr [rbp + 6560], rax
                        mov              rax, qword ptr [rbp + 6632]
                        mov              qword ptr [rbp + 6568], rax
                        mov              rax, qword ptr [rbp + 6640]
                        mov              qword ptr [rbp + 6576], rax
                        mov              rax, qword ptr [rbp + 6648]
                        mov              qword ptr [rbp + 6584], rax
                        .section         .rodata
.Lrkfn594:              .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn594]
                        lea              rsi, [rbp + 6544]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 6528], rax
                        mov              qword ptr [rbp + 6536], rdx
                        cmp              eax, 99
                                                                                        je    n150_lit_string_α
                                                                                        jmp   n156_lit_integer_α
n153_call_builtin_icon_β:
                                                                                        jmp   n150_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n154_call_proc_staged_α:
                        lea              rsi, [rbp + 6416]
                        lea              rdx, [rbp + 6432]
                        call             proc_limage_dcα
                                                                                        jmp   .Lx596_2
.Lx596_2:
                        mov              qword ptr [rbp + 6352], rax
                        mov              qword ptr [rbp + 6360], rdx
                        cmp              eax, 99
                                                                                        je    n155_var_α
                                                                                        jmp   n155_var_α
n154_call_proc_staged_β:
                                                                                        jmp   n155_var_α
.Lx596_0:
                        .quad            .Lx596_0_s
.Lx596_0_s:
                        .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n155_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 6320], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 6328], rax
                                                                                        jmp   n157_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n156_lit_integer_α:
                        mov              qword ptr [rbp + 6656], 6
                        mov              rax, qword ptr [rip + .Lx599_0]
                        mov              qword ptr [rbp + 6664], rax
                                                                                        jmp   n159_lit_integer_α
.Lx599_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n157_lit_integer_α:
                        mov              qword ptr [rbp + 6336], 6
                        mov              rax, qword ptr [rip + .Lx600_0]
                        mov              qword ptr [rbp + 6344], rax
                                                                                        jmp   n160_call_builtin_icon_α
.Lx600_0:
                        .quad            12
#-----------------------------------------------------------------------------------------------------------------------
n158_lit_string_α:
                        mov              qword ptr [rbp + 6224], 1
                        mov              rax, qword ptr [rip + .Lx601_0]
                        mov              qword ptr [rbp + 6232], rax
                                                                                        jmp   n161_var_α
.Lx601_0:
                        .quad            .Lx601_0_s
.Lx601_0_s:
                        .string          "I"
#-----------------------------------------------------------------------------------------------------------------------
n159_lit_integer_α:
                        mov              qword ptr [rbp + 6672], 6
                        mov              rax, qword ptr [rip + .Lx602_0]
                        mov              qword ptr [rbp + 6680], rax
                                                                                        jmp   n162_call_builtin_icon_α
.Lx602_0:
                        .quad            11
#-----------------------------------------------------------------------------------------------------------------------
n160_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 6320]
                        mov              qword ptr [rbp + 6272], rax
                        mov              rax, qword ptr [rbp + 6328]
                        mov              qword ptr [rbp + 6280], rax
                        mov              rax, qword ptr [rbp + 6336]
                        mov              qword ptr [rbp + 6288], rax
                        mov              rax, qword ptr [rbp + 6344]
                        mov              qword ptr [rbp + 6296], rax
                        .section         .rodata
.Lrkfn604:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn604]
                        lea              rsi, [rbp + 6272]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 6256], rax
                        mov              qword ptr [rbp + 6264], rdx
                        cmp              eax, 99
                                                                                        je    n158_lit_string_α
                                                                                        jmp   n158_lit_string_α
n160_call_builtin_icon_β:
                                                                                        jmp   n158_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n161_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 6240], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 6248], rax
                                                                                        jmp   n163_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n162_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 6528]
                        mov              qword ptr [rbp + 6464], rax
                        mov              rax, qword ptr [rbp + 6536]
                        mov              qword ptr [rbp + 6472], rax
                        mov              rax, qword ptr [rbp + 6656]
                        mov              qword ptr [rbp + 6480], rax
                        mov              rax, qword ptr [rbp + 6664]
                        mov              qword ptr [rbp + 6488], rax
                        mov              rax, qword ptr [rbp + 6672]
                        mov              qword ptr [rbp + 6496], rax
                        mov              rax, qword ptr [rbp + 6680]
                        mov              qword ptr [rbp + 6504], rax
                        .section         .rodata
.Lrkfn608:              .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn608]
                        lea              rsi, [rbp + 6464]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 6448], rax
                        mov              qword ptr [rbp + 6456], rdx
                        cmp              eax, 99
                                                                                        je    n150_lit_string_α
                                                                                        jmp   n150_lit_string_α
n162_call_builtin_icon_β:
                                                                                        jmp   n150_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n163_call_proc_staged_α:
                        lea              rsi, [rbp + 6224]
                        lea              rdx, [rbp + 6240]
                        call             proc_limage_dcα
                                                                                        jmp   .Lx610_2
.Lx610_2:
                        mov              qword ptr [rbp + 6160], rax
                        mov              qword ptr [rbp + 6168], rdx
                        cmp              eax, 99
                                                                                        je    n164_var_α
                                                                                        jmp   n164_var_α
n163_call_proc_staged_β:
                                                                                        jmp   n164_var_α
.Lx610_0:
                        .quad            .Lx610_0_s
.Lx610_0_s:
                        .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n164_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 6096], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 6104], rax
                                                                                        jmp   n165_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n165_lit_integer_α:
                        mov              qword ptr [rbp + 6112], 6
                        mov              rax, qword ptr [rip + .Lx613_0]
                        mov              qword ptr [rbp + 6120], rax
                                                                                        jmp   n167_lit_integer_α
.Lx613_0:
                        .quad            13
#-----------------------------------------------------------------------------------------------------------------------
n166_lit_string_α:
                        mov              qword ptr [rbp + 5968], 1
                        mov              rax, qword ptr [rip + .Lx614_0]
                        mov              qword ptr [rbp + 5976], rax
                                                                                        jmp   n168_var_α
.Lx614_0:
                        .quad            .Lx614_0_s
.Lx614_0_s:
                        .string          "J"
#-----------------------------------------------------------------------------------------------------------------------
n167_lit_integer_α:
                        mov              qword ptr [rbp + 6128], 6
                        mov              rax, qword ptr [rip + .Lx615_0]
                        mov              qword ptr [rbp + 6136], rax
                                                                                        jmp   n169_lit_integer_α
.Lx615_0:
                        .quad            14
#-----------------------------------------------------------------------------------------------------------------------
n168_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 5984], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 5992], rax
                                                                                        jmp   n170_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n169_lit_integer_α:
                        mov              qword ptr [rbp + 6144], 6
                        mov              rax, qword ptr [rip + .Lx618_0]
                        mov              qword ptr [rbp + 6152], rax
                                                                                        jmp   n172_call_builtin_icon_α
.Lx618_0:
                        .quad            15
#-----------------------------------------------------------------------------------------------------------------------
n170_call_proc_staged_α:
                        lea              rsi, [rbp + 5968]
                        lea              rdx, [rbp + 5984]
                        call             proc_limage_dcα
                                                                                        jmp   .Lx620_2
.Lx620_2:
                        mov              qword ptr [rbp + 5904], rax
                        mov              qword ptr [rbp + 5912], rdx
                        cmp              eax, 99
                                                                                        je    n171_var_α
                                                                                        jmp   n171_var_α
n170_call_proc_staged_β:
                                                                                        jmp   n171_var_α
.Lx620_0:
                        .quad            .Lx620_0_s
.Lx620_0_s:
                        .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n171_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 5824], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 5832], rax
                                                                                        jmp   n173_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n172_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 6096]
                        mov              qword ptr [rbp + 6016], rax
                        mov              rax, qword ptr [rbp + 6104]
                        mov              qword ptr [rbp + 6024], rax
                        mov              rax, qword ptr [rbp + 6112]
                        mov              qword ptr [rbp + 6032], rax
                        mov              rax, qword ptr [rbp + 6120]
                        mov              qword ptr [rbp + 6040], rax
                        mov              rax, qword ptr [rbp + 6128]
                        mov              qword ptr [rbp + 6048], rax
                        mov              rax, qword ptr [rbp + 6136]
                        mov              qword ptr [rbp + 6056], rax
                        mov              rax, qword ptr [rbp + 6144]
                        mov              qword ptr [rbp + 6064], rax
                        mov              rax, qword ptr [rbp + 6152]
                        mov              qword ptr [rbp + 6072], rax
                        .section         .rodata
.Lrkfn624:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn624]
                        lea              rsi, [rbp + 6016]
                        mov              edx, 4
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 6000], rax
                        mov              qword ptr [rbp + 6008], rdx
                        cmp              eax, 99
                                                                                        je    n166_lit_string_α
                                                                                        jmp   n166_lit_string_α
n172_call_builtin_icon_β:
                                                                                        jmp   n166_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n173_lit_integer_α:
                        mov              qword ptr [rbp + 5840], 6
                        mov              rax, qword ptr [rip + .Lx625_0]
                        mov              qword ptr [rbp + 5848], rax
                                                                                        jmp   n175_lit_integer_α
.Lx625_0:
                        .quad            16
#-----------------------------------------------------------------------------------------------------------------------
n174_lit_string_α:
                        mov              qword ptr [rbp + 5632], 1
                        mov              rax, qword ptr [rip + .Lx626_0]
                        mov              qword ptr [rbp + 5640], rax
                                                                                        jmp   n176_var_α
.Lx626_0:
                        .quad            .Lx626_0_s
.Lx626_0_s:
                        .string          "K"
#-----------------------------------------------------------------------------------------------------------------------
n175_lit_integer_α:
                        mov              qword ptr [rbp + 5856], 6
                        mov              rax, qword ptr [rip + .Lx627_0]
                        mov              qword ptr [rbp + 5864], rax
                                                                                        jmp   n177_call_builtin_icon_α
.Lx627_0:
                        .quad            17
#-----------------------------------------------------------------------------------------------------------------------
n176_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 5648], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 5656], rax
                                                                                        jmp   n178_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n177_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 5824]
                        mov              qword ptr [rbp + 5760], rax
                        mov              rax, qword ptr [rbp + 5832]
                        mov              qword ptr [rbp + 5768], rax
                        mov              rax, qword ptr [rbp + 5840]
                        mov              qword ptr [rbp + 5776], rax
                        mov              rax, qword ptr [rbp + 5848]
                        mov              qword ptr [rbp + 5784], rax
                        mov              rax, qword ptr [rbp + 5856]
                        mov              qword ptr [rbp + 5792], rax
                        mov              rax, qword ptr [rbp + 5864]
                        mov              qword ptr [rbp + 5800], rax
                        .section         .rodata
.Lrkfn631:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn631]
                        lea              rsi, [rbp + 5760]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5744], rax
                        mov              qword ptr [rbp + 5752], rdx
                        cmp              eax, 99
                                                                                        je    n174_lit_string_α
                                                                                        jmp   n180_lit_integer_α
n177_call_builtin_icon_β:
                                                                                        jmp   n174_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n178_call_proc_staged_α:
                        lea              rsi, [rbp + 5632]
                        lea              rdx, [rbp + 5648]
                        call             proc_limage_dcα
                                                                                        jmp   .Lx633_2
.Lx633_2:
                        mov              qword ptr [rbp + 5568], rax
                        mov              qword ptr [rbp + 5576], rdx
                        cmp              eax, 99
                                                                                        je    n179_var_α
                                                                                        jmp   n179_var_α
n178_call_proc_staged_β:
                                                                                        jmp   n179_var_α
.Lx633_0:
                        .quad            .Lx633_0_s
.Lx633_0_s:
                        .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n179_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 5488], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 5496], rax
                                                                                        jmp   n181_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n180_lit_integer_α:
                        mov              qword ptr [rbp + 5872], 6
                        mov              rax, qword ptr [rip + .Lx636_0]
                        mov              qword ptr [rbp + 5880], rax
                                                                                        jmp   n183_lit_integer_α
.Lx636_0:
                        .quad            18
#-----------------------------------------------------------------------------------------------------------------------
n181_lit_integer_α:
                        mov              qword ptr [rbp + 5504], 6
                        mov              rax, qword ptr [rip + .Lx637_0]
                        mov              qword ptr [rbp + 5512], rax
                                                                                        jmp   n184_lit_integer_α
.Lx637_0:
                        .quad            20
#-----------------------------------------------------------------------------------------------------------------------
n182_lit_string_α:
                        mov              qword ptr [rbp + 5296], 1
                        mov              rax, qword ptr [rip + .Lx638_0]
                        mov              qword ptr [rbp + 5304], rax
                                                                                        jmp   n185_var_α
.Lx638_0:
                        .quad            .Lx638_0_s
.Lx638_0_s:
                        .string          "L"
#-----------------------------------------------------------------------------------------------------------------------
n183_lit_integer_α:
                        mov              qword ptr [rbp + 5888], 6
                        mov              rax, qword ptr [rip + .Lx639_0]
                        mov              qword ptr [rbp + 5896], rax
                                                                                        jmp   n186_call_builtin_icon_α
.Lx639_0:
                        .quad            19
#-----------------------------------------------------------------------------------------------------------------------
n184_lit_integer_α:
                        mov              qword ptr [rbp + 5520], 6
                        mov              rax, qword ptr [rip + .Lx640_0]
                        mov              qword ptr [rbp + 5528], rax
                                                                                        jmp   n187_call_builtin_icon_α
.Lx640_0:
                        .quad            21
#-----------------------------------------------------------------------------------------------------------------------
n185_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 5312], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 5320], rax
                                                                                        jmp   n188_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n186_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 5744]
                        mov              qword ptr [rbp + 5680], rax
                        mov              rax, qword ptr [rbp + 5752]
                        mov              qword ptr [rbp + 5688], rax
                        mov              rax, qword ptr [rbp + 5872]
                        mov              qword ptr [rbp + 5696], rax
                        mov              rax, qword ptr [rbp + 5880]
                        mov              qword ptr [rbp + 5704], rax
                        mov              rax, qword ptr [rbp + 5888]
                        mov              qword ptr [rbp + 5712], rax
                        mov              rax, qword ptr [rbp + 5896]
                        mov              qword ptr [rbp + 5720], rax
                        .section         .rodata
.Lrkfn644:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn644]
                        lea              rsi, [rbp + 5680]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5664], rax
                        mov              qword ptr [rbp + 5672], rdx
                        cmp              eax, 99
                                                                                        je    n174_lit_string_α
                                                                                        jmp   n174_lit_string_α
n186_call_builtin_icon_β:
                                                                                        jmp   n174_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n187_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 5488]
                        mov              qword ptr [rbp + 5424], rax
                        mov              rax, qword ptr [rbp + 5496]
                        mov              qword ptr [rbp + 5432], rax
                        mov              rax, qword ptr [rbp + 5504]
                        mov              qword ptr [rbp + 5440], rax
                        mov              rax, qword ptr [rbp + 5512]
                        mov              qword ptr [rbp + 5448], rax
                        mov              rax, qword ptr [rbp + 5520]
                        mov              qword ptr [rbp + 5456], rax
                        mov              rax, qword ptr [rbp + 5528]
                        mov              qword ptr [rbp + 5464], rax
                        .section         .rodata
.Lrkfn646:              .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn646]
                        lea              rsi, [rbp + 5424]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5408], rax
                        mov              qword ptr [rbp + 5416], rdx
                        cmp              eax, 99
                                                                                        je    n182_lit_string_α
                                                                                        jmp   n190_lit_integer_α
n187_call_builtin_icon_β:
                                                                                        jmp   n182_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n188_call_proc_staged_α:
                        lea              rsi, [rbp + 5296]
                        lea              rdx, [rbp + 5312]
                        call             proc_limage_dcα
                                                                                        jmp   .Lx648_2
.Lx648_2:
                        mov              qword ptr [rbp + 5232], rax
                        mov              qword ptr [rbp + 5240], rdx
                        cmp              eax, 99
                                                                                        je    n189_var_ref_α
                                                                                        jmp   n189_var_ref_α
n188_call_proc_staged_β:
                                                                                        jmp   n189_var_ref_α
.Lx648_0:
                        .quad            .Lx648_0_s
.Lx648_0_s:
                        .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n189_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 10496]
                        mov              qword ptr [rbp + 5184], rax
                        mov              qword ptr [rbp + 5192], rdx
                                                                                        jmp   n191_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n190_lit_integer_α:
                        mov              qword ptr [rbp + 5536], 6
                        mov              rax, qword ptr [rip + .Lx651_0]
                        mov              qword ptr [rbp + 5544], rax
                                                                                        jmp   n192_lit_integer_α
.Lx651_0:
                        .quad            22
#-----------------------------------------------------------------------------------------------------------------------
n191_iterate_α:
                        mov              qword ptr [rbp + 5168], 0
.Lx653_0:
                        mov              rdi, qword ptr [rbp + 5184]
                        mov              rsi, qword ptr [rbp + 5192]
                        mov              rdx, qword ptr [rbp + 5168]
                        call             rt_list_bang_var_at@PLT
                        mov              qword ptr [rbp + 5152], rax
                        mov              qword ptr [rbp + 5160], rdx
                        cmp              rax, 99
                                                                                        je    n196_lit_string_α
                                                                                        jmp   n193_lit_integer_α
n191_iterate_β:
                        inc              qword ptr [rbp + 5168]
                                                                                        jmp   .Lx653_0
#-----------------------------------------------------------------------------------------------------------------------
n192_lit_integer_α:
                        mov              qword ptr [rbp + 5552], 6
                        mov              rax, qword ptr [rip + .Lx654_0]
                        mov              qword ptr [rbp + 5560], rax
                                                                                        jmp   n194_call_builtin_icon_α
.Lx654_0:
                        .quad            23
#-----------------------------------------------------------------------------------------------------------------------
n193_lit_integer_α:
                        mov              qword ptr [rbp + 5216], 6
                        mov              rax, qword ptr [rip + .Lx655_0]
                        mov              qword ptr [rbp + 5224], rax
                                                                                        jmp   n195_assign_var_α
.Lx655_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n194_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 5408]
                        mov              qword ptr [rbp + 5344], rax
                        mov              rax, qword ptr [rbp + 5416]
                        mov              qword ptr [rbp + 5352], rax
                        mov              rax, qword ptr [rbp + 5536]
                        mov              qword ptr [rbp + 5360], rax
                        mov              rax, qword ptr [rbp + 5544]
                        mov              qword ptr [rbp + 5368], rax
                        mov              rax, qword ptr [rbp + 5552]
                        mov              qword ptr [rbp + 5376], rax
                        mov              rax, qword ptr [rbp + 5560]
                        mov              qword ptr [rbp + 5384], rax
                        .section         .rodata
.Lrkfn657:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn657]
                        lea              rsi, [rbp + 5344]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5328], rax
                        mov              qword ptr [rbp + 5336], rdx
                        cmp              eax, 99
                                                                                        je    n182_lit_string_α
                                                                                        jmp   n182_lit_string_α
n194_call_builtin_icon_β:
                                                                                        jmp   n182_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n195_assign_var_α:
                        mov              rdi, qword ptr [rbp + 5152]
                        mov              rsi, qword ptr [rbp + 5160]
                        mov              rdx, qword ptr [rbp + 5216]
                        mov              rcx, qword ptr [rbp + 5224]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n196_lit_string_α
                        mov              qword ptr [rbp + 5200], rax
                        mov              qword ptr [rbp + 5208], rdx
                                                                                        jmp   n191_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n196_lit_string_α:
                        mov              qword ptr [rbp + 5120], 1
                        mov              rax, qword ptr [rip + .Lx659_0]
                        mov              qword ptr [rbp + 5128], rax
                                                                                        jmp   n197_var_α
.Lx659_0:
                        .quad            .Lx659_0_s
.Lx659_0_s:
                        .string          "M"
#-----------------------------------------------------------------------------------------------------------------------
n197_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 5136], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 5144], rax
                                                                                        jmp   n198_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n198_call_proc_staged_α:
                        lea              rsi, [rbp + 5120]
                        lea              rdx, [rbp + 5136]
                        call             proc_limage_dcα
                                                                                        jmp   .Lx663_2
.Lx663_2:
                        mov              qword ptr [rbp + 5056], rax
                        mov              qword ptr [rbp + 5064], rdx
                        cmp              eax, 99
                                                                                        je    n199_lit_integer_α
                                                                                        jmp   n199_lit_integer_α
n198_call_proc_staged_β:
                                                                                        jmp   n199_lit_integer_α
.Lx663_0:
                        .quad            .Lx663_0_s
.Lx663_0_s:
                        .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n199_lit_integer_α:
                        mov              qword ptr [rbp + 4976], 6
                        mov              rax, qword ptr [rip + .Lx664_0]
                        mov              qword ptr [rbp + 4984], rax
                                                                                        jmp   n200_lit_integer_α
.Lx664_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n200_lit_integer_α:
                        mov              qword ptr [rbp + 4992], 6
                        mov              rax, qword ptr [rip + .Lx665_0]
                        mov              qword ptr [rbp + 5000], rax
                                                                                        jmp   n201_lit_integer_α
.Lx665_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n201_lit_integer_α:
                        mov              qword ptr [rbp + 5008], 6
                        mov              rax, qword ptr [rip + .Lx666_0]
                        mov              qword ptr [rbp + 5016], rax
                                                                                        jmp   n202_lit_integer_α
.Lx666_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n202_lit_integer_α:
                        mov              qword ptr [rbp + 5024], 6
                        mov              rax, qword ptr [rip + .Lx667_0]
                        mov              qword ptr [rbp + 5032], rax
                                                                                        jmp   n203_lit_integer_α
.Lx667_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n203_lit_integer_α:
                        mov              qword ptr [rbp + 5040], 6
                        mov              rax, qword ptr [rip + .Lx668_0]
                        mov              qword ptr [rbp + 5048], rax
                                                                                        jmp   n204_make_list_α
.Lx668_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n204_make_list_α:
                        mov              rax, qword ptr [rbp + 4976]
                        mov              qword ptr [rbp + 4896], rax
                        mov              rax, qword ptr [rbp + 4984]
                        mov              qword ptr [rbp + 4904], rax
                        mov              rax, qword ptr [rbp + 4992]
                        mov              qword ptr [rbp + 4912], rax
                        mov              rax, qword ptr [rbp + 5000]
                        mov              qword ptr [rbp + 4920], rax
                        mov              rax, qword ptr [rbp + 5008]
                        mov              qword ptr [rbp + 4928], rax
                        mov              rax, qword ptr [rbp + 5016]
                        mov              qword ptr [rbp + 4936], rax
                        mov              rax, qword ptr [rbp + 5024]
                        mov              qword ptr [rbp + 4944], rax
                        mov              rax, qword ptr [rbp + 5032]
                        mov              qword ptr [rbp + 4952], rax
                        mov              rax, qword ptr [rbp + 5040]
                        mov              qword ptr [rbp + 4960], rax
                        mov              rax, qword ptr [rbp + 5048]
                        mov              qword ptr [rbp + 4968], rax
                        lea              rdi, [rbp + 4896]
                        mov              esi, 5
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 4880], rax
                        mov              qword ptr [rbp + 4888], rdx
                                                                                        jmp   n205_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n205_assign_α:
                        mov              rax, qword ptr [rbp + 4880]
                        mov              rdx, qword ptr [rbp + 4888]
                        mov              qword ptr [rbp + 10496], rax
                        mov              qword ptr [rbp + 10504], rdx
                                                                                        jmp   n206_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n206_lit_integer_α:
                        mov              qword ptr [rbp + 4656], 6
                        mov              rax, qword ptr [rip + .Lx672_0]
                        mov              qword ptr [rbp + 4664], rax
                                                                                        jmp   n207_var_α
.Lx672_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n207_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 4720], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 4728], rax
                                                                                        jmp   n208_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n208_unop_α:
                        mov              rdi, qword ptr [rbp + 10496]
                        mov              rsi, qword ptr [rbp + 10504]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 4704], rax
                        mov              qword ptr [rbp + 4712], rdx
                                                                                        jmp   n210_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n209_lit_string_α:
                        mov              qword ptr [rbp + 4592], 1
                        mov              rax, qword ptr [rip + .Lx676_0]
                        mov              qword ptr [rbp + 4600], rax
                                                                                        jmp   n211_var_α
.Lx676_0:
                        .quad            .Lx676_0_s
.Lx676_0_s:
                        .string          "N"
#-----------------------------------------------------------------------------------------------------------------------
n210_lit_integer_α:
                        mov              qword ptr [rbp + 4736], 6
                        mov              rax, qword ptr [rip + .Lx677_0]
                        mov              qword ptr [rbp + 4744], rax
                                                                                        jmp   n212_op75_α
.Lx677_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n211_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 4608], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 4616], rax
                                                                                        jmp   n213_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n212_op75_α:
                        mov              eax, dword ptr [rbp + 4704]
                        cmp              eax, 7
                                                                                        je    .Lx681_1
                        cmp              eax, 6
                                                                                        jne   .Lx681_0
                        mov              eax, dword ptr [rbp + 4736]
                        cmp              eax, 6
                                                                                        jne   .Lx681_0
.Lx681_1:
                        mov              rax, qword ptr [rbp + 4704]
                        mov              qword ptr [rbp + 4688], rax
                        mov              rax, qword ptr [rbp + 4712]
                        mov              qword ptr [rbp + 4696], rax
                                                                                        jmp   n215_binop_α
.Lx681_0:
                        lea              rdi, [rbp + 4704]
                        lea              rsi, [rbp + 4736]
                        lea              rdx, [rbp + 4688]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n215_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n213_call_proc_staged_α:
                        lea              rsi, [rbp + 4592]
                        lea              rdx, [rbp + 4608]
                        call             proc_limage_dcα
                                                                                        jmp   .Lx683_2
.Lx683_2:
                        mov              qword ptr [rbp + 4528], rax
                        mov              qword ptr [rbp + 4536], rdx
                        cmp              eax, 99
                                                                                        je    n214_var_α
                                                                                        jmp   n214_var_α
n213_call_proc_staged_β:
                                                                                        jmp   n214_var_α
.Lx683_0:
                        .quad            .Lx683_0_s
.Lx683_0_s:
                        .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n214_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 4352], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 4360], rax
                                                                                        jmp   n216_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n215_binop_α:
                        mov              eax, dword ptr [rbp + 4688]
                        cmp              eax, 6
                                                                                        jne   .Lx686_0
                        mov              rax, qword ptr [rbp + 4696]
                        mov              rcx, 3
                        add              rax, rcx
                        mov              qword ptr [rbp + 4672], 6
                        mov              qword ptr [rbp + 4680], rax
                                                                                        jmp   n218_to_α
.Lx686_0:
                        mov              rdi, qword ptr [rbp + 4688]
                        mov              rsi, qword ptr [rbp + 4696]
                        mov              rdx, qword ptr [rbp + 4736]
                        mov              rcx, qword ptr [rbp + 4744]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n209_lit_string_α
                        mov              qword ptr [rbp + 4672], rax
                        mov              qword ptr [rbp + 4680], rdx
                                                                                        jmp   n218_to_α
#-----------------------------------------------------------------------------------------------------------------------
n216_unop_α:
                        mov              rdi, qword ptr [rbp + 10496]
                        mov              rsi, qword ptr [rbp + 10504]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 4336], rax
                        mov              qword ptr [rbp + 4344], rdx
                                                                                        jmp   n219_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n217_lit_string_α:
                        mov              qword ptr [rbp + 4208], 1
                        mov              rax, qword ptr [rip + .Lx688_0]
                        mov              qword ptr [rbp + 4216], rax
                                                                                        jmp   n220_var_α
.Lx688_0:
                        .quad            .Lx688_0_s
.Lx688_0_s:
                        .string          "O"
#-----------------------------------------------------------------------------------------------------------------------
n218_to_α:
                        mov              rdi, qword ptr [rbp + 4656]
                        mov              rsi, qword ptr [rbp + 4664]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 4656], 6
                        mov              qword ptr [rbp + 4664], rax
                        mov              rdi, qword ptr [rbp + 4672]
                        mov              rsi, qword ptr [rbp + 4680]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 4672], 6
                        mov              qword ptr [rbp + 4680], rax
                        mov              rax, qword ptr [rbp + 4664]
                        mov              qword ptr [rbp + 4640], rax
.Lx690_0:
                        mov              rax, qword ptr [rbp + 4640]
                        mov              rcx, qword ptr [rbp + 4680]
                        cmp              rax, rcx
                                                                                        jg    n209_lit_string_α
                        mov              qword ptr [rbp + 4624], 6
                        mov              qword ptr [rbp + 4632], rax
                                                                                        jmp   n221_assign_α
n218_to_β:
                        inc              qword ptr [rbp + 4640]
                                                                                        jmp   .Lx690_0
#-----------------------------------------------------------------------------------------------------------------------
n219_op75_α:
                        mov              eax, dword ptr [rbp + 4336]
                        cmp              eax, 7
                                                                                        je    .Lx692_1
                        cmp              eax, 6
                                                                                        jne   .Lx692_0
                        mov              eax, dword ptr [rbp + 4336]
                        cmp              eax, 6
                                                                                        jne   .Lx692_0
.Lx692_1:
                        mov              rax, qword ptr [rbp + 4336]
                        mov              qword ptr [rbp + 4320], rax
                        mov              rax, qword ptr [rbp + 4344]
                        mov              qword ptr [rbp + 4328], rax
                                                                                        jmp   n222_unop_α
.Lx692_0:
                        lea              rdi, [rbp + 4336]
                        lea              rsi, [rbp + 4336]
                        lea              rdx, [rbp + 4320]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n222_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n220_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 4224], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 4232], rax
                                                                                        jmp   n223_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n221_assign_α:
                        mov              rax, qword ptr [rbp + 4624]
                        mov              rdx, qword ptr [rbp + 4632]
                        mov              qword ptr [rbp + 10512], rax
                        mov              qword ptr [rbp + 10520], rdx
                                                                                        jmp   n225_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n222_unop_α:
                        mov              rdi, qword ptr [rbp + 4320]
                        mov              rsi, qword ptr [rbp + 4328]
                        call             rt_num_neg@PLT
                        mov              qword ptr [rbp + 4304], rax
                        mov              qword ptr [rbp + 4312], rdx
                                                                                        jmp   n226_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n223_call_proc_staged_α:
                        lea              rsi, [rbp + 4208]
                        lea              rdx, [rbp + 4224]
                        call             proc_limage_dcα
                                                                                        jmp   .Lx698_2
.Lx698_2:
                        mov              qword ptr [rbp + 4144], rax
                        mov              qword ptr [rbp + 4152], rdx
                        cmp              eax, 99
                                                                                        je    n224_lit_integer_α
                                                                                        jmp   n224_lit_integer_α
n223_call_proc_staged_β:
                                                                                        jmp   n224_lit_integer_α
.Lx698_0:
                        .quad            .Lx698_0_s
.Lx698_0_s:
                        .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n224_lit_integer_α:
                        mov              qword ptr [rbp + 4128], 6
                        mov              rax, qword ptr [rip + .Lx699_0]
                        mov              qword ptr [rbp + 4136], rax
                                                                                        jmp   n227_make_list_α
.Lx699_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n225_bound_α:
                        mov              qword ptr [rbp + 4752], rsp
                                                                                        jmp   n228_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n226_lit_integer_α:
                        mov              qword ptr [rbp + 4368], 6
                        mov              rax, qword ptr [rip + .Lx702_0]
                        mov              qword ptr [rbp + 4376], rax
                                                                                        jmp   n229_op75_α
.Lx702_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n227_make_list_α:
                        mov              rax, qword ptr [rbp + 4128]
                        mov              qword ptr [rbp + 4112], rax
                        mov              rax, qword ptr [rbp + 4136]
                        mov              qword ptr [rbp + 4120], rax
                        lea              rdi, [rbp + 4112]
                        mov              esi, 1
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 4096], rax
                        mov              qword ptr [rbp + 4104], rdx
                                                                                        jmp   n230_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n228_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 10496]
                        mov              qword ptr [rbp + 4800], rax
                        mov              qword ptr [rbp + 4808], rdx
                                                                                        jmp   n231_var_α
#-----------------------------------------------------------------------------------------------------------------------
n229_op75_α:
                        mov              eax, dword ptr [rbp + 4304]
                        cmp              eax, 7
                                                                                        je    .Lx708_1
                        cmp              eax, 6
                                                                                        jne   .Lx708_0
                        mov              eax, dword ptr [rbp + 4368]
                        cmp              eax, 6
                                                                                        jne   .Lx708_0
.Lx708_1:
                        mov              rax, qword ptr [rbp + 4304]
                        mov              qword ptr [rbp + 4288], rax
                        mov              rax, qword ptr [rbp + 4312]
                        mov              qword ptr [rbp + 4296], rax
                                                                                        jmp   n232_binop_α
.Lx708_0:
                        lea              rdi, [rbp + 4304]
                        lea              rsi, [rbp + 4368]
                        lea              rdx, [rbp + 4288]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n232_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n230_assign_α:
                        mov              rax, qword ptr [rbp + 4096]
                        mov              rdx, qword ptr [rbp + 4104]
                        mov              qword ptr [rbp + 10496], rax
                        mov              qword ptr [rbp + 10504], rdx
                                                                                        jmp   n233_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n231_var_α:
                        mov              rax, qword ptr [rbp + 10512]
                        mov              qword ptr [rbp + 4816], rax
                        mov              rax, qword ptr [rbp + 10520]
                        mov              qword ptr [rbp + 4824], rax
                                                                                        jmp   n234_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n232_binop_α:
                        mov              eax, dword ptr [rbp + 4288]
                        cmp              eax, 6
                                                                                        jne   .Lx712_0
                        mov              rax, qword ptr [rbp + 4296]
                        mov              rcx, 3
                        sub              rax, rcx
                        mov              qword ptr [rbp + 4272], 6
                        mov              qword ptr [rbp + 4280], rax
                                                                                        jmp   n236_lit_integer_α
.Lx712_0:
                        mov              rdi, qword ptr [rbp + 4288]
                        mov              rsi, qword ptr [rbp + 4296]
                        mov              rdx, qword ptr [rbp + 4368]
                        mov              rcx, qword ptr [rbp + 4376]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        je    n217_lit_string_α
                        mov              qword ptr [rbp + 4272], rax
                        mov              qword ptr [rbp + 4280], rdx
                                                                                        jmp   n236_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n233_lit_string_α:
                        mov              qword ptr [rbp + 4032], 1
                        mov              rax, qword ptr [rip + .Lx713_0]
                        mov              qword ptr [rbp + 4040], rax
                                                                                        jmp   n237_var_ref_α
.Lx713_0:
                        .quad            .Lx713_0_s
.Lx713_0_s:
                        .string          "\t"
#-----------------------------------------------------------------------------------------------------------------------
n234_subscript_α:
                        mov              rdi, qword ptr [rbp + 4800]
                        mov              rsi, qword ptr [rbp + 4808]
                        mov              rdx, qword ptr [rbp + 4816]
                        mov              rcx, qword ptr [rbp + 4824]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n235_unmark_α
                        mov              qword ptr [rbp + 4832], rax
                        mov              qword ptr [rbp + 4840], rdx
                                                                                        jmp   n238_var_α
#-----------------------------------------------------------------------------------------------------------------------
n235_unmark_α:
                        mov              rsp, qword ptr [rbp + 4752]
                                                                                        jmp   n218_to_β
#-----------------------------------------------------------------------------------------------------------------------
n236_lit_integer_α:
                        mov              qword ptr [rbp + 4384], 6
                        mov              rax, qword ptr [rip + .Lx717_0]
                        mov              qword ptr [rbp + 4392], rax
                                                                                        jmp   n239_to_α
.Lx717_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n237_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 10496]
                        mov              qword ptr [rbp + 4064], rax
                        mov              qword ptr [rbp + 4072], rdx
                                                                                        jmp   n240_random_α
#-----------------------------------------------------------------------------------------------------------------------
n238_var_α:
                        mov              rax, qword ptr [rbp + 10512]
                        mov              qword ptr [rbp + 4864], rax
                        mov              rax, qword ptr [rbp + 10520]
                        mov              qword ptr [rbp + 4872], rax
                                                                                        jmp   n241_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n239_to_α:
                        mov              rdi, qword ptr [rbp + 4272]
                        mov              rsi, qword ptr [rbp + 4280]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 4272], 6
                        mov              qword ptr [rbp + 4280], rax
                        mov              rdi, qword ptr [rbp + 4384]
                        mov              rsi, qword ptr [rbp + 4392]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 4384], 6
                        mov              qword ptr [rbp + 4392], rax
                        mov              rax, qword ptr [rbp + 4280]
                        mov              qword ptr [rbp + 4256], rax
.Lx723_0:
                        mov              rax, qword ptr [rbp + 4256]
                        mov              rcx, qword ptr [rbp + 4392]
                        cmp              rax, rcx
                                                                                        jg    n217_lit_string_α
                        mov              qword ptr [rbp + 4240], 6
                        mov              qword ptr [rbp + 4248], rax
                                                                                        jmp   n242_assign_α
n239_to_β:
                        inc              qword ptr [rbp + 4256]
                                                                                        jmp   .Lx723_0
#-----------------------------------------------------------------------------------------------------------------------
n240_random_α:
                        mov              rdi, qword ptr [rbp + 4064]
                        mov              rsi, qword ptr [rbp + 4072]
                        call             rt_random_var@PLT
                        cmp              eax, 99
                                                                                        je    n244_var_ref_α
                        mov              qword ptr [rbp + 4048], rax
                        mov              qword ptr [rbp + 4056], rdx
                                                                                        jmp   n243_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n241_assign_var_α:
                        mov              rdi, qword ptr [rbp + 4832]
                        mov              rsi, qword ptr [rbp + 4840]
                        mov              rdx, qword ptr [rbp + 4864]
                        mov              rcx, qword ptr [rbp + 4872]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n235_unmark_α
                        mov              qword ptr [rbp + 4848], rax
                        mov              qword ptr [rbp + 4856], rdx
                                                                                        jmp   n235_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n242_assign_α:
                        mov              rax, qword ptr [rbp + 4240]
                        mov              rdx, qword ptr [rbp + 4248]
                        mov              qword ptr [rbp + 10512], rax
                        mov              qword ptr [rbp + 10520], rdx
                                                                                        jmp   n245_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n243_deref_α:
                        mov              rdi, qword ptr [rbp + 4048]
                        mov              rsi, qword ptr [rbp + 4056]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n244_var_ref_α
                        mov              qword ptr [rbp + 4080], rax
                        mov              qword ptr [rbp + 4088], rdx
                                                                                        jmp   n246_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n244_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 10496]
                        mov              qword ptr [rbp + 3920], rax
                        mov              qword ptr [rbp + 3928], rdx
                                                                                        jmp   n247_random_α
#-----------------------------------------------------------------------------------------------------------------------
n245_bound_α:
                        mov              qword ptr [rbp + 4400], rsp
                                                                                        jmp   n248_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n246_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 4032]
                        mov              qword ptr [rbp + 3984], rax
                        mov              rax, qword ptr [rbp + 4040]
                        mov              qword ptr [rbp + 3992], rax
                        mov              rax, qword ptr [rbp + 4080]
                        mov              qword ptr [rbp + 4000], rax
                        mov              rax, qword ptr [rbp + 4088]
                        mov              qword ptr [rbp + 4008], rax
                        .section         .rodata
.Lrkfn733:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn733]
                        lea              rsi, [rbp + 3984]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3968], rax
                        mov              qword ptr [rbp + 3976], rdx
                        cmp              eax, 99
                                                                                        je    n244_var_ref_α
                                                                                        jmp   n244_var_ref_α
n246_call_builtin_icon_β:
                                                                                        jmp   n244_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n247_random_α:
                        mov              rdi, qword ptr [rbp + 3920]
                        mov              rsi, qword ptr [rbp + 3928]
                        call             rt_random_var@PLT
                        cmp              eax, 99
                                                                                        je    n250_lit_string_α
                        mov              qword ptr [rbp + 3904], rax
                        mov              qword ptr [rbp + 3912], rdx
                                                                                        jmp   n249_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n248_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 10496]
                        mov              qword ptr [rbp + 4448], rax
                        mov              qword ptr [rbp + 4456], rdx
                                                                                        jmp   n251_var_α
#-----------------------------------------------------------------------------------------------------------------------
n249_lit_integer_α:
                        mov              qword ptr [rbp + 3952], 6
                        mov              rax, qword ptr [rip + .Lx737_0]
                        mov              qword ptr [rbp + 3960], rax
                                                                                        jmp   n252_assign_var_α
.Lx737_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n250_lit_string_α:
                        mov              qword ptr [rbp + 3872], 1
                        mov              rax, qword ptr [rip + .Lx738_0]
                        mov              qword ptr [rbp + 3880], rax
                                                                                        jmp   n253_var_α
.Lx738_0:
                        .quad            .Lx738_0_s
.Lx738_0_s:
                        .string          "P"
#-----------------------------------------------------------------------------------------------------------------------
n251_var_α:
                        mov              rax, qword ptr [rbp + 10512]
                        mov              qword ptr [rbp + 4464], rax
                        mov              rax, qword ptr [rbp + 10520]
                        mov              qword ptr [rbp + 4472], rax
                                                                                        jmp   n254_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n252_assign_var_α:
                        mov              rdi, qword ptr [rbp + 3904]
                        mov              rsi, qword ptr [rbp + 3912]
                        mov              rdx, qword ptr [rbp + 3952]
                        mov              rcx, qword ptr [rbp + 3960]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n250_lit_string_α
                        mov              qword ptr [rbp + 3936], rax
                        mov              qword ptr [rbp + 3944], rdx
                                                                                        jmp   n250_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n253_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 3888], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 3896], rax
                                                                                        jmp   n256_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n254_subscript_α:
                        mov              rdi, qword ptr [rbp + 4448]
                        mov              rsi, qword ptr [rbp + 4456]
                        mov              rdx, qword ptr [rbp + 4464]
                        mov              rcx, qword ptr [rbp + 4472]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n255_unmark_α
                        mov              qword ptr [rbp + 4480], rax
                        mov              qword ptr [rbp + 4488], rdx
                                                                                        jmp   n258_var_α
#-----------------------------------------------------------------------------------------------------------------------
n255_unmark_α:
                        mov              rsp, qword ptr [rbp + 4400]
                                                                                        jmp   n239_to_β
#-----------------------------------------------------------------------------------------------------------------------
n256_call_proc_staged_α:
                        lea              rsi, [rbp + 3872]
                        lea              rdx, [rbp + 3888]
                        call             proc_limage_dcα
                                                                                        jmp   .Lx748_2
.Lx748_2:
                        mov              qword ptr [rbp + 3808], rax
                        mov              qword ptr [rbp + 3816], rdx
                        cmp              eax, 99
                                                                                        je    n257_disjunction_α
                                                                                        jmp   n257_disjunction_α
n256_call_proc_staged_β:
                                                                                        jmp   n257_disjunction_α
.Lx748_0:
                        .quad            .Lx748_0_s
.Lx748_0_s:
                        .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n257_disjunction_α:
                        mov              qword ptr [rbp + 3696], 0
                        mov              qword ptr [rbp + 3704], 0
                        mov              dword ptr [rbp + 3712], 0
                                                                                        jmp   n260_var_ref_α
n257_disjunction_as:
                        mov              eax, dword ptr [rbp + 3712]
                        cmp              eax, 0
                                                                                        jne   .Lx750_0
                        mov              rax, qword ptr [rbp + 3776]
                        mov              qword ptr [rbp + 3696], rax
                        mov              rax, qword ptr [rbp + 3784]
                        mov              qword ptr [rbp + 3704], rax
                                                                                        jmp   n259_call_builtin_icon_α
.Lx750_0:
                        cmp              eax, 1
                                                                                        jne   .Lx750_1
                        mov              rax, qword ptr [rbp + 3792]
                        mov              qword ptr [rbp + 3696], rax
                        mov              rax, qword ptr [rbp + 3800]
                        mov              qword ptr [rbp + 3704], rax
                                                                                        jmp   n259_call_builtin_icon_α
.Lx750_1:
                                                                                        jmp   n259_call_builtin_icon_α
n257_disjunction_β:
                        mov              eax, dword ptr [rbp + 3712]
                        cmp              eax, 0
                                                                                        je    n257_disjunction_af
                                                                                        jmp   n257_disjunction_af
n257_disjunction_af:
                        add              dword ptr [rbp + 3712], 1
                        mov              eax, dword ptr [rbp + 3712]
                        cmp              eax, 1
                                                                                        je    n261_lit_string_α
                                                                                        jmp   n264_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n258_var_α:
                        mov              rax, qword ptr [rbp + 10512]
                        mov              qword ptr [rbp + 4512], rax
                        mov              rax, qword ptr [rbp + 10520]
                        mov              qword ptr [rbp + 4520], rax
                                                                                        jmp   n263_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n259_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3696]
                        mov              qword ptr [rbp + 3664], rax
                        mov              rax, qword ptr [rbp + 3704]
                        mov              qword ptr [rbp + 3672], rax
                        .section         .rodata
.Lrkfn754:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn754]
                        lea              rsi, [rbp + 3664]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3648], rax
                        mov              qword ptr [rbp + 3656], rdx
                        cmp              eax, 99
                                                                                        je    n257_disjunction_β
                                                                                        jmp   n264_disjunction_α
n259_call_builtin_icon_β:
                                                                                        jmp   n257_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n260_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 10496]
                        mov              qword ptr [rbp + 3728], rax
                        mov              qword ptr [rbp + 3736], rdx
                                                                                        jmp   n265_lit_integer_α
n260_var_ref_β:
                                                                                        jmp   n257_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n261_lit_string_α:
                        mov              qword ptr [rbp + 3792], 1
                        mov              rax, qword ptr [rip + .Lx757_0]
                        mov              qword ptr [rbp + 3800], rax
                                                                                        jmp   n257_disjunction_as
n261_lit_string_β:
                                                                                        jmp   n257_disjunction_af
.Lx757_0:
                        .quad            .Lx757_0_s
.Lx757_0_s:
                        .string          "ok failure 0"
#-----------------------------------------------------------------------------------------------------------------------
n262_deref_α:
                        mov              rdi, qword ptr [rbp + 3760]
                        mov              rsi, qword ptr [rbp + 3768]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n257_disjunction_af
                        mov              qword ptr [rbp + 3776], rax
                        mov              qword ptr [rbp + 3784], rdx
                                                                                        jmp   n257_disjunction_as
n262_deref_β:
                                                                                        jmp   n257_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n263_assign_var_α:
                        mov              rdi, qword ptr [rbp + 4480]
                        mov              rsi, qword ptr [rbp + 4488]
                        mov              rdx, qword ptr [rbp + 4512]
                        mov              rcx, qword ptr [rbp + 4520]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n255_unmark_α
                        mov              qword ptr [rbp + 4496], rax
                        mov              qword ptr [rbp + 4504], rdx
                                                                                        jmp   n255_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n264_disjunction_α:
                        mov              qword ptr [rbp + 3536], 0
                        mov              qword ptr [rbp + 3544], 0
                        mov              dword ptr [rbp + 3552], 0
                                                                                        jmp   n267_var_ref_α
n264_disjunction_as:
                        mov              eax, dword ptr [rbp + 3552]
                        cmp              eax, 0
                                                                                        jne   .Lx761_0
                        mov              rax, qword ptr [rbp + 3616]
                        mov              qword ptr [rbp + 3536], rax
                        mov              rax, qword ptr [rbp + 3624]
                        mov              qword ptr [rbp + 3544], rax
                                                                                        jmp   n266_call_builtin_icon_α
.Lx761_0:
                        cmp              eax, 1
                                                                                        jne   .Lx761_1
                        mov              rax, qword ptr [rbp + 3632]
                        mov              qword ptr [rbp + 3536], rax
                        mov              rax, qword ptr [rbp + 3640]
                        mov              qword ptr [rbp + 3544], rax
                                                                                        jmp   n266_call_builtin_icon_α
.Lx761_1:
                                                                                        jmp   n266_call_builtin_icon_α
n264_disjunction_β:
                        mov              eax, dword ptr [rbp + 3552]
                        cmp              eax, 0
                                                                                        je    n264_disjunction_af
                                                                                        jmp   n264_disjunction_af
n264_disjunction_af:
                        add              dword ptr [rbp + 3552], 1
                        mov              eax, dword ptr [rbp + 3552]
                        cmp              eax, 1
                                                                                        je    n268_lit_string_α
                                                                                        jmp   n271_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n265_lit_integer_α:
                        mov              qword ptr [rbp + 3744], 6
                        mov              rax, qword ptr [rip + .Lx762_0]
                        mov              qword ptr [rbp + 3752], rax
                                                                                        jmp   n270_subscript_α
.Lx762_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n266_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3536]
                        mov              qword ptr [rbp + 3504], rax
                        mov              rax, qword ptr [rbp + 3544]
                        mov              qword ptr [rbp + 3512], rax
                        .section         .rodata
.Lrkfn764:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn764]
                        lea              rsi, [rbp + 3504]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3488], rax
                        mov              qword ptr [rbp + 3496], rdx
                        cmp              eax, 99
                                                                                        je    n264_disjunction_β
                                                                                        jmp   n271_disjunction_α
n266_call_builtin_icon_β:
                                                                                        jmp   n264_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n267_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 10496]
                        mov              qword ptr [rbp + 3568], rax
                        mov              qword ptr [rbp + 3576], rdx
                                                                                        jmp   n272_lit_integer_α
n267_var_ref_β:
                                                                                        jmp   n264_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n268_lit_string_α:
                        mov              qword ptr [rbp + 3632], 1
                        mov              rax, qword ptr [rip + .Lx767_0]
                        mov              qword ptr [rbp + 3640], rax
                                                                                        jmp   n264_disjunction_as
n268_lit_string_β:
                                                                                        jmp   n264_disjunction_af
.Lx767_0:
                        .quad            .Lx767_0_s
.Lx767_0_s:
                        .string          "ok failure 2"
#-----------------------------------------------------------------------------------------------------------------------
n269_deref_α:
                        mov              rdi, qword ptr [rbp + 3600]
                        mov              rsi, qword ptr [rbp + 3608]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n264_disjunction_af
                        mov              qword ptr [rbp + 3616], rax
                        mov              qword ptr [rbp + 3624], rdx
                                                                                        jmp   n264_disjunction_as
n269_deref_β:
                                                                                        jmp   n264_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n270_subscript_α:
                        mov              rdi, qword ptr [rbp + 3728]
                        mov              rsi, qword ptr [rbp + 3736]
                        mov              rdx, qword ptr [rbp + 3744]
                        mov              rcx, qword ptr [rbp + 3752]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n257_disjunction_af
                        mov              qword ptr [rbp + 3760], rax
                        mov              qword ptr [rbp + 3768], rdx
                                                                                        jmp   n262_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n271_disjunction_α:
                        mov              qword ptr [rbp + 3376], 0
                        mov              qword ptr [rbp + 3384], 0
                        mov              dword ptr [rbp + 3392], 0
                                                                                        jmp   n274_var_ref_α
n271_disjunction_as:
                        mov              eax, dword ptr [rbp + 3392]
                        cmp              eax, 0
                                                                                        jne   .Lx771_0
                        mov              rax, qword ptr [rbp + 3456]
                        mov              qword ptr [rbp + 3376], rax
                        mov              rax, qword ptr [rbp + 3464]
                        mov              qword ptr [rbp + 3384], rax
                                                                                        jmp   n273_call_builtin_icon_α
.Lx771_0:
                        cmp              eax, 1
                                                                                        jne   .Lx771_1
                        mov              rax, qword ptr [rbp + 3472]
                        mov              qword ptr [rbp + 3376], rax
                        mov              rax, qword ptr [rbp + 3480]
                        mov              qword ptr [rbp + 3384], rax
                                                                                        jmp   n273_call_builtin_icon_α
.Lx771_1:
                                                                                        jmp   n273_call_builtin_icon_α
n271_disjunction_β:
                        mov              eax, dword ptr [rbp + 3392]
                        cmp              eax, 0
                                                                                        je    n271_disjunction_af
                                                                                        jmp   n271_disjunction_af
n271_disjunction_af:
                        add              dword ptr [rbp + 3392], 1
                        mov              eax, dword ptr [rbp + 3392]
                        cmp              eax, 1
                                                                                        je    n275_lit_string_α
                                                                                        jmp   n278_var_α
#-----------------------------------------------------------------------------------------------------------------------
n272_lit_integer_α:
                        mov              qword ptr [rbp + 3584], 6
                        mov              rax, qword ptr [rip + .Lx772_0]
                        mov              qword ptr [rbp + 3592], rax
                                                                                        jmp   n277_subscript_α
.Lx772_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n273_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3376]
                        mov              qword ptr [rbp + 3344], rax
                        mov              rax, qword ptr [rbp + 3384]
                        mov              qword ptr [rbp + 3352], rax
                        .section         .rodata
.Lrkfn774:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn774]
                        lea              rsi, [rbp + 3344]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3328], rax
                        mov              qword ptr [rbp + 3336], rdx
                        cmp              eax, 99
                                                                                        je    n271_disjunction_β
                                                                                        jmp   n278_var_α
n273_call_builtin_icon_β:
                                                                                        jmp   n271_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n274_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 10496]
                        mov              qword ptr [rbp + 3408], rax
                        mov              qword ptr [rbp + 3416], rdx
                                                                                        jmp   n279_lit_integer_α
n274_var_ref_β:
                                                                                        jmp   n271_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n275_lit_string_α:
                        mov              qword ptr [rbp + 3472], 1
                        mov              rax, qword ptr [rip + .Lx777_0]
                        mov              qword ptr [rbp + 3480], rax
                                                                                        jmp   n271_disjunction_as
n275_lit_string_β:
                                                                                        jmp   n271_disjunction_af
.Lx777_0:
                        .quad            .Lx777_0_s
.Lx777_0_s:
                        .string          "ok failure -2"
#-----------------------------------------------------------------------------------------------------------------------
n276_deref_α:
                        mov              rdi, qword ptr [rbp + 3440]
                        mov              rsi, qword ptr [rbp + 3448]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n271_disjunction_af
                        mov              qword ptr [rbp + 3456], rax
                        mov              qword ptr [rbp + 3464], rdx
                                                                                        jmp   n271_disjunction_as
n276_deref_β:
                                                                                        jmp   n271_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n277_subscript_α:
                        mov              rdi, qword ptr [rbp + 3568]
                        mov              rsi, qword ptr [rbp + 3576]
                        mov              rdx, qword ptr [rbp + 3584]
                        mov              rcx, qword ptr [rbp + 3592]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n264_disjunction_af
                        mov              qword ptr [rbp + 3600], rax
                        mov              qword ptr [rbp + 3608], rdx
                                                                                        jmp   n269_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n278_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 3312], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 3320], rax
                                                                                        jmp   n280_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n279_lit_integer_α:
                        mov              qword ptr [rbp + 3424], 6
                        mov              rax, qword ptr [rip + .Lx782_0]
                        mov              qword ptr [rbp + 3432], rax
                                                                                        jmp   n282_subscript_α
.Lx782_0:
                        .quad            18446744073709551614
#-----------------------------------------------------------------------------------------------------------------------
n280_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3312]
                        mov              qword ptr [rbp + 3280], rax
                        mov              rax, qword ptr [rbp + 3320]
                        mov              qword ptr [rbp + 3288], rax
                        .section         .rodata
.Lrkfn784:              .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn784]
                        lea              rsi, [rbp + 3280]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3264], rax
                        mov              qword ptr [rbp + 3272], rdx
                        cmp              eax, 99
                                                                                        je    n281_disjunction_α
                                                                                        jmp   n281_disjunction_α
n280_call_builtin_icon_β:
                                                                                        jmp   n281_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n281_disjunction_α:
                        mov              qword ptr [rbp + 3152], 0
                        mov              qword ptr [rbp + 3160], 0
                        mov              dword ptr [rbp + 3168], 0
                                                                                        jmp   n284_var_α
n281_disjunction_as:
                        mov              eax, dword ptr [rbp + 3168]
                        cmp              eax, 0
                                                                                        jne   .Lx786_0
                        mov              rax, qword ptr [rbp + 3184]
                        mov              qword ptr [rbp + 3152], rax
                        mov              rax, qword ptr [rbp + 3192]
                        mov              qword ptr [rbp + 3160], rax
                                                                                        jmp   n283_call_builtin_icon_α
.Lx786_0:
                        cmp              eax, 1
                                                                                        jne   .Lx786_1
                        mov              rax, qword ptr [rbp + 3248]
                        mov              qword ptr [rbp + 3152], rax
                        mov              rax, qword ptr [rbp + 3256]
                        mov              qword ptr [rbp + 3160], rax
                                                                                        jmp   n283_call_builtin_icon_α
.Lx786_1:
                                                                                        jmp   n283_call_builtin_icon_α
n281_disjunction_β:
                        mov              eax, dword ptr [rbp + 3168]
                        cmp              eax, 0
                                                                                        je    n281_disjunction_af
                                                                                        jmp   n281_disjunction_af
n281_disjunction_af:
                        add              dword ptr [rbp + 3168], 1
                        mov              eax, dword ptr [rbp + 3168]
                        cmp              eax, 1
                                                                                        je    n285_lit_string_α
                                                                                        jmp   n287_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n282_subscript_α:
                        mov              rdi, qword ptr [rbp + 3408]
                        mov              rsi, qword ptr [rbp + 3416]
                        mov              rdx, qword ptr [rbp + 3424]
                        mov              rcx, qword ptr [rbp + 3432]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n271_disjunction_af
                        mov              qword ptr [rbp + 3440], rax
                        mov              qword ptr [rbp + 3448], rdx
                                                                                        jmp   n276_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n283_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3152]
                        mov              qword ptr [rbp + 3120], rax
                        mov              rax, qword ptr [rbp + 3160]
                        mov              qword ptr [rbp + 3128], rax
                        .section         .rodata
.Lrkfn789:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn789]
                        lea              rsi, [rbp + 3120]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3104], rax
                        mov              qword ptr [rbp + 3112], rdx
                        cmp              eax, 99
                                                                                        je    n281_disjunction_β
                                                                                        jmp   n287_disjunction_α
n283_call_builtin_icon_β:
                                                                                        jmp   n281_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n284_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 3232], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 3240], rax
                                                                                        jmp   n286_call_builtin_icon_α
n284_var_β:
                                                                                        jmp   n281_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n285_lit_string_α:
                        mov              qword ptr [rbp + 3248], 1
                        mov              rax, qword ptr [rip + .Lx792_0]
                        mov              qword ptr [rbp + 3256], rax
                                                                                        jmp   n281_disjunction_as
n285_lit_string_β:
                                                                                        jmp   n281_disjunction_af
.Lx792_0:
                        .quad            .Lx792_0_s
.Lx792_0_s:
                        .string          "ok failure on get"
#-----------------------------------------------------------------------------------------------------------------------
n286_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3232]
                        mov              qword ptr [rbp + 3200], rax
                        mov              rax, qword ptr [rbp + 3240]
                        mov              qword ptr [rbp + 3208], rax
                        .section         .rodata
.Lrkfn794:              .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn794]
                        lea              rsi, [rbp + 3200]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3184], rax
                        mov              qword ptr [rbp + 3192], rdx
                        cmp              eax, 99
                                                                                        je    n281_disjunction_af
                                                                                        jmp   n281_disjunction_as
n286_call_builtin_icon_β:
                                                                                        jmp   n281_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n287_disjunction_α:
                        mov              qword ptr [rbp + 2992], 0
                        mov              qword ptr [rbp + 3000], 0
                        mov              dword ptr [rbp + 3008], 0
                                                                                        jmp   n289_var_α
n287_disjunction_as:
                        mov              eax, dword ptr [rbp + 3008]
                        cmp              eax, 0
                                                                                        jne   .Lx796_0
                        mov              rax, qword ptr [rbp + 3024]
                        mov              qword ptr [rbp + 2992], rax
                        mov              rax, qword ptr [rbp + 3032]
                        mov              qword ptr [rbp + 3000], rax
                                                                                        jmp   n288_call_builtin_icon_α
.Lx796_0:
                        cmp              eax, 1
                                                                                        jne   .Lx796_1
                        mov              rax, qword ptr [rbp + 3088]
                        mov              qword ptr [rbp + 2992], rax
                        mov              rax, qword ptr [rbp + 3096]
                        mov              qword ptr [rbp + 3000], rax
                                                                                        jmp   n288_call_builtin_icon_α
.Lx796_1:
                                                                                        jmp   n288_call_builtin_icon_α
n287_disjunction_β:
                        mov              eax, dword ptr [rbp + 3008]
                        cmp              eax, 0
                                                                                        je    n287_disjunction_af
                                                                                        jmp   n287_disjunction_af
n287_disjunction_af:
                        add              dword ptr [rbp + 3008], 1
                        mov              eax, dword ptr [rbp + 3008]
                        cmp              eax, 1
                                                                                        je    n290_lit_string_α
                                                                                        jmp   n292_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n288_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2992]
                        mov              qword ptr [rbp + 2960], rax
                        mov              rax, qword ptr [rbp + 3000]
                        mov              qword ptr [rbp + 2968], rax
                        .section         .rodata
.Lrkfn798:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn798]
                        lea              rsi, [rbp + 2960]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2944], rax
                        mov              qword ptr [rbp + 2952], rdx
                        cmp              eax, 99
                                                                                        je    n287_disjunction_β
                                                                                        jmp   n292_disjunction_α
n288_call_builtin_icon_β:
                                                                                        jmp   n287_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n289_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 3072], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 3080], rax
                                                                                        jmp   n291_call_builtin_icon_α
n289_var_β:
                                                                                        jmp   n287_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n290_lit_string_α:
                        mov              qword ptr [rbp + 3088], 1
                        mov              rax, qword ptr [rip + .Lx801_0]
                        mov              qword ptr [rbp + 3096], rax
                                                                                        jmp   n287_disjunction_as
n290_lit_string_β:
                                                                                        jmp   n287_disjunction_af
.Lx801_0:
                        .quad            .Lx801_0_s
.Lx801_0_s:
                        .string          "ok failure on pop"
#-----------------------------------------------------------------------------------------------------------------------
n291_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3072]
                        mov              qword ptr [rbp + 3040], rax
                        mov              rax, qword ptr [rbp + 3080]
                        mov              qword ptr [rbp + 3048], rax
                        .section         .rodata
.Lrkfn803:              .string          "pop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn803]
                        lea              rsi, [rbp + 3040]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3024], rax
                        mov              qword ptr [rbp + 3032], rdx
                        cmp              eax, 99
                                                                                        je    n287_disjunction_af
                                                                                        jmp   n287_disjunction_as
n291_call_builtin_icon_β:
                                                                                        jmp   n287_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n292_disjunction_α:
                        mov              qword ptr [rbp + 2832], 0
                        mov              qword ptr [rbp + 2840], 0
                        mov              dword ptr [rbp + 2848], 0
                                                                                        jmp   n294_var_α
n292_disjunction_as:
                        mov              eax, dword ptr [rbp + 2848]
                        cmp              eax, 0
                                                                                        jne   .Lx805_0
                        mov              rax, qword ptr [rbp + 2864]
                        mov              qword ptr [rbp + 2832], rax
                        mov              rax, qword ptr [rbp + 2872]
                        mov              qword ptr [rbp + 2840], rax
                                                                                        jmp   n293_call_builtin_icon_α
.Lx805_0:
                        cmp              eax, 1
                                                                                        jne   .Lx805_1
                        mov              rax, qword ptr [rbp + 2928]
                        mov              qword ptr [rbp + 2832], rax
                        mov              rax, qword ptr [rbp + 2936]
                        mov              qword ptr [rbp + 2840], rax
                                                                                        jmp   n293_call_builtin_icon_α
.Lx805_1:
                                                                                        jmp   n293_call_builtin_icon_α
n292_disjunction_β:
                        mov              eax, dword ptr [rbp + 2848]
                        cmp              eax, 0
                                                                                        je    n292_disjunction_af
                                                                                        jmp   n292_disjunction_af
n292_disjunction_af:
                        add              dword ptr [rbp + 2848], 1
                        mov              eax, dword ptr [rbp + 2848]
                        cmp              eax, 1
                                                                                        je    n295_lit_string_α
                                                                                        jmp   n297_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n293_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2832]
                        mov              qword ptr [rbp + 2800], rax
                        mov              rax, qword ptr [rbp + 2840]
                        mov              qword ptr [rbp + 2808], rax
                        .section         .rodata
.Lrkfn807:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn807]
                        lea              rsi, [rbp + 2800]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2784], rax
                        mov              qword ptr [rbp + 2792], rdx
                        cmp              eax, 99
                                                                                        je    n292_disjunction_β
                                                                                        jmp   n297_lit_integer_α
n293_call_builtin_icon_β:
                                                                                        jmp   n292_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n294_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 2912], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 2920], rax
                                                                                        jmp   n296_call_builtin_icon_α
n294_var_β:
                                                                                        jmp   n292_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n295_lit_string_α:
                        mov              qword ptr [rbp + 2928], 1
                        mov              rax, qword ptr [rip + .Lx810_0]
                        mov              qword ptr [rbp + 2936], rax
                                                                                        jmp   n292_disjunction_as
n295_lit_string_β:
                                                                                        jmp   n292_disjunction_af
.Lx810_0:
                        .quad            .Lx810_0_s
.Lx810_0_s:
                        .string          "ok failure on pull"
#-----------------------------------------------------------------------------------------------------------------------
n296_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2912]
                        mov              qword ptr [rbp + 2880], rax
                        mov              rax, qword ptr [rbp + 2920]
                        mov              qword ptr [rbp + 2888], rax
                        .section         .rodata
.Lrkfn812:              .string          "pull"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn812]
                        lea              rsi, [rbp + 2880]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2864], rax
                        mov              qword ptr [rbp + 2872], rdx
                        cmp              eax, 99
                                                                                        je    n292_disjunction_af
                                                                                        jmp   n292_disjunction_as
n296_call_builtin_icon_β:
                                                                                        jmp   n292_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n297_lit_integer_α:
                        mov              qword ptr [rbp + 2640], 6
                        mov              rax, qword ptr [rip + .Lx813_0]
                        mov              qword ptr [rbp + 2648], rax
                                                                                        jmp   n298_lit_integer_α
.Lx813_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n298_lit_integer_α:
                        mov              qword ptr [rbp + 2656], 6
                        mov              rax, qword ptr [rip + .Lx814_0]
                        mov              qword ptr [rbp + 2664], rax
                                                                                        jmp   n299_lit_integer_α
.Lx814_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n299_lit_integer_α:
                        mov              qword ptr [rbp + 2672], 6
                        mov              rax, qword ptr [rip + .Lx815_0]
                        mov              qword ptr [rbp + 2680], rax
                                                                                        jmp   n300_lit_integer_α
.Lx815_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n300_lit_integer_α:
                        mov              qword ptr [rbp + 2688], 6
                        mov              rax, qword ptr [rip + .Lx816_0]
                        mov              qword ptr [rbp + 2696], rax
                                                                                        jmp   n301_lit_integer_α
.Lx816_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n301_lit_integer_α:
                        mov              qword ptr [rbp + 2704], 6
                        mov              rax, qword ptr [rip + .Lx817_0]
                        mov              qword ptr [rbp + 2712], rax
                                                                                        jmp   n302_lit_integer_α
.Lx817_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n302_lit_integer_α:
                        mov              qword ptr [rbp + 2720], 6
                        mov              rax, qword ptr [rip + .Lx818_0]
                        mov              qword ptr [rbp + 2728], rax
                                                                                        jmp   n303_lit_integer_α
.Lx818_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n303_lit_integer_α:
                        mov              qword ptr [rbp + 2736], 6
                        mov              rax, qword ptr [rip + .Lx819_0]
                        mov              qword ptr [rbp + 2744], rax
                                                                                        jmp   n304_lit_integer_α
.Lx819_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n304_lit_integer_α:
                        mov              qword ptr [rbp + 2752], 6
                        mov              rax, qword ptr [rip + .Lx820_0]
                        mov              qword ptr [rbp + 2760], rax
                                                                                        jmp   n305_lit_integer_α
.Lx820_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n305_lit_integer_α:
                        mov              qword ptr [rbp + 2768], 6
                        mov              rax, qword ptr [rip + .Lx821_0]
                        mov              qword ptr [rbp + 2776], rax
                                                                                        jmp   n306_make_list_α
.Lx821_0:
                        .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n306_make_list_α:
                        mov              rax, qword ptr [rbp + 2640]
                        mov              qword ptr [rbp + 2496], rax
                        mov              rax, qword ptr [rbp + 2648]
                        mov              qword ptr [rbp + 2504], rax
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 2512], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 2520], rax
                        mov              rax, qword ptr [rbp + 2672]
                        mov              qword ptr [rbp + 2528], rax
                        mov              rax, qword ptr [rbp + 2680]
                        mov              qword ptr [rbp + 2536], rax
                        mov              rax, qword ptr [rbp + 2688]
                        mov              qword ptr [rbp + 2544], rax
                        mov              rax, qword ptr [rbp + 2696]
                        mov              qword ptr [rbp + 2552], rax
                        mov              rax, qword ptr [rbp + 2704]
                        mov              qword ptr [rbp + 2560], rax
                        mov              rax, qword ptr [rbp + 2712]
                        mov              qword ptr [rbp + 2568], rax
                        mov              rax, qword ptr [rbp + 2720]
                        mov              qword ptr [rbp + 2576], rax
                        mov              rax, qword ptr [rbp + 2728]
                        mov              qword ptr [rbp + 2584], rax
                        mov              rax, qword ptr [rbp + 2736]
                        mov              qword ptr [rbp + 2592], rax
                        mov              rax, qword ptr [rbp + 2744]
                        mov              qword ptr [rbp + 2600], rax
                        mov              rax, qword ptr [rbp + 2752]
                        mov              qword ptr [rbp + 2608], rax
                        mov              rax, qword ptr [rbp + 2760]
                        mov              qword ptr [rbp + 2616], rax
                        mov              rax, qword ptr [rbp + 2768]
                        mov              qword ptr [rbp + 2624], rax
                        mov              rax, qword ptr [rbp + 2776]
                        mov              qword ptr [rbp + 2632], rax
                        lea              rdi, [rbp + 2496]
                        mov              esi, 9
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 2480], rax
                        mov              qword ptr [rbp + 2488], rdx
                                                                                        jmp   n307_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n307_assign_α:
                        mov              rax, qword ptr [rbp + 2480]
                        mov              rdx, qword ptr [rbp + 2488]
                        mov              qword ptr [rbp + 10496], rax
                        mov              qword ptr [rbp + 10504], rdx
                                                                                        jmp   n308_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n308_lit_string_α:
                        mov              qword ptr [rbp + 2448], 1
                        mov              rax, qword ptr [rip + .Lx825_0]
                        mov              qword ptr [rbp + 2456], rax
                                                                                        jmp   n309_var_α
.Lx825_0:
                        .quad            .Lx825_0_s
.Lx825_0_s:
                        .string          "p"
#-----------------------------------------------------------------------------------------------------------------------
n309_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 2472], rax
                                                                                        jmp   n310_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n310_call_proc_staged_α:
                        lea              rsi, [rbp + 2448]
                        lea              rdx, [rbp + 2464]
                        call             proc_limage_dcα
                                                                                        jmp   .Lx829_2
.Lx829_2:
                        mov              qword ptr [rbp + 2384], rax
                        mov              qword ptr [rbp + 2392], rdx
                        cmp              eax, 99
                                                                                        je    n311_lit_string_α
                                                                                        jmp   n311_lit_string_α
n310_call_proc_staged_β:
                                                                                        jmp   n311_lit_string_α
.Lx829_0:
                        .quad            .Lx829_0_s
.Lx829_0_s:
                        .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n311_lit_string_α:
                        mov              qword ptr [rbp + 2304], 1
                        mov              rax, qword ptr [rip + .Lx830_0]
                        mov              qword ptr [rbp + 2312], rax
                                                                                        jmp   n312_var_α
.Lx830_0:
                        .quad            .Lx830_0_s
.Lx830_0_s:
                        .string          "q"
#-----------------------------------------------------------------------------------------------------------------------
n312_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 2336], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 2344], rax
                                                                                        jmp   n313_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n313_lit_integer_α:
                        mov              qword ptr [rbp + 2352], 6
                        mov              rax, qword ptr [rip + .Lx833_0]
                        mov              qword ptr [rbp + 2360], rax
                                                                                        jmp   n315_lit_integer_α
.Lx833_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n314_lit_string_α:
                        mov              qword ptr [rbp + 2160], 1
                        mov              rax, qword ptr [rip + .Lx834_0]
                        mov              qword ptr [rbp + 2168], rax
                                                                                        jmp   n316_var_α
.Lx834_0:
                        .quad            .Lx834_0_s
.Lx834_0_s:
                        .string          "r"
#-----------------------------------------------------------------------------------------------------------------------
n315_lit_integer_α:
                        mov              qword ptr [rbp + 2368], 6
                        mov              rax, qword ptr [rip + .Lx835_0]
                        mov              qword ptr [rbp + 2376], rax
                                                                                        jmp   n317_subscript_α
.Lx835_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n316_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 2192], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 2200], rax
                                                                                        jmp   n318_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n317_subscript_α:
                        mov              rdi, qword ptr [rbp + 2336]
                        mov              rsi, qword ptr [rbp + 2344]
                        mov              rdx, qword ptr [rbp + 2352]
                        mov              rcx, qword ptr [rbp + 2360]
                        mov              r8, qword ptr [rbp + 2368]
                        mov              r9, qword ptr [rbp + 2376]
                        call             subscript_get2@PLT
                        cmp              eax, 99
                                                                                        je    n314_lit_string_α
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx
                                                                                        jmp   n320_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n318_lit_integer_α:
                        mov              qword ptr [rbp + 2208], 6
                        mov              rax, qword ptr [rip + .Lx839_0]
                        mov              qword ptr [rbp + 2216], rax
                                                                                        jmp   n321_lit_integer_α
.Lx839_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n319_lit_string_α:
                        mov              qword ptr [rbp + 2016], 1
                        mov              rax, qword ptr [rip + .Lx840_0]
                        mov              qword ptr [rbp + 2024], rax
                                                                                        jmp   n322_var_α
.Lx840_0:
                        .quad            .Lx840_0_s
.Lx840_0_s:
                        .string          "s"
#-----------------------------------------------------------------------------------------------------------------------
n320_call_proc_staged_α:
                        lea              rsi, [rbp + 2304]
                        lea              rdx, [rbp + 2320]
                        call             proc_limage_dcα
                                                                                        jmp   .Lx842_2
.Lx842_2:
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                        cmp              eax, 99
                                                                                        je    n314_lit_string_α
                                                                                        jmp   n314_lit_string_α
n320_call_proc_staged_β:
                                                                                        jmp   n314_lit_string_α
.Lx842_0:
                        .quad            .Lx842_0_s
.Lx842_0_s:
                        .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n321_lit_integer_α:
                        mov              qword ptr [rbp + 2224], 6
                        mov              rax, qword ptr [rip + .Lx843_0]
                        mov              qword ptr [rbp + 2232], rax
                                                                                        jmp   n323_subscript_α
.Lx843_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n322_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 2048], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 2056], rax
                                                                                        jmp   n324_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n323_subscript_α:
                        mov              rdi, qword ptr [rbp + 2192]
                        mov              rsi, qword ptr [rbp + 2200]
                        mov              rdx, qword ptr [rbp + 2208]
                        mov              rcx, qword ptr [rbp + 2216]
                        mov              r8, qword ptr [rbp + 2224]
                        mov              r9, qword ptr [rbp + 2232]
                        call             subscript_get2@PLT
                        cmp              eax, 99
                                                                                        je    n319_lit_string_α
                        mov              qword ptr [rbp + 2176], rax
                        mov              qword ptr [rbp + 2184], rdx
                                                                                        jmp   n326_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n324_lit_integer_α:
                        mov              qword ptr [rbp + 2064], 6
                        mov              rax, qword ptr [rip + .Lx847_0]
                        mov              qword ptr [rbp + 2072], rax
                                                                                        jmp   n327_lit_integer_α
.Lx847_0:
                        .quad            18446744073709551613
#-----------------------------------------------------------------------------------------------------------------------
n325_lit_string_α:
                        mov              qword ptr [rbp + 1872], 1
                        mov              rax, qword ptr [rip + .Lx848_0]
                        mov              qword ptr [rbp + 1880], rax
                                                                                        jmp   n328_var_α
.Lx848_0:
                        .quad            .Lx848_0_s
.Lx848_0_s:
                        .string          "t"
#-----------------------------------------------------------------------------------------------------------------------
n326_call_proc_staged_α:
                        lea              rsi, [rbp + 2160]
                        lea              rdx, [rbp + 2176]
                        call             proc_limage_dcα
                                                                                        jmp   .Lx850_2
.Lx850_2:
                        mov              qword ptr [rbp + 2096], rax
                        mov              qword ptr [rbp + 2104], rdx
                        cmp              eax, 99
                                                                                        je    n319_lit_string_α
                                                                                        jmp   n319_lit_string_α
n326_call_proc_staged_β:
                                                                                        jmp   n319_lit_string_α
.Lx850_0:
                        .quad            .Lx850_0_s
.Lx850_0_s:
                        .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n327_lit_integer_α:
                        mov              qword ptr [rbp + 2080], 6
                        mov              rax, qword ptr [rip + .Lx851_0]
                        mov              qword ptr [rbp + 2088], rax
                                                                                        jmp   n329_subscript_α
.Lx851_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n328_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 1912], rax
                                                                                        jmp   n330_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n329_subscript_α:
                        mov              rdi, qword ptr [rbp + 2048]
                        mov              rsi, qword ptr [rbp + 2056]
                        mov              rdx, qword ptr [rbp + 2064]
                        mov              rcx, qword ptr [rbp + 2072]
                        mov              r8, qword ptr [rbp + 2080]
                        mov              r9, qword ptr [rbp + 2088]
                        call             subscript_get2@PLT
                        cmp              eax, 99
                                                                                        je    n325_lit_string_α
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx
                                                                                        jmp   n332_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n330_lit_integer_α:
                        mov              qword ptr [rbp + 1920], 6
                        mov              rax, qword ptr [rip + .Lx855_0]
                        mov              qword ptr [rbp + 1928], rax
                                                                                        jmp   n333_lit_integer_α
.Lx855_0:
                        .quad            18446744073709551611
#-----------------------------------------------------------------------------------------------------------------------
n331_disjunction_α:
                        mov              qword ptr [rbp + 1552], 0
                        mov              qword ptr [rbp + 1560], 0
                        mov              dword ptr [rbp + 1568], 0
                                                                                        jmp   n335_lit_string_α
n331_disjunction_as:
                        mov              eax, dword ptr [rbp + 1568]
                        cmp              eax, 0
                                                                                        jne   .Lx857_0
                        mov              rax, qword ptr [rbp + 1584]
                        mov              qword ptr [rbp + 1552], rax
                        mov              rax, qword ptr [rbp + 1592]
                        mov              qword ptr [rbp + 1560], rax
                                                                                        jmp   n334_disjunction_α
.Lx857_0:
                        cmp              eax, 1
                                                                                        jne   .Lx857_1
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 1552], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 1560], rax
                                                                                        jmp   n334_disjunction_α
.Lx857_1:
                                                                                        jmp   n334_disjunction_α
n331_disjunction_β:
                        mov              eax, dword ptr [rbp + 1568]
                        cmp              eax, 0
                                                                                        je    n331_disjunction_af
                                                                                        jmp   n331_disjunction_af
n331_disjunction_af:
                        add              dword ptr [rbp + 1568], 1
                        mov              eax, dword ptr [rbp + 1568]
                        cmp              eax, 1
                                                                                        je    n336_lit_string_α
                                                                                        jmp   n334_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n332_call_proc_staged_α:
                        lea              rsi, [rbp + 2016]
                        lea              rdx, [rbp + 2032]
                        call             proc_limage_dcα
                                                                                        jmp   .Lx859_2
.Lx859_2:
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx
                        cmp              eax, 99
                                                                                        je    n325_lit_string_α
                                                                                        jmp   n325_lit_string_α
n332_call_proc_staged_β:
                                                                                        jmp   n325_lit_string_α
.Lx859_0:
                        .quad            .Lx859_0_s
.Lx859_0_s:
                        .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n333_lit_integer_α:
                        mov              qword ptr [rbp + 1936], 6
                        mov              rax, qword ptr [rip + .Lx860_0]
                        mov              qword ptr [rbp + 1944], rax
                                                                                        jmp   n339_subscript_α
.Lx860_0:
                        .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n334_disjunction_α:
                        mov              qword ptr [rbp + 1296], 0
                        mov              qword ptr [rbp + 1304], 0
                        mov              dword ptr [rbp + 1312], 0
                                                                                        jmp   n341_lit_string_α
n334_disjunction_as:
                        mov              eax, dword ptr [rbp + 1312]
                        cmp              eax, 0
                                                                                        jne   .Lx862_0
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1304], rax
                                                                                        jmp   n340_call_builtin_icon_α
.Lx862_0:
                        cmp              eax, 1
                                                                                        jne   .Lx862_1
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1304], rax
                                                                                        jmp   n340_call_builtin_icon_α
.Lx862_1:
                                                                                        jmp   n340_call_builtin_icon_α
n334_disjunction_β:
                        mov              eax, dword ptr [rbp + 1312]
                        cmp              eax, 0
                                                                                        je    n334_disjunction_af
                                                                                        jmp   n334_disjunction_af
n334_disjunction_af:
                        add              dword ptr [rbp + 1312], 1
                        mov              eax, dword ptr [rbp + 1312]
                        cmp              eax, 1
                                                                                        je    n342_lit_string_α
                                                                                        jmp   n340_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n335_lit_string_α:
                        mov              qword ptr [rbp + 1648], 1
                        mov              rax, qword ptr [rip + .Lx863_0]
                        mov              qword ptr [rbp + 1656], rax
                                                                                        jmp   n345_var_α
n335_lit_string_β:
                                                                                        jmp   n331_disjunction_af
.Lx863_0:
                        .quad            .Lx863_0_s
.Lx863_0_s:
                        .string          "u"
#-----------------------------------------------------------------------------------------------------------------------
n336_lit_string_α:
                        mov              qword ptr [rbp + 1792], 1
                        mov              rax, qword ptr [rip + .Lx864_0]
                        mov              qword ptr [rbp + 1800], rax
                                                                                        jmp   n338_call_builtin_icon_α
n336_lit_string_β:
                                                                                        jmp   n331_disjunction_af
.Lx864_0:
                        .quad            .Lx864_0_s
.Lx864_0_s:
                        .string          "u. wraparound failed"
#-----------------------------------------------------------------------------------------------------------------------
n337_call_proc_staged_α:
                        lea              rsi, [rbp + 1648]
                        lea              rdx, [rbp + 1664]
                        call             proc_limage_dcα
                                                                                        jmp   .Lx866_2
.Lx866_2:
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                        cmp              eax, 99
                                                                                        je    n331_disjunction_af
                                                                                        jmp   n331_disjunction_as
n337_call_proc_staged_β:
                                                                                        jmp   n331_disjunction_af
.Lx866_0:
                        .quad            .Lx866_0_s
.Lx866_0_s:
                        .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n338_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1792]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 1768], rax
                        .section         .rodata
.Lrkfn868:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn868]
                        lea              rsi, [rbp + 1760]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                        cmp              eax, 99
                                                                                        je    n331_disjunction_af
                                                                                        jmp   n331_disjunction_as
n338_call_builtin_icon_β:
                                                                                        jmp   n331_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n339_subscript_α:
                        mov              rdi, qword ptr [rbp + 1904]
                        mov              rsi, qword ptr [rbp + 1912]
                        mov              rdx, qword ptr [rbp + 1920]
                        mov              rcx, qword ptr [rbp + 1928]
                        mov              r8, qword ptr [rbp + 1936]
                        mov              r9, qword ptr [rbp + 1944]
                        call             subscript_get2@PLT
                        cmp              eax, 99
                                                                                        je    n331_disjunction_α
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx
                                                                                        jmp   n346_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n340_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn871:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn871]
                        lea              rsi, [rbp + 1280]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                        cmp              eax, 99
                                                                                        je    n347_var_α
                                                                                        jmp   n347_var_α
n340_call_builtin_icon_β:
                                                                                        jmp   n347_var_α
#-----------------------------------------------------------------------------------------------------------------------
n341_lit_string_α:
                        mov              qword ptr [rbp + 1392], 1
                        mov              rax, qword ptr [rip + .Lx872_0]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n348_var_α
n341_lit_string_β:
                                                                                        jmp   n334_disjunction_af
.Lx872_0:
                        .quad            .Lx872_0_s
.Lx872_0_s:
                        .string          "v"
#-----------------------------------------------------------------------------------------------------------------------
n342_lit_string_α:
                        mov              qword ptr [rbp + 1536], 1
                        mov              rax, qword ptr [rip + .Lx873_0]
                        mov              qword ptr [rbp + 1544], rax
                                                                                        jmp   n344_call_builtin_icon_α
n342_lit_string_β:
                                                                                        jmp   n334_disjunction_af
.Lx873_0:
                        .quad            .Lx873_0_s
.Lx873_0_s:
                        .string          "v. wraparound failed"
#-----------------------------------------------------------------------------------------------------------------------
n343_call_proc_staged_α:
                        lea              rsi, [rbp + 1392]
                        lea              rdx, [rbp + 1408]
                        call             proc_limage_dcα
                                                                                        jmp   .Lx875_2
.Lx875_2:
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                        cmp              eax, 99
                                                                                        je    n334_disjunction_af
                                                                                        jmp   n334_disjunction_as
n343_call_proc_staged_β:
                                                                                        jmp   n334_disjunction_af
.Lx875_0:
                        .quad            .Lx875_0_s
.Lx875_0_s:
                        .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n344_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 1512], rax
                        .section         .rodata
.Lrkfn877:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn877]
                        lea              rsi, [rbp + 1504]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                        cmp              eax, 99
                                                                                        je    n334_disjunction_af
                                                                                        jmp   n334_disjunction_as
n344_call_builtin_icon_β:
                                                                                        jmp   n334_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n345_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 1688], rax
                                                                                        jmp   n349_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n346_call_proc_staged_α:
                        lea              rsi, [rbp + 1872]
                        lea              rdx, [rbp + 1888]
                        call             proc_limage_dcα
                                                                                        jmp   .Lx881_2
.Lx881_2:
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                        cmp              eax, 99
                                                                                        je    n331_disjunction_α
                                                                                        jmp   n331_disjunction_α
n346_call_proc_staged_β:
                                                                                        jmp   n331_disjunction_α
.Lx881_0:
                        .quad            .Lx881_0_s
.Lx881_0_s:
                        .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n347_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n350_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n348_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 1432], rax
                                                                                        jmp   n352_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n349_lit_integer_α:
                        mov              qword ptr [rbp + 1696], 6
                        mov              rax, qword ptr [rip + .Lx886_0]
                        mov              qword ptr [rbp + 1704], rax
                                                                                        jmp   n353_lit_integer_α
.Lx886_0:
                        .quad            18446744073709551613
#-----------------------------------------------------------------------------------------------------------------------
n350_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1224], rax
                        .section         .rodata
.Lrkfn888:              .string          "copy"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn888]
                        lea              rsi, [rbp + 1216]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                        cmp              eax, 99
                                                                                        je    n351_var_ref_α
                                                                                        jmp   n354_assign_α
n350_call_builtin_icon_β:
                                                                                        jmp   n351_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n351_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 10496]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   n355_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n352_lit_integer_α:
                        mov              qword ptr [rbp + 1440], 6
                        mov              rax, qword ptr [rip + .Lx891_0]
                        mov              qword ptr [rbp + 1448], rax
                                                                                        jmp   n356_lit_integer_α
.Lx891_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n353_lit_integer_α:
                        mov              qword ptr [rbp + 1712], 6
                        mov              rax, qword ptr [rip + .Lx892_0]
                        mov              qword ptr [rbp + 1720], rax
                                                                                        jmp   n357_binop_α
.Lx892_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n354_assign_α:
                        mov              rax, qword ptr [rbp + 1200]
                        mov              rdx, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 10480], rax
                        mov              qword ptr [rbp + 10488], rdx
                                                                                        jmp   n351_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n355_iterate_α:
                        mov              qword ptr [rbp + 1104], 0
.Lx895_0:
                        mov              rdi, qword ptr [rbp + 1120]
                        mov              rsi, qword ptr [rbp + 1128]
                        mov              rdx, qword ptr [rbp + 1104]
                        call             rt_list_bang_var_at@PLT
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                        cmp              rax, 99
                                                                                        je    n362_var_ref_α
                                                                                        jmp   n358_deref_α
n355_iterate_β:
                        inc              qword ptr [rbp + 1104]
                                                                                        jmp   .Lx895_0
#-----------------------------------------------------------------------------------------------------------------------
n356_lit_integer_α:
                        mov              qword ptr [rbp + 1456], 6
                        mov              rax, qword ptr [rip + .Lx896_0]
                        mov              qword ptr [rbp + 1464], rax
                                                                                        jmp   n359_binop_α
.Lx896_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n357_binop_α:
                        mov              rdi, qword ptr [rbp + 1696]
                        mov              rsi, qword ptr [rbp + 1704]
                        mov              rdx, qword ptr [rbp + 1712]
                        mov              rcx, qword ptr [rbp + 1720]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n331_disjunction_af
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx
                                                                                        jmp   n360_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n358_deref_α:
                        mov              rdi, qword ptr [rbp + 1088]
                        mov              rsi, qword ptr [rbp + 1096]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n362_var_ref_α
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                                                                                        jmp   n361_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n359_binop_α:
                        mov              rdi, qword ptr [rbp + 1440]
                        mov              rsi, qword ptr [rbp + 1448]
                        mov              rdx, qword ptr [rbp + 1456]
                        mov              rcx, qword ptr [rbp + 1464]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        je    n334_disjunction_af
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
                                                                                        jmp   n363_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n360_subscript_α:
                        mov              rdi, qword ptr [rbp + 1680]
                        mov              rsi, qword ptr [rbp + 1688]
                        mov              rdx, qword ptr [rbp + 1696]
                        mov              rcx, qword ptr [rbp + 1704]
                        mov              r8, qword ptr [rbp + 1728]
                        mov              r9, qword ptr [rbp + 1736]
                        call             subscript_get2_ext@PLT
                        cmp              eax, 99
                                                                                        je    n331_disjunction_af
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                                                                                        jmp   n337_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n361_lit_integer_α:
                        mov              qword ptr [rbp + 1184], 6
                        mov              rax, qword ptr [rip + .Lx901_0]
                        mov              qword ptr [rbp + 1192], rax
                                                                                        jmp   n364_binop_α
.Lx901_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n362_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 10480]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   n365_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n363_subscript_α:
                        mov              rdi, qword ptr [rbp + 1424]
                        mov              rsi, qword ptr [rbp + 1432]
                        mov              rdx, qword ptr [rbp + 1440]
                        mov              rcx, qword ptr [rbp + 1448]
                        mov              r8, qword ptr [rbp + 1472]
                        mov              r9, qword ptr [rbp + 1480]
                        call             subscript_get2_ext@PLT
                        cmp              eax, 99
                                                                                        je    n334_disjunction_af
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                                                                                        jmp   n343_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n364_binop_α:
                        mov              eax, dword ptr [rbp + 1168]
                        cmp              eax, 6
                                                                                        jne   .Lx905_0
                        mov              rax, qword ptr [rbp + 1176]
                        mov              rcx, 10
                        add              rax, rcx
                        mov              qword ptr [rbp + 1152], 6
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n366_assign_var_α
.Lx905_0:
                        mov              rdi, qword ptr [rbp + 1168]
                        mov              rsi, qword ptr [rbp + 1176]
                        mov              rdx, qword ptr [rbp + 1184]
                        mov              rcx, qword ptr [rbp + 1192]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n362_var_ref_α
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                                                                                        jmp   n366_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n365_iterate_α:
                        mov              qword ptr [rbp + 992], 0
.Lx907_0:
                        mov              rdi, qword ptr [rbp + 1008]
                        mov              rsi, qword ptr [rbp + 1016]
                        mov              rdx, qword ptr [rbp + 992]
                        call             rt_list_bang_var_at@PLT
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        cmp              rax, 99
                                                                                        je    n369_lit_string_α
                                                                                        jmp   n367_deref_α
n365_iterate_β:
                        inc              qword ptr [rbp + 992]
                                                                                        jmp   .Lx907_0
#-----------------------------------------------------------------------------------------------------------------------
n366_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1088]
                        mov              rsi, qword ptr [rbp + 1096]
                        mov              rdx, qword ptr [rbp + 1152]
                        mov              rcx, qword ptr [rbp + 1160]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n362_var_ref_α
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   n355_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n367_deref_α:
                        mov              rdi, qword ptr [rbp + 976]
                        mov              rsi, qword ptr [rbp + 984]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n369_lit_string_α
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                                                                                        jmp   n368_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n368_lit_integer_α:
                        mov              qword ptr [rbp + 1072], 6
                        mov              rax, qword ptr [rip + .Lx910_0]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n370_binop_α
.Lx910_0:
                        .quad            20
#-----------------------------------------------------------------------------------------------------------------------
n369_lit_string_α:
                        mov              qword ptr [rbp + 944], 1
                        mov              rax, qword ptr [rip + .Lx911_0]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n371_var_α
.Lx911_0:
                        .quad            .Lx911_0_s
.Lx911_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n370_binop_α:
                        mov              eax, dword ptr [rbp + 1056]
                        cmp              eax, 6
                                                                                        jne   .Lx912_0
                        mov              rax, qword ptr [rbp + 1064]
                        mov              rcx, 20
                        add              rax, rcx
                        mov              qword ptr [rbp + 1040], 6
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n372_assign_var_α
.Lx912_0:
                        mov              rdi, qword ptr [rbp + 1056]
                        mov              rsi, qword ptr [rbp + 1064]
                        mov              rdx, qword ptr [rbp + 1072]
                        mov              rcx, qword ptr [rbp + 1080]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n369_lit_string_α
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n372_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n371_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n373_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n372_assign_var_α:
                        mov              rdi, qword ptr [rbp + 976]
                        mov              rsi, qword ptr [rbp + 984]
                        mov              rdx, qword ptr [rbp + 1040]
                        mov              rcx, qword ptr [rbp + 1048]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n369_lit_string_α
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                                                                                        jmp   n365_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n373_call_proc_staged_α:
                        lea              rsi, [rbp + 944]
                        lea              rdx, [rbp + 960]
                        call             proc_limage_dcα
                                                                                        jmp   .Lx917_2
.Lx917_2:
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              eax, 99
                                                                                        je    n374_lit_string_α
                                                                                        jmp   n374_lit_string_α
n373_call_proc_staged_β:
                                                                                        jmp   n374_lit_string_α
.Lx917_0:
                        .quad            .Lx917_0_s
.Lx917_0_s:
                        .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n374_lit_string_α:
                        mov              qword ptr [rbp + 848], 1
                        mov              rax, qword ptr [rip + .Lx918_0]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n375_var_α
.Lx918_0:
                        .quad            .Lx918_0_s
.Lx918_0_s:
                        .string          "y"
#-----------------------------------------------------------------------------------------------------------------------
n375_var_α:
                        mov              rax, qword ptr [rbp + 10480]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 10488]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n376_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n376_call_proc_staged_α:
                        lea              rsi, [rbp + 848]
                        lea              rdx, [rbp + 864]
                        call             proc_limage_dcα
                                                                                        jmp   .Lx922_2
.Lx922_2:
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              eax, 99
                                                                                        je    n377_var_α
                                                                                        jmp   n377_var_α
n376_call_proc_staged_β:
                                                                                        jmp   n377_var_α
.Lx922_0:
                        .quad            .Lx922_0_s
.Lx922_0_s:
                        .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n377_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n378_var_α
#-----------------------------------------------------------------------------------------------------------------------
n378_var_α:
                        mov              rax, qword ptr [rbp + 10480]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 10488]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n380_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n379_lit_string_α:
                        mov              qword ptr [rbp + 688], 1
                        mov              rax, qword ptr [rip + .Lx927_0]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n381_var_α
.Lx927_0:
                        .quad            .Lx927_0_s
.Lx927_0_s:
                        .string          "z"
#-----------------------------------------------------------------------------------------------------------------------
n380_binop_α:
                        mov              rdi, qword ptr [rbp + 10496]
                        mov              rsi, qword ptr [rbp + 10504]
                        mov              rdx, qword ptr [rbp + 10480]
                        mov              rcx, qword ptr [rbp + 10488]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n382_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n381_var_α:
                        mov              rax, qword ptr [rbp + 10464]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 10472]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n383_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n382_assign_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              rdx, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 10464], rax
                        mov              qword ptr [rbp + 10472], rdx
                                                                                        jmp   n379_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n383_call_proc_staged_α:
                        lea              rsi, [rbp + 688]
                        lea              rdx, [rbp + 704]
                        call             proc_limage_dcα
                                                                                        jmp   .Lx933_2
.Lx933_2:
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              eax, 99
                                                                                        je    n384_var_ref_α
                                                                                        jmp   n384_var_ref_α
n383_call_proc_staged_β:
                                                                                        jmp   n384_var_ref_α
.Lx933_0:
                        .quad            .Lx933_0_s
.Lx933_0_s:
                        .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n384_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 10496]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n385_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n385_iterate_α:
                        mov              qword ptr [rbp + 528], 0
.Lx937_0:
                        mov              rdi, qword ptr [rbp + 544]
                        mov              rsi, qword ptr [rbp + 552]
                        mov              rdx, qword ptr [rbp + 528]
                        call             rt_list_bang_var_at@PLT
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              rax, 99
                                                                                        je    n388_var_ref_α
                                                                                        jmp   n386_deref_α
n385_iterate_β:
                        inc              qword ptr [rbp + 528]
                                                                                        jmp   .Lx937_0
#-----------------------------------------------------------------------------------------------------------------------
n386_deref_α:
                        mov              rdi, qword ptr [rbp + 512]
                        mov              rsi, qword ptr [rbp + 520]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n388_var_ref_α
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n387_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n387_lit_integer_α:
                        mov              qword ptr [rbp + 608], 6
                        mov              rax, qword ptr [rip + .Lx939_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n389_binop_α
.Lx939_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n388_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 10480]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n390_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n389_binop_α:
                        mov              eax, dword ptr [rbp + 592]
                        cmp              eax, 6
                                                                                        jne   .Lx942_0
                        mov              rax, qword ptr [rbp + 600]
                        mov              rcx, 10
                        add              rax, rcx
                        mov              qword ptr [rbp + 576], 6
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n391_assign_var_α
.Lx942_0:
                        mov              rdi, qword ptr [rbp + 592]
                        mov              rsi, qword ptr [rbp + 600]
                        mov              rdx, qword ptr [rbp + 608]
                        mov              rcx, qword ptr [rbp + 616]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n388_var_ref_α
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n391_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n390_iterate_α:
                        mov              qword ptr [rbp + 416], 0
.Lx944_0:
                        mov              rdi, qword ptr [rbp + 432]
                        mov              rsi, qword ptr [rbp + 440]
                        mov              rdx, qword ptr [rbp + 416]
                        call             rt_list_bang_var_at@PLT
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              rax, 99
                                                                                        je    n394_var_ref_α
                                                                                        jmp   n392_deref_α
n390_iterate_β:
                        inc              qword ptr [rbp + 416]
                                                                                        jmp   .Lx944_0
#-----------------------------------------------------------------------------------------------------------------------
n391_assign_var_α:
                        mov              rdi, qword ptr [rbp + 512]
                        mov              rsi, qword ptr [rbp + 520]
                        mov              rdx, qword ptr [rbp + 576]
                        mov              rcx, qword ptr [rbp + 584]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n388_var_ref_α
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n385_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n392_deref_α:
                        mov              rdi, qword ptr [rbp + 400]
                        mov              rsi, qword ptr [rbp + 408]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n394_var_ref_α
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n393_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n393_lit_integer_α:
                        mov              qword ptr [rbp + 496], 6
                        mov              rax, qword ptr [rip + .Lx947_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n395_binop_α
.Lx947_0:
                        .quad            20
#-----------------------------------------------------------------------------------------------------------------------
n394_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 10464]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n396_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n395_binop_α:
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 6
                                                                                        jne   .Lx950_0
                        mov              rax, qword ptr [rbp + 488]
                        mov              rcx, 20
                        add              rax, rcx
                        mov              qword ptr [rbp + 464], 6
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n397_assign_var_α
.Lx950_0:
                        mov              rdi, qword ptr [rbp + 480]
                        mov              rsi, qword ptr [rbp + 488]
                        mov              rdx, qword ptr [rbp + 496]
                        mov              rcx, qword ptr [rbp + 504]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n394_var_ref_α
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n397_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n396_iterate_α:
                        mov              qword ptr [rbp + 304], 0
.Lx952_0:
                        mov              rdi, qword ptr [rbp + 320]
                        mov              rsi, qword ptr [rbp + 328]
                        mov              rdx, qword ptr [rbp + 304]
                        call             rt_list_bang_var_at@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              rax, 99
                                                                                        je    n400_lit_string_α
                                                                                        jmp   n398_deref_α
n396_iterate_β:
                        inc              qword ptr [rbp + 304]
                                                                                        jmp   .Lx952_0
#-----------------------------------------------------------------------------------------------------------------------
n397_assign_var_α:
                        mov              rdi, qword ptr [rbp + 400]
                        mov              rsi, qword ptr [rbp + 408]
                        mov              rdx, qword ptr [rbp + 464]
                        mov              rcx, qword ptr [rbp + 472]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n394_var_ref_α
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n390_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n398_deref_α:
                        mov              rdi, qword ptr [rbp + 288]
                        mov              rsi, qword ptr [rbp + 296]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n400_lit_string_α
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n399_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n399_lit_integer_α:
                        mov              qword ptr [rbp + 384], 6
                        mov              rax, qword ptr [rip + .Lx955_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n401_binop_α
.Lx955_0:
                        .quad            50
#-----------------------------------------------------------------------------------------------------------------------
n400_lit_string_α:
                        mov              qword ptr [rbp + 256], 1
                        mov              rax, qword ptr [rip + .Lx956_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n402_var_α
.Lx956_0:
                        .quad            .Lx956_0_s
.Lx956_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n401_binop_α:
                        mov              eax, dword ptr [rbp + 368]
                        cmp              eax, 6
                                                                                        jne   .Lx957_0
                        mov              rax, qword ptr [rbp + 376]
                        mov              rcx, 50
                        add              rax, rcx
                        mov              qword ptr [rbp + 352], 6
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n403_assign_var_α
.Lx957_0:
                        mov              rdi, qword ptr [rbp + 368]
                        mov              rsi, qword ptr [rbp + 376]
                        mov              rdx, qword ptr [rbp + 384]
                        mov              rcx, qword ptr [rbp + 392]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n400_lit_string_α
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n403_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n402_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n404_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n403_assign_var_α:
                        mov              rdi, qword ptr [rbp + 288]
                        mov              rsi, qword ptr [rbp + 296]
                        mov              rdx, qword ptr [rbp + 352]
                        mov              rcx, qword ptr [rbp + 360]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n400_lit_string_α
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n396_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n404_call_proc_staged_α:
                        lea              rsi, [rbp + 256]
                        lea              rdx, [rbp + 272]
                        call             proc_limage_dcα
                                                                                        jmp   .Lx962_2
.Lx962_2:
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n405_lit_string_α
                                                                                        jmp   n405_lit_string_α
n404_call_proc_staged_β:
                                                                                        jmp   n405_lit_string_α
.Lx962_0:
                        .quad            .Lx962_0_s
.Lx962_0_s:
                        .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n405_lit_string_α:
                        mov              qword ptr [rbp + 160], 1
                        mov              rax, qword ptr [rip + .Lx963_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n406_var_α
.Lx963_0:
                        .quad            .Lx963_0_s
.Lx963_0_s:
                        .string          "y"
#-----------------------------------------------------------------------------------------------------------------------
n406_var_α:
                        mov              rax, qword ptr [rbp + 10480]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 10488]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n407_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n407_call_proc_staged_α:
                        lea              rsi, [rbp + 160]
                        lea              rdx, [rbp + 176]
                        call             proc_limage_dcα
                                                                                        jmp   .Lx967_2
.Lx967_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n408_lit_string_α
                                                                                        jmp   n408_lit_string_α
n407_call_proc_staged_β:
                                                                                        jmp   n408_lit_string_α
.Lx967_0:
                        .quad            .Lx967_0_s
.Lx967_0_s:
                        .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n408_lit_string_α:
                        mov              qword ptr [rbp + 64], 1
                        mov              rax, qword ptr [rip + .Lx968_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n409_var_α
.Lx968_0:
                        .quad            .Lx968_0_s
.Lx968_0_s:
                        .string          "z"
#-----------------------------------------------------------------------------------------------------------------------
n409_var_α:
                        mov              rax, qword ptr [rbp + 10464]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 10472]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n410_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n410_call_proc_staged_α:
                        lea              rsi, [rbp + 64]
                        lea              rdx, [rbp + 80]
                        call             proc_limage_dcα
                                                                                        jmp   .Lx972_2
.Lx972_2:
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   main_ω
n410_call_proc_staged_β:
                                                                                        jmp   main_ω
.Lx972_0:
                        .quad            .Lx972_0_s
.Lx972_0_s:
                        .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 10528]
                        add              rsp, 10536
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 10528]
                        add              rsp, 10536
                        ret
                        .section         .note.GNU-stack,"",@progbits
