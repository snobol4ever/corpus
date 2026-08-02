                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_lookup_α
proc_lookup_α:
proc_lookup_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_disjunction_α:
                        mov              qword ptr [rbp + 400], 0
                        mov              qword ptr [rbp + 408], 0
                        mov              dword ptr [rbp + 416], 0
                                                                                        jmp   n1_var_ref_α
n0_disjunction_as:
                        mov              eax, dword ptr [rbp + 416]
                        cmp              eax, 0
                                                                                        jne   .Lx27_0
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n7_disjunction_α
.Lx27_0:
                                                                                        jmp   n7_disjunction_α
n0_disjunction_β:
                        mov              eax, dword ptr [rbp + 416]
                                                                                        jmp   n7_disjunction_α
n0_disjunction_af:
                        add              dword ptr [rbp + 416], 1
                        mov              eax, dword ptr [rbp + 416]
                                                                                        jmp   n7_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052304                                # lookup__INITFLAG__0
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n2_nulltest_var_α
n1_var_ref_β:
                                                                                        jmp   n0_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n2_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 104
                                                                                        je    n0_disjunction_af
                        mov              rdi, qword ptr [rbp + 480]                     # d
                        mov              rsi, qword ptr [rbp + 488]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n0_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n0_disjunction_af
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n3_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:
                        mov              qword ptr [rbp + 528], 3                       # result
                        mov              rax, qword ptr [rip + .Lx31_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n4_assign_var_α
.Lx31_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n4_assign_var_α:
                        mov              rdi, qword ptr [rbp + 496]                     # var
                        mov              rsi, qword ptr [rbp + 504]                     # var
                        mov              rdx, qword ptr [rbp + 528]                     # val
                        mov              rcx, qword ptr [rbp + 536]                     # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n0_disjunction_af
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   n5_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n5_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn34:               .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn34]                          # fn
                        lea              rsi, [rbp + 464]                               # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              eax, 104
                                                                                        je    n7_disjunction_α
                                                                                        jmp   n6_assign_α
n5_call_builtin_icon_β:
                                                                                        jmp   n7_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n6_assign_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        mov              qword ptr [1879052288], rax                    # ptab
                        mov              qword ptr [1879052296], rdx
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n0_disjunction_as
n6_assign_β:
                                                                                        jmp   n7_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n7_disjunction_α:
                        mov              qword ptr [rbp + 32], 0
                        mov              qword ptr [rbp + 40], 0
                        mov              dword ptr [rbp + 48], 0
                                                                                        jmp   n18_var_ref_α
n7_disjunction_as:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 0
                                                                                        jne   .Lx37_0
                                                                                        jmp   proc_lookup_ω
.Lx37_0:
                        cmp              eax, 1
                                                                                        jne   .Lx37_1
                                                                                        jmp   proc_lookup_ω
.Lx37_1:
                                                                                        jmp   proc_lookup_ω
n7_disjunction_β:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 0
                                                                                        je    proc_lookup_ω
                                                                                        jmp   proc_lookup_ω
n7_disjunction_af:
                        add              dword ptr [rbp + 48], 1
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 1
                                                                                        je    n8_var_ref_α
                                                                                        jmp   proc_lookup_ω
#-----------------------------------------------------------------------------------------------------------------------
n8_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052288                                # ptab
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n9_var_α
n8_var_ref_β:
                                                                                        jmp   proc_lookup_ω
#-----------------------------------------------------------------------------------------------------------------------
n9_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n10_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n10_subscript_α:
                        mov              rdi, qword ptr [rbp + 176]                     # base
                        mov              rsi, qword ptr [rbp + 184]                     # base
                        mov              rdx, qword ptr [rbp + 192]                     # idx
                        mov              rcx, qword ptr [rbp + 200]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    proc_lookup_ω
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n11_var_α
#-----------------------------------------------------------------------------------------------------------------------
n11_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n12_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_integer_α:
                        mov              qword ptr [rbp + 352], 3                       # result
                        mov              rax, qword ptr [rip + .Lx45_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n13_lit_integer_α
.Lx45_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_integer_α:
                        mov              qword ptr [rbp + 368], 3                       # result
                        mov              rax, qword ptr [rip + .Lx46_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n14_lit_integer_α
.Lx46_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_integer_α:
                        mov              qword ptr [rbp + 384], 3                       # result
                        mov              rax, qword ptr [rip + .Lx47_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n15_call_α
.Lx47_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n15_call_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 264], rax
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
                        .section         .rodata
.Lrkfn49:               .string          "method"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn49]                          # fn
                        lea              rsi, [rbp + 256]                               # args
                        mov              edx, 4                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 104
                                                                                        je    proc_lookup_ω
                                                                                        jmp   n16_assign_var_α
n15_call_β:
                                                                                        jmp   proc_lookup_ω
#-----------------------------------------------------------------------------------------------------------------------
n16_assign_var_α:
                        mov              rdi, qword ptr [rbp + 208]                     # var
                        mov              rsi, qword ptr [rbp + 216]                     # var
                        mov              rdx, qword ptr [rbp + 240]                     # val
                        mov              rcx, qword ptr [rbp + 248]                     # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    proc_lookup_ω
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n17_return_α
#-----------------------------------------------------------------------------------------------------------------------
n17_return_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_lookup_γ
#-----------------------------------------------------------------------------------------------------------------------
n18_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052288                                # ptab
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                                                                                        jmp   n19_var_α
n18_var_ref_β:
                                                                                        jmp   n7_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n19_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n20_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n20_subscript_α:
                        mov              rdi, qword ptr [rbp + 112]                     # base
                        mov              rsi, qword ptr [rbp + 120]                     # base
                        mov              rdx, qword ptr [rbp + 128]                     # idx
                        mov              rcx, qword ptr [rbp + 136]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n7_disjunction_af
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n21_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n21_deref_α:
                        mov              rdi, qword ptr [rbp + 144]                     # d
                        mov              rsi, qword ptr [rbp + 152]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n7_disjunction_af
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n22_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n22_unop_test_α:
                        mov              eax, dword ptr [rbp + 160]
                        cmp              eax, 104
                                                                                        je    n7_disjunction_af
                        cmp              eax, 0
                                                                                        je    n7_disjunction_af
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n23_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n23_assign_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              rdx, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n24_var_α
#-----------------------------------------------------------------------------------------------------------------------
n24_var_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n25_return_α
#-----------------------------------------------------------------------------------------------------------------------
n25_return_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              rdx, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_lookup_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_lookup_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_lookup_β:
                                                                                        jmp   proc_lookup_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_lookup_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_lookup_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_lookup_dcα:
                        pop              r11
                        sub              rsp, 624
                        mov              qword ptr [rsp + 600], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 576], r11
                        lea              rax, [rip + .Lx63_2]
                        mov              qword ptr [rbp + 584], rax
                        lea              rax, [rip + .Lx63_3]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp                                       # fb
                        mov              esi, 544                                       # suffix_off
                        mov              edx, 576                                       # region_bytes
                        mov              ecx, 1                                         # np
                        mov              r8d, 1                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_lookup_α_body
.Lx63_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -608
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx63_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -608
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_accumulate_α
proc_accumulate_α:
proc_accumulate_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n64_lit_charset_α:
                        sub              rsp, 1920
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
                        mov              qword ptr [rbp + 1920], 2                      # result
                        mov              dword ptr [rbp + 1924], -1
                        mov              rax, qword ptr [rip + .Lx135_0]
                        mov              qword ptr [rbp + 1928], rax
                                                                                        jmp   n65_call_builtin_icon_α
.Lx135_0:
                        .quad            .Lx135_0_s
.Lx135_0_s:
                        .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n65_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1920]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 1928]
                        mov              qword ptr [rbp + 1896], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn28:           .string          "many"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn28]                      # fn
                        lea              rsi, [rbp + 1888]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104
                                                                                        je    n69_lit_charset_α
                                                                                        jmp   n66_call_α
n65_call_builtin_icon_β:
                                                                                        jmp   n69_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n66_call_α:
                        mov              rax, qword ptr [rbp + 1872]
                        mov              qword ptr [rbp + 1824], rax
                        mov              rax, qword ptr [rbp + 1880]
                        mov              qword ptr [rbp + 1832], rax
                        mov              qword ptr [rbp + 1840], r14
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn29:           .string          "tab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn29]                      # fn
                        lea              rsi, [rbp + 1824]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104
                                                                                        je    n69_lit_charset_α
                                                                                        jmp   n67_call_builtin_icon_α
n66_call_β:
                        mov              r14, qword ptr [rbp + 1840]
                                                                                        jmp   n69_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n67_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1808]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 1784], rax
                        .section         .rodata
.Lrkfn139:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn139]                         # fn
                        lea              rsi, [rbp + 1776]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx
                        cmp              eax, 104
                                                                                        je    n69_lit_charset_α
                                                                                        jmp   n68_assign_α
n67_call_builtin_icon_β:
                                                                                        jmp   n69_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n68_assign_α:
                        mov              rax, qword ptr [rbp + 1760]
                        mov              rdx, qword ptr [rbp + 1768]
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx
                                                                                        jmp   n69_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n69_lit_charset_α:
                        mov              qword ptr [rbp + 1744], 2                      # result
                        mov              dword ptr [rbp + 1748], -1
                        mov              rax, qword ptr [rip + .Lx141_0]
                        mov              qword ptr [rbp + 1752], rax
                                                                                        jmp   n70_call_builtin_icon_α
.Lx141_0:
                        .quad            .Lx141_0_s
.Lx141_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n70_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 1712], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 1720], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn33:           .string          "many"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn33]                      # fn
                        lea              rsi, [rbp + 1712]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104
                                                                                        je    n72_lit_charset_α
                                                                                        jmp   n71_call_α
n70_call_builtin_icon_β:
                                                                                        jmp   n72_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n71_call_α:
                        mov              rax, qword ptr [rbp + 1696]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 1704]
                        mov              qword ptr [rbp + 1656], rax
                        mov              qword ptr [rbp + 1664], r14
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn34:           .string          "tab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn34]                      # fn
                        lea              rsi, [rbp + 1648]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104
                                                                                        je    n72_lit_charset_α
                                                                                        jmp   n72_lit_charset_α
n71_call_β:
                        mov              r14, qword ptr [rbp + 1664]
                                                                                        jmp   n72_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n72_lit_charset_α:
                        mov              qword ptr [rbp + 1616], 2                      # result
                        mov              dword ptr [rbp + 1620], -1
                        mov              rax, qword ptr [rip + .Lx144_0]
                        mov              qword ptr [rbp + 1624], rax
                                                                                        jmp   n73_call_builtin_gen_α
.Lx144_0:
                        .quad            .Lx144_0_s
.Lx144_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n73_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 1616]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 1624]
                        mov              qword ptr [rbp + 1592], rax
                        mov              qword ptr [rbp + 1600], 0
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
.Lx145_60:
                        .section         .rodata
.Lbynamegenfn36:        .string          "upto"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn36]                   # fn
                        lea              rsi, [rbp + 1584]                              # args
                        mov              edx, 1                                         # nargs
                        lea              rcx, [rbp + 1600]                              # resume
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                        cmp              eax, 104
                                                                                        je    n76_lit_charset_α
                                                                                        jmp   n74_call_α
n73_call_builtin_gen_β:
                                                                                        jmp   .Lx145_60
#-----------------------------------------------------------------------------------------------------------------------
n74_call_α:
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [rbp + 1528], rax
                        mov              qword ptr [rbp + 1536], r14
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn37:           .string          "tab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn37]                      # fn
                        lea              rsi, [rbp + 1520]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104
                                                                                        je    n73_call_builtin_gen_β
                                                                                        jmp   n75_assign_α
n74_call_β:
                        mov              r14, qword ptr [rbp + 1536]
                                                                                        jmp   n73_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n75_assign_α:
                        mov              rax, qword ptr [rbp + 1504]
                        mov              rdx, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 2016], rax
                        mov              qword ptr [rbp + 2024], rdx
                                                                                        jmp   n76_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_charset_α:
                        mov              qword ptr [rbp + 1488], 2                      # result
                        mov              dword ptr [rbp + 1492], -1
                        mov              rax, qword ptr [rip + .Lx148_0]
                        mov              qword ptr [rbp + 1496], rax
                                                                                        jmp   n77_call_builtin_icon_α
.Lx148_0:
                        .quad            .Lx148_0_s
.Lx148_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n77_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1464], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn40:           .string          "many"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn40]                      # fn
                        lea              rsi, [rbp + 1456]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104
                                                                                        je    n79_lit_charset_α
                                                                                        jmp   n78_call_α
n77_call_builtin_icon_β:
                                                                                        jmp   n79_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n78_call_α:
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 1400], rax
                        mov              qword ptr [rbp + 1408], r14
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn41:           .string          "tab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn41]                      # fn
                        lea              rsi, [rbp + 1392]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104
                                                                                        je    n79_lit_charset_α
                                                                                        jmp   n79_lit_charset_α
n78_call_β:
                        mov              r14, qword ptr [rbp + 1408]
                                                                                        jmp   n79_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n79_lit_charset_α:
                        mov              qword ptr [rbp + 1360], 2                      # result
                        mov              dword ptr [rbp + 1364], -1
                        mov              rax, qword ptr [rip + .Lx151_0]
                        mov              qword ptr [rbp + 1368], rax
                                                                                        jmp   n80_call_builtin_gen_α
.Lx151_0:
                        .quad            .Lx151_0_s
.Lx151_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n80_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1336], rax
                        mov              qword ptr [rbp + 1344], 0
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
.Lx152_60:
                        .section         .rodata
.Lbynamegenfn43:        .string          "upto"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn43]                   # fn
                        lea              rsi, [rbp + 1328]                              # args
                        mov              edx, 1                                         # nargs
                        lea              rcx, [rbp + 1344]                              # resume
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                        cmp              eax, 104
                                                                                        je    n83_disjunction_α
                                                                                        jmp   n81_call_α
n80_call_builtin_gen_β:
                                                                                        jmp   .Lx152_60
#-----------------------------------------------------------------------------------------------------------------------
n81_call_α:
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1272], rax
                        mov              qword ptr [rbp + 1280], r14
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn44:           .string          "tab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn44]                      # fn
                        lea              rsi, [rbp + 1264]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104
                                                                                        je    n80_call_builtin_gen_β
                                                                                        jmp   n82_assign_α
n81_call_β:
                        mov              r14, qword ptr [rbp + 1280]
                                                                                        jmp   n80_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n82_assign_α:
                        mov              rax, qword ptr [rbp + 1248]
                        mov              rdx, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx
                                                                                        jmp   n83_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n83_disjunction_α:
                        mov              qword ptr [rbp + 880], 0
                        mov              qword ptr [rbp + 888], 0
                        mov              dword ptr [rbp + 896], 0
                                                                                        jmp   n84_var_α
n83_disjunction_as:
                        mov              eax, dword ptr [rbp + 896]
                        cmp              eax, 0
                                                                                        jne   .Lx156_0
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n96_lit_charset_α
.Lx156_0:
                                                                                        jmp   n96_lit_charset_α
n83_disjunction_β:
                        mov              eax, dword ptr [rbp + 896]
                                                                                        jmp   n92_call_builtin_gen_β
n83_disjunction_af:
                        add              dword ptr [rbp + 896], 1
                        mov              eax, dword ptr [rbp + 896]
                                                                                        jmp   n96_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n84_var_α:
                        mov              rax, qword ptr [rbp + 1968]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1976]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n85_lit_string_α
n84_var_β:
                                                                                        jmp   n83_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_string_α:
                        mov              qword ptr [rbp + 1232], 2                      # result
                        mov              dword ptr [rbp + 1236], 7
                        mov              rax, qword ptr [rip + .Lx159_0]
                        mov              qword ptr [rbp + 1240], rax
                                                                                        jmp   n86_call_α
.Lx159_0:
                        .quad            .Lx159_0_s
.Lx159_0_s:
                        .string          " caller"
#-----------------------------------------------------------------------------------------------------------------------
n86_call_α:
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1208], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn49:           .string          "match"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn49]                      # fn
                        lea              rsi, [rbp + 1200]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104
                                                                                        je    n83_disjunction_af
                                                                                        jmp   n87_call_α
n86_call_β:
                                                                                        jmp   n83_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n87_call_α:
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1144], rax
                        mov              qword ptr [rbp + 1152], r14
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn50:           .string          "tab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn50]                      # fn
                        lea              rsi, [rbp + 1136]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104
                                                                                        je    n83_disjunction_af
                                                                                        jmp   n88_binop_α
n87_call_β:
                        mov              r14, qword ptr [rbp + 1152]
                                                                                        jmp   n83_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n88_binop_α:
                        mov              rdi, qword ptr [rbp + 1968]                    # a
                        mov              rsi, qword ptr [rbp + 1976]                    # a
                        mov              rdx, qword ptr [rbp + 1120]                    # b
                        mov              rcx, qword ptr [rbp + 1128]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                                                                                        jmp   n89_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n89_assign_α:
                        mov              rax, qword ptr [rbp + 1088]
                        mov              rdx, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx
                                                                                        jmp   n90_var_α
#-----------------------------------------------------------------------------------------------------------------------
n90_var_α:
                        mov              rax, qword ptr [rbp + 1968]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 1976]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n91_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n91_lit_charset_α:
                        mov              qword ptr [rbp + 1072], 2                      # result
                        mov              dword ptr [rbp + 1076], -1
                        mov              rax, qword ptr [rip + .Lx166_0]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n92_call_builtin_gen_α
.Lx166_0:
                        .quad            .Lx166_0_s
.Lx166_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n92_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1048], rax
                        mov              qword ptr [rbp + 1056], 0
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
.Lx167_60:
                        .section         .rodata
.Lbynamegenfn55:        .string          "upto"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn55]                   # fn
                        lea              rsi, [rbp + 1040]                              # args
                        mov              edx, 1                                         # nargs
                        lea              rcx, [rbp + 1056]                              # resume
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        cmp              eax, 104
                                                                                        je    n96_lit_charset_α
                                                                                        jmp   n93_call_α
n92_call_builtin_gen_β:
                                                                                        jmp   .Lx167_60
#-----------------------------------------------------------------------------------------------------------------------
n93_call_α:
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 984], rax
                        mov              qword ptr [rbp + 992], r14
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn56:           .string          "tab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn56]                      # fn
                        lea              rsi, [rbp + 976]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104
                                                                                        je    n92_call_builtin_gen_β
                                                                                        jmp   n94_binop_α
n93_call_β:
                        mov              r14, qword ptr [rbp + 992]
                                                                                        jmp   n92_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n94_binop_α:
                        mov              rdi, qword ptr [rbp + 1968]                    # a
                        mov              rsi, qword ptr [rbp + 1976]                    # a
                        mov              rdx, qword ptr [rbp + 960]                     # b
                        mov              rcx, qword ptr [rbp + 968]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                                                                                        jmp   n95_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n95_assign_α:
                        mov              rax, qword ptr [rbp + 928]
                        mov              rdx, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                                                                                        jmp   n83_disjunction_as
n95_assign_β:
                                                                                        jmp   n96_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_charset_α:
                        mov              qword ptr [rbp + 864], 2                       # result
                        mov              dword ptr [rbp + 868], -1
                        mov              rax, qword ptr [rip + .Lx171_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n97_call_builtin_icon_α
.Lx171_0:
                        .quad            .Lx171_0_s
.Lx171_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n97_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 840], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn60:           .string          "many"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn60]                      # fn
                        lea              rsi, [rbp + 832]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104
                                                                                        je    n99_lit_charset_α
                                                                                        jmp   n98_call_α
n97_call_builtin_icon_β:
                                                                                        jmp   n99_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n98_call_α:
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 776], rax
                        mov              qword ptr [rbp + 784], r14
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn61:           .string          "tab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn61]                      # fn
                        lea              rsi, [rbp + 768]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104
                                                                                        je    n99_lit_charset_α
                                                                                        jmp   n99_lit_charset_α
n98_call_β:
                        mov              r14, qword ptr [rbp + 784]
                                                                                        jmp   n99_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n99_lit_charset_α:
                        mov              qword ptr [rbp + 736], 2                       # result
                        mov              dword ptr [rbp + 740], -1
                        mov              rax, qword ptr [rip + .Lx174_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n100_call_builtin_icon_α
.Lx174_0:
                        .quad            .Lx174_0_s
.Lx174_0_s:
                        .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n100_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 712], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn63:           .string          "many"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn63]                      # fn
                        lea              rsi, [rbp + 704]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104
                                                                                        je    n104_var_α
                                                                                        jmp   n101_call_α
n100_call_builtin_icon_β:
                                                                                        jmp   n104_var_α
#-----------------------------------------------------------------------------------------------------------------------
n101_call_α:
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 648], rax
                        mov              qword ptr [rbp + 656], r14
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn64:           .string          "tab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn64]                      # fn
                        lea              rsi, [rbp + 640]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104
                                                                                        je    n104_var_α
                                                                                        jmp   n102_call_builtin_icon_α
n101_call_β:
                        mov              r14, qword ptr [rbp + 656]
                                                                                        jmp   n104_var_α
#-----------------------------------------------------------------------------------------------------------------------
n102_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 600], rax
                        .section         .rodata
.Lrkfn178:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn178]                         # fn
                        lea              rsi, [rbp + 592]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 104
                                                                                        je    n104_var_α
                                                                                        jmp   n103_assign_α
n102_call_builtin_icon_β:
                                                                                        jmp   n104_var_α
#-----------------------------------------------------------------------------------------------------------------------
n103_assign_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              rdx, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx
                                                                                        jmp   n104_var_α
#-----------------------------------------------------------------------------------------------------------------------
n104_var_α:
                        mov              rax, qword ptr [rbp + 1968]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 1976]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n105_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n105_call_proc_staged_α:
                        lea              rsi, [rbp + 560]
                        call             proc_fixname_dcα
                                                                                        jmp   .Lx183_2
.Lx183_2:
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 104
                                                                                        je    n107_var_α
                                                                                        jmp   n106_assign_α
n105_call_proc_staged_β:
                                                                                        jmp   n107_var_α
.Lx183_0:
                        .quad            .Lx183_0_s
.Lx183_0_s:
                        .string          "fixname"
#-----------------------------------------------------------------------------------------------------------------------
n106_assign_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              rdx, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx
                                                                                        jmp   n107_var_α
#-----------------------------------------------------------------------------------------------------------------------
n107_var_α:
                        mov              rax, qword ptr [rbp + 2016]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 2024]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n108_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n108_call_proc_staged_α:
                        lea              rsi, [rbp + 496]
                        call             proc_fixname_dcα
                                                                                        jmp   .Lx188_2
.Lx188_2:
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              eax, 104
                                                                                        je    n110_var_α
                                                                                        jmp   n109_assign_α
n108_call_proc_staged_β:
                                                                                        jmp   n110_var_α
.Lx188_0:
                        .quad            .Lx188_0_s
.Lx188_0_s:
                        .string          "fixname"
#-----------------------------------------------------------------------------------------------------------------------
n109_assign_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 2016], rax
                        mov              qword ptr [rbp + 2024], rdx
                                                                                        jmp   n110_var_α
#-----------------------------------------------------------------------------------------------------------------------
n110_var_α:
                        mov              rax, qword ptr [rbp + 2016]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 2024]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n111_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n111_call_proc_staged_α:
                        lea              rsi, [rbp + 432]
                        call             proc_lookup_dcα
                                                                                        jmp   .Lx193_2
.Lx193_2:
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 104
                                                                                        je    n113_var_α
                                                                                        jmp   n112_assign_α
n111_call_proc_staged_β:
                                                                                        jmp   n113_var_α
.Lx193_0:
                        .quad            .Lx193_0_s
.Lx193_0_s:
                        .string          "lookup"
#-----------------------------------------------------------------------------------------------------------------------
n112_assign_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 1984], rax
                        mov              qword ptr [rbp + 1992], rdx
                                                                                        jmp   n113_var_α
#-----------------------------------------------------------------------------------------------------------------------
n113_var_α:
                        mov              rax, qword ptr [rbp + 1984]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 1992]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n114_field_var_α
#-----------------------------------------------------------------------------------------------------------------------
n114_field_var_α:
                        mov              rdi, qword ptr [rip + .Lx197_0]                # fname
                        mov              rsi, qword ptr [rbp + 304]                     # obj
                        mov              rdx, qword ptr [rbp + 312]                     # obj
                        call             rt_field_var@PLT
                        cmp              eax, 104
                                                                                        je    n119_var_α
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n115_deref_α
.Lx197_0:
                        .quad            .Lx197_0_s
.Lx197_0_s:
                        .string          "tself"
#-----------------------------------------------------------------------------------------------------------------------
n115_deref_α:
                        mov              rdi, qword ptr [rbp + 288]                     # d
                        mov              rsi, qword ptr [rbp + 296]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n119_var_α
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n116_var_α
#-----------------------------------------------------------------------------------------------------------------------
n116_var_α:
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n117_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n117_binop_α:
                        mov              eax, dword ptr [rbp + 352]
                        cmp              eax, 3
                                                                                        jne   .Lx201_0
                        mov              eax, dword ptr [rbp + 1952]
                        cmp              eax, 3
                                                                                        jne   .Lx201_0
                        mov              rax, qword ptr [rbp + 360]
                        mov              rcx, qword ptr [rbp + 1960]
                        add              rax, rcx
                        mov              qword ptr [rbp + 336], 3
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n118_assign_var_α
.Lx201_0:
                        mov              rdi, qword ptr [rbp + 352]
                        mov              rsi, qword ptr [rbp + 360]
                        mov              rdx, qword ptr [rbp + 1952]
                        mov              rcx, qword ptr [rbp + 1960]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n119_var_α
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n118_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n118_assign_var_α:
                        mov              rdi, qword ptr [rbp + 288]                     # var
                        mov              rsi, qword ptr [rbp + 296]                     # var
                        mov              rdx, qword ptr [rbp + 336]                     # val
                        mov              rcx, qword ptr [rbp + 344]                     # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n119_var_α
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n119_var_α
#-----------------------------------------------------------------------------------------------------------------------
n119_var_α:
                        mov              rax, qword ptr [rbp + 1984]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 1992]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n120_field_var_α
#-----------------------------------------------------------------------------------------------------------------------
n120_field_var_α:
                        mov              rdi, qword ptr [rip + .Lx205_0]                # fname
                        mov              rsi, qword ptr [rbp + 208]                     # obj
                        mov              rdx, qword ptr [rbp + 216]                     # obj
                        call             rt_field_var@PLT
                        cmp              eax, 104
                                                                                        je    n125_var_α
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n121_deref_α
.Lx205_0:
                        .quad            .Lx205_0_s
.Lx205_0_s:
                        .string          "ncalls"
#-----------------------------------------------------------------------------------------------------------------------
n121_deref_α:
                        mov              rdi, qword ptr [rbp + 192]                     # d
                        mov              rsi, qword ptr [rbp + 200]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n125_var_α
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n122_var_α
#-----------------------------------------------------------------------------------------------------------------------
n122_var_α:
                        mov              rax, qword ptr [rbp + 2000]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 2008]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n123_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n123_binop_α:
                        mov              eax, dword ptr [rbp + 256]
                        cmp              eax, 3
                                                                                        jne   .Lx209_0
                        mov              eax, dword ptr [rbp + 2000]
                        cmp              eax, 3
                                                                                        jne   .Lx209_0
                        mov              rax, qword ptr [rbp + 264]
                        mov              rcx, qword ptr [rbp + 2008]
                        add              rax, rcx
                        mov              qword ptr [rbp + 240], 3
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n124_assign_var_α
.Lx209_0:
                        mov              rdi, qword ptr [rbp + 256]
                        mov              rsi, qword ptr [rbp + 264]
                        mov              rdx, qword ptr [rbp + 2000]
                        mov              rcx, qword ptr [rbp + 2008]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n125_var_α
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n124_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n124_assign_var_α:
                        mov              rdi, qword ptr [rbp + 192]                     # var
                        mov              rsi, qword ptr [rbp + 200]                     # var
                        mov              rdx, qword ptr [rbp + 240]                     # val
                        mov              rcx, qword ptr [rbp + 248]                     # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n125_var_α
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n125_var_α
#-----------------------------------------------------------------------------------------------------------------------
n125_var_α:
                        mov              rax, qword ptr [rbp + 1968]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 1976]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n126_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n126_call_proc_staged_α:
                        lea              rsi, [rbp + 176]
                        call             proc_lookup_dcα
                                                                                        jmp   .Lx214_2
.Lx214_2:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 104
                                                                                        je    n128_var_α
                                                                                        jmp   n127_assign_α
n126_call_proc_staged_β:
                                                                                        jmp   n128_var_α
.Lx214_0:
                        .quad            .Lx214_0_s
.Lx214_0_s:
                        .string          "lookup"
#-----------------------------------------------------------------------------------------------------------------------
n127_assign_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx
                                                                                        jmp   n128_var_α
#-----------------------------------------------------------------------------------------------------------------------
n128_var_α:
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n129_field_var_α
#-----------------------------------------------------------------------------------------------------------------------
n129_field_var_α:
                        mov              rdi, qword ptr [rip + .Lx218_0]                # fname
                        mov              rsi, qword ptr [rbp + 32]                      # obj
                        mov              rdx, qword ptr [rbp + 40]                      # obj
                        call             rt_field_var@PLT
                        cmp              eax, 104
                                                                                        je    n134_return_α
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                                                                                        jmp   n130_deref_α
.Lx218_0:
                        .quad            .Lx218_0_s
.Lx218_0_s:
                        .string          "tcalled"
#-----------------------------------------------------------------------------------------------------------------------
n130_deref_α:
                        mov              rdi, qword ptr [rbp + 16]                      # d
                        mov              rsi, qword ptr [rbp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n134_return_α
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n131_var_α
#-----------------------------------------------------------------------------------------------------------------------
n131_var_α:
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n132_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n132_binop_α:
                        mov              eax, dword ptr [rbp + 80]
                        cmp              eax, 3
                                                                                        jne   .Lx222_0
                        mov              eax, dword ptr [rbp + 1952]
                        cmp              eax, 3
                                                                                        jne   .Lx222_0
                        mov              rax, qword ptr [rbp + 88]
                        mov              rcx, qword ptr [rbp + 1960]
                        add              rax, rcx
                        mov              qword ptr [rbp + 64], 3
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n133_assign_var_α
.Lx222_0:
                        mov              rdi, qword ptr [rbp + 80]
                        mov              rsi, qword ptr [rbp + 88]
                        mov              rdx, qword ptr [rbp + 1952]
                        mov              rcx, qword ptr [rbp + 1960]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n134_return_α
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                                                                                        jmp   n133_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n133_assign_var_α:
                        mov              rdi, qword ptr [rbp + 16]                      # var
                        mov              rsi, qword ptr [rbp + 24]                      # var
                        mov              rdx, qword ptr [rbp + 64]                      # val
                        mov              rcx, qword ptr [rbp + 72]                      # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n134_return_α
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                                                                                        jmp   n134_return_α
#-----------------------------------------------------------------------------------------------------------------------
n134_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                        add              rsp, 1920
                                                                                        jmp   proc_accumulate_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_accumulate_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_accumulate_β:
                                                                                        jmp   proc_accumulate_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_accumulate_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_accumulate_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_accumulate_dcα:
                        pop              r11
                        sub              rsp, 2096
                        mov              qword ptr [rsp + 2072], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 2048], r11
                        lea              rax, [rip + .Lx225_2]
                        mov              qword ptr [rbp + 2056], rax
                        lea              rax, [rip + .Lx225_3]
                        mov              qword ptr [rbp + 2064], rax
                        mov              rdi, rbp                                       # fb
                        mov              esi, 1936                                      # suffix_off
                        mov              edx, 2048                                      # region_bytes
                        mov              ecx, 0                                         # np
                        mov              r8d, 0                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_accumulate_α_body
.Lx225_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -2080
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx225_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -2080
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_fixname_α
proc_fixname_α:
proc_fixname_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n226_var_α:
                        sub              rsp, 640
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
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n227_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n227_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 656]                     # lo
                        mov              rsi, qword ptr [rbp + 664]                     # hi
                        mov              rdx, r13                                       # sigma
                        mov              rcx, r14                                       # delta
                        mov              r8, r15                                        # Delta
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n228_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n228_disjunction_α:
                        mov              qword ptr [rbp + 144], 0
                        mov              qword ptr [rbp + 152], 0
                        mov              dword ptr [rbp + 160], 0
                                                                                        jmp   n249_lit_string_α
n228_disjunction_as:
                        mov              eax, dword ptr [rbp + 160]
                        cmp              eax, 0
                                                                                        jne   .Lx257_0
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n229_lit_integer_α
.Lx257_0:
                        cmp              eax, 1
                                                                                        jne   .Lx257_1
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n229_lit_integer_α
.Lx257_1:
                        cmp              eax, 2
                                                                                        jne   .Lx257_2
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n229_lit_integer_α
.Lx257_2:
                                                                                        jmp   n229_lit_integer_α
n228_disjunction_β:
                        mov              eax, dword ptr [rbp + 160]
                        cmp              eax, 0
                                                                                        je    n228_disjunction_af
                        cmp              eax, 1
                                                                                        je    n243_scan_upto_β
                                                                                        jmp   n236_scan_upto_β
n228_disjunction_af:
                        add              dword ptr [rbp + 160], 1
                        mov              eax, dword ptr [rbp + 160]
                        cmp              eax, 1
                                                                                        je    n239_lit_string_α
                        cmp              eax, 2
                                                                                        je    n232_lit_string_α
                                                                                        jmp   n229_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n229_lit_integer_α:
                        mov              qword ptr [rbp + 128], 3                       # result
                        mov              rax, qword ptr [rip + .Lx258_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n230_scan_tab_α
.Lx258_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n230_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, 0
                        cmp              rax, 1
                                                                                        jge   .Lx260_0
                        add              rax, r15
                        add              rax, 1
.Lx260_0:
                        cmp              rax, 1
                                                                                        jge   .Lx260_239
                        add              rsp, 16
                        add              rsp, 640
                                                                                        jmp   proc_fixname_ω
.Lx260_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx260_240
                        add              rsp, 16
                        add              rsp, 640
                                                                                        jmp   proc_fixname_ω
.Lx260_240:
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
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n231_return_α
n230_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                        add              rsp, 640
                                                                                        jmp   proc_fixname_ω
#-----------------------------------------------------------------------------------------------------------------------
n231_return_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              rdx, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        add              rsp, 640
                                                                                        jmp   proc_fixname_γ
#-----------------------------------------------------------------------------------------------------------------------
n232_lit_string_α:
                        mov              qword ptr [rbp + 640], 2                       # result
                        mov              dword ptr [rbp + 644], 4
                        mov              rax, qword ptr [rip + .Lx262_0]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n233_scan_match_α
n232_lit_string_β:
                                                                                        jmp   n228_disjunction_af
.Lx262_0:
                        .quad            .Lx262_0_s
.Lx262_0_s:
                        .string          "p_l$"
#-----------------------------------------------------------------------------------------------------------------------
n233_scan_match_α:
                        sub              rsp, 16
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 4
                                                                                        jge   .Lx264_239
                        add              rsp, 16
                                                                                        jmp   n228_disjunction_af
.Lx264_239:
                        mov              rdi, qword ptr [rip + .Lx264_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 4
                        push             r10
                        call             memcmp@PLT
                        pop              r10
                        test             eax, eax
                                                                                        je    .Lx264_240
                        add              rsp, 16
                                                                                        jmp   n228_disjunction_af
.Lx264_240:
                        mov              qword ptr [rbp + 608], 3
                        mov              rax, r14
                        add              rax, 5
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n234_scan_tab_α
.Lx264_0:
                        .quad            .Lx264_0_s
.Lx264_0_s:
                        .string          "p_l$"
#-----------------------------------------------------------------------------------------------------------------------
n234_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 616]
                        cmp              rax, 1
                                                                                        jge   .Lx266_0
                        add              rax, r15
                        add              rax, 1
.Lx266_0:
                        cmp              rax, 1
                                                                                        jge   .Lx266_239
                        add              rsp, 16
                                                                                        jmp   n228_disjunction_af
.Lx266_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx266_240
                        add              rsp, 16
                                                                                        jmp   n228_disjunction_af
.Lx266_240:
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
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n235_lit_charset_α
n234_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n228_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n235_lit_charset_α:
                        mov              qword ptr [rbp + 560], 2                       # result
                        mov              dword ptr [rbp + 564], -1
                        mov              rax, qword ptr [rip + .Lx267_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n236_scan_upto_α
.Lx267_0:
                        .quad            .Lx267_0_s
.Lx267_0_s:
                        .string          "$"
#-----------------------------------------------------------------------------------------------------------------------
n236_scan_upto_α:
                        mov              qword ptr [rbp + 544], r14
.Lx269_0:
                        mov              rax, qword ptr [rbp + 544]
                        cmp              rax, r15
                                                                                        jge   n234_scan_tab_β
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx269_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx269_1
                        mov              qword ptr [rbp + 528], 3
                        add              rax, 1
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n237_scan_tab_α
.Lx269_1:
                        inc              qword ptr [rbp + 544]
                                                                                        jmp   .Lx269_0
n236_scan_upto_β:
                        inc              qword ptr [rbp + 544]
                                                                                        jmp   .Lx269_0
.Lx269_2:
                        .quad            .Lx269_2_s
.Lx269_2_s:
                        .string          "$"
#-----------------------------------------------------------------------------------------------------------------------
n237_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 536]
                        cmp              rax, 1
                                                                                        jge   .Lx271_0
                        add              rax, r15
                        add              rax, 1
.Lx271_0:
                        cmp              rax, 1
                                                                                        jge   .Lx271_239
                        add              rsp, 16
                                                                                        jmp   n236_scan_upto_β
.Lx271_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx271_240
                        add              rsp, 16
                                                                                        jmp   n236_scan_upto_β
.Lx271_240:
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
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n238_conjunction_α
n237_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n236_scan_upto_β
#-----------------------------------------------------------------------------------------------------------------------
n238_conjunction_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n228_disjunction_as
n238_conjunction_β:
                                                                                        jmp   n228_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n239_lit_string_α:
                        mov              qword ptr [rbp + 464], 2                       # result
                        mov              dword ptr [rbp + 468], 5
                        mov              rax, qword ptr [rip + .Lx273_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n240_scan_match_α
n239_lit_string_β:
                                                                                        jmp   n228_disjunction_af
.Lx273_0:
                        .quad            .Lx273_0_s
.Lx273_0_s:
                        .string          "java/"
#-----------------------------------------------------------------------------------------------------------------------
n240_scan_match_α:
                        sub              rsp, 16
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 5
                                                                                        jge   .Lx275_239
                        add              rsp, 16
                                                                                        jmp   n228_disjunction_af
.Lx275_239:
                        mov              rdi, qword ptr [rip + .Lx275_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 5
                        push             r10
                        call             memcmp@PLT
                        pop              r10
                        test             eax, eax
                                                                                        je    .Lx275_240
                        add              rsp, 16
                                                                                        jmp   n228_disjunction_af
.Lx275_240:
                        mov              qword ptr [rbp + 432], 3
                        mov              rax, r14
                        add              rax, 6
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n241_scan_tab_α
.Lx275_0:
                        .quad            .Lx275_0_s
.Lx275_0_s:
                        .string          "java/"
#-----------------------------------------------------------------------------------------------------------------------
n241_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 440]
                        cmp              rax, 1
                                                                                        jge   .Lx277_0
                        add              rax, r15
                        add              rax, 1
.Lx277_0:
                        cmp              rax, 1
                                                                                        jge   .Lx277_239
                        add              rsp, 16
                                                                                        jmp   n228_disjunction_af
.Lx277_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx277_240
                        add              rsp, 16
                                                                                        jmp   n228_disjunction_af
.Lx277_240:
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
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n242_lit_charset_α
n241_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n228_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n242_lit_charset_α:
                        mov              qword ptr [rbp + 368], 2                       # result
                        mov              dword ptr [rbp + 372], -1
                        mov              rax, qword ptr [rip + .Lx278_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n243_scan_upto_α
.Lx278_0:
                        .quad            .Lx278_0_s
.Lx278_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n243_scan_upto_α:
                        mov              qword ptr [rbp + 352], r14
.Lx280_0:
                        mov              rax, qword ptr [rbp + 352]
                        cmp              rax, r15
                                                                                        jge   n241_scan_tab_β
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx280_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx280_1
                        mov              qword ptr [rbp + 336], 3
                        add              rax, 1
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n244_lit_integer_α
.Lx280_1:
                        inc              qword ptr [rbp + 352]
                                                                                        jmp   .Lx280_0
n243_scan_upto_β:
                        inc              qword ptr [rbp + 352]
                                                                                        jmp   .Lx280_0
.Lx280_2:
                        .quad            .Lx280_2_s
.Lx280_2_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n244_lit_integer_α:
                        mov              qword ptr [rbp + 384], 3                       # result
                        mov              rax, qword ptr [rip + .Lx281_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n245_coerce_numeric_α
.Lx281_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n245_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 336]
                        cmp              eax, 5
                                                                                        je    .Lx283_1
                        cmp              eax, 3
                                                                                        jne   .Lx283_0
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 3
                                                                                        jne   .Lx283_0
.Lx283_1:
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n246_binop_α
.Lx283_0:
                        lea              rdi, [rbp + 336]                               # self
                        lea              rsi, [rbp + 384]                               # other
                        lea              rdx, [rbp + 320]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n246_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n246_binop_α:
                        mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 3
                                                                                        jne   .Lx284_0
                        mov              rax, qword ptr [rbp + 328]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 304], 3
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n247_scan_tab_α
.Lx284_0:
                        mov              rdi, qword ptr [rbp + 320]
                        mov              rsi, qword ptr [rbp + 328]
                        mov              rdx, qword ptr [rbp + 384]
                        mov              rcx, qword ptr [rbp + 392]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n241_scan_tab_β
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n247_scan_tab_α
#-----------------------------------------------------------------------------------------------------------------------
n247_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 312]
                        cmp              rax, 1
                                                                                        jge   .Lx286_0
                        add              rax, r15
                        add              rax, 1
.Lx286_0:
                        cmp              rax, 1
                                                                                        jge   .Lx286_239
                        add              rsp, 16
                                                                                        jmp   n243_scan_upto_β
.Lx286_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx286_240
                        add              rsp, 16
                                                                                        jmp   n243_scan_upto_β
.Lx286_240:
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
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n248_conjunction_α
n247_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n243_scan_upto_β
#-----------------------------------------------------------------------------------------------------------------------
n248_conjunction_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n228_disjunction_as
n248_conjunction_β:
                                                                                        jmp   n228_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n249_lit_string_α:
                        mov              qword ptr [rbp + 240], 2                       # result
                        mov              dword ptr [rbp + 244], 5
                        mov              rax, qword ptr [rip + .Lx288_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n250_scan_match_α
n249_lit_string_β:
                                                                                        jmp   n228_disjunction_af
.Lx288_0:
                        .quad            .Lx288_0_s
.Lx288_0_s:
                        .string          "jcon/"
#-----------------------------------------------------------------------------------------------------------------------
n250_scan_match_α:
                        sub              rsp, 16
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 5
                                                                                        jge   .Lx290_239
                        add              rsp, 16
                                                                                        jmp   n228_disjunction_af
.Lx290_239:
                        mov              rdi, qword ptr [rip + .Lx290_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 5
                        push             r10
                        call             memcmp@PLT
                        pop              r10
                        test             eax, eax
                                                                                        je    .Lx290_240
                        add              rsp, 16
                                                                                        jmp   n228_disjunction_af
.Lx290_240:
                        mov              qword ptr [rbp + 208], 3
                        mov              rax, r14
                        add              rax, 6
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n251_scan_tab_α
.Lx290_0:
                        .quad            .Lx290_0_s
.Lx290_0_s:
                        .string          "jcon/"
#-----------------------------------------------------------------------------------------------------------------------
n251_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 216]
                        cmp              rax, 1
                                                                                        jge   .Lx292_0
                        add              rax, r15
                        add              rax, 1
.Lx292_0:
                        cmp              rax, 1
                                                                                        jge   .Lx292_239
                        add              rsp, 16
                                                                                        jmp   n228_disjunction_af
.Lx292_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx292_240
                        add              rsp, 16
                                                                                        jmp   n228_disjunction_af
.Lx292_240:
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
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n228_disjunction_as
n251_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n228_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
proc_fixname_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_fixname_β:
                                                                                        jmp   proc_fixname_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_fixname_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_fixname_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_fixname_dcα:
                        pop              r11
                        sub              rsp, 736
                        mov              qword ptr [rsp + 712], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 688], r11
                        lea              rax, [rip + .Lx293_2]
                        mov              qword ptr [rbp + 696], rax
                        lea              rax, [rip + .Lx293_3]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp                                       # fb
                        mov              esi, 672                                       # suffix_off
                        mov              edx, 688                                       # region_bytes
                        mov              ecx, 1                                         # np
                        mov              r8d, 1                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_fixname_α_body
.Lx293_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -720
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx293_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -720
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pad_α
proc_pad_α:
proc_pad_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n294_disjunction_α:
                        mov              qword ptr [rbp + 48], 0
                        mov              qword ptr [rbp + 56], 0
                        mov              dword ptr [rbp + 64], 0
                                                                                        jmp   n297_var_α
n294_disjunction_as:
                        mov              eax, dword ptr [rbp + 64]
                        cmp              eax, 0
                                                                                        jne   .Lx306_0
                                                                                        jmp   proc_pad_ω
.Lx306_0:
                        cmp              eax, 1
                                                                                        jne   .Lx306_1
                                                                                        jmp   proc_pad_ω
.Lx306_1:
                                                                                        jmp   proc_pad_ω
n294_disjunction_β:
                        mov              eax, dword ptr [rbp + 64]
                        cmp              eax, 0
                                                                                        je    proc_pad_ω
                                                                                        jmp   proc_pad_ω
n294_disjunction_af:
                        add              dword ptr [rbp + 64], 1
                        mov              eax, dword ptr [rbp + 64]
                        cmp              eax, 1
                                                                                        je    n295_var_α
                                                                                        jmp   proc_pad_ω
#-----------------------------------------------------------------------------------------------------------------------
n295_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n296_return_α
n295_var_β:
                                                                                        jmp   proc_pad_ω
#-----------------------------------------------------------------------------------------------------------------------
n296_return_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_pad_γ
#-----------------------------------------------------------------------------------------------------------------------
n297_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n298_unop_α
n297_var_β:
                                                                                        jmp   n294_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n298_unop_α:
                        mov              rdi, qword ptr [rbp + 16]                      # lo
                        mov              rsi, qword ptr [rbp + 24]                      # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n299_var_α
#-----------------------------------------------------------------------------------------------------------------------
n299_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n300_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n300_binop_test_α:
                        mov              eax, dword ptr [rbp + 192]
                        cmp              eax, 112
                                                                                        je    .Lx315_0
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 112
                                                                                        je    .Lx315_0
                        mov              eax, dword ptr [rbp + 192]
                        cmp              eax, 3
                                                                                        jne   .Lx315_2
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 3
                                                                                        jne   .Lx315_2
.Lx315_1:
                        mov              rax, qword ptr [rbp + 200]
                        mov              rcx, qword ptr [rbp + 40]
                        cmp              rax, rcx
                                                                                        jge   n294_disjunction_af
                        mov              rcx, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 176], rcx
                        mov              rcx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 184], rcx
                                                                                        jmp   n301_var_α
.Lx315_0:
                        mov              rdi, qword ptr [rbp + 192]                     # a
                        mov              rsi, qword ptr [rbp + 200]                     # a
                        mov              rdx, qword ptr [rbp + 32]                      # b
                        mov              rcx, qword ptr [rbp + 40]                      # b
                        mov              r8d, 5                                         # op
                        lea              r9, [rbp + 176]                                # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx315_1
                        cmp              eax, 1
                                                                                        je    n294_disjunction_af
                                                                                        jmp   n301_var_α
.Lx315_2:
                        mov              rdi, qword ptr [rbp + 192]                     # lhs
                        mov              rsi, qword ptr [rbp + 200]                     # lhs
                        mov              rdx, qword ptr [rbp + 32]                      # rhs
                        mov              rcx, qword ptr [rbp + 40]                      # rhs
                        mov              r8d, 5                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n294_disjunction_af
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n301_var_α
#-----------------------------------------------------------------------------------------------------------------------
n301_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n302_var_α
#-----------------------------------------------------------------------------------------------------------------------
n302_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n303_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n303_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 104], rax
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn321:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn321]                         # fn
                        lea              rsi, [rbp + 96]                                # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 104
                                                                                        je    proc_pad_ω
                                                                                        jmp   n304_return_α
n303_call_builtin_icon_β:
                                                                                        jmp   proc_pad_ω
#-----------------------------------------------------------------------------------------------------------------------
n304_return_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              rdx, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_pad_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_pad_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pad_β:
                                                                                        jmp   proc_pad_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_pad_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_pad_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_pad_dcα:
                        pop              r11
                        sub              rsp, 320
                        mov              qword ptr [rsp + 296], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 272], r11
                        lea              rax, [rip + .Lx323_2]
                        mov              qword ptr [rbp + 280], rax
                        lea              rax, [rip + .Lx323_3]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              rdi, rbp                                       # fb
                        mov              esi, 256                                       # suffix_off
                        mov              edx, 272                                       # region_bytes
                        mov              ecx, 2                                         # np
                        mov              r8d, 2                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_pad_α_body
.Lx323_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -304
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx323_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -304
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lclassspec0:           .string          "method(name,ncalls,tself,tcalled,tlocal)"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lclassspec0]
                        call             record_register@PLT
                        .section         .rodata
.Lstartup_pname0:       .string          "lookup"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_lookup_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 560
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_lookup_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "accumulate"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_accumulate_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 2032
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_accumulate_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "fixname"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_fixname_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 672
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_fixname_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "pad"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_pad_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 256
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_pad_dcα]
                        call             rt_proc_set_dcfn@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "ptab"
.Lgvan1:                .string          "lookup__INITFLAG__0"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 2
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 2
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
n324_disjunction_α:
                        mov              qword ptr [rbp + 3824], 0
                        mov              qword ptr [rbp + 3832], 0
                        mov              dword ptr [rbp + 3840], 0
                                                                                        jmp   n325_var_ref_α
n324_disjunction_as:
                        mov              eax, dword ptr [rbp + 3840]
                        cmp              eax, 0
                                                                                        jne   .Lx512_0
                        mov              rax, qword ptr [rbp + 3856]
                        mov              qword ptr [rbp + 3824], rax
                        mov              rax, qword ptr [rbp + 3864]
                        mov              qword ptr [rbp + 3832], rax
                                                                                        jmp   n334_disjunction_α
.Lx512_0:
                                                                                        jmp   n334_disjunction_α
n324_disjunction_β:
                        mov              eax, dword ptr [rbp + 3840]
                                                                                        jmp   n334_disjunction_α
n324_disjunction_af:
                        add              dword ptr [rbp + 3840], 1
                        mov              eax, dword ptr [rbp + 3840]
                                                                                        jmp   n334_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n325_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3952], rax
                        mov              qword ptr [rbp + 3960], rdx
                                                                                        jmp   n326_lit_integer_α
n325_var_ref_β:
                                                                                        jmp   n324_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n326_lit_integer_α:
                        mov              qword ptr [rbp + 3968], 3                      # result
                        mov              rax, qword ptr [rip + .Lx515_0]
                        mov              qword ptr [rbp + 3976], rax
                                                                                        jmp   n327_subscript_α
.Lx515_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n327_subscript_α:
                        mov              rdi, qword ptr [rbp + 3952]                    # base
                        mov              rsi, qword ptr [rbp + 3960]                    # base
                        mov              rdx, qword ptr [rbp + 3968]                    # idx
                        mov              rcx, qword ptr [rbp + 3976]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n324_disjunction_af
                        mov              qword ptr [rbp + 3984], rax
                        mov              qword ptr [rbp + 3992], rdx
                                                                                        jmp   n328_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n328_deref_α:
                        mov              rdi, qword ptr [rbp + 3984]                    # d
                        mov              rsi, qword ptr [rbp + 3992]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n324_disjunction_af
                        mov              qword ptr [rbp + 4000], rax
                        mov              qword ptr [rbp + 4008], rdx
                                                                                        jmp   n329_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n329_lit_string_α:
                        mov              qword ptr [rbp + 4016], 2                      # result
                        mov              dword ptr [rbp + 4020], 2
                        mov              rax, qword ptr [rip + .Lx518_0]
                        mov              qword ptr [rbp + 4024], rax
                                                                                        jmp   n330_binop_test_α
.Lx518_0:
                        .quad            .Lx518_0_s
.Lx518_0_s:
                        .string          "-t"
#-----------------------------------------------------------------------------------------------------------------------
n330_binop_test_α:
                        mov              rdi, qword ptr [rbp + 4000]                    # lhs
                        mov              rsi, qword ptr [rbp + 4008]                    # lhs
                        mov              rdx, qword ptr [rbp + 4016]                    # rhs
                        mov              rcx, qword ptr [rbp + 4024]                    # rhs
                        mov              r8d, 16                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n324_disjunction_af
                        mov              rdi, qword ptr [rbp + 4016]                    # d
                        mov              rsi, qword ptr [rbp + 4024]                    # d
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 3936], rax
                        mov              qword ptr [rbp + 3944], rdx
                                                                                        jmp   n331_var_α
#-----------------------------------------------------------------------------------------------------------------------
n331_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 3920], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 3928], rax
                                                                                        jmp   n332_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n332_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3920]
                        mov              qword ptr [rbp + 3888], rax
                        mov              rax, qword ptr [rbp + 3928]
                        mov              qword ptr [rbp + 3896], rax
                        .section         .rodata
.Lrkfn523:              .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn523]                         # fn
                        lea              rsi, [rbp + 3888]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3872], rax
                        mov              qword ptr [rbp + 3880], rdx
                        cmp              eax, 104
                                                                                        je    n334_disjunction_α
                                                                                        jmp   n333_assign_α
n332_call_builtin_icon_β:
                                                                                        jmp   n334_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n333_assign_α:
                        mov              rax, qword ptr [rbp + 3872]
                        mov              rdx, qword ptr [rbp + 3880]
                        mov              qword ptr [rbp + 4112], rax
                        mov              qword ptr [rbp + 4120], rdx
                        mov              qword ptr [rbp + 3856], rax
                        mov              qword ptr [rbp + 3864], rdx
                                                                                        jmp   n324_disjunction_as
n333_assign_β:
                                                                                        jmp   n334_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n334_disjunction_α:
                        mov              qword ptr [rbp + 3328], 0
                        mov              qword ptr [rbp + 3336], 0
                        mov              dword ptr [rbp + 3344], 0
                                                                                        jmp   n493_var_α
n334_disjunction_as:
                        mov              eax, dword ptr [rbp + 3344]
                        cmp              eax, 0
                                                                                        jne   .Lx526_0
                        mov              rax, qword ptr [rbp + 3360]
                        mov              qword ptr [rbp + 3328], rax
                        mov              rax, qword ptr [rbp + 3368]
                        mov              qword ptr [rbp + 3336], rax
                                                                                        jmp   n335_var_α
.Lx526_0:
                        cmp              eax, 1
                                                                                        jne   .Lx526_1
                        mov              rax, qword ptr [rbp + 3776]
                        mov              qword ptr [rbp + 3328], rax
                        mov              rax, qword ptr [rbp + 3784]
                        mov              qword ptr [rbp + 3336], rax
                                                                                        jmp   n335_var_α
.Lx526_1:
                                                                                        jmp   n335_var_α
n334_disjunction_β:
                        mov              eax, dword ptr [rbp + 3344]
                        cmp              eax, 0
                                                                                        je    n497_disjunction_β
                                                                                        jmp   n335_var_α
n334_disjunction_af:
                        add              dword ptr [rbp + 3344], 1
                        mov              eax, dword ptr [rbp + 3344]
                        cmp              eax, 1
                                                                                        je    n491_keyword_icon_α
                                                                                        jmp   n335_var_α
#-----------------------------------------------------------------------------------------------------------------------
n335_var_α:
                        mov              rax, qword ptr [rbp + 4144]
                        mov              qword ptr [rbp + 2976], rax
                        mov              rax, qword ptr [rbp + 4152]
                        mov              qword ptr [rbp + 2984], rax
                                                                                        jmp   n336_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n336_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2976]
                        mov              qword ptr [rbp + 2944], rax
                        mov              rax, qword ptr [rbp + 2984]
                        mov              qword ptr [rbp + 2952], rax
                        .section         .rodata
.Lrkfn530:              .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn530]                         # fn
                        lea              rsi, [rbp + 2944]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2928], rax
                        mov              qword ptr [rbp + 2936], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx529_240
                        add              rsp, 3936
                                                                                        jmp   n352_make_list_α
.Lx529_240:
                                                                                        jmp   n337_assign_α
n336_call_builtin_icon_β:
                        add              rsp, 3936
                                                                                        jmp   n352_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n337_assign_α:
                        mov              rax, qword ptr [rbp + 2928]
                        mov              rdx, qword ptr [rbp + 2936]
                        mov              qword ptr [rbp + 4128], rax
                        mov              qword ptr [rbp + 4136], rdx
                                                                                        jmp   n338_var_α
#-----------------------------------------------------------------------------------------------------------------------
n338_var_α:
                        mov              rax, qword ptr [rbp + 4128]
                        mov              qword ptr [rbp + 3312], rax
                        mov              rax, qword ptr [rbp + 4136]
                        mov              qword ptr [rbp + 3320], rax
                                                                                        jmp   n339_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n339_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 3312]                    # lo
                        mov              rsi, qword ptr [rbp + 3320]                    # hi
                        mov              rdx, r13                                       # sigma
                        mov              rcx, r14                                       # delta
                        mov              r8, r15                                        # Delta
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n340_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n340_disjunction_α:
                        mov              qword ptr [rbp + 3200], 0
                        mov              qword ptr [rbp + 3208], 0
                        mov              dword ptr [rbp + 3216], 0
                                                                                        jmp   n349_lit_string_α
n340_disjunction_as:
                        mov              eax, dword ptr [rbp + 3216]
                        cmp              eax, 0
                                                                                        jne   .Lx537_0
                                                                                        jmp   n341_disjunction_α
.Lx537_0:
                                                                                        jmp   n341_disjunction_α
n340_disjunction_β:
                        mov              eax, dword ptr [rbp + 3216]
                                                                                        jmp   n341_disjunction_α
n340_disjunction_af:
                        add              dword ptr [rbp + 3216], 1
                        mov              eax, dword ptr [rbp + 3216]
                                                                                        jmp   n341_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n341_disjunction_α:
                        mov              qword ptr [rbp + 3120], 0
                        mov              qword ptr [rbp + 3128], 0
                        mov              dword ptr [rbp + 3136], 0
                                                                                        jmp   n346_lit_charset_α
n341_disjunction_as:
                        mov              eax, dword ptr [rbp + 3136]
                        cmp              eax, 0
                                                                                        jne   .Lx539_0
                                                                                        jmp   n342_call_proc_staged_α
.Lx539_0:
                                                                                        jmp   n342_call_proc_staged_α
n341_disjunction_β:
                        mov              eax, dword ptr [rbp + 3136]
                                                                                        jmp   n342_call_proc_staged_α
n341_disjunction_af:
                        add              dword ptr [rbp + 3136], 1
                        mov              eax, dword ptr [rbp + 3136]
                                                                                        jmp   n342_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n342_call_proc_staged_α:
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        call             proc_accumulate_dcα
                                                                                        jmp   .Lx541_2
.Lx541_2:
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        mov              qword ptr [rbp + 3088], rax
                        mov              qword ptr [rbp + 3096], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx541_240
                        add              rsp, 3936
                                                                                        jmp   n345_scan_α
.Lx541_240:
                                                                                        jmp   n343_conjunction_α
n342_call_proc_staged_β:
                                                                                        jmp   n345_scan_α
.Lx541_0:
                        .quad            .Lx541_0_s
.Lx541_0_s:
                        .string          "accumulate"
#-----------------------------------------------------------------------------------------------------------------------
n343_conjunction_α:
                        mov              rax, qword ptr [rbp + 3088]
                        mov              qword ptr [rbp + 3072], rax
                        mov              rax, qword ptr [rbp + 3096]
                        mov              qword ptr [rbp + 3080], rax
                                                                                        jmp   n344_scan_α
n343_conjunction_β:
                                                                                        jmp   n345_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n344_scan_α:
                        mov              rax, qword ptr [rbp + 3072]
                        mov              qword ptr [rbp + 3040], rax
                        mov              rax, qword ptr [rbp + 3080]
                        mov              qword ptr [rbp + 3048], rax
                        lea              rdi, [rbp + 3008]                              # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 3008]
                        mov              r14, qword ptr [rbp + 3016]
                        mov              r15, qword ptr [rbp + 3024]
                                                                                        jmp   n335_var_α
n344_scan_β:
                                                                                        jmp   n335_var_α
#-----------------------------------------------------------------------------------------------------------------------
n345_scan_α:
                        lea              rdi, [rbp + 3008]                              # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 3008]
                        mov              r14, qword ptr [rbp + 3016]
                        mov              r15, qword ptr [rbp + 3024]
                                                                                        jmp   n335_var_α
n345_scan_β:
                                                                                        jmp   n335_var_α
#-----------------------------------------------------------------------------------------------------------------------
n346_lit_charset_α:
                        mov              qword ptr [rbp + 3184], 2                      # result
                        mov              dword ptr [rbp + 3188], -1
                        mov              rax, qword ptr [rip + .Lx547_0]
                        mov              qword ptr [rbp + 3192], rax
                                                                                        jmp   n347_scan_any_α
n346_lit_charset_β:
                                                                                        jmp   n348_var_α
.Lx547_0:
                        .quad            .Lx547_0_s
.Lx547_0_s:
                        .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n347_scan_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   n348_var_α
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx549_0]
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                                                                                        je    n348_var_α
                        mov              qword ptr [rbp + 3168], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 3176], rax
                                                                                        jmp   n341_disjunction_af
.Lx549_0:
                        .quad            .Lx549_0_s
.Lx549_0_s:
                        .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n348_var_α:
                        mov              qword ptr [rbp + 3152], 0
                        mov              qword ptr [rbp + 3160], 0
                                                                                        jmp   n352_make_list_α
n348_var_β:
                                                                                        jmp   n341_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n349_lit_string_α:
                        mov              qword ptr [rbp + 3296], 2                      # result
                        mov              dword ptr [rbp + 3300], 5
                        mov              rax, qword ptr [rip + .Lx551_0]
                        mov              qword ptr [rbp + 3304], rax
                                                                                        jmp   n350_scan_match_α
n349_lit_string_β:
                                                                                        jmp   n340_disjunction_af
.Lx551_0:
                        .quad            .Lx551_0_s
.Lx551_0_s:
                        .string          "count"
#-----------------------------------------------------------------------------------------------------------------------
n350_scan_match_α:
                        sub              rsp, 16
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 5
                                                                                        jge   .Lx553_239
                        add              rsp, 16
                                                                                        jmp   n340_disjunction_af
.Lx553_239:
                        mov              rdi, qword ptr [rip + .Lx553_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 5
                        push             r10
                        call             memcmp@PLT
                        pop              r10
                        test             eax, eax
                                                                                        je    .Lx553_240
                        add              rsp, 16
                                                                                        jmp   n340_disjunction_af
.Lx553_240:
                        mov              qword ptr [rbp + 3264], 3
                        mov              rax, r14
                        add              rax, 6
                        mov              qword ptr [rbp + 3272], rax
                                                                                        jmp   n351_scan_tab_α
.Lx553_0:
                        .quad            .Lx553_0_s
.Lx553_0_s:
                        .string          "count"
#-----------------------------------------------------------------------------------------------------------------------
n351_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 3272]
                        cmp              rax, 1
                                                                                        jge   .Lx555_0
                        add              rax, r15
                        add              rax, 1
.Lx555_0:
                        cmp              rax, 1
                                                                                        jge   .Lx555_239
                        add              rsp, 16
                                                                                        jmp   n340_disjunction_af
.Lx555_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx555_240
                        add              rsp, 16
                                                                                        jmp   n340_disjunction_af
.Lx555_240:
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
                        mov              qword ptr [rbp + 3232], rax
                        mov              qword ptr [rbp + 3240], rdx
                                                                                        jmp   n335_var_α
n351_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n340_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n352_make_list_α:
                        lea              rdi, [rbp + 2928]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 2912], rax
                        mov              qword ptr [rbp + 2920], rdx
                                                                                        jmp   n353_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n353_assign_α:
                        mov              rax, qword ptr [rbp + 2912]
                        mov              rdx, qword ptr [rbp + 2920]
                        mov              qword ptr [rbp + 4048], rax
                        mov              qword ptr [rbp + 4056], rdx
                                                                                        jmp   n354_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n354_lit_integer_α:
                        mov              qword ptr [rbp + 2896], 3                      # result
                        mov              rax, qword ptr [rip + .Lx559_0]
                        mov              qword ptr [rbp + 2904], rax
                                                                                        jmp   n355_assign_α
.Lx559_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n355_assign_α:
                        mov              rax, qword ptr [rbp + 2896]
                        mov              rdx, qword ptr [rbp + 2904]
                        mov              qword ptr [rbp + 4096], rax
                        mov              qword ptr [rbp + 4104], rdx
                                                                                        jmp   n356_var_α
#-----------------------------------------------------------------------------------------------------------------------
n356_var_α:
                        mov              rax, qword ptr [1879052288]                    # ptab
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 2352], rax                    # result
                        mov              qword ptr [rbp + 2360], rdx
                                                                                        jmp   n357_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n357_iterate_α:
                        mov              qword ptr [rbp + 2336], 0
.Lx563_0:
                        mov              rdi, qword ptr [rbp + 2352]                    # obj
                        mov              rsi, qword ptr [rbp + 2360]                    # obj
                        mov              rdx, qword ptr [rbp + 2336]                    # idx
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx
                        cmp              rax, 99
                                                                                        je    n387_disjunction_α
                                                                                        jmp   n358_assign_α
n357_iterate_β:
                        inc              qword ptr [rbp + 2336]
                                                                                        jmp   .Lx563_0
#-----------------------------------------------------------------------------------------------------------------------
n358_assign_α:
                        mov              rax, qword ptr [rbp + 2320]
                        mov              rdx, qword ptr [rbp + 2328]
                        mov              qword ptr [rbp + 4032], rax
                        mov              qword ptr [rbp + 4040], rdx
                                                                                        jmp   n359_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n359_bound_α:
                        mov              qword ptr [rbp + 2368], rsp
                                                                                        jmp   n360_var_α
#-----------------------------------------------------------------------------------------------------------------------
n360_var_α:
                        mov              rax, qword ptr [rbp + 4032]
                        mov              qword ptr [rbp + 2752], rax
                        mov              rax, qword ptr [rbp + 4040]
                        mov              qword ptr [rbp + 2760], rax
                                                                                        jmp   n361_field_var_α
#-----------------------------------------------------------------------------------------------------------------------
n361_field_var_α:
                        mov              rdi, qword ptr [rip + .Lx569_0]                # fname
                        mov              rsi, qword ptr [rbp + 2752]                    # obj
                        mov              rdx, qword ptr [rbp + 2760]                    # obj
                        call             rt_field_var@PLT
                        cmp              eax, 104
                                                                                        je    n370_disjunction_α
                        mov              qword ptr [rbp + 2736], rax
                        mov              qword ptr [rbp + 2744], rdx
                                                                                        jmp   n362_var_α
.Lx569_0:
                        .quad            .Lx569_0_s
.Lx569_0_s:
                        .string          "tlocal"
#-----------------------------------------------------------------------------------------------------------------------
n362_var_α:
                        mov              rax, qword ptr [rbp + 4032]
                        mov              qword ptr [rbp + 2848], rax
                        mov              rax, qword ptr [rbp + 4040]
                        mov              qword ptr [rbp + 2856], rax
                                                                                        jmp   n363_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n363_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx572_0]                # fname
                        mov              rsi, qword ptr [rbp + 2848]                    # obj
                        mov              rdx, qword ptr [rbp + 2856]                    # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        je    n370_disjunction_α
                        mov              qword ptr [rbp + 2832], rax
                        mov              qword ptr [rbp + 2840], rdx
                                                                                        jmp   n364_var_α
.Lx572_0:
                        .quad            .Lx572_0_s
.Lx572_0_s:
                        .string          "tself"
#-----------------------------------------------------------------------------------------------------------------------
n364_var_α:
                        mov              rax, qword ptr [rbp + 4032]
                        mov              qword ptr [rbp + 2880], rax
                        mov              rax, qword ptr [rbp + 4040]
                        mov              qword ptr [rbp + 2888], rax
                                                                                        jmp   n365_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n365_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx575_0]                # fname
                        mov              rsi, qword ptr [rbp + 2880]                    # obj
                        mov              rdx, qword ptr [rbp + 2888]                    # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        je    n370_disjunction_α
                        mov              qword ptr [rbp + 2864], rax
                        mov              qword ptr [rbp + 2872], rdx
                                                                                        jmp   n366_coerce_numeric_α
.Lx575_0:
                        .quad            .Lx575_0_s
.Lx575_0_s:
                        .string          "tcalled"
#-----------------------------------------------------------------------------------------------------------------------
n366_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 2832]
                        cmp              eax, 5
                                                                                        je    .Lx577_1
                        cmp              eax, 3
                                                                                        jne   .Lx577_0
                        mov              eax, dword ptr [rbp + 2864]
                        cmp              eax, 3
                                                                                        jne   .Lx577_0
.Lx577_1:
                        mov              rax, qword ptr [rbp + 2832]
                        mov              qword ptr [rbp + 2816], rax
                        mov              rax, qword ptr [rbp + 2840]
                        mov              qword ptr [rbp + 2824], rax
                                                                                        jmp   n367_coerce_numeric_α
.Lx577_0:
                        lea              rdi, [rbp + 2832]                              # self
                        lea              rsi, [rbp + 2864]                              # other
                        lea              rdx, [rbp + 2816]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n367_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n367_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 2864]
                        cmp              eax, 5
                                                                                        je    .Lx579_1
                        cmp              eax, 3
                                                                                        jne   .Lx579_0
                        mov              eax, dword ptr [rbp + 2832]
                        cmp              eax, 3
                                                                                        jne   .Lx579_0
.Lx579_1:
                        mov              rax, qword ptr [rbp + 2864]
                        mov              qword ptr [rbp + 2800], rax
                        mov              rax, qword ptr [rbp + 2872]
                        mov              qword ptr [rbp + 2808], rax
                                                                                        jmp   n368_binop_α
.Lx579_0:
                        lea              rdi, [rbp + 2864]                              # self
                        lea              rsi, [rbp + 2832]                              # other
                        lea              rdx, [rbp + 2800]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n368_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n368_binop_α:
                        mov              eax, dword ptr [rbp + 2816]
                        cmp              eax, 3
                                                                                        jne   .Lx580_0
                        mov              eax, dword ptr [rbp + 2800]
                        cmp              eax, 3
                                                                                        jne   .Lx580_0
                        mov              rax, qword ptr [rbp + 2824]
                        mov              rcx, qword ptr [rbp + 2808]
                        sub              rax, rcx
                        mov              qword ptr [rbp + 2784], 3
                        mov              qword ptr [rbp + 2792], rax
                                                                                        jmp   n369_assign_var_α
.Lx580_0:
                        mov              rdi, qword ptr [rbp + 2816]
                        mov              rsi, qword ptr [rbp + 2824]
                        mov              rdx, qword ptr [rbp + 2800]
                        mov              rcx, qword ptr [rbp + 2808]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        je    n370_disjunction_α
                        mov              qword ptr [rbp + 2784], rax
                        mov              qword ptr [rbp + 2792], rdx
                                                                                        jmp   n369_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n369_assign_var_α:
                        mov              rdi, qword ptr [rbp + 2736]                    # var
                        mov              rsi, qword ptr [rbp + 2744]                    # var
                        mov              rdx, qword ptr [rbp + 2784]                    # val
                        mov              rcx, qword ptr [rbp + 2792]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n370_disjunction_α
                        mov              qword ptr [rbp + 2768], rax
                        mov              qword ptr [rbp + 2776], rdx
                                                                                        jmp   n370_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n370_disjunction_α:
                        mov              qword ptr [rbp + 2528], 0
                        mov              qword ptr [rbp + 2536], 0
                        mov              dword ptr [rbp + 2544], 0
                                                                                        jmp   n371_var_α
n370_disjunction_as:
                        mov              eax, dword ptr [rbp + 2544]
                        cmp              eax, 0
                                                                                        jne   .Lx583_0
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 2528], rax
                        mov              rax, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 2536], rax
                                                                                        jmp   n382_var_α
.Lx583_0:
                                                                                        jmp   n382_var_α
n370_disjunction_β:
                        mov              eax, dword ptr [rbp + 2544]
                                                                                        jmp   n382_var_α
n370_disjunction_af:
                        add              dword ptr [rbp + 2544], 1
                        mov              eax, dword ptr [rbp + 2544]
                                                                                        jmp   n382_var_α
#-----------------------------------------------------------------------------------------------------------------------
n371_var_α:
                        mov              rax, qword ptr [rbp + 4032]
                        mov              qword ptr [rbp + 2704], rax
                        mov              rax, qword ptr [rbp + 4040]
                        mov              qword ptr [rbp + 2712], rax
                                                                                        jmp   n372_field_get_α
n371_var_β:
                                                                                        jmp   n370_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n372_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx586_0]                # fname
                        mov              rsi, qword ptr [rbp + 2704]                    # obj
                        mov              rdx, qword ptr [rbp + 2712]                    # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        je    n370_disjunction_af
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                                                                                        jmp   n373_lit_integer_α
.Lx586_0:
                        .quad            .Lx586_0_s
.Lx586_0_s:
                        .string          "tlocal"
#-----------------------------------------------------------------------------------------------------------------------
n373_lit_integer_α:
                        mov              qword ptr [rbp + 2720], 3                      # result
                        mov              rax, qword ptr [rip + .Lx587_0]
                        mov              qword ptr [rbp + 2728], rax
                                                                                        jmp   n374_binop_test_α
.Lx587_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n374_binop_test_α:
                        mov              eax, dword ptr [rbp + 2688]
                        cmp              eax, 112
                                                                                        je    .Lx588_0
                        mov              eax, dword ptr [rbp + 2720]
                        cmp              eax, 112
                                                                                        je    .Lx588_0
                        mov              eax, dword ptr [rbp + 2688]
                        cmp              eax, 3
                                                                                        jne   .Lx588_2
                        mov              eax, dword ptr [rbp + 2720]
                        cmp              eax, 3
                                                                                        jne   .Lx588_2
.Lx588_1:
                        mov              rax, qword ptr [rbp + 2696]
                        mov              rcx, qword ptr [rbp + 2728]
                        cmp              rax, rcx
                                                                                        jle   n370_disjunction_af
                        mov              rcx, qword ptr [rbp + 2720]
                        mov              qword ptr [rbp + 2672], rcx
                        mov              rcx, qword ptr [rbp + 2728]
                        mov              qword ptr [rbp + 2680], rcx
                                                                                        jmp   n375_var_α
.Lx588_0:
                        mov              rdi, qword ptr [rbp + 2688]                    # a
                        mov              rsi, qword ptr [rbp + 2696]                    # a
                        mov              rdx, qword ptr [rbp + 2720]                    # b
                        mov              rcx, qword ptr [rbp + 2728]                    # b
                        mov              r8d, 7                                         # op
                        lea              r9, [rbp + 2672]                               # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx588_1
                        cmp              eax, 1
                                                                                        je    n370_disjunction_af
                                                                                        jmp   n375_var_α
.Lx588_2:
                        mov              rdi, qword ptr [rbp + 2688]                    # lhs
                        mov              rsi, qword ptr [rbp + 2696]                    # lhs
                        mov              rdx, qword ptr [rbp + 2720]                    # rhs
                        mov              rcx, qword ptr [rbp + 2728]                    # rhs
                        mov              r8d, 7                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n370_disjunction_af
                        mov              rax, qword ptr [rbp + 2720]
                        mov              qword ptr [rbp + 2672], rax
                        mov              rax, qword ptr [rbp + 2728]
                        mov              qword ptr [rbp + 2680], rax
                                                                                        jmp   n375_var_α
#-----------------------------------------------------------------------------------------------------------------------
n375_var_α:
                        mov              rax, qword ptr [rbp + 4096]
                        mov              qword ptr [rbp + 2624], rax
                        mov              rax, qword ptr [rbp + 4104]
                        mov              qword ptr [rbp + 2632], rax
                                                                                        jmp   n376_var_α
#-----------------------------------------------------------------------------------------------------------------------
n376_var_α:
                        mov              rax, qword ptr [rbp + 4032]
                        mov              qword ptr [rbp + 2656], rax
                        mov              rax, qword ptr [rbp + 4040]
                        mov              qword ptr [rbp + 2664], rax
                                                                                        jmp   n377_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n377_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx593_0]                # fname
                        mov              rsi, qword ptr [rbp + 2656]                    # obj
                        mov              rdx, qword ptr [rbp + 2664]                    # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        je    n382_var_α
                        mov              qword ptr [rbp + 2640], rax
                        mov              qword ptr [rbp + 2648], rdx
                                                                                        jmp   n378_coerce_numeric_α
.Lx593_0:
                        .quad            .Lx593_0_s
.Lx593_0_s:
                        .string          "tlocal"
#-----------------------------------------------------------------------------------------------------------------------
n378_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 4096]
                        cmp              eax, 5
                                                                                        je    .Lx595_1
                        cmp              eax, 3
                                                                                        jne   .Lx595_0
                        mov              eax, dword ptr [rbp + 2640]
                        cmp              eax, 3
                                                                                        jne   .Lx595_0
.Lx595_1:
                        mov              rax, qword ptr [rbp + 4096]
                        mov              qword ptr [rbp + 2608], rax
                        mov              rax, qword ptr [rbp + 4104]
                        mov              qword ptr [rbp + 2616], rax
                                                                                        jmp   n379_coerce_numeric_α
.Lx595_0:
                        lea              rdi, [rbp + 4096]                              # self
                        lea              rsi, [rbp + 2640]                              # other
                        lea              rdx, [rbp + 2608]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n379_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n379_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 2640]
                        cmp              eax, 5
                                                                                        je    .Lx597_1
                        cmp              eax, 3
                                                                                        jne   .Lx597_0
                        mov              eax, dword ptr [rbp + 4096]
                        cmp              eax, 3
                                                                                        jne   .Lx597_0
.Lx597_1:
                        mov              rax, qword ptr [rbp + 2640]
                        mov              qword ptr [rbp + 2592], rax
                        mov              rax, qword ptr [rbp + 2648]
                        mov              qword ptr [rbp + 2600], rax
                                                                                        jmp   n380_binop_α
.Lx597_0:
                        lea              rdi, [rbp + 2640]                              # self
                        lea              rsi, [rbp + 4096]                              # other
                        lea              rdx, [rbp + 2592]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n380_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n380_binop_α:
                        mov              eax, dword ptr [rbp + 2608]
                        cmp              eax, 3
                                                                                        jne   .Lx598_0
                        mov              eax, dword ptr [rbp + 2592]
                        cmp              eax, 3
                                                                                        jne   .Lx598_0
                        mov              rax, qword ptr [rbp + 2616]
                        mov              rcx, qword ptr [rbp + 2600]
                        add              rax, rcx
                        mov              qword ptr [rbp + 2576], 3
                        mov              qword ptr [rbp + 2584], rax
                                                                                        jmp   n381_assign_α
.Lx598_0:
                        mov              rdi, qword ptr [rbp + 2608]
                        mov              rsi, qword ptr [rbp + 2616]
                        mov              rdx, qword ptr [rbp + 2592]
                        mov              rcx, qword ptr [rbp + 2600]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n382_var_α
                        mov              qword ptr [rbp + 2576], rax
                        mov              qword ptr [rbp + 2584], rdx
                                                                                        jmp   n381_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n381_assign_α:
                        mov              rax, qword ptr [rbp + 2576]
                        mov              rdx, qword ptr [rbp + 2584]
                        mov              qword ptr [rbp + 4096], rax
                        mov              qword ptr [rbp + 4104], rdx
                        mov              qword ptr [rbp + 2560], rax
                        mov              qword ptr [rbp + 2568], rdx
                                                                                        jmp   n370_disjunction_as
n381_assign_β:
                                                                                        jmp   n382_var_α
#-----------------------------------------------------------------------------------------------------------------------
n382_var_α:
                        mov              rax, qword ptr [rbp + 4048]
                        mov              qword ptr [rbp + 2496], rax
                        mov              rax, qword ptr [rbp + 4056]
                        mov              qword ptr [rbp + 2504], rax
                                                                                        jmp   n383_var_α
#-----------------------------------------------------------------------------------------------------------------------
n383_var_α:
                        mov              rax, qword ptr [rbp + 4032]
                        mov              qword ptr [rbp + 2512], rax
                        mov              rax, qword ptr [rbp + 4040]
                        mov              qword ptr [rbp + 2520], rax
                                                                                        jmp   n384_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n384_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2496]
                        mov              qword ptr [rbp + 2448], rax
                        mov              rax, qword ptr [rbp + 2504]
                        mov              qword ptr [rbp + 2456], rax
                        mov              rax, qword ptr [rbp + 2512]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 2520]
                        mov              qword ptr [rbp + 2472], rax
                        .section         .rodata
.Lrkfn605:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn605]                         # fn
                        lea              rsi, [rbp + 2448]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2432], rax
                        mov              qword ptr [rbp + 2440], rdx
                        cmp              eax, 104
                                                                                        je    n386_unmark_α
                                                                                        jmp   n385_conjunction_α
n384_call_builtin_icon_β:
                                                                                        jmp   n386_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n385_conjunction_α:
                        mov              rax, qword ptr [rbp + 2432]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 2440]
                        mov              qword ptr [rbp + 2424], rax
                                                                                        jmp   n386_unmark_α
n385_conjunction_β:
                                                                                        jmp   n386_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n386_unmark_α:
                        mov              rsp, qword ptr [rbp + 2368]
                                                                                        jmp   n357_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n387_disjunction_α:
                        mov              qword ptr [rbp + 2032], 0
                        mov              qword ptr [rbp + 2040], 0
                        mov              dword ptr [rbp + 2048], 0
                                                                                        jmp   n392_var_α
n387_disjunction_as:
                        mov              eax, dword ptr [rbp + 2048]
                        cmp              eax, 0
                                                                                        jne   .Lx610_0
                        mov              rax, qword ptr [rbp + 2064]
                        mov              qword ptr [rbp + 2032], rax
                        mov              rax, qword ptr [rbp + 2072]
                        mov              qword ptr [rbp + 2040], rax
                                                                                        jmp   n398_lit_string_α
.Lx610_0:
                        cmp              eax, 1
                                                                                        jne   .Lx610_1
                        mov              rax, qword ptr [rbp + 2208]
                        mov              qword ptr [rbp + 2032], rax
                        mov              rax, qword ptr [rbp + 2216]
                        mov              qword ptr [rbp + 2040], rax
                                                                                        jmp   n398_lit_string_α
.Lx610_1:
                                                                                        jmp   n398_lit_string_α
n387_disjunction_β:
                        mov              eax, dword ptr [rbp + 2048]
                        cmp              eax, 0
                                                                                        je    n398_lit_string_α
                                                                                        jmp   n398_lit_string_α
n387_disjunction_af:
                        add              dword ptr [rbp + 2048], 1
                        mov              eax, dword ptr [rbp + 2048]
                        cmp              eax, 1
                                                                                        je    n388_var_α
                                                                                        jmp   n398_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n388_var_α:
                        mov              rax, qword ptr [rbp + 4048]
                        mov              qword ptr [rbp + 2288], rax
                        mov              rax, qword ptr [rbp + 4056]
                        mov              qword ptr [rbp + 2296], rax
                                                                                        jmp   n389_lit_integer_α
n388_var_β:
                                                                                        jmp   n398_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n389_lit_integer_α:
                        mov              qword ptr [rbp + 2304], 3                      # result
                        mov              rax, qword ptr [rip + .Lx613_0]
                        mov              qword ptr [rbp + 2312], rax
                                                                                        jmp   n390_call_builtin_icon_α
.Lx613_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n390_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2288]
                        mov              qword ptr [rbp + 2240], rax
                        mov              rax, qword ptr [rbp + 2296]
                        mov              qword ptr [rbp + 2248], rax
                        mov              rax, qword ptr [rbp + 2304]
                        mov              qword ptr [rbp + 2256], rax
                        mov              rax, qword ptr [rbp + 2312]
                        mov              qword ptr [rbp + 2264], rax
                        .section         .rodata
.Lrkfn615:              .string          "sortf"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn615]                         # fn
                        lea              rsi, [rbp + 2240]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2224], rax
                        mov              qword ptr [rbp + 2232], rdx
                        cmp              eax, 104
                                                                                        je    n398_lit_string_α
                                                                                        jmp   n391_assign_α
n390_call_builtin_icon_β:
                                                                                        jmp   n398_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n391_assign_α:
                        mov              rax, qword ptr [rbp + 2224]
                        mov              rdx, qword ptr [rbp + 2232]
                        mov              qword ptr [rbp + 4048], rax
                        mov              qword ptr [rbp + 4056], rdx
                        mov              qword ptr [rbp + 2208], rax
                        mov              qword ptr [rbp + 2216], rdx
                                                                                        jmp   n387_disjunction_as
n391_assign_β:
                                                                                        jmp   n398_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n392_var_α:
                        mov              rax, qword ptr [rbp + 4112]
                        mov              qword ptr [rbp + 2192], rax
                        mov              rax, qword ptr [rbp + 4120]
                        mov              qword ptr [rbp + 2200], rax
                                                                                        jmp   n393_unop_test_α
n392_var_β:
                                                                                        jmp   n387_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n393_unop_test_α:
                        mov              eax, dword ptr [rbp + 4112]
                        cmp              eax, 104
                                                                                        je    n387_disjunction_af
                        cmp              eax, 0
                                                                                        je    n387_disjunction_af
                        mov              rax, qword ptr [rbp + 4112]
                        mov              qword ptr [rbp + 2176], rax
                        mov              rax, qword ptr [rbp + 4120]
                        mov              qword ptr [rbp + 2184], rax
                                                                                        jmp   n394_var_α
#-----------------------------------------------------------------------------------------------------------------------
n394_var_α:
                        mov              rax, qword ptr [rbp + 4048]
                        mov              qword ptr [rbp + 2144], rax
                        mov              rax, qword ptr [rbp + 4056]
                        mov              qword ptr [rbp + 2152], rax
                                                                                        jmp   n395_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n395_lit_integer_α:
                        mov              qword ptr [rbp + 2160], 3                      # result
                        mov              rax, qword ptr [rip + .Lx622_0]
                        mov              qword ptr [rbp + 2168], rax
                                                                                        jmp   n396_call_builtin_icon_α
.Lx622_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n396_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 2096], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 2104], rax
                        mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 2112], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 2120], rax
                        .section         .rodata
.Lrkfn624:              .string          "sortf"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn624]                         # fn
                        lea              rsi, [rbp + 2096]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2080], rax
                        mov              qword ptr [rbp + 2088], rdx
                        cmp              eax, 104
                                                                                        je    n398_lit_string_α
                                                                                        jmp   n397_assign_α
n396_call_builtin_icon_β:
                                                                                        jmp   n398_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n397_assign_α:
                        mov              rax, qword ptr [rbp + 2080]
                        mov              rdx, qword ptr [rbp + 2088]
                        mov              qword ptr [rbp + 4048], rax
                        mov              qword ptr [rbp + 4056], rdx
                        mov              qword ptr [rbp + 2064], rax
                        mov              qword ptr [rbp + 2072], rdx
                                                                                        jmp   n387_disjunction_as
n397_assign_β:
                                                                                        jmp   n398_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n398_lit_string_α:
                        mov              qword ptr [rbp + 2016], 2                      # result
                        mov              dword ptr [rbp + 2020], 37
                        mov              rax, qword ptr [rip + .Lx626_0]
                        mov              qword ptr [rbp + 2024], rax
                                                                                        jmp   n399_call_builtin_icon_α
.Lx626_0:
                        .quad            .Lx626_0_s
.Lx626_0_s:
                        .string          "  calls  totaltime   inmethod  method"
#-----------------------------------------------------------------------------------------------------------------------
n399_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2016]
                        mov              qword ptr [rbp + 1984], rax
                        mov              rax, qword ptr [rbp + 2024]
                        mov              qword ptr [rbp + 1992], rax
                        .section         .rodata
.Lrkfn628:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn628]                         # fn
                        lea              rsi, [rbp + 1984]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx
                        cmp              eax, 104
                                                                                        je    n400_var_α
                                                                                        jmp   n400_var_α
n399_call_builtin_icon_β:
                                                                                        jmp   n400_var_α
#-----------------------------------------------------------------------------------------------------------------------
n400_var_α:
                        mov              rax, qword ptr [rbp + 4048]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 4056]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n401_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n401_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 72], rax
                        .section         .rodata
.Lrkfn632:              .string          "pull"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn632]                         # fn
                        lea              rsi, [rbp + 64]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 104
                                                                                        je    main_ω
                                                                                        jmp   n402_assign_α
n401_call_builtin_icon_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n402_assign_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 4032], rax
                        mov              qword ptr [rbp + 4040], rdx
                                                                                        jmp   n403_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n403_disjunction_α:
                        mov              qword ptr [rbp + 1328], 0
                        mov              qword ptr [rbp + 1336], 0
                        mov              dword ptr [rbp + 1344], 0
                                                                                        jmp   n421_var_α
n403_disjunction_as:
                        mov              eax, dword ptr [rbp + 1344]
                        cmp              eax, 0
                                                                                        jne   .Lx635_0
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1336], rax
                                                                                        jmp   n442_lit_integer_α
.Lx635_0:
                        cmp              eax, 1
                                                                                        jne   .Lx635_1
                        mov              rax, qword ptr [rbp + 1696]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1704]
                        mov              qword ptr [rbp + 1336], rax
                                                                                        jmp   n442_lit_integer_α
.Lx635_1:
                                                                                        jmp   n442_lit_integer_α
n403_disjunction_β:
                        mov              eax, dword ptr [rbp + 1344]
                        cmp              eax, 0
                                                                                        je    n442_lit_integer_α
                                                                                        jmp   n442_lit_integer_α
n403_disjunction_af:
                        add              dword ptr [rbp + 1344], 1
                        mov              eax, dword ptr [rbp + 1344]
                        cmp              eax, 1
                                                                                        je    n404_lit_integer_α
                                                                                        jmp   n442_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n404_lit_integer_α:
                        mov              qword ptr [rbp + 1840], 3                      # result
                        mov              rax, qword ptr [rip + .Lx636_0]
                        mov              qword ptr [rbp + 1848], rax
                                                                                        jmp   n405_var_α
n404_lit_integer_β:
                                                                                        jmp   n442_lit_integer_α
.Lx636_0:
                        .quad            100
#-----------------------------------------------------------------------------------------------------------------------
n405_var_α:
                        mov              rax, qword ptr [rbp + 4032]
                        mov              qword ptr [rbp + 1872], rax
                        mov              rax, qword ptr [rbp + 4040]
                        mov              qword ptr [rbp + 1880], rax
                                                                                        jmp   n406_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n406_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx639_0]                # fname
                        mov              rsi, qword ptr [rbp + 1872]                    # obj
                        mov              rdx, qword ptr [rbp + 1880]                    # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        je    n442_lit_integer_α
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx
                                                                                        jmp   n407_coerce_numeric_α
.Lx639_0:
                        .quad            .Lx639_0_s
.Lx639_0_s:
                        .string          "tlocal"
#-----------------------------------------------------------------------------------------------------------------------
n407_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 1856]
                        cmp              eax, 5
                                                                                        je    .Lx641_1
                        cmp              eax, 3
                                                                                        jne   .Lx641_0
                        mov              eax, dword ptr [rbp + 1840]
                        cmp              eax, 3
                                                                                        jne   .Lx641_0
.Lx641_1:
                        mov              rax, qword ptr [rbp + 1856]
                        mov              qword ptr [rbp + 1824], rax
                        mov              rax, qword ptr [rbp + 1864]
                        mov              qword ptr [rbp + 1832], rax
                                                                                        jmp   n408_binop_α
.Lx641_0:
                        lea              rdi, [rbp + 1856]                              # self
                        lea              rsi, [rbp + 1840]                              # other
                        lea              rdx, [rbp + 1824]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n408_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n408_binop_α:
                        mov              eax, dword ptr [rbp + 1824]
                        cmp              eax, 3
                                                                                        jne   .Lx642_0
                        mov              rax, 100
                        mov              rcx, qword ptr [rbp + 1832]
                        imul             rax, rcx
                        mov              qword ptr [rbp + 1808], 3
                        mov              qword ptr [rbp + 1816], rax
                                                                                        jmp   n409_var_α
.Lx642_0:
                        mov              rdi, qword ptr [rbp + 1840]
                        mov              rsi, qword ptr [rbp + 1848]
                        mov              rdx, qword ptr [rbp + 1824]
                        mov              rcx, qword ptr [rbp + 1832]
                        call             rt_mul@PLT
                        cmp              eax, 104
                                                                                        je    n442_lit_integer_α
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                                                                                        jmp   n409_var_α
#-----------------------------------------------------------------------------------------------------------------------
n409_var_α:
                        mov              rax, qword ptr [rbp + 4096]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 4104]
                        mov              qword ptr [rbp + 1928], rax
                                                                                        jmp   n410_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n410_lit_integer_α:
                        mov              qword ptr [rbp + 1936], 3                      # result
                        mov              rax, qword ptr [rip + .Lx645_0]
                        mov              qword ptr [rbp + 1944], rax
                                                                                        jmp   n411_coerce_numeric_α
.Lx645_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n411_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 4096]
                        cmp              eax, 5
                                                                                        je    .Lx647_1
                        cmp              eax, 3
                                                                                        jne   .Lx647_0
                        mov              eax, dword ptr [rbp + 1936]
                        cmp              eax, 3
                                                                                        jne   .Lx647_0
.Lx647_1:
                        mov              rax, qword ptr [rbp + 4096]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 4104]
                        mov              qword ptr [rbp + 1912], rax
                                                                                        jmp   n412_binop_α
.Lx647_0:
                        lea              rdi, [rbp + 4096]                              # self
                        lea              rsi, [rbp + 1936]                              # other
                        lea              rdx, [rbp + 1904]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n412_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n412_binop_α:
                        mov              rdi, qword ptr [rbp + 1904]
                        mov              rsi, qword ptr [rbp + 1912]
                        mov              rdx, qword ptr [rbp + 1936]
                        mov              rcx, qword ptr [rbp + 1944]
                        call             rt_div@PLT
                        cmp              eax, 104
                                                                                        je    n442_lit_integer_α
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx
                                                                                        jmp   n413_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n413_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 1808]
                        cmp              eax, 5
                                                                                        je    .Lx650_1
                        cmp              eax, 3
                                                                                        jne   .Lx650_0
                        mov              eax, dword ptr [rbp + 1888]
                        cmp              eax, 3
                                                                                        jne   .Lx650_0
.Lx650_1:
                        mov              rax, qword ptr [rbp + 1808]
                        mov              qword ptr [rbp + 1792], rax
                        mov              rax, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 1800], rax
                                                                                        jmp   n414_coerce_numeric_α
.Lx650_0:
                        lea              rdi, [rbp + 1808]                              # self
                        lea              rsi, [rbp + 1888]                              # other
                        lea              rdx, [rbp + 1792]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n414_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n414_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 1888]
                        cmp              eax, 5
                                                                                        je    .Lx652_1
                        cmp              eax, 3
                                                                                        jne   .Lx652_0
                        mov              eax, dword ptr [rbp + 1808]
                        cmp              eax, 3
                                                                                        jne   .Lx652_0
.Lx652_1:
                        mov              rax, qword ptr [rbp + 1888]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 1896]
                        mov              qword ptr [rbp + 1784], rax
                                                                                        jmp   n415_binop_α
.Lx652_0:
                        lea              rdi, [rbp + 1888]                              # self
                        lea              rsi, [rbp + 1808]                              # other
                        lea              rdx, [rbp + 1776]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n415_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n415_binop_α:
                        mov              eax, dword ptr [rbp + 1792]
                        cmp              eax, 3
                                                                                        jne   .Lx653_0
                        mov              eax, dword ptr [rbp + 1776]
                        cmp              eax, 3
                                                                                        jne   .Lx653_0
                        mov              rax, qword ptr [rbp + 1800]
                        mov              rcx, qword ptr [rbp + 1784]
                        sub              rax, rcx
                        mov              qword ptr [rbp + 1760], 3
                        mov              qword ptr [rbp + 1768], rax
                                                                                        jmp   n416_var_α
.Lx653_0:
                        mov              rdi, qword ptr [rbp + 1792]
                        mov              rsi, qword ptr [rbp + 1800]
                        mov              rdx, qword ptr [rbp + 1776]
                        mov              rcx, qword ptr [rbp + 1784]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        je    n442_lit_integer_α
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx
                                                                                        jmp   n416_var_α
#-----------------------------------------------------------------------------------------------------------------------
n416_var_α:
                        mov              rax, qword ptr [rbp + 4096]
                        mov              qword ptr [rbp + 1952], rax
                        mov              rax, qword ptr [rbp + 4104]
                        mov              qword ptr [rbp + 1960], rax
                                                                                        jmp   n417_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n417_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 1760]
                        cmp              eax, 5
                                                                                        je    .Lx657_1
                        cmp              eax, 3
                                                                                        jne   .Lx657_0
                        mov              eax, dword ptr [rbp + 4096]
                        cmp              eax, 3
                                                                                        jne   .Lx657_0
.Lx657_1:
                        mov              rax, qword ptr [rbp + 1760]
                        mov              qword ptr [rbp + 1744], rax
                        mov              rax, qword ptr [rbp + 1768]
                        mov              qword ptr [rbp + 1752], rax
                                                                                        jmp   n418_coerce_numeric_α
.Lx657_0:
                        lea              rdi, [rbp + 1760]                              # self
                        lea              rsi, [rbp + 4096]                              # other
                        lea              rdx, [rbp + 1744]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n418_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n418_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 4096]
                        cmp              eax, 5
                                                                                        je    .Lx659_1
                        cmp              eax, 3
                                                                                        jne   .Lx659_0
                        mov              eax, dword ptr [rbp + 1760]
                        cmp              eax, 3
                                                                                        jne   .Lx659_0
.Lx659_1:
                        mov              rax, qword ptr [rbp + 4096]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 4104]
                        mov              qword ptr [rbp + 1736], rax
                                                                                        jmp   n419_binop_α
.Lx659_0:
                        lea              rdi, [rbp + 4096]                              # self
                        lea              rsi, [rbp + 1760]                              # other
                        lea              rdx, [rbp + 1728]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n419_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n419_binop_α:
                        mov              rdi, qword ptr [rbp + 1744]
                        mov              rsi, qword ptr [rbp + 1752]
                        mov              rdx, qword ptr [rbp + 1728]
                        mov              rcx, qword ptr [rbp + 1736]
                        call             rt_div@PLT
                        cmp              eax, 104
                                                                                        je    n442_lit_integer_α
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                                                                                        jmp   n420_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n420_assign_α:
                        mov              rax, qword ptr [rbp + 1712]
                        mov              rdx, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 4080], rax
                        mov              qword ptr [rbp + 4088], rdx
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                                                                                        jmp   n403_disjunction_as
n420_assign_β:
                                                                                        jmp   n442_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n421_var_α:
                        mov              rax, qword ptr [rbp + 4032]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 4040]
                        mov              qword ptr [rbp + 1672], rax
                                                                                        jmp   n422_field_get_α
n421_var_β:
                                                                                        jmp   n403_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n422_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx664_0]                # fname
                        mov              rsi, qword ptr [rbp + 1664]                    # obj
                        mov              rdx, qword ptr [rbp + 1672]                    # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        je    n403_disjunction_af
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx
                                                                                        jmp   n423_lit_integer_α
.Lx664_0:
                        .quad            .Lx664_0_s
.Lx664_0_s:
                        .string          "tlocal"
#-----------------------------------------------------------------------------------------------------------------------
n423_lit_integer_α:
                        mov              qword ptr [rbp + 1680], 3                      # result
                        mov              rax, qword ptr [rip + .Lx665_0]
                        mov              qword ptr [rbp + 1688], rax
                                                                                        jmp   n424_binop_test_α
.Lx665_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n424_binop_test_α:
                        mov              eax, dword ptr [rbp + 1648]
                        cmp              eax, 112
                                                                                        je    .Lx666_0
                        mov              eax, dword ptr [rbp + 1680]
                        cmp              eax, 112
                                                                                        je    .Lx666_0
                        mov              eax, dword ptr [rbp + 1648]
                        cmp              eax, 3
                                                                                        jne   .Lx666_2
                        mov              eax, dword ptr [rbp + 1680]
                        cmp              eax, 3
                                                                                        jne   .Lx666_2
.Lx666_1:
                        mov              rax, qword ptr [rbp + 1656]
                        mov              rcx, qword ptr [rbp + 1688]
                        cmp              rax, rcx
                                                                                        jle   n403_disjunction_af
                        mov              rcx, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1632], rcx
                        mov              rcx, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1640], rcx
                                                                                        jmp   n425_lit_integer_α
.Lx666_0:
                        mov              rdi, qword ptr [rbp + 1648]                    # a
                        mov              rsi, qword ptr [rbp + 1656]                    # a
                        mov              rdx, qword ptr [rbp + 1680]                    # b
                        mov              rcx, qword ptr [rbp + 1688]                    # b
                        mov              r8d, 7                                         # op
                        lea              r9, [rbp + 1632]                               # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx666_1
                        cmp              eax, 1
                                                                                        je    n403_disjunction_af
                                                                                        jmp   n425_lit_integer_α
.Lx666_2:
                        mov              rdi, qword ptr [rbp + 1648]                    # lhs
                        mov              rsi, qword ptr [rbp + 1656]                    # lhs
                        mov              rdx, qword ptr [rbp + 1680]                    # rhs
                        mov              rcx, qword ptr [rbp + 1688]                    # rhs
                        mov              r8d, 7                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n403_disjunction_af
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1640], rax
                                                                                        jmp   n425_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n425_lit_integer_α:
                        mov              qword ptr [rbp + 1504], 3                      # result
                        mov              rax, qword ptr [rip + .Lx667_0]
                        mov              qword ptr [rbp + 1512], rax
                                                                                        jmp   n426_var_α
.Lx667_0:
                        .quad            100
#-----------------------------------------------------------------------------------------------------------------------
n426_var_α:
                        mov              rax, qword ptr [rbp + 4032]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 4040]
                        mov              qword ptr [rbp + 1544], rax
                                                                                        jmp   n427_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n427_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx670_0]                # fname
                        mov              rsi, qword ptr [rbp + 1536]                    # obj
                        mov              rdx, qword ptr [rbp + 1544]                    # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        je    n442_lit_integer_α
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                                                                                        jmp   n428_coerce_numeric_α
.Lx670_0:
                        .quad            .Lx670_0_s
.Lx670_0_s:
                        .string          "tlocal"
#-----------------------------------------------------------------------------------------------------------------------
n428_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 1520]
                        cmp              eax, 5
                                                                                        je    .Lx672_1
                        cmp              eax, 3
                                                                                        jne   .Lx672_0
                        mov              eax, dword ptr [rbp + 1504]
                        cmp              eax, 3
                                                                                        jne   .Lx672_0
.Lx672_1:
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1496], rax
                                                                                        jmp   n429_binop_α
.Lx672_0:
                        lea              rdi, [rbp + 1520]                              # self
                        lea              rsi, [rbp + 1504]                              # other
                        lea              rdx, [rbp + 1488]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n429_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n429_binop_α:
                        mov              eax, dword ptr [rbp + 1488]
                        cmp              eax, 3
                                                                                        jne   .Lx673_0
                        mov              rax, 100
                        mov              rcx, qword ptr [rbp + 1496]
                        imul             rax, rcx
                        mov              qword ptr [rbp + 1472], 3
                        mov              qword ptr [rbp + 1480], rax
                                                                                        jmp   n430_var_α
.Lx673_0:
                        mov              rdi, qword ptr [rbp + 1504]
                        mov              rsi, qword ptr [rbp + 1512]
                        mov              rdx, qword ptr [rbp + 1488]
                        mov              rcx, qword ptr [rbp + 1496]
                        call             rt_mul@PLT
                        cmp              eax, 104
                                                                                        je    n442_lit_integer_α
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
                                                                                        jmp   n430_var_α
#-----------------------------------------------------------------------------------------------------------------------
n430_var_α:
                        mov              rax, qword ptr [rbp + 4096]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 4104]
                        mov              qword ptr [rbp + 1592], rax
                                                                                        jmp   n431_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n431_lit_integer_α:
                        mov              qword ptr [rbp + 1600], 3                      # result
                        mov              rax, qword ptr [rip + .Lx676_0]
                        mov              qword ptr [rbp + 1608], rax
                                                                                        jmp   n432_coerce_numeric_α
.Lx676_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n432_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 4096]
                        cmp              eax, 5
                                                                                        je    .Lx678_1
                        cmp              eax, 3
                                                                                        jne   .Lx678_0
                        mov              eax, dword ptr [rbp + 1600]
                        cmp              eax, 3
                                                                                        jne   .Lx678_0
.Lx678_1:
                        mov              rax, qword ptr [rbp + 4096]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 4104]
                        mov              qword ptr [rbp + 1576], rax
                                                                                        jmp   n433_binop_α
.Lx678_0:
                        lea              rdi, [rbp + 4096]                              # self
                        lea              rsi, [rbp + 1600]                              # other
                        lea              rdx, [rbp + 1568]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n433_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n433_binop_α:
                        mov              rdi, qword ptr [rbp + 1568]
                        mov              rsi, qword ptr [rbp + 1576]
                        mov              rdx, qword ptr [rbp + 1600]
                        mov              rcx, qword ptr [rbp + 1608]
                        call             rt_div@PLT
                        cmp              eax, 104
                                                                                        je    n442_lit_integer_α
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                                                                                        jmp   n434_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n434_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 1472]
                        cmp              eax, 5
                                                                                        je    .Lx681_1
                        cmp              eax, 3
                                                                                        jne   .Lx681_0
                        mov              eax, dword ptr [rbp + 1552]
                        cmp              eax, 3
                                                                                        jne   .Lx681_0
.Lx681_1:
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1464], rax
                                                                                        jmp   n435_coerce_numeric_α
.Lx681_0:
                        lea              rdi, [rbp + 1472]                              # self
                        lea              rsi, [rbp + 1552]                              # other
                        lea              rdx, [rbp + 1456]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n435_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n435_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 1552]
                        cmp              eax, 5
                                                                                        je    .Lx683_1
                        cmp              eax, 3
                                                                                        jne   .Lx683_0
                        mov              eax, dword ptr [rbp + 1472]
                        cmp              eax, 3
                                                                                        jne   .Lx683_0
.Lx683_1:
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1448], rax
                                                                                        jmp   n436_binop_α
.Lx683_0:
                        lea              rdi, [rbp + 1552]                              # self
                        lea              rsi, [rbp + 1472]                              # other
                        lea              rdx, [rbp + 1440]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n436_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n436_binop_α:
                        mov              eax, dword ptr [rbp + 1456]
                        cmp              eax, 3
                                                                                        jne   .Lx684_0
                        mov              eax, dword ptr [rbp + 1440]
                        cmp              eax, 3
                                                                                        jne   .Lx684_0
                        mov              rax, qword ptr [rbp + 1464]
                        mov              rcx, qword ptr [rbp + 1448]
                        add              rax, rcx
                        mov              qword ptr [rbp + 1424], 3
                        mov              qword ptr [rbp + 1432], rax
                                                                                        jmp   n437_var_α
.Lx684_0:
                        mov              rdi, qword ptr [rbp + 1456]
                        mov              rsi, qword ptr [rbp + 1464]
                        mov              rdx, qword ptr [rbp + 1440]
                        mov              rcx, qword ptr [rbp + 1448]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n442_lit_integer_α
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                                                                                        jmp   n437_var_α
#-----------------------------------------------------------------------------------------------------------------------
n437_var_α:
                        mov              rax, qword ptr [rbp + 4096]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 4104]
                        mov              qword ptr [rbp + 1624], rax
                                                                                        jmp   n438_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n438_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 1424]
                        cmp              eax, 5
                                                                                        je    .Lx688_1
                        cmp              eax, 3
                                                                                        jne   .Lx688_0
                        mov              eax, dword ptr [rbp + 4096]
                        cmp              eax, 3
                                                                                        jne   .Lx688_0
.Lx688_1:
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1416], rax
                                                                                        jmp   n439_coerce_numeric_α
.Lx688_0:
                        lea              rdi, [rbp + 1424]                              # self
                        lea              rsi, [rbp + 4096]                              # other
                        lea              rdx, [rbp + 1408]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n439_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n439_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 4096]
                        cmp              eax, 5
                                                                                        je    .Lx690_1
                        cmp              eax, 3
                                                                                        jne   .Lx690_0
                        mov              eax, dword ptr [rbp + 1424]
                        cmp              eax, 3
                                                                                        jne   .Lx690_0
.Lx690_1:
                        mov              rax, qword ptr [rbp + 4096]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 4104]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n440_binop_α
.Lx690_0:
                        lea              rdi, [rbp + 4096]                              # self
                        lea              rsi, [rbp + 1424]                              # other
                        lea              rdx, [rbp + 1392]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n440_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n440_binop_α:
                        mov              rdi, qword ptr [rbp + 1408]
                        mov              rsi, qword ptr [rbp + 1416]
                        mov              rdx, qword ptr [rbp + 1392]
                        mov              rcx, qword ptr [rbp + 1400]
                        call             rt_div@PLT
                        cmp              eax, 104
                                                                                        je    n442_lit_integer_α
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                                                                                        jmp   n441_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n441_assign_α:
                        mov              rax, qword ptr [rbp + 1376]
                        mov              rdx, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 4080], rax
                        mov              qword ptr [rbp + 4088], rdx
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                                                                                        jmp   n403_disjunction_as
n441_assign_β:
                                                                                        jmp   n442_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n442_lit_integer_α:
                        mov              qword ptr [rbp + 1200], 3                      # result
                        mov              rax, qword ptr [rip + .Lx693_0]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n443_var_α
.Lx693_0:
                        .quad            100
#-----------------------------------------------------------------------------------------------------------------------
n443_var_α:
                        mov              rax, qword ptr [rbp + 4032]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 4040]
                        mov              qword ptr [rbp + 1240], rax
                                                                                        jmp   n444_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n444_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx696_0]                # fname
                        mov              rsi, qword ptr [rbp + 1232]                    # obj
                        mov              rdx, qword ptr [rbp + 1240]                    # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        je    n459_var_α
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                                                                                        jmp   n445_coerce_numeric_α
.Lx696_0:
                        .quad            .Lx696_0_s
.Lx696_0_s:
                        .string          "tself"
#-----------------------------------------------------------------------------------------------------------------------
n445_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 1216]
                        cmp              eax, 5
                                                                                        je    .Lx698_1
                        cmp              eax, 3
                                                                                        jne   .Lx698_0
                        mov              eax, dword ptr [rbp + 1200]
                        cmp              eax, 3
                                                                                        jne   .Lx698_0
.Lx698_1:
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1192], rax
                                                                                        jmp   n446_binop_α
.Lx698_0:
                        lea              rdi, [rbp + 1216]                              # self
                        lea              rsi, [rbp + 1200]                              # other
                        lea              rdx, [rbp + 1184]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n446_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n446_binop_α:
                        mov              eax, dword ptr [rbp + 1184]
                        cmp              eax, 3
                                                                                        jne   .Lx699_0
                        mov              rax, 100
                        mov              rcx, qword ptr [rbp + 1192]
                        imul             rax, rcx
                        mov              qword ptr [rbp + 1168], 3
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n447_var_α
.Lx699_0:
                        mov              rdi, qword ptr [rbp + 1200]
                        mov              rsi, qword ptr [rbp + 1208]
                        mov              rdx, qword ptr [rbp + 1184]
                        mov              rcx, qword ptr [rbp + 1192]
                        call             rt_mul@PLT
                        cmp              eax, 104
                                                                                        je    n459_var_α
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                                                                                        jmp   n447_var_α
#-----------------------------------------------------------------------------------------------------------------------
n447_var_α:
                        mov              rax, qword ptr [rbp + 4096]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 4104]
                        mov              qword ptr [rbp + 1288], rax
                                                                                        jmp   n448_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n448_lit_integer_α:
                        mov              qword ptr [rbp + 1296], 3                      # result
                        mov              rax, qword ptr [rip + .Lx702_0]
                        mov              qword ptr [rbp + 1304], rax
                                                                                        jmp   n449_coerce_numeric_α
.Lx702_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n449_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 4096]
                        cmp              eax, 5
                                                                                        je    .Lx704_1
                        cmp              eax, 3
                                                                                        jne   .Lx704_0
                        mov              eax, dword ptr [rbp + 1296]
                        cmp              eax, 3
                                                                                        jne   .Lx704_0
.Lx704_1:
                        mov              rax, qword ptr [rbp + 4096]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 4104]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n450_binop_α
.Lx704_0:
                        lea              rdi, [rbp + 4096]                              # self
                        lea              rsi, [rbp + 1296]                              # other
                        lea              rdx, [rbp + 1264]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n450_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n450_binop_α:
                        mov              rdi, qword ptr [rbp + 1264]
                        mov              rsi, qword ptr [rbp + 1272]
                        mov              rdx, qword ptr [rbp + 1296]
                        mov              rcx, qword ptr [rbp + 1304]
                        call             rt_div@PLT
                        cmp              eax, 104
                                                                                        je    n459_var_α
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                                                                                        jmp   n451_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n451_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 1168]
                        cmp              eax, 5
                                                                                        je    .Lx707_1
                        cmp              eax, 3
                                                                                        jne   .Lx707_0
                        mov              eax, dword ptr [rbp + 1248]
                        cmp              eax, 3
                                                                                        jne   .Lx707_0
.Lx707_1:
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n452_coerce_numeric_α
.Lx707_0:
                        lea              rdi, [rbp + 1168]                              # self
                        lea              rsi, [rbp + 1248]                              # other
                        lea              rdx, [rbp + 1152]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n452_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n452_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 1248]
                        cmp              eax, 5
                                                                                        je    .Lx709_1
                        cmp              eax, 3
                                                                                        jne   .Lx709_0
                        mov              eax, dword ptr [rbp + 1168]
                        cmp              eax, 3
                                                                                        jne   .Lx709_0
.Lx709_1:
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n453_binop_α
.Lx709_0:
                        lea              rdi, [rbp + 1248]                              # self
                        lea              rsi, [rbp + 1168]                              # other
                        lea              rdx, [rbp + 1136]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n453_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n453_binop_α:
                        mov              eax, dword ptr [rbp + 1152]
                        cmp              eax, 3
                                                                                        jne   .Lx710_0
                        mov              eax, dword ptr [rbp + 1136]
                        cmp              eax, 3
                                                                                        jne   .Lx710_0
                        mov              rax, qword ptr [rbp + 1160]
                        mov              rcx, qword ptr [rbp + 1144]
                        add              rax, rcx
                        mov              qword ptr [rbp + 1120], 3
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n454_var_α
.Lx710_0:
                        mov              rdi, qword ptr [rbp + 1152]
                        mov              rsi, qword ptr [rbp + 1160]
                        mov              rdx, qword ptr [rbp + 1136]
                        mov              rcx, qword ptr [rbp + 1144]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n459_var_α
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   n454_var_α
#-----------------------------------------------------------------------------------------------------------------------
n454_var_α:
                        mov              rax, qword ptr [rbp + 4096]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 4104]
                        mov              qword ptr [rbp + 1320], rax
                                                                                        jmp   n455_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n455_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 1120]
                        cmp              eax, 5
                                                                                        je    .Lx714_1
                        cmp              eax, 3
                                                                                        jne   .Lx714_0
                        mov              eax, dword ptr [rbp + 4096]
                        cmp              eax, 3
                                                                                        jne   .Lx714_0
.Lx714_1:
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n456_coerce_numeric_α
.Lx714_0:
                        lea              rdi, [rbp + 1120]                              # self
                        lea              rsi, [rbp + 4096]                              # other
                        lea              rdx, [rbp + 1104]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n456_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n456_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 4096]
                        cmp              eax, 5
                                                                                        je    .Lx716_1
                        cmp              eax, 3
                                                                                        jne   .Lx716_0
                        mov              eax, dword ptr [rbp + 1120]
                        cmp              eax, 3
                                                                                        jne   .Lx716_0
.Lx716_1:
                        mov              rax, qword ptr [rbp + 4096]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 4104]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n457_binop_α
.Lx716_0:
                        lea              rdi, [rbp + 4096]                              # self
                        lea              rsi, [rbp + 1120]                              # other
                        lea              rdx, [rbp + 1088]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n457_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n457_binop_α:
                        mov              rdi, qword ptr [rbp + 1104]
                        mov              rsi, qword ptr [rbp + 1112]
                        mov              rdx, qword ptr [rbp + 1088]
                        mov              rcx, qword ptr [rbp + 1096]
                        call             rt_div@PLT
                        cmp              eax, 104
                                                                                        je    n459_var_α
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                                                                                        jmp   n458_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n458_assign_α:
                        mov              rax, qword ptr [rbp + 1072]
                        mov              rdx, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 4064], rax
                        mov              qword ptr [rbp + 4072], rdx
                                                                                        jmp   n459_var_α
#-----------------------------------------------------------------------------------------------------------------------
n459_var_α:
                        mov              rax, qword ptr [rbp + 4032]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 4040]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n460_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n460_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx721_0]                # fname
                        mov              rsi, qword ptr [rbp + 416]                     # obj
                        mov              rdx, qword ptr [rbp + 424]                     # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        je    n400_var_α
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n461_lit_integer_α
.Lx721_0:
                        .quad            .Lx721_0_s
.Lx721_0_s:
                        .string          "ncalls"
#-----------------------------------------------------------------------------------------------------------------------
n461_lit_integer_α:
                        mov              qword ptr [rbp + 432], 3                       # result
                        mov              rax, qword ptr [rip + .Lx722_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n462_call_proc_staged_α
.Lx722_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n462_call_proc_staged_α:
                        lea              rsi, [rbp + 400]
                        lea              rdx, [rbp + 432]
                        call             proc_pad_dcα
                                                                                        jmp   .Lx724_2
.Lx724_2:
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 104
                                                                                        je    n400_var_α
                                                                                        jmp   n463_var_α
n462_call_proc_staged_β:
                                                                                        jmp   n400_var_α
.Lx724_0:
                        .quad            .Lx724_0_s
.Lx724_0_s:
                        .string          "pad"
#-----------------------------------------------------------------------------------------------------------------------
n463_var_α:
                        mov              rax, qword ptr [rbp + 4032]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 4040]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n464_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n464_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx727_0]                # fname
                        mov              rsi, qword ptr [rbp + 528]                     # obj
                        mov              rdx, qword ptr [rbp + 536]                     # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        je    n400_var_α
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   n465_lit_integer_α
.Lx727_0:
                        .quad            .Lx727_0_s
.Lx727_0_s:
                        .string          "tself"
#-----------------------------------------------------------------------------------------------------------------------
n465_lit_integer_α:
                        mov              qword ptr [rbp + 544], 3                       # result
                        mov              rax, qword ptr [rip + .Lx728_0]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n466_call_proc_staged_α
.Lx728_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n466_call_proc_staged_α:
                        lea              rsi, [rbp + 512]
                        lea              rdx, [rbp + 544]
                        call             proc_pad_dcα
                                                                                        jmp   .Lx730_2
.Lx730_2:
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              eax, 104
                                                                                        je    n400_var_α
                                                                                        jmp   n467_lit_string_α
n466_call_proc_staged_β:
                                                                                        jmp   n400_var_α
.Lx730_0:
                        .quad            .Lx730_0_s
.Lx730_0_s:
                        .string          "pad"
#-----------------------------------------------------------------------------------------------------------------------
n467_lit_string_α:
                        mov              qword ptr [rbp + 560], 2                       # result
                        mov              dword ptr [rbp + 564], 1
                        mov              rax, qword ptr [rip + .Lx731_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n468_var_α
.Lx731_0:
                        .quad            .Lx731_0_s
.Lx731_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n468_var_α:
                        mov              rax, qword ptr [rbp + 4064]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 4072]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n469_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n469_lit_integer_α:
                        mov              qword ptr [rbp + 656], 3                       # result
                        mov              rax, qword ptr [rip + .Lx734_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n470_call_proc_staged_α
.Lx734_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n470_call_proc_staged_α:
                        lea              rsi, [rbp + 640]
                        lea              rdx, [rbp + 656]
                        call             proc_pad_dcα
                                                                                        jmp   .Lx736_2
.Lx736_2:
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 104
                                                                                        je    n400_var_α
                                                                                        jmp   n471_lit_string_α
n470_call_proc_staged_β:
                                                                                        jmp   n400_var_α
.Lx736_0:
                        .quad            .Lx736_0_s
.Lx736_0_s:
                        .string          "pad"
#-----------------------------------------------------------------------------------------------------------------------
n471_lit_string_α:
                        mov              qword ptr [rbp + 672], 2                       # result
                        mov              dword ptr [rbp + 676], 1
                        mov              rax, qword ptr [rip + .Lx737_0]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n472_var_α
.Lx737_0:
                        .quad            .Lx737_0_s
.Lx737_0_s:
                        .string          "%"
#-----------------------------------------------------------------------------------------------------------------------
n472_var_α:
                        mov              rax, qword ptr [rbp + 4032]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 4040]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n473_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n473_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx740_0]                # fname
                        mov              rsi, qword ptr [rbp + 768]                     # obj
                        mov              rdx, qword ptr [rbp + 776]                     # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        je    n400_var_α
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n474_disjunction_α
.Lx740_0:
                        .quad            .Lx740_0_s
.Lx740_0_s:
                        .string          "tlocal"
#-----------------------------------------------------------------------------------------------------------------------
n474_disjunction_α:
                        mov              qword ptr [rbp + 784], 0
                        mov              qword ptr [rbp + 792], 0
                        mov              dword ptr [rbp + 800], 0
                                                                                        jmp   n487_var_α
n474_disjunction_as:
                        mov              eax, dword ptr [rbp + 800]
                        cmp              eax, 0
                                                                                        jne   .Lx742_0
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n475_call_proc_staged_α
.Lx742_0:
                        cmp              eax, 1
                                                                                        jne   .Lx742_1
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n475_call_proc_staged_α
.Lx742_1:
                                                                                        jmp   n475_call_proc_staged_α
n474_disjunction_β:
                        mov              eax, dword ptr [rbp + 800]
                        cmp              eax, 0
                                                                                        je    n400_var_α
                                                                                        jmp   n400_var_α
n474_disjunction_af:
                        add              dword ptr [rbp + 800], 1
                        mov              eax, dword ptr [rbp + 800]
                        cmp              eax, 1
                                                                                        je    n486_lit_integer_α
                                                                                        jmp   n400_var_α
#-----------------------------------------------------------------------------------------------------------------------
n475_call_proc_staged_α:
                        lea              rsi, [rbp + 752]
                        lea              rdx, [rbp + 784]
                        call             proc_pad_dcα
                                                                                        jmp   .Lx744_2
.Lx744_2:
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 104
                                                                                        je    n474_disjunction_β
                                                                                        jmp   n476_lit_string_α
n475_call_proc_staged_β:
                                                                                        jmp   n474_disjunction_β
.Lx744_0:
                        .quad            .Lx744_0_s
.Lx744_0_s:
                        .string          "pad"
#-----------------------------------------------------------------------------------------------------------------------
n476_lit_string_α:
                        mov              qword ptr [rbp + 896], 2                       # result
                        mov              dword ptr [rbp + 900], 1
                        mov              rax, qword ptr [rip + .Lx745_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n477_var_α
.Lx745_0:
                        .quad            .Lx745_0_s
.Lx745_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n477_var_α:
                        mov              rax, qword ptr [rbp + 4080]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 4088]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n478_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n478_lit_integer_α:
                        mov              qword ptr [rbp + 992], 3                       # result
                        mov              rax, qword ptr [rip + .Lx748_0]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n479_call_proc_staged_α
.Lx748_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n479_call_proc_staged_α:
                        lea              rsi, [rbp + 976]
                        lea              rdx, [rbp + 992]
                        call             proc_pad_dcα
                                                                                        jmp   .Lx750_2
.Lx750_2:
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              eax, 104
                                                                                        je    n474_disjunction_β
                                                                                        jmp   n480_lit_string_α
n479_call_proc_staged_β:
                                                                                        jmp   n474_disjunction_β
.Lx750_0:
                        .quad            .Lx750_0_s
.Lx750_0_s:
                        .string          "pad"
#-----------------------------------------------------------------------------------------------------------------------
n480_lit_string_α:
                        mov              qword ptr [rbp + 1008], 2                      # result
                        mov              dword ptr [rbp + 1012], 1
                        mov              rax, qword ptr [rip + .Lx751_0]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n481_lit_string_α
.Lx751_0:
                        .quad            .Lx751_0_s
.Lx751_0_s:
                        .string          "%"
#-----------------------------------------------------------------------------------------------------------------------
n481_lit_string_α:
                        mov              qword ptr [rbp + 1024], 2                      # result
                        mov              dword ptr [rbp + 1028], 2
                        mov              rax, qword ptr [rip + .Lx752_0]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n482_var_α
.Lx752_0:
                        .quad            .Lx752_0_s
.Lx752_0_s:
                        .string          "  "
#-----------------------------------------------------------------------------------------------------------------------
n482_var_α:
                        mov              rax, qword ptr [rbp + 4032]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 4040]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n483_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n483_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx755_0]                # fname
                        mov              rsi, qword ptr [rbp + 1056]                    # obj
                        mov              rdx, qword ptr [rbp + 1064]                    # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        je    n474_disjunction_β
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n484_call_builtin_icon_α
.Lx755_0:
                        .quad            .Lx755_0_s
.Lx755_0_s:
                        .string          "name"
#-----------------------------------------------------------------------------------------------------------------------
n484_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 152], rax
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 168], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 216], rax
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 232], rax
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 248], rax
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 280], rax
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 296], rax
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 312], rax
                        .section         .rodata
.Lrkfn757:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn757]                         # fn
                        lea              rsi, [rbp + 144]                               # args
                        mov              edx, 11                                        # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 104
                                                                                        je    n474_disjunction_β
                                                                                        jmp   n485_conjunction_α
n484_call_builtin_icon_β:
                                                                                        jmp   n474_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n485_conjunction_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n400_var_α
n485_conjunction_β:
                                                                                        jmp   n400_var_α
#-----------------------------------------------------------------------------------------------------------------------
n486_lit_integer_α:
                        mov              qword ptr [rbp + 880], 3                       # result
                        mov              rax, qword ptr [rip + .Lx759_0]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n474_disjunction_as
n486_lit_integer_β:
                                                                                        jmp   n400_var_α
.Lx759_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n487_var_α:
                        mov              rax, qword ptr [rbp + 4064]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 4072]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n488_lit_integer_α
n487_var_β:
                                                                                        jmp   n474_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n488_lit_integer_α:
                        mov              qword ptr [rbp + 864], 3                       # result
                        mov              rax, qword ptr [rip + .Lx762_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n489_binop_test_α
.Lx762_0:
                        .quad            100
#-----------------------------------------------------------------------------------------------------------------------
n489_binop_test_α:
                        mov              eax, dword ptr [rbp + 4064]
                        cmp              eax, 112
                                                                                        je    .Lx763_0
                        mov              eax, dword ptr [rbp + 864]
                        cmp              eax, 112
                                                                                        je    .Lx763_0
                        mov              eax, dword ptr [rbp + 4064]
                        cmp              eax, 3
                                                                                        jne   .Lx763_2
                        mov              eax, dword ptr [rbp + 864]
                        cmp              eax, 3
                                                                                        jne   .Lx763_2
.Lx763_1:
                        mov              rax, qword ptr [rbp + 4072]
                        mov              rcx, qword ptr [rbp + 872]
                        cmp              rax, rcx
                                                                                        jne   n474_disjunction_af
                        mov              rcx, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 832], rcx
                        mov              rcx, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 840], rcx
                                                                                        jmp   n490_lit_integer_α
.Lx763_0:
                        mov              rdi, qword ptr [rbp + 4064]                    # a
                        mov              rsi, qword ptr [rbp + 4072]                    # a
                        mov              rdx, qword ptr [rbp + 864]                     # b
                        mov              rcx, qword ptr [rbp + 872]                     # b
                        mov              r8d, 9                                         # op
                        lea              r9, [rbp + 832]                                # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx763_1
                        cmp              eax, 1
                                                                                        je    n474_disjunction_af
                                                                                        jmp   n490_lit_integer_α
.Lx763_2:
                        mov              rdi, qword ptr [rbp + 4064]                    # lhs
                        mov              rsi, qword ptr [rbp + 4072]                    # lhs
                        mov              rdx, qword ptr [rbp + 864]                     # rhs
                        mov              rcx, qword ptr [rbp + 872]                     # rhs
                        mov              r8d, 9                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n474_disjunction_af
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n490_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n490_lit_integer_α:
                        mov              qword ptr [rbp + 816], 3                       # result
                        mov              rax, qword ptr [rip + .Lx764_0]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n474_disjunction_as
n490_lit_integer_β:
                                                                                        jmp   n400_var_α
.Lx764_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n491_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx765_0]                # sval
                        call             rt_keyword_read@PLT
                        cmp              eax, 104
                                                                                        je    n335_var_α
                        mov              qword ptr [rbp + 3792], rax
                        mov              qword ptr [rbp + 3800], rdx
                                                                                        jmp   n492_assign_α
n491_keyword_icon_β:
                                                                                        jmp   n335_var_α
.Lx765_0:
                        .quad            .Lx765_0_s
.Lx765_0_s:
                        .string          "&input"
#-----------------------------------------------------------------------------------------------------------------------
n492_assign_α:
                        mov              rax, qword ptr [rbp + 3792]
                        mov              rdx, qword ptr [rbp + 3800]
                        mov              qword ptr [rbp + 4144], rax
                        mov              qword ptr [rbp + 4152], rdx
                        mov              qword ptr [rbp + 3776], rax
                        mov              qword ptr [rbp + 3784], rdx
                                                                                        jmp   n334_disjunction_as
n492_assign_β:
                                                                                        jmp   n335_var_α
#-----------------------------------------------------------------------------------------------------------------------
n493_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 3744], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 3752], rax
                                                                                        jmp   n494_unop_α
n493_var_β:
                                                                                        jmp   n334_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n494_unop_α:
                        mov              rdi, qword ptr [rbp + 16]                      # lo
                        mov              rsi, qword ptr [rbp + 24]                      # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 3728], rax
                        mov              qword ptr [rbp + 3736], rdx
                                                                                        jmp   n495_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n495_lit_integer_α:
                        mov              qword ptr [rbp + 3760], 3                      # result
                        mov              rax, qword ptr [rip + .Lx770_0]
                        mov              qword ptr [rbp + 3768], rax
                                                                                        jmp   n496_binop_test_α
.Lx770_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n496_binop_test_α:
                        mov              eax, dword ptr [rbp + 3728]
                        cmp              eax, 112
                                                                                        je    .Lx771_0
                        mov              eax, dword ptr [rbp + 3760]
                        cmp              eax, 112
                                                                                        je    .Lx771_0
                        mov              eax, dword ptr [rbp + 3728]
                        cmp              eax, 3
                                                                                        jne   .Lx771_2
                        mov              eax, dword ptr [rbp + 3760]
                        cmp              eax, 3
                                                                                        jne   .Lx771_2
.Lx771_1:
                        mov              rax, qword ptr [rbp + 3736]
                        mov              rcx, qword ptr [rbp + 3768]
                        cmp              rax, rcx
                                                                                        jle   n334_disjunction_af
                        mov              rcx, qword ptr [rbp + 3760]
                        mov              qword ptr [rbp + 3712], rcx
                        mov              rcx, qword ptr [rbp + 3768]
                        mov              qword ptr [rbp + 3720], rcx
                                                                                        jmp   n497_disjunction_α
.Lx771_0:
                        mov              rdi, qword ptr [rbp + 3728]                    # a
                        mov              rsi, qword ptr [rbp + 3736]                    # a
                        mov              rdx, qword ptr [rbp + 3760]                    # b
                        mov              rcx, qword ptr [rbp + 3768]                    # b
                        mov              r8d, 7                                         # op
                        lea              r9, [rbp + 3712]                               # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx771_1
                        cmp              eax, 1
                                                                                        je    n334_disjunction_af
                                                                                        jmp   n497_disjunction_α
.Lx771_2:
                        mov              rdi, qword ptr [rbp + 3728]                    # lhs
                        mov              rsi, qword ptr [rbp + 3736]                    # lhs
                        mov              rdx, qword ptr [rbp + 3760]                    # rhs
                        mov              rcx, qword ptr [rbp + 3768]                    # rhs
                        mov              r8d, 7                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n334_disjunction_af
                        mov              rax, qword ptr [rbp + 3760]
                        mov              qword ptr [rbp + 3712], rax
                        mov              rax, qword ptr [rbp + 3768]
                        mov              qword ptr [rbp + 3720], rax
                                                                                        jmp   n497_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n497_disjunction_α:
                        mov              qword ptr [rbp + 3376], 0
                        mov              qword ptr [rbp + 3384], 0
                        mov              dword ptr [rbp + 3392], 0
                                                                                        jmp   n506_var_ref_α
n497_disjunction_as:
                        mov              eax, dword ptr [rbp + 3392]
                        cmp              eax, 0
                                                                                        jne   .Lx773_0
                        mov              rax, qword ptr [rbp + 3408]
                        mov              qword ptr [rbp + 3376], rax
                        mov              rax, qword ptr [rbp + 3416]
                        mov              qword ptr [rbp + 3384], rax
                                                                                        jmp   n498_assign_α
.Lx773_0:
                        cmp              eax, 1
                                                                                        jne   .Lx773_1
                        mov              rax, qword ptr [rbp + 3520]
                        mov              qword ptr [rbp + 3376], rax
                        mov              rax, qword ptr [rbp + 3528]
                        mov              qword ptr [rbp + 3384], rax
                                                                                        jmp   n498_assign_α
.Lx773_1:
                                                                                        jmp   n498_assign_α
n497_disjunction_β:
                        mov              eax, dword ptr [rbp + 3392]
                        cmp              eax, 0
                                                                                        je    n497_disjunction_af
                                                                                        jmp   n497_disjunction_af
n497_disjunction_af:
                        add              dword ptr [rbp + 3392], 1
                        mov              eax, dword ptr [rbp + 3392]
                        cmp              eax, 1
                                                                                        je    n499_keyword_icon_α
                                                                                        jmp   n335_var_α
#-----------------------------------------------------------------------------------------------------------------------
n498_assign_α:
                        mov              rax, qword ptr [rbp + 3376]
                        mov              rdx, qword ptr [rbp + 3384]
                        mov              qword ptr [rbp + 4144], rax
                        mov              qword ptr [rbp + 4152], rdx
                        mov              qword ptr [rbp + 3360], rax
                        mov              qword ptr [rbp + 3368], rdx
                                                                                        jmp   n334_disjunction_as
n498_assign_β:
                                                                                        jmp   n335_var_α
#-----------------------------------------------------------------------------------------------------------------------
n499_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx775_0]                # sval
                        call             rt_keyword_read@PLT
                        cmp              eax, 104
                                                                                        je    n497_disjunction_af
                        mov              qword ptr [rbp + 3600], rax
                        mov              qword ptr [rbp + 3608], rdx
                                                                                        jmp   n500_lit_string_α
n499_keyword_icon_β:
                                                                                        jmp   n497_disjunction_af
.Lx775_0:
                        .quad            .Lx775_0_s
.Lx775_0_s:
                        .string          "&progname"
#-----------------------------------------------------------------------------------------------------------------------
n500_lit_string_α:
                        mov              qword ptr [rbp + 3632], 2                      # result
                        mov              dword ptr [rbp + 3636], 13
                        mov              rax, qword ptr [rip + .Lx776_0]
                        mov              qword ptr [rbp + 3640], rax
                                                                                        jmp   n501_var_ref_α
.Lx776_0:
                        .quad            .Lx776_0_s
.Lx776_0_s:
                        .string          ": can't open "
#-----------------------------------------------------------------------------------------------------------------------
n501_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3648], rax
                        mov              qword ptr [rbp + 3656], rdx
                                                                                        jmp   n502_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n502_lit_integer_α:
                        mov              qword ptr [rbp + 3664], 3                      # result
                        mov              rax, qword ptr [rip + .Lx779_0]
                        mov              qword ptr [rbp + 3672], rax
                                                                                        jmp   n503_subscript_α
.Lx779_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n503_subscript_α:
                        mov              rdi, qword ptr [rbp + 3648]                    # base
                        mov              rsi, qword ptr [rbp + 3656]                    # base
                        mov              rdx, qword ptr [rbp + 3664]                    # idx
                        mov              rcx, qword ptr [rbp + 3672]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n497_disjunction_af
                        mov              qword ptr [rbp + 3680], rax
                        mov              qword ptr [rbp + 3688], rdx
                                                                                        jmp   n504_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n504_deref_α:
                        mov              rdi, qword ptr [rbp + 3680]                    # d
                        mov              rsi, qword ptr [rbp + 3688]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n497_disjunction_af
                        mov              qword ptr [rbp + 3696], rax
                        mov              qword ptr [rbp + 3704], rdx
                                                                                        jmp   n505_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n505_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3600]
                        mov              qword ptr [rbp + 3536], rax
                        mov              rax, qword ptr [rbp + 3608]
                        mov              qword ptr [rbp + 3544], rax
                        mov              rax, qword ptr [rbp + 3632]
                        mov              qword ptr [rbp + 3552], rax
                        mov              rax, qword ptr [rbp + 3640]
                        mov              qword ptr [rbp + 3560], rax
                        mov              rax, qword ptr [rbp + 3696]
                        mov              qword ptr [rbp + 3568], rax
                        mov              rax, qword ptr [rbp + 3704]
                        mov              qword ptr [rbp + 3576], rax
                        .section         .rodata
.Lrkfn783:              .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn783]                         # fn
                        lea              rsi, [rbp + 3536]                              # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3520], rax
                        mov              qword ptr [rbp + 3528], rdx
                        cmp              eax, 104
                                                                                        je    n497_disjunction_af
                                                                                        jmp   n497_disjunction_as
n505_call_builtin_icon_β:
                                                                                        jmp   n497_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n506_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3456], rax
                        mov              qword ptr [rbp + 3464], rdx
                                                                                        jmp   n507_lit_integer_α
n506_var_ref_β:
                                                                                        jmp   n497_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n507_lit_integer_α:
                        mov              qword ptr [rbp + 3472], 3                      # result
                        mov              rax, qword ptr [rip + .Lx786_0]
                        mov              qword ptr [rbp + 3480], rax
                                                                                        jmp   n508_subscript_α
.Lx786_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n508_subscript_α:
                        mov              rdi, qword ptr [rbp + 3456]                    # base
                        mov              rsi, qword ptr [rbp + 3464]                    # base
                        mov              rdx, qword ptr [rbp + 3472]                    # idx
                        mov              rcx, qword ptr [rbp + 3480]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n497_disjunction_af
                        mov              qword ptr [rbp + 3488], rax
                        mov              qword ptr [rbp + 3496], rdx
                                                                                        jmp   n509_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n509_deref_α:
                        mov              rdi, qword ptr [rbp + 3488]                    # d
                        mov              rsi, qword ptr [rbp + 3496]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n497_disjunction_af
                        mov              qword ptr [rbp + 3504], rax
                        mov              qword ptr [rbp + 3512], rdx
                                                                                        jmp   n510_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n510_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3504]
                        mov              qword ptr [rbp + 3424], rax
                        mov              rax, qword ptr [rbp + 3512]
                        mov              qword ptr [rbp + 3432], rax
                        .section         .rodata
.Lrkfn790:              .string          "open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn790]                         # fn
                        lea              rsi, [rbp + 3424]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3408], rax
                        mov              qword ptr [rbp + 3416], rdx
                        cmp              eax, 104
                                                                                        je    n497_disjunction_af
                                                                                        jmp   n497_disjunction_as
n510_call_builtin_icon_β:
                                                                                        jmp   n497_disjunction_af
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
