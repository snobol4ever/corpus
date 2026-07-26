                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_new_sent_α
proc_new_sent_α:
                        .global          proc_new_sent_α
                        .global          proc_new_sent_β
                        .global          proc_new_sent_γ
                        .global          proc_new_sent_ω
                        sub              rsp, 448
                        mov              [rsp + 424], rcx
                        mov              [rsp + 432], rdx
                        mov              [rsp + 440], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
proc_new_sent_α_body:
#=======================================================================================================================
# new_sent        sentno          =  +num
#-----------------------------------------------------------------------------------------------------------------------
n0_var_α:
                        mov              rax, qword ptr [1879052704]
                        mov              rdx, qword ptr [1879052712]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n1_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n1_unop_α:
                        mov              rdi, qword ptr [rbp + 144]
                        mov              rsi, qword ptr [rbp + 152]
                        call             rt_num_pos@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                                                                                        jmp   n3_assign_α
#=======================================================================================================================
#                 mem[sentno]     =  TABLE()
#-----------------------------------------------------------------------------------------------------------------------
n2_var_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n3_assign_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        mov              qword ptr [1879052384], rax
                        mov              qword ptr [1879052392], rdx
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n2_var_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_α:
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n6_subscript_α
#=======================================================================================================================
#                 new_sent        =  .dummy                       :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:
                        mov              qword ptr [rbp + 384], 1
                        mov              rax, qword ptr [rip + .Lx18_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n7_call_α
.Lx18_0:
                        .quad            .Lx18_0_s
.Lx18_0_s:
                        .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n6_subscript_α:
                        mov              rdi, qword ptr [rbp + 176]
                        mov              rsi, qword ptr [rbp + 184]
                        mov              rdx, qword ptr [rbp + 208]
                        mov              rcx, qword ptr [rbp + 216]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n5_lit_string_α
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n8_call_α
#-----------------------------------------------------------------------------------------------------------------------
n7_call_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 360], rax
                        .section         .rodata
.Lrkfn21:               .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn21]
                        lea              rsi, [rbp + 352]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n10_lit_string_α
                                                                                        jmp   n9_assign_α
n7_call_β:
                                                                                        jmp   n10_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n8_call_α:
                        .section         .rodata
.Lrkfn23:               .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn23]
                        lea              rsi, [rbp + 288]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    n5_lit_string_α
                                                                                        jmp   n11_assign_var_α
n8_call_β:
                                                                                        jmp   n5_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n9_assign_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n10_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:
                        mov              qword ptr [rbp + 16], 1
                        mov              rax, qword ptr [rip + .Lx25_0]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n12_call_α
.Lx25_0:
                        .quad            .Lx25_0_s
.Lx25_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n11_assign_var_α:
                        mov              rdi, qword ptr [rbp + 240]
                        mov              rsi, qword ptr [rbp + 248]
                        mov              rdx, qword ptr [rbp + 272]
                        mov              rcx, qword ptr [rbp + 280]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n5_lit_string_α
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n5_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n12_call_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 72], rax
                        .section         .rodata
.Lrkfn28:               .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn28]
                        lea              rsi, [rbp + 64]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_new_sent_ω
                                                                                        jmp   proc_new_sent_γ
n12_call_β:
                                                                                        jmp   proc_new_sent_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_new_sent_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_new_sent_β:
                                                                                        jmp   proc_new_sent_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_new_sent_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 424]
                        lea              rsp, [rbp + 448]
                        mov              rbp, [rbp + 440]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_new_sent_ω:
                        mov              rax, [rbp + 432]
                        lea              rsp, [rbp + 448]
                        mov              rbp, [rbp + 440]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_add_tok_α
proc_add_tok_α:
                        .global          proc_add_tok_α
                        .global          proc_add_tok_β
                        .global          proc_add_tok_γ
                        .global          proc_add_tok_ω
                        sub              rsp, 1920
                        mov              [rsp + 1896], rcx
                        mov              [rsp + 1904], rdx
                        mov              [rsp + 1912], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
proc_add_tok_α_body:
#=======================================================================================================================
# add_tok         DIFFER(mem[sentno][wrd])                        :F(new_wrd)
#-----------------------------------------------------------------------------------------------------------------------
n29_var_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n30_var_α
#-----------------------------------------------------------------------------------------------------------------------
n30_var_α:
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n32_subscript_α
#=======================================================================================================================
# new_wrd         mem[sentno][wrd]       =  TABLE()
#-----------------------------------------------------------------------------------------------------------------------
n31_var_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                                                                                        jmp   n33_var_α
#-----------------------------------------------------------------------------------------------------------------------
n32_subscript_α:
                        mov              rdi, qword ptr [rbp + 144]
                        mov              rsi, qword ptr [rbp + 152]
                        mov              rdx, qword ptr [rbp + 176]
                        mov              rcx, qword ptr [rbp + 184]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n31_var_α
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n35_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n33_var_α:
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                                                                                        jmp   n36_subscript_α
#=======================================================================================================================
# new_tag         mem[sentno][wrd][tag]  =  1
#-----------------------------------------------------------------------------------------------------------------------
n34_var_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                                                                                        jmp   n37_var_α
#-----------------------------------------------------------------------------------------------------------------------
n35_deref_α:
                        mov              rdi, qword ptr [rbp + 208]
                        mov              rsi, qword ptr [rbp + 216]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n31_var_α
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n39_var_α
#-----------------------------------------------------------------------------------------------------------------------
n36_subscript_α:
                        mov              rdi, qword ptr [rbp + 1264]
                        mov              rsi, qword ptr [rbp + 1272]
                        mov              rdx, qword ptr [rbp + 1296]
                        mov              rcx, qword ptr [rbp + 1304]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n34_var_α
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                                                                                        jmp   n40_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n37_var_α:
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                                                                                        jmp   n41_subscript_α
#=======================================================================================================================
# done            add_tok         =  .dummy                       :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_string_α:
                        mov              qword ptr [rbp + 1856], 1
                        mov              rax, qword ptr [rip + .Lx103_0]
                        mov              qword ptr [rbp + 1864], rax
                                                                                        jmp   n42_call_α
.Lx103_0:
                        .quad            .Lx103_0_s
.Lx103_0_s:
                        .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n39_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n43_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n40_deref_α:
                        mov              rdi, qword ptr [rbp + 1328]
                        mov              rsi, qword ptr [rbp + 1336]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n34_var_α
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                                                                                        jmp   n44_var_α
#-----------------------------------------------------------------------------------------------------------------------
n41_subscript_α:
                        mov              rdi, qword ptr [rbp + 1488]
                        mov              rsi, qword ptr [rbp + 1496]
                        mov              rdx, qword ptr [rbp + 1520]
                        mov              rcx, qword ptr [rbp + 1528]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n38_lit_string_α
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                                                                                        jmp   n45_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n42_call_α:
                        mov              rax, qword ptr [rbp + 1856]
                        mov              qword ptr [rbp + 1824], rax
                        mov              rax, qword ptr [rbp + 1864]
                        mov              qword ptr [rbp + 1832], rax
                        .section         .rodata
.Lrkfn108:              .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn108]
                        lea              rsi, [rbp + 1824]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                        cmp              eax, 99
                                                                                        je    n47_lit_string_α
                                                                                        jmp   n46_assign_α
n42_call_β:
                                                                                        jmp   n47_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n43_subscript_α:
                        mov              rdi, qword ptr [rbp + 240]
                        mov              rsi, qword ptr [rbp + 248]
                        mov              rdx, qword ptr [rbp + 256]
                        mov              rcx, qword ptr [rbp + 264]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n31_var_α
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n48_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n44_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                                                                                        jmp   n49_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n45_deref_α:
                        mov              rdi, qword ptr [rbp + 1552]
                        mov              rsi, qword ptr [rbp + 1560]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n38_lit_string_α
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                                                                                        jmp   n50_var_α
#-----------------------------------------------------------------------------------------------------------------------
n46_assign_α:
                        mov              rax, qword ptr [rbp + 1808]
                        mov              rdx, qword ptr [rbp + 1816]
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                                                                                        jmp   n47_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_string_α:
                        mov              qword ptr [rbp + 16], 1
                        mov              rax, qword ptr [rip + .Lx113_0]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n51_call_α
.Lx113_0:
                        .quad            .Lx113_0_s
.Lx113_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n48_deref_α:
                        mov              rdi, qword ptr [rbp + 288]
                        mov              rsi, qword ptr [rbp + 296]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n31_var_α
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n52_call_α
#-----------------------------------------------------------------------------------------------------------------------
n49_subscript_α:
                        mov              rdi, qword ptr [rbp + 1360]
                        mov              rsi, qword ptr [rbp + 1368]
                        mov              rdx, qword ptr [rbp + 1376]
                        mov              rcx, qword ptr [rbp + 1384]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n34_var_α
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                                                                                        jmp   n53_call_α
#-----------------------------------------------------------------------------------------------------------------------
n50_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                                                                                        jmp   n54_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n51_call_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 72], rax
                        .section         .rodata
.Lrkfn118:              .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn118]
                        lea              rsi, [rbp + 64]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_add_tok_ω
                                                                                        jmp   proc_add_tok_γ
n51_call_β:
                                                                                        jmp   proc_add_tok_ω
#-----------------------------------------------------------------------------------------------------------------------
n52_call_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn120:              .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn120]
                        lea              rsi, [rbp + 112]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n31_var_α
                                                                                        jmp   n55_var_α
n52_call_β:
                                                                                        jmp   n31_var_α
#-----------------------------------------------------------------------------------------------------------------------
n53_call_α:
                        .section         .rodata
.Lrkfn122:              .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn122]
                        lea              rsi, [rbp + 1456]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                        cmp              eax, 99
                                                                                        je    n34_var_α
                                                                                        jmp   n56_assign_var_α
n53_call_β:
                                                                                        jmp   n34_var_α
#-----------------------------------------------------------------------------------------------------------------------
n54_subscript_α:
                        mov              rdi, qword ptr [rbp + 1584]
                        mov              rsi, qword ptr [rbp + 1592]
                        mov              rdx, qword ptr [rbp + 1600]
                        mov              rcx, qword ptr [rbp + 1608]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n38_lit_string_α
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                                                                                        jmp   n57_deref_α
#=======================================================================================================================
#                 DIFFER(mem[sentno][wrd][tag])                   :F(new_tag)
#-----------------------------------------------------------------------------------------------------------------------
n55_var_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n58_var_α
#-----------------------------------------------------------------------------------------------------------------------
n56_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1408]
                        mov              rsi, qword ptr [rbp + 1416]
                        mov              rdx, qword ptr [rbp + 1440]
                        mov              rcx, qword ptr [rbp + 1448]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n34_var_α
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
                                                                                        jmp   n34_var_α
#-----------------------------------------------------------------------------------------------------------------------
n57_deref_α:
                        mov              rdi, qword ptr [rbp + 1632]
                        mov              rsi, qword ptr [rbp + 1640]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n38_lit_string_α
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                                                                                        jmp   n59_var_α
#-----------------------------------------------------------------------------------------------------------------------
n58_var_α:
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n60_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n59_var_α:
                        mov              rax, qword ptr [1879052512]
                        mov              rdx, qword ptr [1879052520]
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
                                                                                        jmp   n61_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n60_subscript_α:
                        mov              rdi, qword ptr [rbp + 384]
                        mov              rsi, qword ptr [rbp + 392]
                        mov              rdx, qword ptr [rbp + 416]
                        mov              rcx, qword ptr [rbp + 424]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n34_var_α
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n62_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n61_subscript_α:
                        mov              rdi, qword ptr [rbp + 1664]
                        mov              rsi, qword ptr [rbp + 1672]
                        mov              rdx, qword ptr [rbp + 1680]
                        mov              rcx, qword ptr [rbp + 1688]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n38_lit_string_α
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                                                                                        jmp   n63_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n62_deref_α:
                        mov              rdi, qword ptr [rbp + 448]
                        mov              rsi, qword ptr [rbp + 456]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n34_var_α
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n64_var_α
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_integer_α:
                        mov              qword ptr [rbp + 1744], 6
                        mov              rax, qword ptr [rip + .Lx132_0]
                        mov              qword ptr [rbp + 1752], rax
                                                                                        jmp   n65_assign_var_α
.Lx132_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n64_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n66_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n65_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1712]
                        mov              rsi, qword ptr [rbp + 1720]
                        mov              rdx, qword ptr [rbp + 1744]
                        mov              rcx, qword ptr [rbp + 1752]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n38_lit_string_α
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx
                                                                                        jmp   n38_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n66_subscript_α:
                        mov              rdi, qword ptr [rbp + 480]
                        mov              rsi, qword ptr [rbp + 488]
                        mov              rdx, qword ptr [rbp + 496]
                        mov              rcx, qword ptr [rbp + 504]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n34_var_α
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n67_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n67_deref_α:
                        mov              rdi, qword ptr [rbp + 528]
                        mov              rsi, qword ptr [rbp + 536]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n34_var_α
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n68_var_α
#-----------------------------------------------------------------------------------------------------------------------
n68_var_α:
                        mov              rax, qword ptr [1879052512]
                        mov              rdx, qword ptr [1879052520]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n69_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n69_subscript_α:
                        mov              rdi, qword ptr [rbp + 560]
                        mov              rsi, qword ptr [rbp + 568]
                        mov              rdx, qword ptr [rbp + 576]
                        mov              rcx, qword ptr [rbp + 584]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n34_var_α
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n70_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n70_deref_α:
                        mov              rdi, qword ptr [rbp + 608]
                        mov              rsi, qword ptr [rbp + 616]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n34_var_α
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n71_call_α
#-----------------------------------------------------------------------------------------------------------------------
n71_call_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 360], rax
                        .section         .rodata
.Lrkfn141:              .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn141]
                        lea              rsi, [rbp + 352]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n34_var_α
                                                                                        jmp   n72_var_α
n71_call_β:
                                                                                        jmp   n34_var_α
#=======================================================================================================================
#                 mem[sentno][wrd][tag]  =  mem[sentno][wrd][tag] + 1  :(done)
#-----------------------------------------------------------------------------------------------------------------------
n72_var_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n73_var_α
#-----------------------------------------------------------------------------------------------------------------------
n73_var_α:
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   n74_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n74_subscript_α:
                        mov              rdi, qword ptr [rbp + 656]
                        mov              rsi, qword ptr [rbp + 664]
                        mov              rdx, qword ptr [rbp + 688]
                        mov              rcx, qword ptr [rbp + 696]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n38_lit_string_α
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   n75_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n75_deref_α:
                        mov              rdi, qword ptr [rbp + 720]
                        mov              rsi, qword ptr [rbp + 728]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n38_lit_string_α
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n76_var_α
#-----------------------------------------------------------------------------------------------------------------------
n76_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                                                                                        jmp   n77_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n77_subscript_α:
                        mov              rdi, qword ptr [rbp + 752]
                        mov              rsi, qword ptr [rbp + 760]
                        mov              rdx, qword ptr [rbp + 768]
                        mov              rcx, qword ptr [rbp + 776]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n38_lit_string_α
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n78_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n78_deref_α:
                        mov              rdi, qword ptr [rbp + 800]
                        mov              rsi, qword ptr [rbp + 808]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n38_lit_string_α
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n79_var_α
#-----------------------------------------------------------------------------------------------------------------------
n79_var_α:
                        mov              rax, qword ptr [1879052512]
                        mov              rdx, qword ptr [1879052520]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   n80_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n80_subscript_α:
                        mov              rdi, qword ptr [rbp + 832]
                        mov              rsi, qword ptr [rbp + 840]
                        mov              rdx, qword ptr [rbp + 848]
                        mov              rcx, qword ptr [rbp + 856]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n38_lit_string_α
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n81_var_α
#-----------------------------------------------------------------------------------------------------------------------
n81_var_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                                                                                        jmp   n82_var_α
#-----------------------------------------------------------------------------------------------------------------------
n82_var_α:
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                                                                                        jmp   n83_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n83_subscript_α:
                        mov              rdi, qword ptr [rbp + 944]
                        mov              rsi, qword ptr [rbp + 952]
                        mov              rdx, qword ptr [rbp + 976]
                        mov              rcx, qword ptr [rbp + 984]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n38_lit_string_α
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   n84_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n84_deref_α:
                        mov              rdi, qword ptr [rbp + 1008]
                        mov              rsi, qword ptr [rbp + 1016]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n38_lit_string_α
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n85_var_α
#-----------------------------------------------------------------------------------------------------------------------
n85_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                                                                                        jmp   n86_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n86_subscript_α:
                        mov              rdi, qword ptr [rbp + 1040]
                        mov              rsi, qword ptr [rbp + 1048]
                        mov              rdx, qword ptr [rbp + 1056]
                        mov              rcx, qword ptr [rbp + 1064]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n38_lit_string_α
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                                                                                        jmp   n87_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n87_deref_α:
                        mov              rdi, qword ptr [rbp + 1088]
                        mov              rsi, qword ptr [rbp + 1096]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n38_lit_string_α
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   n88_var_α
#-----------------------------------------------------------------------------------------------------------------------
n88_var_α:
                        mov              rax, qword ptr [1879052512]
                        mov              rdx, qword ptr [1879052520]
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   n89_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n89_subscript_α:
                        mov              rdi, qword ptr [rbp + 1120]
                        mov              rsi, qword ptr [rbp + 1128]
                        mov              rdx, qword ptr [rbp + 1136]
                        mov              rcx, qword ptr [rbp + 1144]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n38_lit_string_α
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                                                                                        jmp   n90_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n90_deref_α:
                        mov              rdi, qword ptr [rbp + 1168]
                        mov              rsi, qword ptr [rbp + 1176]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n38_lit_string_α
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                                                                                        jmp   n91_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n91_lit_integer_α:
                        mov              qword ptr [rbp + 1216], 6
                        mov              rax, qword ptr [rip + .Lx161_0]
                        mov              qword ptr [rbp + 1224], rax
                                                                                        jmp   n92_binop_α
.Lx161_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n92_binop_α:
                        mov              eax, dword ptr [rbp + 1200]
                        cmp              eax, 100
                                                                                        je    .Lx162_0
                        mov              eax, dword ptr [rbp + 1200]
                        cmp              eax, 6
                                                                                        jne   .Lx162_2
.Lx162_1:
                        mov              rax, qword ptr [rbp + 1208]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 912], 6
                        mov              qword ptr [rbp + 920], rax
                                                                                        jmp   n93_assign_var_α
.Lx162_0:
                        mov              rdi, qword ptr [rbp + 1200]
                        mov              rsi, qword ptr [rbp + 1208]
                        mov              rdx, qword ptr [rbp + 1216]
                        mov              rcx, qword ptr [rbp + 1224]
                        mov              r8d, 0
                        lea              r9, [rbp + 912]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n93_assign_var_α
.Lx162_2:
                        mov              rdi, qword ptr [rbp + 1200]
                        mov              rsi, qword ptr [rbp + 1208]
                        mov              rdx, qword ptr [rbp + 1216]
                        mov              rcx, qword ptr [rbp + 1224]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n38_lit_string_α
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                                                                                        jmp   n93_assign_var_α
n92_binop_β:
                                                                                        jmp   n38_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n93_assign_var_α:
                        mov              rdi, qword ptr [rbp + 880]
                        mov              rsi, qword ptr [rbp + 888]
                        mov              rdx, qword ptr [rbp + 912]
                        mov              rcx, qword ptr [rbp + 920]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n38_lit_string_α
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                                                                                        jmp   n38_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
proc_add_tok_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_add_tok_β:
                                                                                        jmp   proc_add_tok_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_add_tok_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 1896]
                        lea              rsp, [rbp + 1920]
                        mov              rbp, [rbp + 1912]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_add_tok_ω:
                        mov              rax, [rbp + 1904]
                        lea              rsp, [rbp + 1920]
                        mov              rbp, [rbp + 1912]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pp_mem_α
proc_pp_mem_α:
                        .global          proc_pp_mem_α
                        .global          proc_pp_mem_β
                        .global          proc_pp_mem_γ
                        .global          proc_pp_mem_ω
                        sub              rsp, 7616
                        mov              [rsp + 7592], rcx
                        mov              [rsp + 7600], rdx
                        mov              [rsp + 7608], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
proc_pp_mem_α_body:
#=======================================================================================================================
# pp_mem          ssk             =   SORT(mem)
#-----------------------------------------------------------------------------------------------------------------------
n164_var_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n165_call_α
n164_var_β:
                                                                                        jmp   n166_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n165_call_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 136], rax
                        .section         .rodata
.Lbynamefn80:           .string          "SORT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn80]
                        lea              rsi, [rbp + 128]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n166_lit_integer_α
                                                                                        jmp   n167_assign_α
n165_call_β:
                                                                                        jmp   n166_lit_integer_α
#=======================================================================================================================
#                 si              =   0
#-----------------------------------------------------------------------------------------------------------------------
n166_lit_integer_α:
                        mov              qword ptr [rbp + 208], 6
                        mov              rax, qword ptr [rip + .Lx417_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n168_assign_α
n166_lit_integer_β:
                                                                                        jmp   n169_lit_integer_α
.Lx417_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n167_assign_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        mov              qword ptr [1879052352], rax
                        mov              qword ptr [1879052360], rdx
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n166_lit_integer_α
n167_assign_β:
                                                                                        jmp   n166_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n168_assign_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n169_lit_integer_α
n168_assign_β:
                                                                                        jmp   n169_lit_integer_α
#=======================================================================================================================
#                 ns              =   0
#-----------------------------------------------------------------------------------------------------------------------
n169_lit_integer_α:
                        mov              qword ptr [rbp + 256], 6
                        mov              rax, qword ptr [rip + .Lx420_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n170_assign_α
n169_lit_integer_β:
                                                                                        jmp   n171_var_α
.Lx420_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n170_assign_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        mov              qword ptr [1879052640], rax
                        mov              qword ptr [1879052648], rdx
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n171_var_α
n170_assign_β:
                                                                                        jmp   n171_var_α
#=======================================================================================================================
# pm_cnt_loop     ns              =   ns + 1
#-----------------------------------------------------------------------------------------------------------------------
n171_var_α:
                        mov              rax, qword ptr [1879052640]
                        mov              rdx, qword ptr [1879052648]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n172_lit_integer_α
n171_var_β:
                                                                                        jmp   n173_var_α
#-----------------------------------------------------------------------------------------------------------------------
n172_lit_integer_α:
                        mov              qword ptr [rbp + 368], 6
                        mov              rax, qword ptr [rip + .Lx423_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n174_binop_α
n172_lit_integer_β:
                                                                                        jmp   n173_var_α
.Lx423_0:
                        .quad            1
#=======================================================================================================================
#                 ssk[ns,1]                                       :S(pm_cnt_loop)
#-----------------------------------------------------------------------------------------------------------------------
n173_var_α:
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n175_var_α
n173_var_β:
                                                                                        jmp   n176_var_α
#-----------------------------------------------------------------------------------------------------------------------
n174_binop_α:
                        mov              eax, dword ptr [rbp + 336]
                        cmp              eax, 100
                                                                                        je    .Lx425_0
                        mov              eax, dword ptr [rbp + 336]
                        cmp              eax, 6
                                                                                        jne   .Lx425_2
.Lx425_1:
                        mov              rax, qword ptr [rbp + 344]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 304], 6
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n177_assign_α
.Lx425_0:
                        mov              rdi, qword ptr [rbp + 336]
                        mov              rsi, qword ptr [rbp + 344]
                        mov              rdx, qword ptr [rbp + 368]
                        mov              rcx, qword ptr [rbp + 376]
                        mov              r8d, 0
                        lea              r9, [rbp + 304]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n177_assign_α
.Lx425_2:
                        mov              rdi, qword ptr [rbp + 336]
                        mov              rsi, qword ptr [rbp + 344]
                        mov              rdx, qword ptr [rbp + 368]
                        mov              rcx, qword ptr [rbp + 376]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n173_var_α
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n177_assign_α
n174_binop_β:
                                                                                        jmp   n173_var_α
#-----------------------------------------------------------------------------------------------------------------------
n175_var_α:
                        mov              rax, qword ptr [1879052640]
                        mov              rdx, qword ptr [1879052648]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n178_subscript_α
n175_var_β:
                                                                                        jmp   n176_var_α
#=======================================================================================================================
#                 ns              =   ns - 1
#-----------------------------------------------------------------------------------------------------------------------
n176_var_α:
                        mov              rax, qword ptr [1879052640]
                        mov              rdx, qword ptr [1879052648]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n179_lit_integer_α
n176_var_β:
                                                                                        jmp   n180_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n177_assign_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        mov              qword ptr [1879052640], rax
                        mov              qword ptr [1879052648], rdx
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n173_var_α
n177_assign_β:
                                                                                        jmp   n173_var_α
#-----------------------------------------------------------------------------------------------------------------------
n178_subscript_α:
                        mov              rdi, qword ptr [rbp + 400]
                        mov              rsi, qword ptr [rbp + 408]
                        mov              rdx, qword ptr [rbp + 432]
                        mov              rcx, qword ptr [rbp + 440]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n176_var_α
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n181_lit_integer_α
n178_subscript_β:
                                                                                        jmp   n176_var_α
#-----------------------------------------------------------------------------------------------------------------------
n179_lit_integer_α:
                        mov              qword ptr [rbp + 656], 6
                        mov              rax, qword ptr [rip + .Lx430_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n182_binop_α
n179_lit_integer_β:
                                                                                        jmp   n180_lit_integer_α
.Lx430_0:
                        .quad            1
#=======================================================================================================================
#                 si              =   0
#-----------------------------------------------------------------------------------------------------------------------
n180_lit_integer_α:
                        mov              qword ptr [rbp + 704], 6
                        mov              rax, qword ptr [rip + .Lx431_0]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n183_assign_α
n180_lit_integer_β:
                                                                                        jmp   n186_var_α
.Lx431_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n181_lit_integer_α:
                        mov              qword ptr [rbp + 496], 6
                        mov              rax, qword ptr [rip + .Lx432_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n184_subscript_α
n181_lit_integer_β:
                                                                                        jmp   n176_var_α
.Lx432_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n182_binop_α:
                        mov              eax, dword ptr [rbp + 624]
                        cmp              eax, 100
                                                                                        je    .Lx433_0
                        mov              eax, dword ptr [rbp + 624]
                        cmp              eax, 6
                                                                                        jne   .Lx433_2
.Lx433_1:
                        mov              rax, qword ptr [rbp + 632]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rbp + 592], 6
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n185_assign_α
.Lx433_0:
                        mov              rdi, qword ptr [rbp + 624]
                        mov              rsi, qword ptr [rbp + 632]
                        mov              rdx, qword ptr [rbp + 656]
                        mov              rcx, qword ptr [rbp + 664]
                        mov              r8d, 1
                        lea              r9, [rbp + 592]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n185_assign_α
.Lx433_2:
                        mov              rdi, qword ptr [rbp + 624]
                        mov              rsi, qword ptr [rbp + 632]
                        mov              rdx, qword ptr [rbp + 656]
                        mov              rcx, qword ptr [rbp + 664]
                        mov              r8d, 1
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n180_lit_integer_α
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n185_assign_α
n182_binop_β:
                                                                                        jmp   n180_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n183_assign_α:
                        mov              rax, qword ptr [rbp + 704]
                        mov              rdx, qword ptr [rbp + 712]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   n186_var_α
n183_assign_β:
                                                                                        jmp   n186_var_α
#-----------------------------------------------------------------------------------------------------------------------
n184_subscript_α:
                        mov              rdi, qword ptr [rbp + 464]
                        mov              rsi, qword ptr [rbp + 472]
                        mov              rdx, qword ptr [rbp + 496]
                        mov              rcx, qword ptr [rbp + 504]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n176_var_α
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n187_deref_α
n184_subscript_β:
                                                                                        jmp   n176_var_α
#-----------------------------------------------------------------------------------------------------------------------
n185_assign_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              rdx, qword ptr [rbp + 600]
                        mov              qword ptr [1879052640], rax
                        mov              qword ptr [1879052648], rdx
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n180_lit_integer_α
n185_assign_β:
                                                                                        jmp   n180_lit_integer_α
#=======================================================================================================================
# pm_sent_loop    si              =   si + 1
#-----------------------------------------------------------------------------------------------------------------------
n186_var_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n188_lit_integer_α
n186_var_β:
                                                                                        jmp   n189_var_α
#-----------------------------------------------------------------------------------------------------------------------
n187_deref_α:
                        mov              rdi, qword ptr [rbp + 528]
                        mov              rsi, qword ptr [rbp + 536]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n176_var_α
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n171_var_α
n187_deref_β:
                                                                                        jmp   n176_var_α
#-----------------------------------------------------------------------------------------------------------------------
n188_lit_integer_α:
                        mov              qword ptr [rbp + 816], 6
                        mov              rax, qword ptr [rip + .Lx439_0]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n190_binop_α
n188_lit_integer_β:
                                                                                        jmp   n189_var_α
.Lx439_0:
                        .quad            1
#=======================================================================================================================
#                 sentno          =   ssk[si,1]                   :F(pm_done)
#-----------------------------------------------------------------------------------------------------------------------
n189_var_α:
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n191_var_α
n189_var_β:
                                                                                        jmp   n192_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n190_binop_α:
                        mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 100
                                                                                        je    .Lx441_0
                        mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 6
                                                                                        jne   .Lx441_2
.Lx441_1:
                        mov              rax, qword ptr [rbp + 792]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 752], 6
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n193_assign_α
.Lx441_0:
                        mov              rdi, qword ptr [rbp + 784]
                        mov              rsi, qword ptr [rbp + 792]
                        mov              rdx, qword ptr [rbp + 816]
                        mov              rcx, qword ptr [rbp + 824]
                        mov              r8d, 0
                        lea              r9, [rbp + 752]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n193_assign_α
.Lx441_2:
                        mov              rdi, qword ptr [rbp + 784]
                        mov              rsi, qword ptr [rbp + 792]
                        mov              rdx, qword ptr [rbp + 816]
                        mov              rcx, qword ptr [rbp + 824]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n189_var_α
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n193_assign_α
n190_binop_β:
                                                                                        jmp   n189_var_α
#-----------------------------------------------------------------------------------------------------------------------
n191_var_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                                                                                        jmp   n194_subscript_α
n191_var_β:
                                                                                        jmp   n192_lit_string_α
#=======================================================================================================================
# pm_done         pp_mem          =   .dummy                      :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n192_lit_string_α:
                        mov              qword ptr [rbp + 7552], 1
                        mov              rax, qword ptr [rip + .Lx443_0]
                        mov              qword ptr [rbp + 7560], rax
                                                                                        jmp   n195_call_α
n192_lit_string_β:
                                                                                        jmp   proc_pp_mem_γ
.Lx443_0:
                        .quad            .Lx443_0_s
.Lx443_0_s:
                        .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n193_assign_α:
                        mov              rax, qword ptr [rbp + 752]
                        mov              rdx, qword ptr [rbp + 760]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n189_var_α
n193_assign_β:
                                                                                        jmp   n189_var_α
#-----------------------------------------------------------------------------------------------------------------------
n194_subscript_α:
                        mov              rdi, qword ptr [rbp + 864]
                        mov              rsi, qword ptr [rbp + 872]
                        mov              rdx, qword ptr [rbp + 896]
                        mov              rcx, qword ptr [rbp + 904]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n192_lit_string_α
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                                                                                        jmp   n196_lit_integer_α
n194_subscript_β:
                                                                                        jmp   n192_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n195_call_α:
                        mov              rax, qword ptr [rbp + 7552]
                        mov              qword ptr [rbp + 7520], rax
                        mov              rax, qword ptr [rbp + 7560]
                        mov              qword ptr [rbp + 7528], rax
                        .section         .rodata
.Lrkfn447:              .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn447]
                        lea              rsi, [rbp + 7520]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 7504], rax
                        mov              qword ptr [rbp + 7512], rdx
                        cmp              eax, 99
                                                                                        je    proc_pp_mem_γ
                                                                                        jmp   n197_assign_α
n195_call_β:
                                                                                        jmp   proc_pp_mem_γ
#-----------------------------------------------------------------------------------------------------------------------
n196_lit_integer_α:
                        mov              qword ptr [rbp + 960], 6
                        mov              rax, qword ptr [rip + .Lx448_0]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n198_subscript_α
n196_lit_integer_β:
                                                                                        jmp   n192_lit_string_α
.Lx448_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n197_assign_α:
                        mov              rax, qword ptr [rbp + 7504]
                        mov              rdx, qword ptr [rbp + 7512]
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                        mov              qword ptr [rbp + 7488], rax
                        mov              qword ptr [rbp + 7496], rdx
                                                                                        jmp   proc_pp_mem_γ
n197_assign_β:
                                                                                        jmp   proc_pp_mem_γ
#-----------------------------------------------------------------------------------------------------------------------
n198_subscript_α:
                        mov              rdi, qword ptr [rbp + 928]
                        mov              rsi, qword ptr [rbp + 936]
                        mov              rdx, qword ptr [rbp + 960]
                        mov              rcx, qword ptr [rbp + 968]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n192_lit_string_α
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                                                                                        jmp   n199_deref_α
n198_subscript_β:
                                                                                        jmp   n192_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n199_deref_α:
                        mov              rdi, qword ptr [rbp + 992]
                        mov              rsi, qword ptr [rbp + 1000]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n192_lit_string_α
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                                                                                        jmp   n200_assign_α
n199_deref_β:
                                                                                        jmp   n192_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n200_assign_α:
                        mov              rax, qword ptr [rbp + 1024]
                        mov              rdx, qword ptr [rbp + 1032]
                        mov              qword ptr [1879052384], rax
                        mov              qword ptr [1879052392], rdx
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   n201_lit_string_α
n200_assign_β:
                                                                                        jmp   n192_lit_string_α
#=======================================================================================================================
#                 last_sent       =   ''
#-----------------------------------------------------------------------------------------------------------------------
n201_lit_string_α:
                        mov              qword ptr [rbp + 1056], 1
                        mov              rax, qword ptr [rip + .Lx453_0]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n202_assign_α
n201_lit_string_β:
                                                                                        jmp   n203_var_α
.Lx453_0:
                        .quad            .Lx453_0_s
.Lx453_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n202_assign_α:
                        mov              rax, qword ptr [rbp + 1056]
                        mov              rdx, qword ptr [rbp + 1064]
                        mov              qword ptr [1879052608], rax
                        mov              qword ptr [1879052616], rdx
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n203_var_α
n202_assign_β:
                                                                                        jmp   n203_var_α
#=======================================================================================================================
#                 last_sent       =   IDENT(si, ns) 1
#-----------------------------------------------------------------------------------------------------------------------
n203_var_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                                                                                        jmp   n204_var_α
n203_var_β:
                                                                                        jmp   n205_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n204_var_α:
                        mov              rax, qword ptr [1879052640]
                        mov              rdx, qword ptr [1879052648]
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                                                                                        jmp   n206_call_α
n204_var_β:
                                                                                        jmp   n205_lit_string_α
#=======================================================================================================================
#                 pad             =   DUPL(' ', SIZE(sentno) + 4)
#-----------------------------------------------------------------------------------------------------------------------
n205_lit_string_α:
                        mov              qword ptr [rbp + 1376], 1
                        mov              rax, qword ptr [rip + .Lx457_0]
                        mov              qword ptr [rbp + 1384], rax
                                                                                        jmp   n207_var_α
n205_lit_string_β:
                                                                                        jmp   n210_var_α
.Lx457_0:
                        .quad            .Lx457_0_s
.Lx457_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n206_call_α:
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1160], rax
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1176], rax
                        .section         .rodata
.Lrkfn459:              .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn459]
                        lea              rsi, [rbp + 1152]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                        cmp              eax, 99
                                                                                        je    n205_lit_string_α
                                                                                        jmp   n208_lit_integer_α
n206_call_β:
                                                                                        jmp   n205_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n207_var_α:
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                                                                                        jmp   n209_call_α
n207_var_β:
                                                                                        jmp   n210_var_α
#-----------------------------------------------------------------------------------------------------------------------
n208_lit_integer_α:
                        mov              qword ptr [rbp + 1264], 6
                        mov              rax, qword ptr [rip + .Lx461_0]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n211_binop_α
n208_lit_integer_β:
                                                                                        jmp   n205_lit_string_α
.Lx461_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n209_call_α:
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1464], rax
                        .section         .rodata
.Lrkfn463:              .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn463]
                        lea              rsi, [rbp + 1456]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                        cmp              eax, 99
                                                                                        je    n210_var_α
                                                                                        jmp   n212_lit_integer_α
n209_call_β:
                                                                                        jmp   n210_var_α
#=======================================================================================================================
#                 pfx             =   EQ(si, 1) '{' sentno ': {'
#-----------------------------------------------------------------------------------------------------------------------
n210_var_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                                                                                        jmp   n213_lit_integer_α
n210_var_β:
                                                                                        jmp   n214_var_α
#-----------------------------------------------------------------------------------------------------------------------
n211_binop_α:
                        mov              rdi, qword ptr [rbp + 1136]
                        mov              rsi, qword ptr [rbp + 1144]
                        mov              rdx, qword ptr [rbp + 1264]
                        mov              rcx, qword ptr [rbp + 1272]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                                                                                        jmp   n215_assign_α
n211_binop_β:
                                                                                        jmp   n205_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n212_lit_integer_α:
                        mov              qword ptr [rbp + 1520], 6
                        mov              rax, qword ptr [rip + .Lx466_0]
                        mov              qword ptr [rbp + 1528], rax
                                                                                        jmp   n216_binop_α
n212_lit_integer_β:
                                                                                        jmp   n210_var_α
.Lx466_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n213_lit_integer_α:
                        mov              qword ptr [rbp + 1760], 6
                        mov              rax, qword ptr [rip + .Lx467_0]
                        mov              qword ptr [rbp + 1768], rax
                                                                                        jmp   n217_op74_α
n213_lit_integer_β:
                                                                                        jmp   n214_var_α
.Lx467_0:
                        .quad            1
#=======================================================================================================================
#                 pfx             =   NE(si, 1) ' ' sentno ': {'
#-----------------------------------------------------------------------------------------------------------------------
n214_var_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                                                                                        jmp   n218_lit_integer_α
n214_var_β:
                                                                                        jmp   n219_var_α
#-----------------------------------------------------------------------------------------------------------------------
n215_assign_α:
                        mov              rax, qword ptr [rbp + 1104]
                        mov              rdx, qword ptr [rbp + 1112]
                        mov              qword ptr [1879052608], rax
                        mov              qword ptr [1879052616], rdx
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                                                                                        jmp   n205_lit_string_α
n215_assign_β:
                                                                                        jmp   n205_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n216_binop_α:
                        mov              eax, dword ptr [rbp + 1440]
                        cmp              eax, 100
                                                                                        je    .Lx470_0
                        mov              eax, dword ptr [rbp + 1440]
                        cmp              eax, 6
                                                                                        jne   .Lx470_2
.Lx470_1:
                        mov              rax, qword ptr [rbp + 1448]
                        mov              rcx, 4
                        add              rax, rcx
                        mov              qword ptr [rbp + 1408], 6
                        mov              qword ptr [rbp + 1416], rax
                                                                                        jmp   n220_call_α
.Lx470_0:
                        mov              rdi, qword ptr [rbp + 1440]
                        mov              rsi, qword ptr [rbp + 1448]
                        mov              rdx, qword ptr [rbp + 1520]
                        mov              rcx, qword ptr [rbp + 1528]
                        mov              r8d, 0
                        lea              r9, [rbp + 1408]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n220_call_α
.Lx470_2:
                        mov              rdi, qword ptr [rbp + 1440]
                        mov              rsi, qword ptr [rbp + 1448]
                        mov              rdx, qword ptr [rbp + 1520]
                        mov              rcx, qword ptr [rbp + 1528]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n210_var_α
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                                                                                        jmp   n220_call_α
n216_binop_β:
                                                                                        jmp   n210_var_α
#-----------------------------------------------------------------------------------------------------------------------
n217_op74_α:
                        mov              eax, dword ptr [rbp + 1792]
                        cmp              eax, 7
                                                                                        je    .Lx472_1
                        cmp              eax, 6
                                                                                        jne   .Lx472_0
                        mov              eax, dword ptr [rbp + 1760]
                        cmp              eax, 6
                                                                                        jne   .Lx472_0
.Lx472_1:
                        mov              rax, qword ptr [rbp + 1792]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 1736], rax
                                                                                        jmp   n221_op74_α
.Lx472_0:
                        lea              rdi, [rbp + 1792]
                        lea              rsi, [rbp + 1760]
                        lea              rdx, [rbp + 1728]
                        mov              rcx, 101
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n221_op74_α
n217_op74_β:
                                                                                        jmp   n214_var_α
#-----------------------------------------------------------------------------------------------------------------------
n218_lit_integer_α:
                        mov              qword ptr [rbp + 2128], 6
                        mov              rax, qword ptr [rip + .Lx473_0]
                        mov              qword ptr [rbp + 2136], rax
                                                                                        jmp   n222_op74_α
n218_lit_integer_β:
                                                                                        jmp   n219_var_α
.Lx473_0:
                        .quad            1
#=======================================================================================================================
#                 wsk             =   SORT(mem[sentno])
#-----------------------------------------------------------------------------------------------------------------------
n219_var_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 2352], rax
                        mov              qword ptr [rbp + 2360], rdx
                                                                                        jmp   n223_var_α
n219_var_β:
                                                                                        jmp   n224_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n220_call_α:
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1336], rax
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 1352], rax
                        .section         .rodata
.Lrkfn476:              .string          "DUPL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn476]
                        lea              rsi, [rbp + 1328]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                        cmp              eax, 99
                                                                                        je    n210_var_α
                                                                                        jmp   n225_assign_α
n220_call_β:
                                                                                        jmp   n210_var_α
#-----------------------------------------------------------------------------------------------------------------------
n221_op74_α:
                        mov              eax, dword ptr [rbp + 1760]
                        cmp              eax, 7
                                                                                        je    .Lx478_1
                        cmp              eax, 6
                                                                                        jne   .Lx478_0
                        mov              eax, dword ptr [rbp + 1792]
                        cmp              eax, 6
                                                                                        jne   .Lx478_0
.Lx478_1:
                        mov              rax, qword ptr [rbp + 1760]
                        mov              qword ptr [rbp + 1696], rax
                        mov              rax, qword ptr [rbp + 1768]
                        mov              qword ptr [rbp + 1704], rax
                                                                                        jmp   n226_op76_α
.Lx478_0:
                        lea              rdi, [rbp + 1760]
                        lea              rsi, [rbp + 1792]
                        lea              rdx, [rbp + 1696]
                        mov              rcx, 102
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n226_op76_α
n221_op74_β:
                                                                                        jmp   n214_var_α
#-----------------------------------------------------------------------------------------------------------------------
n222_op74_α:
                        mov              eax, dword ptr [rbp + 2160]
                        cmp              eax, 7
                                                                                        je    .Lx480_1
                        cmp              eax, 6
                                                                                        jne   .Lx480_0
                        mov              eax, dword ptr [rbp + 2128]
                        cmp              eax, 6
                                                                                        jne   .Lx480_0
.Lx480_1:
                        mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 2096], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 2104], rax
                                                                                        jmp   n227_op74_α
.Lx480_0:
                        lea              rdi, [rbp + 2160]
                        lea              rsi, [rbp + 2128]
                        lea              rdx, [rbp + 2096]
                        mov              rcx, 149
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n227_op74_α
n222_op74_β:
                                                                                        jmp   n219_var_α
#-----------------------------------------------------------------------------------------------------------------------
n223_var_α:
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rbp + 2384], rax
                        mov              qword ptr [rbp + 2392], rdx
                                                                                        jmp   n228_subscript_α
n223_var_β:
                                                                                        jmp   n224_lit_integer_α
#=======================================================================================================================
#                 wi              =   0
#-----------------------------------------------------------------------------------------------------------------------
n224_lit_integer_α:
                        mov              qword ptr [rbp + 2480], 6
                        mov              rax, qword ptr [rip + .Lx482_0]
                        mov              qword ptr [rbp + 2488], rax
                                                                                        jmp   n229_assign_α
n224_lit_integer_β:
                                                                                        jmp   n233_var_α
.Lx482_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n225_assign_α:
                        mov              rax, qword ptr [rbp + 1312]
                        mov              rdx, qword ptr [rbp + 1320]
                        mov              qword ptr [1879052576], rax
                        mov              qword ptr [1879052584], rdx
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                                                                                        jmp   n210_var_α
n225_assign_β:
                                                                                        jmp   n210_var_α
#-----------------------------------------------------------------------------------------------------------------------
n226_op76_α:
                        lea              rdi, [rbp + 1728]
                        lea              rsi, [rbp + 1696]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jne   n214_var_α
                        mov              qword ptr [rbp + 1664], 0
                        mov              qword ptr [rbp + 1672], 0
                                                                                        jmp   n230_lit_string_α
n226_op76_β:
                                                                                        jmp   n214_var_α
#-----------------------------------------------------------------------------------------------------------------------
n227_op74_α:
                        mov              eax, dword ptr [rbp + 2128]
                        cmp              eax, 7
                                                                                        je    .Lx487_1
                        cmp              eax, 6
                                                                                        jne   .Lx487_0
                        mov              eax, dword ptr [rbp + 2160]
                        cmp              eax, 6
                                                                                        jne   .Lx487_0
.Lx487_1:
                        mov              rax, qword ptr [rbp + 2128]
                        mov              qword ptr [rbp + 2064], rax
                        mov              rax, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 2072], rax
                                                                                        jmp   n231_op76_α
.Lx487_0:
                        lea              rdi, [rbp + 2128]
                        lea              rsi, [rbp + 2160]
                        lea              rdx, [rbp + 2064]
                        mov              rcx, 150
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n231_op76_α
n227_op74_β:
                                                                                        jmp   n219_var_α
#-----------------------------------------------------------------------------------------------------------------------
n228_subscript_α:
                        mov              rdi, qword ptr [rbp + 2352]
                        mov              rsi, qword ptr [rbp + 2360]
                        mov              rdx, qword ptr [rbp + 2384]
                        mov              rcx, qword ptr [rbp + 2392]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n224_lit_integer_α
                        mov              qword ptr [rbp + 2416], rax
                        mov              qword ptr [rbp + 2424], rdx
                                                                                        jmp   n232_deref_α
n228_subscript_β:
                                                                                        jmp   n224_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n229_assign_α:
                        mov              rax, qword ptr [rbp + 2480]
                        mov              rdx, qword ptr [rbp + 2488]
                        mov              qword ptr [1879052416], rax
                        mov              qword ptr [1879052424], rdx
                        mov              qword ptr [rbp + 2464], rax
                        mov              qword ptr [rbp + 2472], rdx
                                                                                        jmp   n233_var_α
n229_assign_β:
                                                                                        jmp   n233_var_α
#-----------------------------------------------------------------------------------------------------------------------
n230_lit_string_α:
                        mov              qword ptr [rbp + 1824], 1
                        mov              rax, qword ptr [rip + .Lx490_0]
                        mov              qword ptr [rbp + 1832], rax
                                                                                        jmp   n234_binop_α
n230_lit_string_β:
                                                                                        jmp   n214_var_α
.Lx490_0:
                        .quad            .Lx490_0_s
.Lx490_0_s:
                        .string          "{"
#-----------------------------------------------------------------------------------------------------------------------
n231_op76_α:
                        lea              rdi, [rbp + 2096]
                        lea              rsi, [rbp + 2064]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        je    n219_var_α
                        mov              qword ptr [rbp + 2032], 0
                        mov              qword ptr [rbp + 2040], 0
                                                                                        jmp   n235_lit_string_α
n231_op76_β:
                                                                                        jmp   n219_var_α
#-----------------------------------------------------------------------------------------------------------------------
n232_deref_α:
                        mov              rdi, qword ptr [rbp + 2416]
                        mov              rsi, qword ptr [rbp + 2424]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n224_lit_integer_α
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx
                                                                                        jmp   n236_call_α
n232_deref_β:
                                                                                        jmp   n224_lit_integer_α
#=======================================================================================================================
# pm_wrd_loop     wi              =   wi + 1
#-----------------------------------------------------------------------------------------------------------------------
n233_var_α:
                        mov              rax, qword ptr [1879052416]
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rbp + 2560], rax
                        mov              qword ptr [rbp + 2568], rdx
                                                                                        jmp   n237_lit_integer_α
n233_var_β:
                                                                                        jmp   n238_var_α
#-----------------------------------------------------------------------------------------------------------------------
n234_binop_α:
                        mov              rdi, qword ptr [rbp + 1664]
                        mov              rsi, qword ptr [rbp + 1672]
                        mov              rdx, qword ptr [rbp + 1824]
                        mov              rcx, qword ptr [rbp + 1832]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                                                                                        jmp   n239_var_α
n234_binop_β:
                                                                                        jmp   n214_var_α
#-----------------------------------------------------------------------------------------------------------------------
n235_lit_string_α:
                        mov              qword ptr [rbp + 2192], 1
                        mov              rax, qword ptr [rip + .Lx496_0]
                        mov              qword ptr [rbp + 2200], rax
                                                                                        jmp   n240_binop_α
n235_lit_string_β:
                                                                                        jmp   n219_var_α
.Lx496_0:
                        .quad            .Lx496_0_s
.Lx496_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n236_call_α:
                        mov              rax, qword ptr [rbp + 2448]
                        mov              qword ptr [rbp + 2320], rax
                        mov              rax, qword ptr [rbp + 2456]
                        mov              qword ptr [rbp + 2328], rax
                        .section         .rodata
.Lbynamefn151:          .string          "SORT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn151]
                        lea              rsi, [rbp + 2320]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx
                        cmp              eax, 99
                                                                                        je    n224_lit_integer_α
                                                                                        jmp   n241_assign_α
n236_call_β:
                                                                                        jmp   n224_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n237_lit_integer_α:
                        mov              qword ptr [rbp + 2592], 6
                        mov              rax, qword ptr [rip + .Lx498_0]
                        mov              qword ptr [rbp + 2600], rax
                                                                                        jmp   n242_binop_α
n237_lit_integer_β:
                                                                                        jmp   n238_var_α
.Lx498_0:
                        .quad            1
#=======================================================================================================================
#                 wkey            =   wsk[wi,1]                   :F(pm_sent_loop)
#-----------------------------------------------------------------------------------------------------------------------
n238_var_α:
                        mov              rax, qword ptr [1879052400]
                        mov              rdx, qword ptr [1879052408]
                        mov              qword ptr [rbp + 2640], rax
                        mov              qword ptr [rbp + 2648], rdx
                                                                                        jmp   n243_var_α
n238_var_β:
                                                                                        jmp   n186_var_α
#-----------------------------------------------------------------------------------------------------------------------
n239_var_α:
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx
                                                                                        jmp   n244_binop_α
n239_var_β:
                                                                                        jmp   n214_var_α
#-----------------------------------------------------------------------------------------------------------------------
n240_binop_α:
                        mov              rdi, qword ptr [rbp + 2032]
                        mov              rsi, qword ptr [rbp + 2040]
                        mov              rdx, qword ptr [rbp + 2192]
                        mov              rcx, qword ptr [rbp + 2200]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx
                                                                                        jmp   n245_var_α
n240_binop_β:
                                                                                        jmp   n219_var_α
#-----------------------------------------------------------------------------------------------------------------------
n241_assign_α:
                        mov              rax, qword ptr [rbp + 2304]
                        mov              rdx, qword ptr [rbp + 2312]
                        mov              qword ptr [1879052400], rax
                        mov              qword ptr [1879052408], rdx
                        mov              qword ptr [rbp + 2288], rax
                        mov              qword ptr [rbp + 2296], rdx
                                                                                        jmp   n224_lit_integer_α
n241_assign_β:
                                                                                        jmp   n224_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n242_binop_α:
                        mov              eax, dword ptr [rbp + 2560]
                        cmp              eax, 100
                                                                                        je    .Lx503_0
                        mov              eax, dword ptr [rbp + 2560]
                        cmp              eax, 6
                                                                                        jne   .Lx503_2
.Lx503_1:
                        mov              rax, qword ptr [rbp + 2568]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 2528], 6
                        mov              qword ptr [rbp + 2536], rax
                                                                                        jmp   n246_assign_α
.Lx503_0:
                        mov              rdi, qword ptr [rbp + 2560]
                        mov              rsi, qword ptr [rbp + 2568]
                        mov              rdx, qword ptr [rbp + 2592]
                        mov              rcx, qword ptr [rbp + 2600]
                        mov              r8d, 0
                        lea              r9, [rbp + 2528]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n246_assign_α
.Lx503_2:
                        mov              rdi, qword ptr [rbp + 2560]
                        mov              rsi, qword ptr [rbp + 2568]
                        mov              rdx, qword ptr [rbp + 2592]
                        mov              rcx, qword ptr [rbp + 2600]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n238_var_α
                        mov              qword ptr [rbp + 2528], rax
                        mov              qword ptr [rbp + 2536], rdx
                                                                                        jmp   n246_assign_α
n242_binop_β:
                                                                                        jmp   n238_var_α
#-----------------------------------------------------------------------------------------------------------------------
n243_var_α:
                        mov              rax, qword ptr [1879052416]
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rbp + 2672], rax
                        mov              qword ptr [rbp + 2680], rdx
                                                                                        jmp   n247_subscript_α
n243_var_β:
                                                                                        jmp   n186_var_α
#-----------------------------------------------------------------------------------------------------------------------
n244_binop_α:
                        mov              rdi, qword ptr [rbp + 1632]
                        mov              rsi, qword ptr [rbp + 1640]
                        mov              rdx, qword ptr [rbp + 1856]
                        mov              rcx, qword ptr [rbp + 1864]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                                                                                        jmp   n248_lit_string_α
n244_binop_β:
                                                                                        jmp   n214_var_α
#-----------------------------------------------------------------------------------------------------------------------
n245_var_α:
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rbp + 2224], rax
                        mov              qword ptr [rbp + 2232], rdx
                                                                                        jmp   n249_binop_α
n245_var_β:
                                                                                        jmp   n219_var_α
#-----------------------------------------------------------------------------------------------------------------------
n246_assign_α:
                        mov              rax, qword ptr [rbp + 2528]
                        mov              rdx, qword ptr [rbp + 2536]
                        mov              qword ptr [1879052416], rax
                        mov              qword ptr [1879052424], rdx
                        mov              qword ptr [rbp + 2512], rax
                        mov              qword ptr [rbp + 2520], rdx
                                                                                        jmp   n238_var_α
n246_assign_β:
                                                                                        jmp   n238_var_α
#-----------------------------------------------------------------------------------------------------------------------
n247_subscript_α:
                        mov              rdi, qword ptr [rbp + 2640]
                        mov              rsi, qword ptr [rbp + 2648]
                        mov              rdx, qword ptr [rbp + 2672]
                        mov              rcx, qword ptr [rbp + 2680]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n186_var_α
                        mov              qword ptr [rbp + 2704], rax
                        mov              qword ptr [rbp + 2712], rdx
                                                                                        jmp   n250_lit_integer_α
n247_subscript_β:
                                                                                        jmp   n186_var_α
#-----------------------------------------------------------------------------------------------------------------------
n248_lit_string_α:
                        mov              qword ptr [rbp + 1888], 1
                        mov              rax, qword ptr [rip + .Lx509_0]
                        mov              qword ptr [rbp + 1896], rax
                                                                                        jmp   n251_binop_α
n248_lit_string_β:
                                                                                        jmp   n214_var_α
.Lx509_0:
                        .quad            .Lx509_0_s
.Lx509_0_s:
                        .string          ": {"
#-----------------------------------------------------------------------------------------------------------------------
n249_binop_α:
                        mov              rdi, qword ptr [rbp + 2000]
                        mov              rsi, qword ptr [rbp + 2008]
                        mov              rdx, qword ptr [rbp + 2224]
                        mov              rcx, qword ptr [rbp + 2232]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx
                                                                                        jmp   n252_lit_string_α
n249_binop_β:
                                                                                        jmp   n219_var_α
#-----------------------------------------------------------------------------------------------------------------------
n250_lit_integer_α:
                        mov              qword ptr [rbp + 2736], 6
                        mov              rax, qword ptr [rip + .Lx511_0]
                        mov              qword ptr [rbp + 2744], rax
                                                                                        jmp   n253_subscript_α
n250_lit_integer_β:
                                                                                        jmp   n186_var_α
.Lx511_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n251_binop_α:
                        mov              rdi, qword ptr [rbp + 1600]
                        mov              rsi, qword ptr [rbp + 1608]
                        mov              rdx, qword ptr [rbp + 1888]
                        mov              rcx, qword ptr [rbp + 1896]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                                                                                        jmp   n254_assign_α
n251_binop_β:
                                                                                        jmp   n214_var_α
#-----------------------------------------------------------------------------------------------------------------------
n252_lit_string_α:
                        mov              qword ptr [rbp + 2256], 1
                        mov              rax, qword ptr [rip + .Lx513_0]
                        mov              qword ptr [rbp + 2264], rax
                                                                                        jmp   n255_binop_α
n252_lit_string_β:
                                                                                        jmp   n219_var_α
.Lx513_0:
                        .quad            .Lx513_0_s
.Lx513_0_s:
                        .string          ": {"
#-----------------------------------------------------------------------------------------------------------------------
n253_subscript_α:
                        mov              rdi, qword ptr [rbp + 2704]
                        mov              rsi, qword ptr [rbp + 2712]
                        mov              rdx, qword ptr [rbp + 2736]
                        mov              rcx, qword ptr [rbp + 2744]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n186_var_α
                        mov              qword ptr [rbp + 2768], rax
                        mov              qword ptr [rbp + 2776], rdx
                                                                                        jmp   n256_deref_α
n253_subscript_β:
                                                                                        jmp   n186_var_α
#-----------------------------------------------------------------------------------------------------------------------
n254_assign_α:
                        mov              rax, qword ptr [rbp + 1568]
                        mov              rdx, qword ptr [rbp + 1576]
                        mov              qword ptr [1879052560], rax
                        mov              qword ptr [1879052568], rdx
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                                                                                        jmp   n214_var_α
n254_assign_β:
                                                                                        jmp   n214_var_α
#-----------------------------------------------------------------------------------------------------------------------
n255_binop_α:
                        mov              rdi, qword ptr [rbp + 1968]
                        mov              rsi, qword ptr [rbp + 1976]
                        mov              rdx, qword ptr [rbp + 2256]
                        mov              rcx, qword ptr [rbp + 2264]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx
                                                                                        jmp   n257_assign_α
n255_binop_β:
                                                                                        jmp   n219_var_α
#-----------------------------------------------------------------------------------------------------------------------
n256_deref_α:
                        mov              rdi, qword ptr [rbp + 2768]
                        mov              rsi, qword ptr [rbp + 2776]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n186_var_α
                        mov              qword ptr [rbp + 2800], rax
                        mov              qword ptr [rbp + 2808], rdx
                                                                                        jmp   n258_assign_α
n256_deref_β:
                                                                                        jmp   n186_var_α
#-----------------------------------------------------------------------------------------------------------------------
n257_assign_α:
                        mov              rax, qword ptr [rbp + 1936]
                        mov              rdx, qword ptr [rbp + 1944]
                        mov              qword ptr [1879052560], rax
                        mov              qword ptr [1879052568], rdx
                        mov              qword ptr [rbp + 1920], rax
                        mov              qword ptr [rbp + 1928], rdx
                                                                                        jmp   n219_var_α
n257_assign_β:
                                                                                        jmp   n219_var_α
#-----------------------------------------------------------------------------------------------------------------------
n258_assign_α:
                        mov              rax, qword ptr [rbp + 2800]
                        mov              rdx, qword ptr [rbp + 2808]
                        mov              qword ptr [1879052432], rax
                        mov              qword ptr [1879052440], rdx
                        mov              qword ptr [rbp + 2624], rax
                        mov              qword ptr [rbp + 2632], rdx
                                                                                        jmp   n259_lit_string_α
n258_assign_β:
                                                                                        jmp   n186_var_α
#=======================================================================================================================
#                 next_wkey       =   ''
#-----------------------------------------------------------------------------------------------------------------------
n259_lit_string_α:
                        mov              qword ptr [rbp + 2832], 1
                        mov              rax, qword ptr [rip + .Lx520_0]
                        mov              qword ptr [rbp + 2840], rax
                                                                                        jmp   n260_assign_α
n259_lit_string_β:
                                                                                        jmp   n261_var_α
.Lx520_0:
                        .quad            .Lx520_0_s
.Lx520_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n260_assign_α:
                        mov              rax, qword ptr [rbp + 2832]
                        mov              rdx, qword ptr [rbp + 2840]
                        mov              qword ptr [1879052592], rax
                        mov              qword ptr [1879052600], rdx
                        mov              qword ptr [rbp + 2816], rax
                        mov              qword ptr [rbp + 2824], rdx
                                                                                        jmp   n261_var_α
n260_assign_β:
                                                                                        jmp   n261_var_α
#=======================================================================================================================
#                 next_wkey       =   wsk[wi + 1,1]
#-----------------------------------------------------------------------------------------------------------------------
n261_var_α:
                        mov              rax, qword ptr [1879052400]
                        mov              rdx, qword ptr [1879052408]
                        mov              qword ptr [rbp + 2880], rax
                        mov              qword ptr [rbp + 2888], rdx
                                                                                        jmp   n262_var_α
n261_var_β:
                                                                                        jmp   n263_var_α
#-----------------------------------------------------------------------------------------------------------------------
n262_var_α:
                        mov              rax, qword ptr [1879052416]
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rbp + 2944], rax
                        mov              qword ptr [rbp + 2952], rdx
                                                                                        jmp   n264_lit_integer_α
n262_var_β:
                                                                                        jmp   n263_var_α
#=======================================================================================================================
#                 wrd             =   wkey
#-----------------------------------------------------------------------------------------------------------------------
n263_var_α:
                        mov              rax, qword ptr [1879052432]
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rbp + 3136], rax
                        mov              qword ptr [rbp + 3144], rdx
                                                                                        jmp   n265_assign_α
n263_var_β:
                                                                                        jmp   n266_var_α
#-----------------------------------------------------------------------------------------------------------------------
n264_lit_integer_α:
                        mov              qword ptr [rbp + 2976], 6
                        mov              rax, qword ptr [rip + .Lx525_0]
                        mov              qword ptr [rbp + 2984], rax
                                                                                        jmp   n267_binop_α
n264_lit_integer_β:
                                                                                        jmp   n263_var_α
.Lx525_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n265_assign_α:
                        mov              rax, qword ptr [rbp + 3136]
                        mov              rdx, qword ptr [rbp + 3144]
                        mov              qword ptr [1879052464], rax
                        mov              qword ptr [1879052472], rdx
                        mov              qword ptr [rbp + 3120], rax
                        mov              qword ptr [rbp + 3128], rdx
                                                                                        jmp   n266_var_α
n265_assign_β:
                                                                                        jmp   n266_var_α
#=======================================================================================================================
#                 wrd             ?   ARB "'"  =  ''              :F(pm_sq)
#-----------------------------------------------------------------------------------------------------------------------
n266_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 3344], rax
                        mov              qword ptr [rbp + 3352], rdx
                                                                                        jmp   n268_match_head_α
n266_var_β:
                                                                                        jmp   n269_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n267_binop_α:
                        mov              eax, dword ptr [rbp + 2944]
                        cmp              eax, 100
                                                                                        je    .Lx528_0
                        mov              eax, dword ptr [rbp + 2944]
                        cmp              eax, 6
                                                                                        jne   .Lx528_2
.Lx528_1:
                        mov              rax, qword ptr [rbp + 2952]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 2912], 6
                        mov              qword ptr [rbp + 2920], rax
                                                                                        jmp   n270_subscript_α
.Lx528_0:
                        mov              rdi, qword ptr [rbp + 2944]
                        mov              rsi, qword ptr [rbp + 2952]
                        mov              rdx, qword ptr [rbp + 2976]
                        mov              rcx, qword ptr [rbp + 2984]
                        mov              r8d, 0
                        lea              r9, [rbp + 2912]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n270_subscript_α
.Lx528_2:
                        mov              rdi, qword ptr [rbp + 2944]
                        mov              rsi, qword ptr [rbp + 2952]
                        mov              rdx, qword ptr [rbp + 2976]
                        mov              rcx, qword ptr [rbp + 2984]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n263_var_α
                        mov              qword ptr [rbp + 2912], rax
                        mov              qword ptr [rbp + 2920], rdx
                                                                                        jmp   n270_subscript_α
n267_binop_β:
                                                                                        jmp   n263_var_α
#-----------------------------------------------------------------------------------------------------------------------
n268_match_head_α:
                        mov              qword ptr [rbp + 3224], rbp
                        mov              rdi, qword ptr [rbp + 3344]
                        mov              rsi, qword ptr [rbp + 3352]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [rbp + 3216], r12
                        mov              rax, rsp
                        sub              rsp, 32
                        mov              qword ptr [rsp + 16], rax
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 8], rax
                        mov              dword ptr [rsp + 0], 0
.Lx530_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n271_match_sequence_α
n268_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx530_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx530_1
                                                                                        jmp   .Lx530_0
.Lx530_1:
                        mov              rax, qword ptr [rsp + 8]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 16]
                        mov              r12, qword ptr [rbp + 3216]
                        mov              rbp, qword ptr [rbp + 3224]
                                                                                        jmp   n269_lit_string_α
#=======================================================================================================================
# pm_sq           wq              =   "'" wkey "'"
#-----------------------------------------------------------------------------------------------------------------------
n269_lit_string_α:
                        mov              qword ptr [rbp + 3632], 1
                        mov              rax, qword ptr [rip + .Lx531_0]
                        mov              qword ptr [rbp + 3640], rax
                                                                                        jmp   n272_var_α
n269_lit_string_β:
                                                                                        jmp   n278_var_α
.Lx531_0:
                        .quad            .Lx531_0_s
.Lx531_0_s:
                        .string          "'"
#-----------------------------------------------------------------------------------------------------------------------
n270_subscript_α:
                        mov              rdi, qword ptr [rbp + 2880]
                        mov              rsi, qword ptr [rbp + 2888]
                        mov              rdx, qword ptr [rbp + 2912]
                        mov              rcx, qword ptr [rbp + 2920]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n263_var_α
                        mov              qword ptr [rbp + 3008], rax
                        mov              qword ptr [rbp + 3016], rdx
                                                                                        jmp   n273_lit_integer_α
n270_subscript_β:
                                                                                        jmp   n263_var_α
#-----------------------------------------------------------------------------------------------------------------------
n271_match_sequence_α:
                                                                                        jmp   n275_match_arb_α
n271_match_sequence_as:
                                                                                        jmp   n274_match_release_α
n271_match_sequence_β:
                                                                                        jmp   n276_match_lit_β
n271_match_sequence_af:
                                                                                        jmp   n268_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n272_var_α:
                        mov              rax, qword ptr [1879052432]
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rbp + 3664], rax
                        mov              qword ptr [rbp + 3672], rdx
                                                                                        jmp   n277_binop_α
n272_var_β:
                                                                                        jmp   n278_var_α
#-----------------------------------------------------------------------------------------------------------------------
n273_lit_integer_α:
                        mov              qword ptr [rbp + 3040], 6
                        mov              rax, qword ptr [rip + .Lx536_0]
                        mov              qword ptr [rbp + 3048], rax
                                                                                        jmp   n279_subscript_α
n273_lit_integer_β:
                                                                                        jmp   n263_var_α
.Lx536_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n274_match_release_α:
                        mov              rax, qword ptr [rsp + 24]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              eax, dword ptr [rsp + 16]
                        mov              dword ptr [rsp + 3232], eax
                        mov              qword ptr [rsp + 3256], r14
                        mov              rsp, qword ptr [rsp + 32]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rsp + 3248]
                        mov              rsi, r12
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx538_1:
                        test             rax, rax
                                                                                        je    .Lx538_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx538_3]
                        lea              rdx, [rip + .Lx538_4]
                                                                                        jmp   rax
.Lx538_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx538_1
.Lx538_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx538_1
.Lx538_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + 3216]
                                                                                        jmp   n280_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n275_match_arb_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], 0
                        mov              eax, r14d
                        mov              dword ptr [rsp + 4], eax
                                                                                        jmp   n276_match_lit_α
n275_match_arb_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 4]
                        add              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx540_0
                        mov              r14d, eax
                                                                                        jmp   n276_match_lit_α
.Lx540_0:
                        mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16
                                                                                        jmp   n268_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n276_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n275_match_arb_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 39
                                                                                        jne   n275_match_arb_β
                        add              r14d, 1
                                                                                        jmp   n274_match_release_α
n276_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n275_match_arb_β
#-----------------------------------------------------------------------------------------------------------------------
n277_binop_α:
                        mov              rdi, qword ptr [rbp + 3632]
                        mov              rsi, qword ptr [rbp + 3640]
                        mov              rdx, qword ptr [rbp + 3664]
                        mov              rcx, qword ptr [rbp + 3672]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 3600], rax
                        mov              qword ptr [rbp + 3608], rdx
                                                                                        jmp   n281_lit_string_α
n277_binop_β:
                                                                                        jmp   n278_var_α
#=======================================================================================================================
# pm_tdict        tsk             =   SORT(mem[sentno][wkey])
#-----------------------------------------------------------------------------------------------------------------------
n278_var_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 3792], rax
                        mov              qword ptr [rbp + 3800], rdx
                                                                                        jmp   n282_var_α
n278_var_β:
                                                                                        jmp   n283_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n279_subscript_α:
                        mov              rdi, qword ptr [rbp + 3008]
                        mov              rsi, qword ptr [rbp + 3016]
                        mov              rdx, qword ptr [rbp + 3040]
                        mov              rcx, qword ptr [rbp + 3048]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n263_var_α
                        mov              qword ptr [rbp + 3072], rax
                        mov              qword ptr [rbp + 3080], rdx
                                                                                        jmp   n284_deref_α
n279_subscript_β:
                                                                                        jmp   n263_var_α
#-----------------------------------------------------------------------------------------------------------------------
n280_lit_string_α:
                        mov              qword ptr [rbp + 3248], 1
                        mov              rax, qword ptr [rip + .Lx546_0]
                        mov              qword ptr [rbp + 3256], rax
                                                                                        jmp   n285_match_replace_α
n280_lit_string_β:
                                                                                        jmp   n269_lit_string_α
.Lx546_0:
                        .quad            .Lx546_0_s
.Lx546_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n281_lit_string_α:
                        mov              qword ptr [rbp + 3696], 1
                        mov              rax, qword ptr [rip + .Lx547_0]
                        mov              qword ptr [rbp + 3704], rax
                                                                                        jmp   n286_binop_α
n281_lit_string_β:
                                                                                        jmp   n278_var_α
.Lx547_0:
                        .quad            .Lx547_0_s
.Lx547_0_s:
                        .string          "'"
#-----------------------------------------------------------------------------------------------------------------------
n282_var_α:
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rbp + 3824], rax
                        mov              qword ptr [rbp + 3832], rdx
                                                                                        jmp   n287_subscript_α
n282_var_β:
                                                                                        jmp   n283_lit_integer_α
#=======================================================================================================================
#                 ti              =   0
#-----------------------------------------------------------------------------------------------------------------------
n283_lit_integer_α:
                        mov              qword ptr [rbp + 4000], 6
                        mov              rax, qword ptr [rip + .Lx549_0]
                        mov              qword ptr [rbp + 4008], rax
                                                                                        jmp   n288_assign_α
n283_lit_integer_β:
                                                                                        jmp   n293_lit_string_α
.Lx549_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n284_deref_α:
                        mov              rdi, qword ptr [rbp + 3072]
                        mov              rsi, qword ptr [rbp + 3080]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n263_var_α
                        mov              qword ptr [rbp + 3104], rax
                        mov              qword ptr [rbp + 3112], rdx
                                                                                        jmp   n289_assign_α
n284_deref_β:
                                                                                        jmp   n263_var_α
#-----------------------------------------------------------------------------------------------------------------------
n285_match_replace_α:
                        mov              rdi, qword ptr [rip + .Lx552_0]
                        mov              rsi, qword ptr [rbp + 3344]
                        mov              rdx, qword ptr [rbp + 3352]
                        mov              ecx, dword ptr [rbp + 3184]
                        mov              r8, qword ptr [rbp + 3208]
                        lea              r9, [rbp + 3248]
                        call             rt_match_replace@PLT
                                                                                        jmp   .Lx552_1
.Lx552_0:
                        .quad            .Lx552_0_s
.Lx552_0_s:
                        .string          "wrd"
.Lx552_1:
                        mov              rbp, qword ptr [rbp + 3224]
                                                                                        jmp   n290_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n286_binop_α:
                        mov              rdi, qword ptr [rbp + 3600]
                        mov              rsi, qword ptr [rbp + 3608]
                        mov              rdx, qword ptr [rbp + 3696]
                        mov              rcx, qword ptr [rbp + 3704]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 3568], rax
                        mov              qword ptr [rbp + 3576], rdx
                                                                                        jmp   n291_assign_α
n286_binop_β:
                                                                                        jmp   n278_var_α
#-----------------------------------------------------------------------------------------------------------------------
n287_subscript_α:
                        mov              rdi, qword ptr [rbp + 3792]
                        mov              rsi, qword ptr [rbp + 3800]
                        mov              rdx, qword ptr [rbp + 3824]
                        mov              rcx, qword ptr [rbp + 3832]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n283_lit_integer_α
                        mov              qword ptr [rbp + 3856], rax
                        mov              qword ptr [rbp + 3864], rdx
                                                                                        jmp   n292_deref_α
n287_subscript_β:
                                                                                        jmp   n283_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n288_assign_α:
                        mov              rax, qword ptr [rbp + 4000]
                        mov              rdx, qword ptr [rbp + 4008]
                        mov              qword ptr [1879052496], rax
                        mov              qword ptr [1879052504], rdx
                        mov              qword ptr [rbp + 3984], rax
                        mov              qword ptr [rbp + 3992], rdx
                                                                                        jmp   n293_lit_string_α
n288_assign_β:
                                                                                        jmp   n293_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n289_assign_α:
                        mov              rax, qword ptr [rbp + 3104]
                        mov              rdx, qword ptr [rbp + 3112]
                        mov              qword ptr [1879052592], rax
                        mov              qword ptr [1879052600], rdx
                        mov              qword ptr [rbp + 2864], rax
                        mov              qword ptr [rbp + 2872], rdx
                                                                                        jmp   n263_var_α
n289_assign_β:
                                                                                        jmp   n263_var_α
#=======================================================================================================================
#                 wq              =   '"' wkey '"'                :(pm_tdict)
#-----------------------------------------------------------------------------------------------------------------------
n290_lit_string_α:
                        mov              qword ptr [rbp + 3456], 1
                        mov              rax, qword ptr [rip + .Lx557_0]
                        mov              qword ptr [rbp + 3464], rax
                                                                                        jmp   n294_var_α
n290_lit_string_β:
                                                                                        jmp   n278_var_α
.Lx557_0:
                        .quad            .Lx557_0_s
.Lx557_0_s:
                        .string          "\""
#-----------------------------------------------------------------------------------------------------------------------
n291_assign_α:
                        mov              rax, qword ptr [rbp + 3568]
                        mov              rdx, qword ptr [rbp + 3576]
                        mov              qword ptr [1879052448], rax
                        mov              qword ptr [1879052456], rdx
                        mov              qword ptr [rbp + 3552], rax
                        mov              qword ptr [rbp + 3560], rdx
                                                                                        jmp   n278_var_α
n291_assign_β:
                                                                                        jmp   n278_var_α
#-----------------------------------------------------------------------------------------------------------------------
n292_deref_α:
                        mov              rdi, qword ptr [rbp + 3856]
                        mov              rsi, qword ptr [rbp + 3864]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n283_lit_integer_α
                        mov              qword ptr [rbp + 3888], rax
                        mov              qword ptr [rbp + 3896], rdx
                                                                                        jmp   n295_var_α
n292_deref_β:
                                                                                        jmp   n283_lit_integer_α
#=======================================================================================================================
#                 tline           =   '{'
#-----------------------------------------------------------------------------------------------------------------------
n293_lit_string_α:
                        mov              qword ptr [rbp + 4048], 1
                        mov              rax, qword ptr [rip + .Lx560_0]
                        mov              qword ptr [rbp + 4056], rax
                                                                                        jmp   n296_assign_α
n293_lit_string_β:
                                                                                        jmp   n299_var_α
.Lx560_0:
                        .quad            .Lx560_0_s
.Lx560_0_s:
                        .string          "{"
#-----------------------------------------------------------------------------------------------------------------------
n294_var_α:
                        mov              rax, qword ptr [1879052432]
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rbp + 3488], rax
                        mov              qword ptr [rbp + 3496], rdx
                                                                                        jmp   n297_binop_α
n294_var_β:
                                                                                        jmp   n278_var_α
#-----------------------------------------------------------------------------------------------------------------------
n295_var_α:
                        mov              rax, qword ptr [1879052432]
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rbp + 3904], rax
                        mov              qword ptr [rbp + 3912], rdx
                                                                                        jmp   n298_subscript_α
n295_var_β:
                                                                                        jmp   n283_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n296_assign_α:
                        mov              rax, qword ptr [rbp + 4048]
                        mov              rdx, qword ptr [rbp + 4056]
                        mov              qword ptr [1879052544], rax
                        mov              qword ptr [1879052552], rdx
                        mov              qword ptr [rbp + 4032], rax
                        mov              qword ptr [rbp + 4040], rdx
                                                                                        jmp   n299_var_α
n296_assign_β:
                                                                                        jmp   n299_var_α
#-----------------------------------------------------------------------------------------------------------------------
n297_binop_α:
                        mov              rdi, qword ptr [rbp + 3456]
                        mov              rsi, qword ptr [rbp + 3464]
                        mov              rdx, qword ptr [rbp + 3488]
                        mov              rcx, qword ptr [rbp + 3496]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 3424], rax
                        mov              qword ptr [rbp + 3432], rdx
                                                                                        jmp   n300_lit_string_α
n297_binop_β:
                                                                                        jmp   n278_var_α
#-----------------------------------------------------------------------------------------------------------------------
n298_subscript_α:
                        mov              rdi, qword ptr [rbp + 3888]
                        mov              rsi, qword ptr [rbp + 3896]
                        mov              rdx, qword ptr [rbp + 3904]
                        mov              rcx, qword ptr [rbp + 3912]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n283_lit_integer_α
                        mov              qword ptr [rbp + 3936], rax
                        mov              qword ptr [rbp + 3944], rdx
                                                                                        jmp   n301_deref_α
n298_subscript_β:
                                                                                        jmp   n283_lit_integer_α
#=======================================================================================================================
# pm_tag_loop     ti              =   ti + 1
#-----------------------------------------------------------------------------------------------------------------------
n299_var_α:
                        mov              rax, qword ptr [1879052496]
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rbp + 4128], rax
                        mov              qword ptr [rbp + 4136], rdx
                                                                                        jmp   n302_lit_integer_α
n299_var_β:
                                                                                        jmp   n303_var_α
#-----------------------------------------------------------------------------------------------------------------------
n300_lit_string_α:
                        mov              qword ptr [rbp + 3520], 1
                        mov              rax, qword ptr [rip + .Lx567_0]
                        mov              qword ptr [rbp + 3528], rax
                                                                                        jmp   n304_binop_α
n300_lit_string_β:
                                                                                        jmp   n278_var_α
.Lx567_0:
                        .quad            .Lx567_0_s
.Lx567_0_s:
                        .string          "\""
#-----------------------------------------------------------------------------------------------------------------------
n301_deref_α:
                        mov              rdi, qword ptr [rbp + 3936]
                        mov              rsi, qword ptr [rbp + 3944]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n283_lit_integer_α
                        mov              qword ptr [rbp + 3968], rax
                        mov              qword ptr [rbp + 3976], rdx
                                                                                        jmp   n305_call_α
n301_deref_β:
                                                                                        jmp   n283_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n302_lit_integer_α:
                        mov              qword ptr [rbp + 4160], 6
                        mov              rax, qword ptr [rip + .Lx569_0]
                        mov              qword ptr [rbp + 4168], rax
                                                                                        jmp   n306_binop_α
n302_lit_integer_β:
                                                                                        jmp   n303_var_α
.Lx569_0:
                        .quad            1
#=======================================================================================================================
#                 tag             =   tsk[ti,1]                   :F(pm_tag_close)
#-----------------------------------------------------------------------------------------------------------------------
n303_var_α:
                        mov              rax, qword ptr [1879052480]
                        mov              rdx, qword ptr [1879052488]
                        mov              qword ptr [rbp + 4208], rax
                        mov              qword ptr [rbp + 4216], rdx
                                                                                        jmp   n307_var_α
n303_var_β:
                                                                                        jmp   n308_var_α
#-----------------------------------------------------------------------------------------------------------------------
n304_binop_α:
                        mov              rdi, qword ptr [rbp + 3424]
                        mov              rsi, qword ptr [rbp + 3432]
                        mov              rdx, qword ptr [rbp + 3520]
                        mov              rcx, qword ptr [rbp + 3528]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 3392], rax
                        mov              qword ptr [rbp + 3400], rdx
                                                                                        jmp   n309_assign_α
n304_binop_β:
                                                                                        jmp   n278_var_α
#-----------------------------------------------------------------------------------------------------------------------
n305_call_α:
                        mov              rax, qword ptr [rbp + 3968]
                        mov              qword ptr [rbp + 3760], rax
                        mov              rax, qword ptr [rbp + 3976]
                        mov              qword ptr [rbp + 3768], rax
                        .section         .rodata
.Lbynamefn220:          .string          "SORT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn220]
                        lea              rsi, [rbp + 3760]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3744], rax
                        mov              qword ptr [rbp + 3752], rdx
                        cmp              eax, 99
                                                                                        je    n283_lit_integer_α
                                                                                        jmp   n310_assign_α
n305_call_β:
                                                                                        jmp   n283_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n306_binop_α:
                        mov              eax, dword ptr [rbp + 4128]
                        cmp              eax, 100
                                                                                        je    .Lx573_0
                        mov              eax, dword ptr [rbp + 4128]
                        cmp              eax, 6
                                                                                        jne   .Lx573_2
.Lx573_1:
                        mov              rax, qword ptr [rbp + 4136]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 4096], 6
                        mov              qword ptr [rbp + 4104], rax
                                                                                        jmp   n311_assign_α
.Lx573_0:
                        mov              rdi, qword ptr [rbp + 4128]
                        mov              rsi, qword ptr [rbp + 4136]
                        mov              rdx, qword ptr [rbp + 4160]
                        mov              rcx, qword ptr [rbp + 4168]
                        mov              r8d, 0
                        lea              r9, [rbp + 4096]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n311_assign_α
.Lx573_2:
                        mov              rdi, qword ptr [rbp + 4128]
                        mov              rsi, qword ptr [rbp + 4136]
                        mov              rdx, qword ptr [rbp + 4160]
                        mov              rcx, qword ptr [rbp + 4168]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n303_var_α
                        mov              qword ptr [rbp + 4096], rax
                        mov              qword ptr [rbp + 4104], rdx
                                                                                        jmp   n311_assign_α
n306_binop_β:
                                                                                        jmp   n303_var_α
#-----------------------------------------------------------------------------------------------------------------------
n307_var_α:
                        mov              rax, qword ptr [1879052496]
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rbp + 4240], rax
                        mov              qword ptr [rbp + 4248], rdx
                                                                                        jmp   n312_subscript_α
n307_var_β:
                                                                                        jmp   n308_var_α
#=======================================================================================================================
# pm_tag_close    tline           =   tline '}'
#-----------------------------------------------------------------------------------------------------------------------
n308_var_α:
                        mov              rax, qword ptr [1879052544]
                        mov              rdx, qword ptr [1879052552]
                        mov              qword ptr [rbp + 5520], rax
                        mov              qword ptr [rbp + 5528], rdx
                                                                                        jmp   n313_lit_string_α
n308_var_β:
                                                                                        jmp   n314_var_α
#-----------------------------------------------------------------------------------------------------------------------
n309_assign_α:
                        mov              rax, qword ptr [rbp + 3392]
                        mov              rdx, qword ptr [rbp + 3400]
                        mov              qword ptr [1879052448], rax
                        mov              qword ptr [1879052456], rdx
                        mov              qword ptr [rbp + 3376], rax
                        mov              qword ptr [rbp + 3384], rdx
                                                                                        jmp   n278_var_α
n309_assign_β:
                                                                                        jmp   n278_var_α
#-----------------------------------------------------------------------------------------------------------------------
n310_assign_α:
                        mov              rax, qword ptr [rbp + 3744]
                        mov              rdx, qword ptr [rbp + 3752]
                        mov              qword ptr [1879052480], rax
                        mov              qword ptr [1879052488], rdx
                        mov              qword ptr [rbp + 3728], rax
                        mov              qword ptr [rbp + 3736], rdx
                                                                                        jmp   n283_lit_integer_α
n310_assign_β:
                                                                                        jmp   n283_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n311_assign_α:
                        mov              rax, qword ptr [rbp + 4096]
                        mov              rdx, qword ptr [rbp + 4104]
                        mov              qword ptr [1879052496], rax
                        mov              qword ptr [1879052504], rdx
                        mov              qword ptr [rbp + 4080], rax
                        mov              qword ptr [rbp + 4088], rdx
                                                                                        jmp   n303_var_α
n311_assign_β:
                                                                                        jmp   n303_var_α
#-----------------------------------------------------------------------------------------------------------------------
n312_subscript_α:
                        mov              rdi, qword ptr [rbp + 4208]
                        mov              rsi, qword ptr [rbp + 4216]
                        mov              rdx, qword ptr [rbp + 4240]
                        mov              rcx, qword ptr [rbp + 4248]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n308_var_α
                        mov              qword ptr [rbp + 4272], rax
                        mov              qword ptr [rbp + 4280], rdx
                                                                                        jmp   n315_lit_integer_α
n312_subscript_β:
                                                                                        jmp   n308_var_α
#-----------------------------------------------------------------------------------------------------------------------
n313_lit_string_α:
                        mov              qword ptr [rbp + 5552], 1
                        mov              rax, qword ptr [rip + .Lx580_0]
                        mov              qword ptr [rbp + 5560], rax
                                                                                        jmp   n316_binop_α
n313_lit_string_β:
                                                                                        jmp   n314_var_α
.Lx580_0:
                        .quad            .Lx580_0_s
.Lx580_0_s:
                        .string          "}"
#=======================================================================================================================
#                 GT(SIZE(next_wkey), 0)                          :F(pm_last_wrd)
#-----------------------------------------------------------------------------------------------------------------------
n314_var_α:
                        mov              rax, qword ptr [1879052592]
                        mov              rdx, qword ptr [1879052600]
                        mov              qword ptr [rbp + 5760], rax
                        mov              qword ptr [rbp + 5768], rdx
                                                                                        jmp   n317_call_α
n314_var_β:
                                                                                        jmp   n318_var_α
#-----------------------------------------------------------------------------------------------------------------------
n315_lit_integer_α:
                        mov              qword ptr [rbp + 4304], 6
                        mov              rax, qword ptr [rip + .Lx582_0]
                        mov              qword ptr [rbp + 4312], rax
                                                                                        jmp   n319_subscript_α
n315_lit_integer_β:
                                                                                        jmp   n308_var_α
.Lx582_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n316_binop_α:
                        mov              rdi, qword ptr [rbp + 5520]
                        mov              rsi, qword ptr [rbp + 5528]
                        mov              rdx, qword ptr [rbp + 5552]
                        mov              rcx, qword ptr [rbp + 5560]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 5488], rax
                        mov              qword ptr [rbp + 5496], rdx
                                                                                        jmp   n320_assign_α
n316_binop_β:
                                                                                        jmp   n314_var_α
#-----------------------------------------------------------------------------------------------------------------------
n317_call_α:
                        mov              rax, qword ptr [rbp + 5760]
                        mov              qword ptr [rbp + 5728], rax
                        mov              rax, qword ptr [rbp + 5768]
                        mov              qword ptr [rbp + 5736], rax
                        .section         .rodata
.Lrkfn585:              .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn585]
                        lea              rsi, [rbp + 5728]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5712], rax
                        mov              qword ptr [rbp + 5720], rdx
                        cmp              eax, 99
                                                                                        je    n318_var_α
                                                                                        jmp   n321_lit_integer_α
n317_call_β:
                                                                                        jmp   n318_var_α
#=======================================================================================================================
# pm_last_wrd     IDENT(wi, 1)                                    :F(pm_last_mid)
#-----------------------------------------------------------------------------------------------------------------------
n318_var_α:
                        mov              rax, qword ptr [1879052416]
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rbp + 6592], rax
                        mov              qword ptr [rbp + 6600], rdx
                                                                                        jmp   n322_lit_integer_α
n318_var_β:
                                                                                        jmp   n323_var_α
#-----------------------------------------------------------------------------------------------------------------------
n319_subscript_α:
                        mov              rdi, qword ptr [rbp + 4272]
                        mov              rsi, qword ptr [rbp + 4280]
                        mov              rdx, qword ptr [rbp + 4304]
                        mov              rcx, qword ptr [rbp + 4312]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n308_var_α
                        mov              qword ptr [rbp + 4336], rax
                        mov              qword ptr [rbp + 4344], rdx
                                                                                        jmp   n324_deref_α
n319_subscript_β:
                                                                                        jmp   n308_var_α
#-----------------------------------------------------------------------------------------------------------------------
n320_assign_α:
                        mov              rax, qword ptr [rbp + 5488]
                        mov              rdx, qword ptr [rbp + 5496]
                        mov              qword ptr [1879052544], rax
                        mov              qword ptr [1879052552], rdx
                        mov              qword ptr [rbp + 5472], rax
                        mov              qword ptr [rbp + 5480], rdx
                                                                                        jmp   n314_var_α
n320_assign_β:
                                                                                        jmp   n314_var_α
#-----------------------------------------------------------------------------------------------------------------------
n321_lit_integer_α:
                        mov              qword ptr [rbp + 5680], 6
                        mov              rax, qword ptr [rip + .Lx589_0]
                        mov              qword ptr [rbp + 5688], rax
                                                                                        jmp   n325_op74_α
n321_lit_integer_β:
                                                                                        jmp   n318_var_α
.Lx589_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n322_lit_integer_α:
                        mov              qword ptr [rbp + 6624], 6
                        mov              rax, qword ptr [rip + .Lx590_0]
                        mov              qword ptr [rbp + 6632], rax
                                                                                        jmp   n326_call_α
n322_lit_integer_β:
                                                                                        jmp   n323_var_α
.Lx590_0:
                        .quad            1
#=======================================================================================================================
# pm_last_mid     lline           =   pad wq ': ' tline
#-----------------------------------------------------------------------------------------------------------------------
n323_var_α:
                        mov              rax, qword ptr [1879052576]
                        mov              rdx, qword ptr [1879052584]
                        mov              qword ptr [rbp + 7008], rax
                        mov              qword ptr [rbp + 7016], rdx
                                                                                        jmp   n327_var_α
n323_var_β:
                                                                                        jmp   n328_var_α
#-----------------------------------------------------------------------------------------------------------------------
n324_deref_α:
                        mov              rdi, qword ptr [rbp + 4336]
                        mov              rsi, qword ptr [rbp + 4344]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n308_var_α
                        mov              qword ptr [rbp + 4368], rax
                        mov              qword ptr [rbp + 4376], rdx
                                                                                        jmp   n329_assign_α
n324_deref_β:
                                                                                        jmp   n308_var_α
#-----------------------------------------------------------------------------------------------------------------------
n325_op74_α:
                        mov              eax, dword ptr [rbp + 5712]
                        cmp              eax, 7
                                                                                        je    .Lx594_1
                        cmp              eax, 6
                                                                                        jne   .Lx594_0
                        mov              eax, dword ptr [rbp + 5680]
                        cmp              eax, 6
                                                                                        jne   .Lx594_0
.Lx594_1:
                        mov              rax, qword ptr [rbp + 5712]
                        mov              qword ptr [rbp + 5648], rax
                        mov              rax, qword ptr [rbp + 5720]
                        mov              qword ptr [rbp + 5656], rax
                                                                                        jmp   n330_op74_α
.Lx594_0:
                        lea              rdi, [rbp + 5712]
                        lea              rsi, [rbp + 5680]
                        lea              rdx, [rbp + 5648]
                        mov              rcx, 111
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n330_op74_α
n325_op74_β:
                                                                                        jmp   n318_var_α
#-----------------------------------------------------------------------------------------------------------------------
n326_call_α:
                        mov              rax, qword ptr [rbp + 6592]
                        mov              qword ptr [rbp + 6544], rax
                        mov              rax, qword ptr [rbp + 6600]
                        mov              qword ptr [rbp + 6552], rax
                        mov              rax, qword ptr [rbp + 6624]
                        mov              qword ptr [rbp + 6560], rax
                        mov              rax, qword ptr [rbp + 6632]
                        mov              qword ptr [rbp + 6568], rax
                        .section         .rodata
.Lrkfn596:              .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn596]
                        lea              rsi, [rbp + 6544]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 6528], rax
                        mov              qword ptr [rbp + 6536], rdx
                        cmp              eax, 99
                                                                                        je    n323_var_α
                                                                                        jmp   n331_var_α
n326_call_β:
                                                                                        jmp   n323_var_α
#-----------------------------------------------------------------------------------------------------------------------
n327_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 7040], rax
                        mov              qword ptr [rbp + 7048], rdx
                                                                                        jmp   n332_binop_α
n327_var_β:
                                                                                        jmp   n328_var_α
#=======================================================================================================================
# pm_last_emit    IDENT(last_sent, 1)                             :F(pm_last_mid2)
#-----------------------------------------------------------------------------------------------------------------------
n328_var_α:
                        mov              rax, qword ptr [1879052608]
                        mov              rdx, qword ptr [1879052616]
                        mov              qword ptr [rbp + 7200], rax
                        mov              qword ptr [rbp + 7208], rdx
                                                                                        jmp   n333_lit_integer_α
n328_var_β:
                                                                                        jmp   n334_var_α
#-----------------------------------------------------------------------------------------------------------------------
n329_assign_α:
                        mov              rax, qword ptr [rbp + 4368]
                        mov              rdx, qword ptr [rbp + 4376]
                        mov              qword ptr [1879052512], rax
                        mov              qword ptr [1879052520], rdx
                        mov              qword ptr [rbp + 4192], rax
                        mov              qword ptr [rbp + 4200], rdx
                                                                                        jmp   n335_var_α
n329_assign_β:
                                                                                        jmp   n308_var_α
#-----------------------------------------------------------------------------------------------------------------------
n330_op74_α:
                        mov              eax, dword ptr [rbp + 5680]
                        cmp              eax, 7
                                                                                        je    .Lx601_1
                        cmp              eax, 6
                                                                                        jne   .Lx601_0
                        mov              eax, dword ptr [rbp + 5712]
                        cmp              eax, 6
                                                                                        jne   .Lx601_0
.Lx601_1:
                        mov              rax, qword ptr [rbp + 5680]
                        mov              qword ptr [rbp + 5616], rax
                        mov              rax, qword ptr [rbp + 5688]
                        mov              qword ptr [rbp + 5624], rax
                                                                                        jmp   n336_op76_α
.Lx601_0:
                        lea              rdi, [rbp + 5680]
                        lea              rsi, [rbp + 5712]
                        lea              rdx, [rbp + 5616]
                        mov              rcx, 112
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n336_op76_α
n330_op74_β:
                                                                                        jmp   n318_var_α
#=======================================================================================================================
#                 lline           =   pfx wq ': ' tline           :(pm_last_emit)
#-----------------------------------------------------------------------------------------------------------------------
n331_var_α:
                        mov              rax, qword ptr [1879052560]
                        mov              rdx, qword ptr [1879052568]
                        mov              qword ptr [rbp + 6768], rax
                        mov              qword ptr [rbp + 6776], rdx
                                                                                        jmp   n337_var_α
n331_var_β:
                                                                                        jmp   n328_var_α
#-----------------------------------------------------------------------------------------------------------------------
n332_binop_α:
                        mov              rdi, qword ptr [rbp + 7008]
                        mov              rsi, qword ptr [rbp + 7016]
                        mov              rdx, qword ptr [rbp + 7040]
                        mov              rcx, qword ptr [rbp + 7048]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 6976], rax
                        mov              qword ptr [rbp + 6984], rdx
                                                                                        jmp   n338_lit_string_α
n332_binop_β:
                                                                                        jmp   n328_var_α
#-----------------------------------------------------------------------------------------------------------------------
n333_lit_integer_α:
                        mov              qword ptr [rbp + 7232], 6
                        mov              rax, qword ptr [rip + .Lx604_0]
                        mov              qword ptr [rbp + 7240], rax
                                                                                        jmp   n339_call_α
n333_lit_integer_β:
                                                                                        jmp   n334_var_α
.Lx604_0:
                        .quad            1
#=======================================================================================================================
# pm_last_mid2    OUTPUT          =   lline '},'                  :(pm_sent_loop)
#-----------------------------------------------------------------------------------------------------------------------
n334_var_α:
                        mov              rax, qword ptr [1879052624]
                        mov              rdx, qword ptr [1879052632]
                        mov              qword ptr [rbp + 7424], rax
                        mov              qword ptr [rbp + 7432], rdx
                                                                                        jmp   n340_lit_string_α
n334_var_β:
                                                                                        jmp   n186_var_α
#=======================================================================================================================
#                 tv              =   mem[sentno][wkey][tag]
#-----------------------------------------------------------------------------------------------------------------------
n335_var_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 4400], rax
                        mov              qword ptr [rbp + 4408], rdx
                                                                                        jmp   n341_var_α
n335_var_β:
                                                                                        jmp   n342_var_α
#-----------------------------------------------------------------------------------------------------------------------
n336_op76_α:
                        lea              rdi, [rbp + 5648]
                        lea              rsi, [rbp + 5616]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jle   n318_var_α
                        mov              qword ptr [rbp + 5584], 0
                        mov              qword ptr [rbp + 5592], 0
                                                                                        jmp   n343_var_α
n336_op76_β:
                                                                                        jmp   n318_var_α
#-----------------------------------------------------------------------------------------------------------------------
n337_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 6800], rax
                        mov              qword ptr [rbp + 6808], rdx
                                                                                        jmp   n344_binop_α
n337_var_β:
                                                                                        jmp   n328_var_α
#-----------------------------------------------------------------------------------------------------------------------
n338_lit_string_α:
                        mov              qword ptr [rbp + 7072], 1
                        mov              rax, qword ptr [rip + .Lx610_0]
                        mov              qword ptr [rbp + 7080], rax
                                                                                        jmp   n345_binop_α
n338_lit_string_β:
                                                                                        jmp   n328_var_α
.Lx610_0:
                        .quad            .Lx610_0_s
.Lx610_0_s:
                        .string          ": "
#-----------------------------------------------------------------------------------------------------------------------
n339_call_α:
                        mov              rax, qword ptr [rbp + 7200]
                        mov              qword ptr [rbp + 7152], rax
                        mov              rax, qword ptr [rbp + 7208]
                        mov              qword ptr [rbp + 7160], rax
                        mov              rax, qword ptr [rbp + 7232]
                        mov              qword ptr [rbp + 7168], rax
                        mov              rax, qword ptr [rbp + 7240]
                        mov              qword ptr [rbp + 7176], rax
                        .section         .rodata
.Lrkfn612:              .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn612]
                        lea              rsi, [rbp + 7152]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 7136], rax
                        mov              qword ptr [rbp + 7144], rdx
                        cmp              eax, 99
                                                                                        je    n334_var_α
                                                                                        jmp   n346_var_α
n339_call_β:
                                                                                        jmp   n334_var_α
#-----------------------------------------------------------------------------------------------------------------------
n340_lit_string_α:
                        mov              qword ptr [rbp + 7456], 1
                        mov              rax, qword ptr [rip + .Lx613_0]
                        mov              qword ptr [rbp + 7464], rax
                                                                                        jmp   n347_binop_α
n340_lit_string_β:
                                                                                        jmp   n186_var_α
.Lx613_0:
                        .quad            .Lx613_0_s
.Lx613_0_s:
                        .string          "},"
#-----------------------------------------------------------------------------------------------------------------------
n341_var_α:
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rbp + 4432], rax
                        mov              qword ptr [rbp + 4440], rdx
                                                                                        jmp   n348_subscript_α
n341_var_β:
                                                                                        jmp   n342_var_α
#=======================================================================================================================
#                 IDENT(tline, '{')                               :F(pm_tag_sep)
#-----------------------------------------------------------------------------------------------------------------------
n342_var_α:
                        mov              rax, qword ptr [1879052544]
                        mov              rdx, qword ptr [1879052552]
                        mov              qword ptr [rbp + 4736], rax
                        mov              qword ptr [rbp + 4744], rdx
                                                                                        jmp   n349_lit_string_α
n342_var_β:
                                                                                        jmp   n350_var_α
#=======================================================================================================================
#                 IDENT(wi, 1)                                    :F(pm_mid_wrd)
#-----------------------------------------------------------------------------------------------------------------------
n343_var_α:
                        mov              rax, qword ptr [1879052416]
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rbp + 5856], rax
                        mov              qword ptr [rbp + 5864], rdx
                                                                                        jmp   n351_lit_integer_α
n343_var_β:
                                                                                        jmp   n352_var_α
#-----------------------------------------------------------------------------------------------------------------------
n344_binop_α:
                        mov              rdi, qword ptr [rbp + 6768]
                        mov              rsi, qword ptr [rbp + 6776]
                        mov              rdx, qword ptr [rbp + 6800]
                        mov              rcx, qword ptr [rbp + 6808]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 6736], rax
                        mov              qword ptr [rbp + 6744], rdx
                                                                                        jmp   n353_lit_string_α
n344_binop_β:
                                                                                        jmp   n328_var_α
#-----------------------------------------------------------------------------------------------------------------------
n345_binop_α:
                        mov              rdi, qword ptr [rbp + 6976]
                        mov              rsi, qword ptr [rbp + 6984]
                        mov              rdx, qword ptr [rbp + 7072]
                        mov              rcx, qword ptr [rbp + 7080]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 6944], rax
                        mov              qword ptr [rbp + 6952], rdx
                                                                                        jmp   n354_var_α
n345_binop_β:
                                                                                        jmp   n328_var_α
#=======================================================================================================================
#                 OUTPUT          =   lline '}}'                  :(pm_sent_loop)
#-----------------------------------------------------------------------------------------------------------------------
n346_var_α:
                        mov              rax, qword ptr [1879052624]
                        mov              rdx, qword ptr [1879052632]
                        mov              qword ptr [rbp + 7312], rax
                        mov              qword ptr [rbp + 7320], rdx
                                                                                        jmp   n355_lit_string_α
n346_var_β:
                                                                                        jmp   n186_var_α
#-----------------------------------------------------------------------------------------------------------------------
n347_binop_α:
                        mov              rdi, qword ptr [rbp + 7424]
                        mov              rsi, qword ptr [rbp + 7432]
                        mov              rdx, qword ptr [rbp + 7456]
                        mov              rcx, qword ptr [rbp + 7464]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 7392], rax
                        mov              qword ptr [rbp + 7400], rdx
                                                                                        jmp   n356_assign_α
n347_binop_β:
                                                                                        jmp   n186_var_α
#-----------------------------------------------------------------------------------------------------------------------
n348_subscript_α:
                        mov              rdi, qword ptr [rbp + 4400]
                        mov              rsi, qword ptr [rbp + 4408]
                        mov              rdx, qword ptr [rbp + 4432]
                        mov              rcx, qword ptr [rbp + 4440]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n342_var_α
                        mov              qword ptr [rbp + 4464], rax
                        mov              qword ptr [rbp + 4472], rdx
                                                                                        jmp   n357_deref_α
n348_subscript_β:
                                                                                        jmp   n342_var_α
#-----------------------------------------------------------------------------------------------------------------------
n349_lit_string_α:
                        mov              qword ptr [rbp + 4768], 1
                        mov              rax, qword ptr [rip + .Lx622_0]
                        mov              qword ptr [rbp + 4776], rax
                                                                                        jmp   n358_call_α
n349_lit_string_β:
                                                                                        jmp   n350_var_α
.Lx622_0:
                        .quad            .Lx622_0_s
.Lx622_0_s:
                        .string          "{"
#=======================================================================================================================
# pm_tag_sep      tline           =   tline ', ' "'" tag "': " tv :(pm_tag_loop)
#-----------------------------------------------------------------------------------------------------------------------
n350_var_α:
                        mov              rax, qword ptr [1879052544]
                        mov              rdx, qword ptr [1879052552]
                        mov              qword ptr [rbp + 5280], rax
                        mov              qword ptr [rbp + 5288], rdx
                                                                                        jmp   n359_lit_string_α
n350_var_β:
                                                                                        jmp   n299_var_α
#-----------------------------------------------------------------------------------------------------------------------
n351_lit_integer_α:
                        mov              qword ptr [rbp + 5888], 6
                        mov              rax, qword ptr [rip + .Lx624_0]
                        mov              qword ptr [rbp + 5896], rax
                                                                                        jmp   n360_call_α
n351_lit_integer_β:
                                                                                        jmp   n352_var_α
.Lx624_0:
                        .quad            1
#=======================================================================================================================
# pm_mid_wrd      OUTPUT          =   pad wq ': ' tline ','       :(pm_wrd_loop)
#-----------------------------------------------------------------------------------------------------------------------
n352_var_α:
                        mov              rax, qword ptr [1879052576]
                        mov              rdx, qword ptr [1879052584]
                        mov              qword ptr [rbp + 6368], rax
                        mov              qword ptr [rbp + 6376], rdx
                                                                                        jmp   n361_var_α
n352_var_β:
                                                                                        jmp   n233_var_α
#-----------------------------------------------------------------------------------------------------------------------
n353_lit_string_α:
                        mov              qword ptr [rbp + 6832], 1
                        mov              rax, qword ptr [rip + .Lx626_0]
                        mov              qword ptr [rbp + 6840], rax
                                                                                        jmp   n362_binop_α
n353_lit_string_β:
                                                                                        jmp   n328_var_α
.Lx626_0:
                        .quad            .Lx626_0_s
.Lx626_0_s:
                        .string          ": "
#-----------------------------------------------------------------------------------------------------------------------
n354_var_α:
                        mov              rax, qword ptr [1879052544]
                        mov              rdx, qword ptr [1879052552]
                        mov              qword ptr [rbp + 7104], rax
                        mov              qword ptr [rbp + 7112], rdx
                                                                                        jmp   n363_binop_α
n354_var_β:
                                                                                        jmp   n328_var_α
#-----------------------------------------------------------------------------------------------------------------------
n355_lit_string_α:
                        mov              qword ptr [rbp + 7344], 1
                        mov              rax, qword ptr [rip + .Lx628_0]
                        mov              qword ptr [rbp + 7352], rax
                                                                                        jmp   n364_binop_α
n355_lit_string_β:
                                                                                        jmp   n186_var_α
.Lx628_0:
                        .quad            .Lx628_0_s
.Lx628_0_s:
                        .string          "}}"
#-----------------------------------------------------------------------------------------------------------------------
n356_assign_α:
                        mov              rsi, qword ptr [rbp + 7392]
                        mov              rdx, qword ptr [rbp + 7400]
                        mov              rdi, qword ptr [rip + .Lx629_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 7376], rax
                        mov              qword ptr [rbp + 7384], rdx
                                                                                        jmp   n186_var_α
n356_assign_β:
                                                                                        jmp   n186_var_α
.Lx629_0:
                        .quad            .Lx629_0_s
.Lx629_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n357_deref_α:
                        mov              rdi, qword ptr [rbp + 4464]
                        mov              rsi, qword ptr [rbp + 4472]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n342_var_α
                        mov              qword ptr [rbp + 4496], rax
                        mov              qword ptr [rbp + 4504], rdx
                                                                                        jmp   n365_var_α
n357_deref_β:
                                                                                        jmp   n342_var_α
#-----------------------------------------------------------------------------------------------------------------------
n358_call_α:
                        mov              rax, qword ptr [rbp + 4736]
                        mov              qword ptr [rbp + 4688], rax
                        mov              rax, qword ptr [rbp + 4744]
                        mov              qword ptr [rbp + 4696], rax
                        mov              rax, qword ptr [rbp + 4768]
                        mov              qword ptr [rbp + 4704], rax
                        mov              rax, qword ptr [rbp + 4776]
                        mov              qword ptr [rbp + 4712], rax
                        .section         .rodata
.Lrkfn632:              .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn632]
                        lea              rsi, [rbp + 4688]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4672], rax
                        mov              qword ptr [rbp + 4680], rdx
                        cmp              eax, 99
                                                                                        je    n350_var_α
                                                                                        jmp   n366_var_α
n358_call_β:
                                                                                        jmp   n350_var_α
#-----------------------------------------------------------------------------------------------------------------------
n359_lit_string_α:
                        mov              qword ptr [rbp + 5312], 1
                        mov              rax, qword ptr [rip + .Lx633_0]
                        mov              qword ptr [rbp + 5320], rax
                                                                                        jmp   n367_binop_α
n359_lit_string_β:
                                                                                        jmp   n299_var_α
.Lx633_0:
                        .quad            .Lx633_0_s
.Lx633_0_s:
                        .string          ", "
#-----------------------------------------------------------------------------------------------------------------------
n360_call_α:
                        mov              rax, qword ptr [rbp + 5856]
                        mov              qword ptr [rbp + 5808], rax
                        mov              rax, qword ptr [rbp + 5864]
                        mov              qword ptr [rbp + 5816], rax
                        mov              rax, qword ptr [rbp + 5888]
                        mov              qword ptr [rbp + 5824], rax
                        mov              rax, qword ptr [rbp + 5896]
                        mov              qword ptr [rbp + 5832], rax
                        .section         .rodata
.Lrkfn635:              .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn635]
                        lea              rsi, [rbp + 5808]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5792], rax
                        mov              qword ptr [rbp + 5800], rdx
                        cmp              eax, 99
                                                                                        je    n352_var_α
                                                                                        jmp   n368_var_α
n360_call_β:
                                                                                        jmp   n352_var_α
#-----------------------------------------------------------------------------------------------------------------------
n361_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 6400], rax
                        mov              qword ptr [rbp + 6408], rdx
                                                                                        jmp   n369_binop_α
n361_var_β:
                                                                                        jmp   n233_var_α
#-----------------------------------------------------------------------------------------------------------------------
n362_binop_α:
                        mov              rdi, qword ptr [rbp + 6736]
                        mov              rsi, qword ptr [rbp + 6744]
                        mov              rdx, qword ptr [rbp + 6832]
                        mov              rcx, qword ptr [rbp + 6840]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 6704], rax
                        mov              qword ptr [rbp + 6712], rdx
                                                                                        jmp   n370_var_α
n362_binop_β:
                                                                                        jmp   n328_var_α
#-----------------------------------------------------------------------------------------------------------------------
n363_binop_α:
                        mov              rdi, qword ptr [rbp + 6944]
                        mov              rsi, qword ptr [rbp + 6952]
                        mov              rdx, qword ptr [rbp + 7104]
                        mov              rcx, qword ptr [rbp + 7112]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 6912], rax
                        mov              qword ptr [rbp + 6920], rdx
                                                                                        jmp   n371_assign_α
n363_binop_β:
                                                                                        jmp   n328_var_α
#-----------------------------------------------------------------------------------------------------------------------
n364_binop_α:
                        mov              rdi, qword ptr [rbp + 7312]
                        mov              rsi, qword ptr [rbp + 7320]
                        mov              rdx, qword ptr [rbp + 7344]
                        mov              rcx, qword ptr [rbp + 7352]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 7280], rax
                        mov              qword ptr [rbp + 7288], rdx
                                                                                        jmp   n372_assign_α
n364_binop_β:
                                                                                        jmp   n186_var_α
#-----------------------------------------------------------------------------------------------------------------------
n365_var_α:
                        mov              rax, qword ptr [1879052432]
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rbp + 4512], rax
                        mov              qword ptr [rbp + 4520], rdx
                                                                                        jmp   n373_subscript_α
n365_var_β:
                                                                                        jmp   n342_var_α
#=======================================================================================================================
#                 tline           =   tline "'" tag "': " tv      :(pm_tag_loop)
#-----------------------------------------------------------------------------------------------------------------------
n366_var_α:
                        mov              rax, qword ptr [1879052544]
                        mov              rdx, qword ptr [1879052552]
                        mov              qword ptr [rbp + 4944], rax
                        mov              qword ptr [rbp + 4952], rdx
                                                                                        jmp   n374_lit_string_α
n366_var_β:
                                                                                        jmp   n299_var_α
#-----------------------------------------------------------------------------------------------------------------------
n367_binop_α:
                        mov              rdi, qword ptr [rbp + 5280]
                        mov              rsi, qword ptr [rbp + 5288]
                        mov              rdx, qword ptr [rbp + 5312]
                        mov              rcx, qword ptr [rbp + 5320]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 5248], rax
                        mov              qword ptr [rbp + 5256], rdx
                                                                                        jmp   n375_lit_string_α
n367_binop_β:
                                                                                        jmp   n299_var_α
#=======================================================================================================================
#                 OUTPUT          =   pfx wq ': ' tline ','       :(pm_wrd_loop)
#-----------------------------------------------------------------------------------------------------------------------
n368_var_α:
                        mov              rax, qword ptr [1879052560]
                        mov              rdx, qword ptr [1879052568]
                        mov              qword ptr [rbp + 6064], rax
                        mov              qword ptr [rbp + 6072], rdx
                                                                                        jmp   n376_var_α
n368_var_β:
                                                                                        jmp   n233_var_α
#-----------------------------------------------------------------------------------------------------------------------
n369_binop_α:
                        mov              rdi, qword ptr [rbp + 6368]
                        mov              rsi, qword ptr [rbp + 6376]
                        mov              rdx, qword ptr [rbp + 6400]
                        mov              rcx, qword ptr [rbp + 6408]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 6336], rax
                        mov              qword ptr [rbp + 6344], rdx
                                                                                        jmp   n377_lit_string_α
n369_binop_β:
                                                                                        jmp   n233_var_α
#-----------------------------------------------------------------------------------------------------------------------
n370_var_α:
                        mov              rax, qword ptr [1879052544]
                        mov              rdx, qword ptr [1879052552]
                        mov              qword ptr [rbp + 6864], rax
                        mov              qword ptr [rbp + 6872], rdx
                                                                                        jmp   n378_binop_α
n370_var_β:
                                                                                        jmp   n328_var_α
#-----------------------------------------------------------------------------------------------------------------------
n371_assign_α:
                        mov              rax, qword ptr [rbp + 6912]
                        mov              rdx, qword ptr [rbp + 6920]
                        mov              qword ptr [1879052624], rax
                        mov              qword ptr [1879052632], rdx
                        mov              qword ptr [rbp + 6896], rax
                        mov              qword ptr [rbp + 6904], rdx
                                                                                        jmp   n328_var_α
n371_assign_β:
                                                                                        jmp   n328_var_α
#-----------------------------------------------------------------------------------------------------------------------
n372_assign_α:
                        mov              rsi, qword ptr [rbp + 7280]
                        mov              rdx, qword ptr [rbp + 7288]
                        mov              rdi, qword ptr [rip + .Lx647_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 7264], rax
                        mov              qword ptr [rbp + 7272], rdx
                                                                                        jmp   n186_var_α
n372_assign_β:
                                                                                        jmp   n186_var_α
.Lx647_0:
                        .quad            .Lx647_0_s
.Lx647_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n373_subscript_α:
                        mov              rdi, qword ptr [rbp + 4496]
                        mov              rsi, qword ptr [rbp + 4504]
                        mov              rdx, qword ptr [rbp + 4512]
                        mov              rcx, qword ptr [rbp + 4520]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n342_var_α
                        mov              qword ptr [rbp + 4544], rax
                        mov              qword ptr [rbp + 4552], rdx
                                                                                        jmp   n379_deref_α
n373_subscript_β:
                                                                                        jmp   n342_var_α
#-----------------------------------------------------------------------------------------------------------------------
n374_lit_string_α:
                        mov              qword ptr [rbp + 4976], 1
                        mov              rax, qword ptr [rip + .Lx649_0]
                        mov              qword ptr [rbp + 4984], rax
                                                                                        jmp   n380_binop_α
n374_lit_string_β:
                                                                                        jmp   n299_var_α
.Lx649_0:
                        .quad            .Lx649_0_s
.Lx649_0_s:
                        .string          "'"
#-----------------------------------------------------------------------------------------------------------------------
n375_lit_string_α:
                        mov              qword ptr [rbp + 5344], 1
                        mov              rax, qword ptr [rip + .Lx650_0]
                        mov              qword ptr [rbp + 5352], rax
                                                                                        jmp   n381_binop_α
n375_lit_string_β:
                                                                                        jmp   n299_var_α
.Lx650_0:
                        .quad            .Lx650_0_s
.Lx650_0_s:
                        .string          "'"
#-----------------------------------------------------------------------------------------------------------------------
n376_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 6096], rax
                        mov              qword ptr [rbp + 6104], rdx
                                                                                        jmp   n382_binop_α
n376_var_β:
                                                                                        jmp   n233_var_α
#-----------------------------------------------------------------------------------------------------------------------
n377_lit_string_α:
                        mov              qword ptr [rbp + 6432], 1
                        mov              rax, qword ptr [rip + .Lx652_0]
                        mov              qword ptr [rbp + 6440], rax
                                                                                        jmp   n383_binop_α
n377_lit_string_β:
                                                                                        jmp   n233_var_α
.Lx652_0:
                        .quad            .Lx652_0_s
.Lx652_0_s:
                        .string          ": "
#-----------------------------------------------------------------------------------------------------------------------
n378_binop_α:
                        mov              rdi, qword ptr [rbp + 6704]
                        mov              rsi, qword ptr [rbp + 6712]
                        mov              rdx, qword ptr [rbp + 6864]
                        mov              rcx, qword ptr [rbp + 6872]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 6672], rax
                        mov              qword ptr [rbp + 6680], rdx
                                                                                        jmp   n384_assign_α
n378_binop_β:
                                                                                        jmp   n328_var_α
#-----------------------------------------------------------------------------------------------------------------------
n379_deref_α:
                        mov              rdi, qword ptr [rbp + 4544]
                        mov              rsi, qword ptr [rbp + 4552]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n342_var_α
                        mov              qword ptr [rbp + 4576], rax
                        mov              qword ptr [rbp + 4584], rdx
                                                                                        jmp   n385_var_α
n379_deref_β:
                                                                                        jmp   n342_var_α
#-----------------------------------------------------------------------------------------------------------------------
n380_binop_α:
                        mov              rdi, qword ptr [rbp + 4944]
                        mov              rsi, qword ptr [rbp + 4952]
                        mov              rdx, qword ptr [rbp + 4976]
                        mov              rcx, qword ptr [rbp + 4984]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 4912], rax
                        mov              qword ptr [rbp + 4920], rdx
                                                                                        jmp   n386_var_α
n380_binop_β:
                                                                                        jmp   n299_var_α
#-----------------------------------------------------------------------------------------------------------------------
n381_binop_α:
                        mov              rdi, qword ptr [rbp + 5248]
                        mov              rsi, qword ptr [rbp + 5256]
                        mov              rdx, qword ptr [rbp + 5344]
                        mov              rcx, qword ptr [rbp + 5352]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 5216], rax
                        mov              qword ptr [rbp + 5224], rdx
                                                                                        jmp   n387_var_α
n381_binop_β:
                                                                                        jmp   n299_var_α
#-----------------------------------------------------------------------------------------------------------------------
n382_binop_α:
                        mov              rdi, qword ptr [rbp + 6064]
                        mov              rsi, qword ptr [rbp + 6072]
                        mov              rdx, qword ptr [rbp + 6096]
                        mov              rcx, qword ptr [rbp + 6104]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 6032], rax
                        mov              qword ptr [rbp + 6040], rdx
                                                                                        jmp   n388_lit_string_α
n382_binop_β:
                                                                                        jmp   n233_var_α
#-----------------------------------------------------------------------------------------------------------------------
n383_binop_α:
                        mov              rdi, qword ptr [rbp + 6336]
                        mov              rsi, qword ptr [rbp + 6344]
                        mov              rdx, qword ptr [rbp + 6432]
                        mov              rcx, qword ptr [rbp + 6440]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 6304], rax
                        mov              qword ptr [rbp + 6312], rdx
                                                                                        jmp   n389_var_α
n383_binop_β:
                                                                                        jmp   n233_var_α
#-----------------------------------------------------------------------------------------------------------------------
n384_assign_α:
                        mov              rax, qword ptr [rbp + 6672]
                        mov              rdx, qword ptr [rbp + 6680]
                        mov              qword ptr [1879052624], rax
                        mov              qword ptr [1879052632], rdx
                        mov              qword ptr [rbp + 6656], rax
                        mov              qword ptr [rbp + 6664], rdx
                                                                                        jmp   n328_var_α
n384_assign_β:
                                                                                        jmp   n328_var_α
#-----------------------------------------------------------------------------------------------------------------------
n385_var_α:
                        mov              rax, qword ptr [1879052512]
                        mov              rdx, qword ptr [1879052520]
                        mov              qword ptr [rbp + 4592], rax
                        mov              qword ptr [rbp + 4600], rdx
                                                                                        jmp   n390_subscript_α
n385_var_β:
                                                                                        jmp   n342_var_α
#-----------------------------------------------------------------------------------------------------------------------
n386_var_α:
                        mov              rax, qword ptr [1879052512]
                        mov              rdx, qword ptr [1879052520]
                        mov              qword ptr [rbp + 5008], rax
                        mov              qword ptr [rbp + 5016], rdx
                                                                                        jmp   n391_binop_α
n386_var_β:
                                                                                        jmp   n299_var_α
#-----------------------------------------------------------------------------------------------------------------------
n387_var_α:
                        mov              rax, qword ptr [1879052512]
                        mov              rdx, qword ptr [1879052520]
                        mov              qword ptr [rbp + 5376], rax
                        mov              qword ptr [rbp + 5384], rdx
                                                                                        jmp   n392_binop_α
n387_var_β:
                                                                                        jmp   n299_var_α
#-----------------------------------------------------------------------------------------------------------------------
n388_lit_string_α:
                        mov              qword ptr [rbp + 6128], 1
                        mov              rax, qword ptr [rip + .Lx663_0]
                        mov              qword ptr [rbp + 6136], rax
                                                                                        jmp   n393_binop_α
n388_lit_string_β:
                                                                                        jmp   n233_var_α
.Lx663_0:
                        .quad            .Lx663_0_s
.Lx663_0_s:
                        .string          ": "
#-----------------------------------------------------------------------------------------------------------------------
n389_var_α:
                        mov              rax, qword ptr [1879052544]
                        mov              rdx, qword ptr [1879052552]
                        mov              qword ptr [rbp + 6464], rax
                        mov              qword ptr [rbp + 6472], rdx
                                                                                        jmp   n394_binop_α
n389_var_β:
                                                                                        jmp   n233_var_α
#-----------------------------------------------------------------------------------------------------------------------
n390_subscript_α:
                        mov              rdi, qword ptr [rbp + 4576]
                        mov              rsi, qword ptr [rbp + 4584]
                        mov              rdx, qword ptr [rbp + 4592]
                        mov              rcx, qword ptr [rbp + 4600]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n342_var_α
                        mov              qword ptr [rbp + 4624], rax
                        mov              qword ptr [rbp + 4632], rdx
                                                                                        jmp   n395_deref_α
n390_subscript_β:
                                                                                        jmp   n342_var_α
#-----------------------------------------------------------------------------------------------------------------------
n391_binop_α:
                        mov              rdi, qword ptr [rbp + 4912]
                        mov              rsi, qword ptr [rbp + 4920]
                        mov              rdx, qword ptr [rbp + 5008]
                        mov              rcx, qword ptr [rbp + 5016]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 4880], rax
                        mov              qword ptr [rbp + 4888], rdx
                                                                                        jmp   n396_lit_string_α
n391_binop_β:
                                                                                        jmp   n299_var_α
#-----------------------------------------------------------------------------------------------------------------------
n392_binop_α:
                        mov              rdi, qword ptr [rbp + 5216]
                        mov              rsi, qword ptr [rbp + 5224]
                        mov              rdx, qword ptr [rbp + 5376]
                        mov              rcx, qword ptr [rbp + 5384]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 5184], rax
                        mov              qword ptr [rbp + 5192], rdx
                                                                                        jmp   n397_lit_string_α
n392_binop_β:
                                                                                        jmp   n299_var_α
#-----------------------------------------------------------------------------------------------------------------------
n393_binop_α:
                        mov              rdi, qword ptr [rbp + 6032]
                        mov              rsi, qword ptr [rbp + 6040]
                        mov              rdx, qword ptr [rbp + 6128]
                        mov              rcx, qword ptr [rbp + 6136]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 6000], rax
                        mov              qword ptr [rbp + 6008], rdx
                                                                                        jmp   n398_var_α
n393_binop_β:
                                                                                        jmp   n233_var_α
#-----------------------------------------------------------------------------------------------------------------------
n394_binop_α:
                        mov              rdi, qword ptr [rbp + 6304]
                        mov              rsi, qword ptr [rbp + 6312]
                        mov              rdx, qword ptr [rbp + 6464]
                        mov              rcx, qword ptr [rbp + 6472]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 6272], rax
                        mov              qword ptr [rbp + 6280], rdx
                                                                                        jmp   n399_lit_string_α
n394_binop_β:
                                                                                        jmp   n233_var_α
#-----------------------------------------------------------------------------------------------------------------------
n395_deref_α:
                        mov              rdi, qword ptr [rbp + 4624]
                        mov              rsi, qword ptr [rbp + 4632]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n342_var_α
                        mov              qword ptr [rbp + 4656], rax
                        mov              qword ptr [rbp + 4664], rdx
                                                                                        jmp   n400_assign_α
n395_deref_β:
                                                                                        jmp   n342_var_α
#-----------------------------------------------------------------------------------------------------------------------
n396_lit_string_α:
                        mov              qword ptr [rbp + 5040], 1
                        mov              rax, qword ptr [rip + .Lx671_0]
                        mov              qword ptr [rbp + 5048], rax
                                                                                        jmp   n401_binop_α
n396_lit_string_β:
                                                                                        jmp   n299_var_α
.Lx671_0:
                        .quad            .Lx671_0_s
.Lx671_0_s:
                        .string          "': "
#-----------------------------------------------------------------------------------------------------------------------
n397_lit_string_α:
                        mov              qword ptr [rbp + 5408], 1
                        mov              rax, qword ptr [rip + .Lx672_0]
                        mov              qword ptr [rbp + 5416], rax
                                                                                        jmp   n402_binop_α
n397_lit_string_β:
                                                                                        jmp   n299_var_α
.Lx672_0:
                        .quad            .Lx672_0_s
.Lx672_0_s:
                        .string          "': "
#-----------------------------------------------------------------------------------------------------------------------
n398_var_α:
                        mov              rax, qword ptr [1879052544]
                        mov              rdx, qword ptr [1879052552]
                        mov              qword ptr [rbp + 6160], rax
                        mov              qword ptr [rbp + 6168], rdx
                                                                                        jmp   n403_binop_α
n398_var_β:
                                                                                        jmp   n233_var_α
#-----------------------------------------------------------------------------------------------------------------------
n399_lit_string_α:
                        mov              qword ptr [rbp + 6496], 1
                        mov              rax, qword ptr [rip + .Lx674_0]
                        mov              qword ptr [rbp + 6504], rax
                                                                                        jmp   n404_binop_α
n399_lit_string_β:
                                                                                        jmp   n233_var_α
.Lx674_0:
                        .quad            .Lx674_0_s
.Lx674_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n400_assign_α:
                        mov              rax, qword ptr [rbp + 4656]
                        mov              rdx, qword ptr [rbp + 4664]
                        mov              qword ptr [1879052528], rax
                        mov              qword ptr [1879052536], rdx
                        mov              qword ptr [rbp + 4384], rax
                        mov              qword ptr [rbp + 4392], rdx
                                                                                        jmp   n342_var_α
n400_assign_β:
                                                                                        jmp   n342_var_α
#-----------------------------------------------------------------------------------------------------------------------
n401_binop_α:
                        mov              rdi, qword ptr [rbp + 4880]
                        mov              rsi, qword ptr [rbp + 4888]
                        mov              rdx, qword ptr [rbp + 5040]
                        mov              rcx, qword ptr [rbp + 5048]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 4848], rax
                        mov              qword ptr [rbp + 4856], rdx
                                                                                        jmp   n405_var_α
n401_binop_β:
                                                                                        jmp   n299_var_α
#-----------------------------------------------------------------------------------------------------------------------
n402_binop_α:
                        mov              rdi, qword ptr [rbp + 5184]
                        mov              rsi, qword ptr [rbp + 5192]
                        mov              rdx, qword ptr [rbp + 5408]
                        mov              rcx, qword ptr [rbp + 5416]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 5152], rax
                        mov              qword ptr [rbp + 5160], rdx
                                                                                        jmp   n406_var_α
n402_binop_β:
                                                                                        jmp   n299_var_α
#-----------------------------------------------------------------------------------------------------------------------
n403_binop_α:
                        mov              rdi, qword ptr [rbp + 6000]
                        mov              rsi, qword ptr [rbp + 6008]
                        mov              rdx, qword ptr [rbp + 6160]
                        mov              rcx, qword ptr [rbp + 6168]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 5968], rax
                        mov              qword ptr [rbp + 5976], rdx
                                                                                        jmp   n407_lit_string_α
n403_binop_β:
                                                                                        jmp   n233_var_α
#-----------------------------------------------------------------------------------------------------------------------
n404_binop_α:
                        mov              rdi, qword ptr [rbp + 6272]
                        mov              rsi, qword ptr [rbp + 6280]
                        mov              rdx, qword ptr [rbp + 6496]
                        mov              rcx, qword ptr [rbp + 6504]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 6240], rax
                        mov              qword ptr [rbp + 6248], rdx
                                                                                        jmp   n408_assign_α
n404_binop_β:
                                                                                        jmp   n233_var_α
#-----------------------------------------------------------------------------------------------------------------------
n405_var_α:
                        mov              rax, qword ptr [1879052528]
                        mov              rdx, qword ptr [1879052536]
                        mov              qword ptr [rbp + 5072], rax
                        mov              qword ptr [rbp + 5080], rdx
                                                                                        jmp   n409_binop_α
n405_var_β:
                                                                                        jmp   n299_var_α
#-----------------------------------------------------------------------------------------------------------------------
n406_var_α:
                        mov              rax, qword ptr [1879052528]
                        mov              rdx, qword ptr [1879052536]
                        mov              qword ptr [rbp + 5440], rax
                        mov              qword ptr [rbp + 5448], rdx
                                                                                        jmp   n410_binop_α
n406_var_β:
                                                                                        jmp   n299_var_α
#-----------------------------------------------------------------------------------------------------------------------
n407_lit_string_α:
                        mov              qword ptr [rbp + 6192], 1
                        mov              rax, qword ptr [rip + .Lx682_0]
                        mov              qword ptr [rbp + 6200], rax
                                                                                        jmp   n411_binop_α
n407_lit_string_β:
                                                                                        jmp   n233_var_α
.Lx682_0:
                        .quad            .Lx682_0_s
.Lx682_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n408_assign_α:
                        mov              rsi, qword ptr [rbp + 6240]
                        mov              rdx, qword ptr [rbp + 6248]
                        mov              rdi, qword ptr [rip + .Lx683_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 6224], rax
                        mov              qword ptr [rbp + 6232], rdx
                                                                                        jmp   n233_var_α
n408_assign_β:
                                                                                        jmp   n233_var_α
.Lx683_0:
                        .quad            .Lx683_0_s
.Lx683_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n409_binop_α:
                        mov              rdi, qword ptr [rbp + 4848]
                        mov              rsi, qword ptr [rbp + 4856]
                        mov              rdx, qword ptr [rbp + 5072]
                        mov              rcx, qword ptr [rbp + 5080]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 4816], rax
                        mov              qword ptr [rbp + 4824], rdx
                                                                                        jmp   n412_assign_α
n409_binop_β:
                                                                                        jmp   n299_var_α
#-----------------------------------------------------------------------------------------------------------------------
n410_binop_α:
                        mov              rdi, qword ptr [rbp + 5152]
                        mov              rsi, qword ptr [rbp + 5160]
                        mov              rdx, qword ptr [rbp + 5440]
                        mov              rcx, qword ptr [rbp + 5448]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 5120], rax
                        mov              qword ptr [rbp + 5128], rdx
                                                                                        jmp   n413_assign_α
n410_binop_β:
                                                                                        jmp   n299_var_α
#-----------------------------------------------------------------------------------------------------------------------
n411_binop_α:
                        mov              rdi, qword ptr [rbp + 5968]
                        mov              rsi, qword ptr [rbp + 5976]
                        mov              rdx, qword ptr [rbp + 6192]
                        mov              rcx, qword ptr [rbp + 6200]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 5936], rax
                        mov              qword ptr [rbp + 5944], rdx
                                                                                        jmp   n414_assign_α
n411_binop_β:
                                                                                        jmp   n233_var_α
#-----------------------------------------------------------------------------------------------------------------------
n412_assign_α:
                        mov              rax, qword ptr [rbp + 4816]
                        mov              rdx, qword ptr [rbp + 4824]
                        mov              qword ptr [1879052544], rax
                        mov              qword ptr [1879052552], rdx
                        mov              qword ptr [rbp + 4800], rax
                        mov              qword ptr [rbp + 4808], rdx
                                                                                        jmp   n299_var_α
n412_assign_β:
                                                                                        jmp   n299_var_α
#-----------------------------------------------------------------------------------------------------------------------
n413_assign_α:
                        mov              rax, qword ptr [rbp + 5120]
                        mov              rdx, qword ptr [rbp + 5128]
                        mov              qword ptr [1879052544], rax
                        mov              qword ptr [1879052552], rdx
                        mov              qword ptr [rbp + 5104], rax
                        mov              qword ptr [rbp + 5112], rdx
                                                                                        jmp   n299_var_α
n413_assign_β:
                                                                                        jmp   n299_var_α
#-----------------------------------------------------------------------------------------------------------------------
n414_assign_α:
                        mov              rsi, qword ptr [rbp + 5936]
                        mov              rdx, qword ptr [rbp + 5944]
                        mov              rdi, qword ptr [rip + .Lx689_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 5920], rax
                        mov              qword ptr [rbp + 5928], rdx
                                                                                        jmp   n233_var_α
n414_assign_β:
                                                                                        jmp   n233_var_α
.Lx689_0:
                        .quad            .Lx689_0_s
.Lx689_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
proc_pp_mem_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pp_mem_β:
                                                                                        jmp   proc_pp_mem_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_pp_mem_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 7592]
                        lea              rsp, [rbp + 7616]
                        mov              rbp, [rbp + 7608]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pp_mem_ω:
                        mov              rax, [rbp + 7600]
                        lea              rsp, [rbp + 7616]
                        mov              rbp, [rbp + 7608]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$0_α
proc_PAT$0_α:
                        .global          proc_PAT$0_α
                        .global          proc_PAT$0_β
                        .global          proc_PAT$0_γ
                        .global          proc_PAT$0_ω
                        sub              rsp, 752
                        mov              [rsp + 728], rcx
                        mov              [rsp + 736], rdx
                        mov              [rsp + 744], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 224], 0
                        mov              qword ptr [rsp + 232], 0
                        mov              qword ptr [rsp + 304], 0
                        mov              qword ptr [rsp + 312], 0
                        mov              qword ptr [rsp + 400], 0
                        mov              qword ptr [rsp + 408], 0
                        mov              qword ptr [rsp + 496], 0
                        mov              qword ptr [rsp + 504], 0
                        mov              qword ptr [rsp + 592], 0
                        mov              qword ptr [rsp + 600], 0
                        mov              qword ptr [rsp + 704], 0
                        mov              qword ptr [rsp + 712], 0
                        mov              qword ptr [rbp + 720], r8
                        mov              dword ptr [rbp + 712], r14d
proc_PAT$0_attempt:
proc_PAT$0_α_body:
                        lea              rax, [rip + n690_match_sequence_β]
                        mov              qword ptr [rbp + 704], rax
#-----------------------------------------------------------------------------------------------------------------------
n690_match_sequence_α:
                        mov              dword ptr [rbp + 16], r14d
                                                                                        jmp   n691_lit_integer_α
n690_match_sequence_as:
                                                                                        jmp   proc_PAT$0_γ
n690_match_sequence_β:
                                                                                        jmp   n695_match_rpos_β
n690_match_sequence_af:
                                                                                        jmp   proc_PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
n691_lit_integer_α:
                        mov              qword ptr [rbp + 48], 6
                        mov              rax, qword ptr [rip + .Lx724_0]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n692_match_pos_α
n691_lit_integer_β:
                                                                                        jmp   proc_PAT$0_ω
.Lx724_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n692_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   proc_PAT$0_ω
                                                                                        jmp   n693_match_arbno_α
n692_match_pos_β:
                                                                                        jmp   proc_PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
n693_match_arbno_α:
                        mov              dword ptr [rbp + 96], r14d
                        mov              dword ptr [rbp + 100], r14d
                        mov              dword ptr [rbp + 104], 0
                        mov              qword ptr [rbp + 120], rsp
                        mov              qword ptr [rbp + 112], 0
                                                                                        jmp   n694_lit_integer_α
n693_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 100]
                        mov              rax, qword ptr [rbp + 112]
                        sub              rsp, 672
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              eax, 0
                        mov              qword ptr [rsp + 216], rax
                        mov              qword ptr [rsp + 296], rax
                        mov              qword ptr [rsp + 392], rax
                        mov              qword ptr [rsp + 488], rax
                        mov              qword ptr [rsp + 584], rax
                        mov              qword ptr [rbp + 112], rsp
                        mov              rbp, rsp
                        add              rbp, -8
                                                                                        jmp   n696_match_sequence_α
n693_match_arbno_as:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              r14d, eax
                                                                                        je    n696_match_sequence_β
                        mov              rbp, qword ptr [rbp + 8]
                        mov              eax, dword ptr [rbp + 104]
                        add              eax, 1
                        mov              dword ptr [rbp + 104], eax
                        mov              dword ptr [rbp + 100], r14d
                                                                                        jmp   n694_lit_integer_α
n693_match_arbno_af:
                        mov              rax, qword ptr [rbp + 24]
                        mov              rdx, qword ptr [rbp + 8]
                        lea              rsp, [rbp + 680]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 104]
                        test             ecx, ecx
                                                                                        jz    .Lx727_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 104], ecx
                        mov              qword ptr [rbp + 112], rax
                        lea              rbp, [rax + -8]
                                                                                        jmp   n696_match_sequence_β
.Lx727_2:
                        mov              r14d, dword ptr [rbp + 96]
                        mov              rsp, qword ptr [rbp + 120]
                                                                                        jmp   n692_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n694_lit_integer_α:
                        mov              qword ptr [rbp + 672], 6
                        mov              rax, qword ptr [rip + .Lx728_0]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n695_match_rpos_α
n694_lit_integer_β:
                                                                                        jmp   n693_match_arbno_β
.Lx728_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n695_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n693_match_arbno_β
                                                                                        jmp   proc_PAT$0_γ
n695_match_rpos_β:
                                                                                        jmp   n693_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n696_match_sequence_α:
                        mov              dword ptr [rbp + 144], r14d
                                                                                        jmp   n698_match_alternate_α
n696_match_sequence_as:
                                                                                        jmp   n693_match_arbno_as
n696_match_sequence_β:
                                                                                        jmp   n697_match_span_β
n696_match_sequence_af:
                                                                                        jmp   n693_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n697_match_span_α:
                        sub              rsp, 16
                        movsxd           rcx, r14d
.Lx733_0:
                        cmp              ecx, r15d
                                                                                        jge   .Lx733_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32
                                                                                        je    .Lx733_10
                        cmp              esi, 10
                                                                                        je    .Lx733_10
                                                                                        jmp   .Lx733_1
.Lx733_10:
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx733_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32
                                                                                        je    .Lx733_11
                        cmp              esi, 10
                                                                                        je    .Lx733_11
                                                                                        jmp   .Lx733_1
.Lx733_11:
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx733_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32
                                                                                        je    .Lx733_12
                        cmp              esi, 10
                                                                                        je    .Lx733_12
                                                                                        jmp   .Lx733_1
.Lx733_12:
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx733_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32
                                                                                        je    .Lx733_13
                        cmp              esi, 10
                                                                                        je    .Lx733_13
                                                                                        jmp   .Lx733_1
.Lx733_13:
                        add              ecx, 1
                                                                                        jmp   .Lx733_0
.Lx733_1:
                        cmp              ecx, r14d
                                                                                        jg    .Lx733_240
                        add              rsp, 16
                                                                                        jmp   n698_match_alternate_β
.Lx733_240:
                        mov              dword ptr [rsp + 4], r14d
                        mov              r14d, ecx
                                                                                        jmp   n693_match_arbno_as
n697_match_span_β:
                        mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16
                                                                                        jmp   n698_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
n698_match_alternate_α:
                        mov              dword ptr [rbp + 160], r14d
                        mov              dword ptr [rbp + 164], 0
                                                                                        jmp   n699_match_sequence_α
n698_match_alternate_as:
                                                                                        jmp   n697_match_span_α
n698_match_alternate_β:
                        mov              eax, dword ptr [rbp + 164]
                        cmp              eax, 0
                                                                                        je    n699_match_sequence_β
                                                                                        jmp   n700_match_sequence_β
n698_match_alternate_af:
                        add              dword ptr [rbp + 164], 1
                        mov              r14d, dword ptr [rbp + 160]
                        mov              eax, dword ptr [rbp + 164]
                        cmp              eax, 1
                                                                                        je    n700_match_sequence_α
                                                                                        jmp   n693_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n699_match_sequence_α:
                        mov              dword ptr [rbp + 176], r14d
                                                                                        jmp   n701_match_assign_save_α
n699_match_sequence_as:
                                                                                        jmp   n698_match_alternate_as
n699_match_sequence_β:
                                                                                        jmp   n705_match_assign_cond_β
n699_match_sequence_af:
                                                                                        jmp   n698_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n700_match_sequence_α:
                        mov              dword ptr [rbp + 352], r14d
                                                                                        jmp   n706_match_assign_save_α
n700_match_sequence_as:
                                                                                        jmp   n698_match_alternate_as
n700_match_sequence_β:
                                                                                        jmp   n712_match_assign_cond_β
n700_match_sequence_af:
                                                                                        jmp   n698_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n701_match_assign_save_α:
                        lea              rdi, [rbp + 224]
                        mov              esi, r14d
                        call             rt_cap_push@PLT
                                                                                        jmp   n713_match_span_α
n701_match_assign_save_β:
                        lea              rdi, [rbp + 224]
                        call             rt_cap_pop@PLT
                                                                                        jmp   n698_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n702_match_assign_cond_α:
                        lea              rdi, [rbp + 224]
                        call             rt_cap_top@PLT
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n703_match_lit_α
n702_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n713_match_span_β
#-----------------------------------------------------------------------------------------------------------------------
n703_match_lit_α:
                        mov              eax, r14d
                        add              eax, 10
                        cmp              eax, r15d
                                                                                        jg    n702_match_assign_cond_β
                        movsxd           rcx, r14d
                        mov              rdx, qword ptr [r13+rcx]
                        movabs           rax, 5791411556081353567
                        cmp              rdx, rax
                                                                                        jne   n702_match_assign_cond_β
                        movzx            eax, byte ptr [r13+rcx+8]
                        cmp              eax, 85
                                                                                        jne   n702_match_assign_cond_β
                        movzx            eax, byte ptr [r13+rcx+9]
                        cmp              eax, 78
                                                                                        jne   n702_match_assign_cond_β
                        add              r14d, 10
                                                                                        jmp   n704_match_assign_save_α
n703_match_lit_β:
                        sub              r14d, 10
                                                                                        jmp   n702_match_assign_cond_β
#-----------------------------------------------------------------------------------------------------------------------
n704_match_assign_save_α:
                        lea              rdi, [rbp + 304]
                        mov              esi, r14d
                        call             rt_cap_push@PLT
                                                                                        jmp   n714_match_defer_α
n704_match_assign_save_β:
                        lea              rdi, [rbp + 304]
                        call             rt_cap_pop@PLT
                                                                                        jmp   n703_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n705_match_assign_cond_α:
                        lea              rdi, [rbp + 304]
                        call             rt_cap_top@PLT
                        lea              rcx, [rip + .S1]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n698_match_alternate_as
n705_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n714_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n706_match_assign_save_α:
                        lea              rdi, [rbp + 400]
                        mov              esi, r14d
                        call             rt_cap_push@PLT
                                                                                        jmp   n715_match_sequence_α
n706_match_assign_save_β:
                        lea              rdi, [rbp + 400]
                        call             rt_cap_pop@PLT
                                                                                        jmp   n698_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n707_match_assign_cond_α:
                        lea              rdi, [rbp + 400]
                        call             rt_cap_top@PLT
                        lea              rcx, [rip + .S2]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n708_match_lit_α
n707_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n715_match_sequence_β
#-----------------------------------------------------------------------------------------------------------------------
n708_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n707_match_assign_cond_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 95
                                                                                        jne   n707_match_assign_cond_β
                        add              r14d, 1
                                                                                        jmp   n709_match_assign_save_α
n708_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n707_match_assign_cond_β
#-----------------------------------------------------------------------------------------------------------------------
n709_match_assign_save_α:
                        lea              rdi, [rbp + 496]
                        mov              esi, r14d
                        call             rt_cap_push@PLT
                                                                                        jmp   n716_match_sequence_α
n709_match_assign_save_β:
                        lea              rdi, [rbp + 496]
                        call             rt_cap_pop@PLT
                                                                                        jmp   n708_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n710_match_assign_cond_α:
                        lea              rdi, [rbp + 496]
                        call             rt_cap_top@PLT
                        lea              rcx, [rip + .S3]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n711_match_assign_save_α
n710_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n716_match_sequence_β
#-----------------------------------------------------------------------------------------------------------------------
n711_match_assign_save_α:
                        lea              rdi, [rbp + 592]
                        mov              esi, r14d
                        call             rt_cap_push@PLT
                                                                                        jmp   n717_match_defer_α
n711_match_assign_save_β:
                        lea              rdi, [rbp + 592]
                        call             rt_cap_pop@PLT
                                                                                        jmp   n710_match_assign_cond_β
#-----------------------------------------------------------------------------------------------------------------------
n712_match_assign_cond_α:
                        lea              rdi, [rbp + 592]
                        call             rt_cap_top@PLT
                        lea              rcx, [rip + .S4]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n698_match_alternate_as
n712_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n717_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n713_match_span_α:
                        sub              rsp, 16
                        lea              rdi, [rip + .C0]
                        movsxd           rcx, r14d
.Lx765_0:
                        cmp              ecx, r15d
                                                                                        jge   .Lx765_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx765_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx765_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx765_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx765_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx765_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx765_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx765_1
                        add              ecx, 1
                                                                                        jmp   .Lx765_0
.Lx765_1:
                        cmp              ecx, r14d
                                                                                        jg    .Lx765_240
                        add              rsp, 16
                                                                                        jmp   n701_match_assign_save_β
.Lx765_240:
                        mov              dword ptr [rsp + 4], r14d
                        mov              r14d, ecx
                                                                                        jmp   n702_match_assign_cond_α
n713_match_span_β:
                        mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16
                                                                                        jmp   n701_match_assign_save_β
#-----------------------------------------------------------------------------------------------------------------------
n714_match_defer_α:
                        lea              rdi, [rip + .S5]
                        xor              esi, esi
                        call             rt_defer_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx766_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx766_4]
                        lea              rdx, [rip + .Lx766_5]
                                                                                        jmp   rax
.Lx766_4:
                                                                                        jmp   n705_match_assign_cond_α
.Lx766_5:
                                                                                        jmp   n704_match_assign_save_β
.Lx766_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S5]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx766_2:
                        test             rax, rax
                                                                                        je    .Lx766_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx766_7]
                        lea              rdx, [rip + .Lx766_8]
                                                                                        jmp   rax
.Lx766_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx766_2
.Lx766_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx766_2
.Lx766_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n704_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx766_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n705_match_assign_cond_α
.Lx766_6:
                        add              rsp, 16
                                                                                        jmp   n704_match_assign_save_β
n714_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n715_match_sequence_α:
                        mov              dword ptr [rbp + 432], r14d
                                                                                        jmp   n718_match_notany_α
n715_match_sequence_as:
                                                                                        jmp   n707_match_assign_cond_α
n715_match_sequence_β:
                                                                                        jmp   n719_match_break_β
n715_match_sequence_af:
                                                                                        jmp   n706_match_assign_save_β
#-----------------------------------------------------------------------------------------------------------------------
n716_match_sequence_α:
                        mov              dword ptr [rbp + 528], r14d
                                                                                        jmp   n720_match_any_α
n716_match_sequence_as:
                                                                                        jmp   n710_match_assign_cond_α
n716_match_sequence_β:
                                                                                        jmp   n721_match_span_β
n716_match_sequence_af:
                                                                                        jmp   n709_match_assign_save_β
#-----------------------------------------------------------------------------------------------------------------------
n717_match_defer_α:
                        lea              rdi, [rip + .S5]
                        xor              esi, esi
                        call             rt_defer_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx771_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx771_4]
                        lea              rdx, [rip + .Lx771_5]
                                                                                        jmp   rax
.Lx771_4:
                                                                                        jmp   n712_match_assign_cond_α
.Lx771_5:
                                                                                        jmp   n711_match_assign_save_β
.Lx771_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S5]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx771_2:
                        test             rax, rax
                                                                                        je    .Lx771_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx771_7]
                        lea              rdx, [rip + .Lx771_8]
                                                                                        jmp   rax
.Lx771_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx771_2
.Lx771_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx771_2
.Lx771_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n711_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx771_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n712_match_assign_cond_α
.Lx771_6:
                        add              rsp, 16
                                                                                        jmp   n711_match_assign_save_β
n717_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n718_match_notany_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   n706_match_assign_save_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 95
                                                                                        je    n706_match_assign_save_β
                        add              r14d, 1
                                                                                        jmp   n719_match_break_α
n718_match_notany_β:
                        sub              r14d, 1
                                                                                        jmp   n706_match_assign_save_β
#-----------------------------------------------------------------------------------------------------------------------
n719_match_break_α:
                        sub              rsp, 16
                        movsxd           rcx, r14d
.Lx774_0:
                        cmp              ecx, r15d
                                                                                        jl    .Lx774_237
                        add              rsp, 16
                                                                                        jmp   n718_match_notany_β
.Lx774_237:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 95
                                                                                        je    .Lx774_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx774_238
                        add              rsp, 16
                                                                                        jmp   n718_match_notany_β
.Lx774_238:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 95
                                                                                        je    .Lx774_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx774_239
                        add              rsp, 16
                                                                                        jmp   n718_match_notany_β
.Lx774_239:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 95
                                                                                        je    .Lx774_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx774_240
                        add              rsp, 16
                                                                                        jmp   n718_match_notany_β
.Lx774_240:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 95
                                                                                        je    .Lx774_1
                        add              ecx, 1
                                                                                        jmp   .Lx774_0
.Lx774_1:
                        mov              dword ptr [rsp + 0], r14d
                        mov              r14d, ecx
                                                                                        jmp   n707_match_assign_cond_α
n719_match_break_β:
                        mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n718_match_notany_β
#-----------------------------------------------------------------------------------------------------------------------
n720_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   n709_match_assign_save_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C1]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    n709_match_assign_save_β
                        add              r14d, 1
                                                                                        jmp   n721_match_span_α
n720_match_any_β:
                        sub              r14d, 1
                                                                                        jmp   n709_match_assign_save_β
#-----------------------------------------------------------------------------------------------------------------------
n721_match_span_α:
                        sub              rsp, 16
                        lea              rdi, [rip + .C2]
                        movsxd           rcx, r14d
.Lx778_0:
                        cmp              ecx, r15d
                                                                                        jge   .Lx778_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx778_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx778_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx778_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx778_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx778_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx778_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx778_1
                        add              ecx, 1
                                                                                        jmp   .Lx778_0
.Lx778_1:
                        cmp              ecx, r14d
                                                                                        jg    .Lx778_240
                        add              rsp, 16
                                                                                        jmp   n720_match_any_β
.Lx778_240:
                        mov              dword ptr [rsp + 4], r14d
                        mov              r14d, ecx
                                                                                        jmp   n710_match_assign_cond_α
n721_match_span_β:
                        mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16
                                                                                        jmp   n720_match_any_β
proc_PAT$0_scanhit:
                        cmp              qword ptr [rbp + 720], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 712]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$0_γ
proc_PAT$0_scanfail:
                        cmp              qword ptr [rbp + 720], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 712]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 712], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$0_attempt
8:
                                                                                        jmp   proc_PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_β:
                                                                                        jmp   qword ptr [rbp + 704]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$0_res]
                        push             rax
                        mov              rax, [rbp + 728]
                        mov              rbp, [rbp + 744]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_ω:
                        mov              rax, [rbp + 736]
                        lea              rsp, [rbp + 752]
                        mov              rbp, [rbp + 744]
                                                                                        jmp   rax
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "new_sent"
                        .align           8
.Lstartup_pnames0:
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + .Lstartup_pnames0]
                        mov              edx, 0
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_new_sent_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 416
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "add_tok"
                        .align           8
.Lstartup_pnames1:
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + .Lstartup_pnames1]
                        mov              edx, 0
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_add_tok_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1888
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "pp_mem"
.Lstartup_pp2_0:        .string          "mem"
.Lstartup_pp2_1:        .string          "ssk"
.Lstartup_pp2_2:        .string          "si"
.Lstartup_pp2_3:        .string          "sentno"
.Lstartup_pp2_4:        .string          "wsk"
.Lstartup_pp2_5:        .string          "wi"
.Lstartup_pp2_6:        .string          "wkey"
.Lstartup_pp2_7:        .string          "wq"
.Lstartup_pp2_8:        .string          "wrd"
.Lstartup_pp2_9:        .string          "tsk"
.Lstartup_pp2_10:       .string          "ti"
.Lstartup_pp2_11:       .string          "tag"
.Lstartup_pp2_12:       .string          "tv"
.Lstartup_pp2_13:       .string          "tline"
.Lstartup_pp2_14:       .string          "pfx"
.Lstartup_pp2_15:       .string          "pad"
.Lstartup_pp2_16:       .string          "next_wkey"
.Lstartup_pp2_17:       .string          "last_sent"
.Lstartup_pp2_18:       .string          "lline"
.Lstartup_pp2_19:       .string          "ns"
                        .align           8
.Lstartup_pnames2:
                        .quad            .Lstartup_pp2_0
                        .quad            .Lstartup_pp2_1
                        .quad            .Lstartup_pp2_2
                        .quad            .Lstartup_pp2_3
                        .quad            .Lstartup_pp2_4
                        .quad            .Lstartup_pp2_5
                        .quad            .Lstartup_pp2_6
                        .quad            .Lstartup_pp2_7
                        .quad            .Lstartup_pp2_8
                        .quad            .Lstartup_pp2_9
                        .quad            .Lstartup_pp2_10
                        .quad            .Lstartup_pp2_11
                        .quad            .Lstartup_pp2_12
                        .quad            .Lstartup_pp2_13
                        .quad            .Lstartup_pp2_14
                        .quad            .Lstartup_pp2_15
                        .quad            .Lstartup_pp2_16
                        .quad            .Lstartup_pp2_17
                        .quad            .Lstartup_pp2_18
                        .quad            .Lstartup_pp2_19
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + .Lstartup_pnames2]
                        mov              edx, 20
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_pp_mem_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 20
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 7584
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "PAT$0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_PAT$0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 720
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "new_sent"
.Lgvan1:                .string          "add_tok"
.Lgvan2:                .string          "pp_mem"
.Lgvan3:                .string          "mem"
.Lgvan4:                .string          "ssk"
.Lgvan5:                .string          "si"
.Lgvan6:                .string          "sentno"
.Lgvan7:                .string          "wsk"
.Lgvan8:                .string          "wi"
.Lgvan9:                .string          "wkey"
.Lgvan10:               .string          "wq"
.Lgvan11:               .string          "wrd"
.Lgvan12:               .string          "tsk"
.Lgvan13:               .string          "ti"
.Lgvan14:               .string          "tag"
.Lgvan15:               .string          "tv"
.Lgvan16:               .string          "tline"
.Lgvan17:               .string          "pfx"
.Lgvan18:               .string          "pad"
.Lgvan19:               .string          "next_wkey"
.Lgvan20:               .string          "last_sent"
.Lgvan21:               .string          "lline"
.Lgvan22:               .string          "ns"
.Lgvan23:               .string          "nl"
.Lgvan24:               .string          "DIGITS"
.Lgvan25:               .string          "UCASE"
.Lgvan26:               .string          "num"
.Lgvan27:               .string          "dummy"
.Lgvan28:               .string          "line"
.Lgvan29:               .string          "b1"
.Lgvan30:               .string          "b2"
.Lgvan31:               .string          "src"
.Lgvan32:               .string          "claws"
.Lgvan33:               .string          "t0"
.Lgvan34:               .string          "t1"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .quad            .Lgvan3
                        .quad            .Lgvan4
                        .quad            .Lgvan5
                        .quad            .Lgvan6
                        .quad            .Lgvan7
                        .quad            .Lgvan8
                        .quad            .Lgvan9
                        .quad            .Lgvan10
                        .quad            .Lgvan11
                        .quad            .Lgvan12
                        .quad            .Lgvan13
                        .quad            .Lgvan14
                        .quad            .Lgvan15
                        .quad            .Lgvan16
                        .quad            .Lgvan17
                        .quad            .Lgvan18
                        .quad            .Lgvan19
                        .quad            .Lgvan20
                        .quad            .Lgvan21
                        .quad            .Lgvan22
                        .quad            .Lgvan23
                        .quad            .Lgvan24
                        .quad            .Lgvan25
                        .quad            .Lgvan26
                        .quad            .Lgvan27
                        .quad            .Lgvan28
                        .quad            .Lgvan29
                        .quad            .Lgvan30
                        .quad            .Lgvan31
                        .quad            .Lgvan32
                        .quad            .Lgvan33
                        .quad            .Lgvan34
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 35
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 35
                        call             gva_register@PLT
                        mov              r12, qword ptr [1879048192]
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
                        sub              rsp, 12008
                        mov              rdi, rsp
                        mov              ecx, 12008
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 12000], rbp
                        mov              rbp, rsp
main_α_body:
#=======================================================================================================================
#                 &ALPHABET       POS(10) LEN(1) . nl
#-----------------------------------------------------------------------------------------------------------------------
n779_keyword_snobol4_α:
                        mov              rdi, qword ptr [rip + .Lx859_0]
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n780_match_head_α
n779_keyword_snobol4_β:
                                                                                        jmp   n787_lit_string_α
.Lx859_0:
                        .quad            .Lx859_0_s
.Lx859_0_s:
                        .string          "ALPHABET"
#-----------------------------------------------------------------------------------------------------------------------
n780_match_head_α:
                        mov              qword ptr [rbp + 152], rbp
                        mov              rdi, qword ptr [rbp + 288]
                        mov              rsi, qword ptr [rbp + 296]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [rbp + 144], r12
                        mov              rax, rsp
                        sub              rsp, 32
                        mov              qword ptr [rsp + 16], rax
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 8], rax
                        mov              dword ptr [rsp + 0], 0
.Lx861_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n781_match_sequence_α
n780_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx861_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx861_1
                                                                                        jmp   .Lx861_0
.Lx861_1:
                        mov              rax, qword ptr [rsp + 8]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 16]
                        mov              r12, qword ptr [rbp + 144]
                        mov              rbp, qword ptr [rbp + 152]
                                                                                        jmp   n787_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n781_match_sequence_α:
                                                                                        jmp   n783_lit_integer_α
n781_match_sequence_as:
                                                                                        jmp   n782_match_release_α
n781_match_sequence_β:
                                                                                        jmp   n786_match_assign_cond_β
n781_match_sequence_af:
                                                                                        jmp   n780_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n782_match_release_α:
                        mov              rax, qword ptr [rsp + 24]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 32]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rsp + 176]
                        mov              rsi, r12
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx865_1:
                        test             rax, rax
                                                                                        je    .Lx865_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx865_3]
                        lea              rdx, [rip + .Lx865_4]
                                                                                        jmp   rax
.Lx865_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx865_1
.Lx865_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx865_1
.Lx865_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + 144]
                        mov              rbp, qword ptr [rbp + 152]
                                                                                        jmp   n787_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n783_lit_integer_α:
                        mov              qword ptr [rbp + 192], 6
                        mov              rax, qword ptr [rip + .Lx866_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n784_match_pos_α
n783_lit_integer_β:
                                                                                        jmp   n780_match_head_β
.Lx866_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n784_match_pos_α:
                        mov              rax, 10
                        cmp              r14d, eax
                                                                                        jne   n780_match_head_β
                                                                                        jmp   n785_match_assign_save_α
n784_match_pos_β:
                                                                                        jmp   n780_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n785_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n788_match_len_α
n785_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n780_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n786_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 0]
                        lea              rcx, [rip + .S6]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n782_match_release_α
n786_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n788_match_len_β
#=======================================================================================================================
#                 DIGITS          =  '0123456789'
#-----------------------------------------------------------------------------------------------------------------------
n787_lit_string_α:
                        mov              qword ptr [rbp + 320], 1
                        mov              rax, qword ptr [rip + .Lx872_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n789_assign_α
n787_lit_string_β:
                                                                                        jmp   n790_lit_string_α
.Lx872_0:
                        .quad            .Lx872_0_s
.Lx872_0_s:
                        .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n788_match_len_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jle   .Lx873_240
                        add              rsp, 16
                                                                                        jmp   n780_match_head_β
.Lx873_240:
                        add              r14d, 1
                                                                                        jmp   n786_match_assign_cond_α
n788_match_len_β:
                        sub              r14d, 1
                        add              rsp, 16
                                                                                        jmp   n780_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n789_assign_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        mov              qword ptr [1879052672], rax
                        mov              qword ptr [1879052680], rdx
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n790_lit_string_α
n789_assign_β:
                                                                                        jmp   n790_lit_string_α
#=======================================================================================================================
#                 UCASE           =  'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
#-----------------------------------------------------------------------------------------------------------------------
n790_lit_string_α:
                        mov              qword ptr [rbp + 368], 1
                        mov              rax, qword ptr [rip + .Lx875_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n791_assign_α
n790_lit_string_β:
                                                                                        jmp   n792_lit_string_α
.Lx875_0:
                        .quad            .Lx875_0_s
.Lx875_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
#-----------------------------------------------------------------------------------------------------------------------
n791_assign_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        mov              qword ptr [1879052688], rax
                        mov              qword ptr [1879052696], rdx
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n792_lit_string_α
n791_assign_β:
                                                                                        jmp   n792_lit_string_α
#=======================================================================================================================
#                 DEFINE('new_sent()')                            :(new_sent_end)
#                 DEFINE('add_tok()')                             :(add_tok_end)
#                 DEFINE('pp_mem(mem)ssk,si,sentno,wsk,wi,wkey,wq,wrd,tsk,ti,tag,tv,tline,pfx,pad,next_wkey,last_sent,lline,ns') :(pp_mem_end)
#                 &TRIM           =   0
#-----------------------------------------------------------------------------------------------------------------------
n792_lit_string_α:
                        mov              qword ptr [rbp + 10048], 1
                        mov              rax, qword ptr [rip + .Lx877_0]
                        mov              qword ptr [rbp + 10056], rax
                                                                                        jmp   n793_lit_integer_α
n792_lit_string_β:
                                                                                        jmp   n795_lit_integer_α
.Lx877_0:
                        .quad            .Lx877_0_s
.Lx877_0_s:
                        .string          "TRIM"
#-----------------------------------------------------------------------------------------------------------------------
n793_lit_integer_α:
                        mov              qword ptr [rbp + 10080], 6
                        mov              rax, qword ptr [rip + .Lx878_0]
                        mov              qword ptr [rbp + 10088], rax
                                                                                        jmp   n794_call_α
n793_lit_integer_β:
                                                                                        jmp   n795_lit_integer_α
.Lx878_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n794_call_α:
                        mov              rax, qword ptr [rbp + 10048]
                        mov              qword ptr [rbp + 10000], rax
                        mov              rax, qword ptr [rbp + 10056]
                        mov              qword ptr [rbp + 10008], rax
                        mov              rax, qword ptr [rbp + 10080]
                        mov              qword ptr [rbp + 10016], rax
                        mov              rax, qword ptr [rbp + 10088]
                        mov              qword ptr [rbp + 10024], rax
                        .section         .rodata
.Lrkfn880:              .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn880]
                        lea              rsi, [rbp + 10000]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 9984], rax
                        mov              qword ptr [rbp + 9992], rdx
                        cmp              eax, 99
                                                                                        je    n795_lit_integer_α
                                                                                        jmp   n795_lit_integer_α
n794_call_β:
                                                                                        jmp   n795_lit_integer_α
#=======================================================================================================================
#                 nl              =   CHAR(10)
#-----------------------------------------------------------------------------------------------------------------------
n795_lit_integer_α:
                        mov              qword ptr [rbp + 10176], 6
                        mov              rax, qword ptr [rip + .Lx881_0]
                        mov              qword ptr [rbp + 10184], rax
                                                                                        jmp   n796_call_α
n795_lit_integer_β:
                                                                                        jmp   n798_var_α
.Lx881_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n796_call_α:
                        mov              rax, qword ptr [rbp + 10176]
                        mov              qword ptr [rbp + 10144], rax
                        mov              rax, qword ptr [rbp + 10184]
                        mov              qword ptr [rbp + 10152], rax
                        .section         .rodata
.Lbynamefn379:          .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn379]
                        lea              rsi, [rbp + 10144]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 10128], rax
                        mov              qword ptr [rbp + 10136], rdx
                        cmp              eax, 99
                                                                                        je    n798_var_α
                                                                                        jmp   n797_assign_α
n796_call_β:
                                                                                        jmp   n798_var_α
#-----------------------------------------------------------------------------------------------------------------------
n797_assign_α:
                        mov              rax, qword ptr [rbp + 10128]
                        mov              rdx, qword ptr [rbp + 10136]
                        mov              qword ptr [1879052656], rax
                        mov              qword ptr [1879052664], rdx
                        mov              qword ptr [rbp + 10112], rax
                        mov              qword ptr [rbp + 10120], rdx
                                                                                        jmp   n798_var_α
n797_assign_β:
                                                                                        jmp   n798_var_α
#=======================================================================================================================
# slurp           line            =   INPUT                       :F(slurp_f)
#-----------------------------------------------------------------------------------------------------------------------
n798_var_α:
                        mov              rdi, qword ptr [rip + .Lx884_0]
                        call             NV_GET_fn@PLT
                        cmp              eax, 99
                                                                                        je    n800_var_α
                        mov              qword ptr [rbp + 10224], rax
                        mov              qword ptr [rbp + 10232], rdx
                                                                                        jmp   n799_assign_α
n798_var_β:
                                                                                        jmp   n800_var_α
.Lx884_0:
                        .quad            .Lx884_0_s
.Lx884_0_s:
                        .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n799_assign_α:
                        mov              rax, qword ptr [rbp + 10224]
                        mov              rdx, qword ptr [rbp + 10232]
                        mov              qword ptr [1879052736], rax
                        mov              qword ptr [1879052744], rdx
                        mov              qword ptr [rbp + 10208], rax
                        mov              qword ptr [rbp + 10216], rdx
                                                                                        jmp   n801_var_α
n799_assign_β:
                                                                                        jmp   n800_var_α
#=======================================================================================================================
# slurp_f         src             =   src b2 b1
#-----------------------------------------------------------------------------------------------------------------------
n800_var_α:
                        mov              rax, qword ptr [1879052784]
                        mov              rdx, qword ptr [1879052792]
                        mov              qword ptr [rbp + 11248], rax
                        mov              qword ptr [rbp + 11256], rdx
                                                                                        jmp   n802_var_α
n800_var_β:
                                                                                        jmp   n803_call_α
#=======================================================================================================================
#                 b1              =   b1 line nl
#-----------------------------------------------------------------------------------------------------------------------
n801_var_α:
                        mov              rax, qword ptr [1879052752]
                        mov              rdx, qword ptr [1879052760]
                        mov              qword ptr [rbp + 10336], rax
                        mov              qword ptr [rbp + 10344], rdx
                                                                                        jmp   n804_var_α
n801_var_β:
                                                                                        jmp   n805_var_α
#-----------------------------------------------------------------------------------------------------------------------
n802_var_α:
                        mov              rax, qword ptr [1879052768]
                        mov              rdx, qword ptr [1879052776]
                        mov              qword ptr [rbp + 11280], rax
                        mov              qword ptr [rbp + 11288], rdx
                                                                                        jmp   n806_binop_α
n802_var_β:
                                                                                        jmp   n803_call_α
#=======================================================================================================================
#                 mem             =   TABLE()
#-----------------------------------------------------------------------------------------------------------------------
n803_call_α:
                        .section         .rodata
.Lrkfn890:              .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn890]
                        lea              rsi, [rbp + 11376]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 11360], rax
                        mov              qword ptr [rbp + 11368], rdx
                        cmp              eax, 99
                                                                                        je    n808_lit_string_α
                                                                                        jmp   n807_assign_α
n803_call_β:
                                                                                        jmp   n808_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n804_var_α:
                        mov              rax, qword ptr [1879052736]
                        mov              rdx, qword ptr [1879052744]
                        mov              qword ptr [rbp + 10368], rax
                        mov              qword ptr [rbp + 10376], rdx
                                                                                        jmp   n809_binop_α
n804_var_β:
                                                                                        jmp   n805_var_α
#=======================================================================================================================
#                 GT(SIZE(b1), 8192)                              :F(slurp)
#-----------------------------------------------------------------------------------------------------------------------
n805_var_α:
                        mov              rax, qword ptr [1879052752]
                        mov              rdx, qword ptr [1879052760]
                        mov              qword ptr [rbp + 10608], rax
                        mov              qword ptr [rbp + 10616], rdx
                                                                                        jmp   n810_call_α
n805_var_β:
                                                                                        jmp   n798_var_α
#-----------------------------------------------------------------------------------------------------------------------
n806_binop_α:
                        mov              rdi, qword ptr [rbp + 11248]
                        mov              rsi, qword ptr [rbp + 11256]
                        mov              rdx, qword ptr [rbp + 11280]
                        mov              rcx, qword ptr [rbp + 11288]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 11216], rax
                        mov              qword ptr [rbp + 11224], rdx
                                                                                        jmp   n811_var_α
n806_binop_β:
                                                                                        jmp   n803_call_α
#-----------------------------------------------------------------------------------------------------------------------
n807_assign_α:
                        mov              rax, qword ptr [rbp + 11360]
                        mov              rdx, qword ptr [rbp + 11368]
                        mov              qword ptr [1879052336], rax
                        mov              qword ptr [1879052344], rdx
                        mov              qword ptr [rbp + 11344], rax
                        mov              qword ptr [rbp + 11352], rdx
                                                                                        jmp   n808_lit_string_α
n807_assign_β:
                                                                                        jmp   n808_lit_string_α
#=======================================================================================================================
#                 claws           =
#-----------------------------------------------------------------------------------------------------------------------
n808_lit_string_α:
                        mov              qword ptr [rbp + 11456], 1
                        mov              rax, qword ptr [rip + .Lx895_0]
                        mov              qword ptr [rbp + 11464], rax
                                                                                        jmp   n812_call_α
n808_lit_string_β:
                                                                                        jmp   n817_call_α
.Lx895_0:
                        .quad            .Lx895_0_s
.Lx895_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n809_binop_α:
                        mov              rdi, qword ptr [rbp + 10336]
                        mov              rsi, qword ptr [rbp + 10344]
                        mov              rdx, qword ptr [rbp + 10368]
                        mov              rcx, qword ptr [rbp + 10376]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 10304], rax
                        mov              qword ptr [rbp + 10312], rdx
                                                                                        jmp   n813_var_α
n809_binop_β:
                                                                                        jmp   n805_var_α
#-----------------------------------------------------------------------------------------------------------------------
n810_call_α:
                        mov              rax, qword ptr [rbp + 10608]
                        mov              qword ptr [rbp + 10576], rax
                        mov              rax, qword ptr [rbp + 10616]
                        mov              qword ptr [rbp + 10584], rax
                        .section         .rodata
.Lrkfn898:              .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn898]
                        lea              rsi, [rbp + 10576]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 10560], rax
                        mov              qword ptr [rbp + 10568], rdx
                        cmp              eax, 99
                                                                                        je    n798_var_α
                                                                                        jmp   n814_lit_integer_α
n810_call_β:
                                                                                        jmp   n798_var_α
#-----------------------------------------------------------------------------------------------------------------------
n811_var_α:
                        mov              rax, qword ptr [1879052752]
                        mov              rdx, qword ptr [1879052760]
                        mov              qword ptr [rbp + 11312], rax
                        mov              qword ptr [rbp + 11320], rdx
                                                                                        jmp   n815_binop_α
n811_var_β:
                                                                                        jmp   n803_call_α
#-----------------------------------------------------------------------------------------------------------------------
n812_call_α:
                        mov              rax, qword ptr [rbp + 11456]
                        mov              qword ptr [rbp + 11424], rax
                        mov              rax, qword ptr [rbp + 11464]
                        mov              qword ptr [rbp + 11432], rax
                        .section         .rodata
.Lrkfn901:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn901]
                        lea              rsi, [rbp + 11424]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 11408], rax
                        mov              qword ptr [rbp + 11416], rdx
                        cmp              eax, 99
                                                                                        je    n817_call_α
                                                                                        jmp   n816_assign_α
n812_call_β:
                                                                                        jmp   n817_call_α
#-----------------------------------------------------------------------------------------------------------------------
n813_var_α:
                        mov              rax, qword ptr [1879052656]
                        mov              rdx, qword ptr [1879052664]
                        mov              qword ptr [rbp + 10400], rax
                        mov              qword ptr [rbp + 10408], rdx
                                                                                        jmp   n818_binop_α
n813_var_β:
                                                                                        jmp   n805_var_α
#-----------------------------------------------------------------------------------------------------------------------
n814_lit_integer_α:
                        mov              qword ptr [rbp + 10528], 6
                        mov              rax, qword ptr [rip + .Lx903_0]
                        mov              qword ptr [rbp + 10536], rax
                                                                                        jmp   n819_op74_α
n814_lit_integer_β:
                                                                                        jmp   n798_var_α
.Lx903_0:
                        .quad            8192
#-----------------------------------------------------------------------------------------------------------------------
n815_binop_α:
                        mov              rdi, qword ptr [rbp + 11216]
                        mov              rsi, qword ptr [rbp + 11224]
                        mov              rdx, qword ptr [rbp + 11312]
                        mov              rcx, qword ptr [rbp + 11320]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 11184], rax
                        mov              qword ptr [rbp + 11192], rdx
                                                                                        jmp   n820_assign_α
n815_binop_β:
                                                                                        jmp   n803_call_α
#-----------------------------------------------------------------------------------------------------------------------
n816_assign_α:
                        mov              rax, qword ptr [rbp + 11408]
                        mov              rdx, qword ptr [rbp + 11416]
                        mov              qword ptr [1879052800], rax
                        mov              qword ptr [1879052808], rdx
                        mov              qword ptr [rbp + 11392], rax
                        mov              qword ptr [rbp + 11400], rdx
                                                                                        jmp   n817_call_α
n816_assign_β:
                                                                                        jmp   n817_call_α
#=======================================================================================================================
#                 t0              =   TIME()
#-----------------------------------------------------------------------------------------------------------------------
n817_call_α:
                        .section         .rodata
.Lrkfn907:              .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn907]
                        lea              rsi, [rbp + 11520]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 11504], rax
                        mov              qword ptr [rbp + 11512], rdx
                        cmp              eax, 99
                                                                                        je    n822_var_α
                                                                                        jmp   n821_assign_α
n817_call_β:
                                                                                        jmp   n822_var_α
#-----------------------------------------------------------------------------------------------------------------------
n818_binop_α:
                        mov              rdi, qword ptr [rbp + 10304]
                        mov              rsi, qword ptr [rbp + 10312]
                        mov              rdx, qword ptr [rbp + 10400]
                        mov              rcx, qword ptr [rbp + 10408]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 10272], rax
                        mov              qword ptr [rbp + 10280], rdx
                                                                                        jmp   n823_assign_α
n818_binop_β:
                                                                                        jmp   n805_var_α
#-----------------------------------------------------------------------------------------------------------------------
n819_op74_α:
                        mov              eax, dword ptr [rbp + 10560]
                        cmp              eax, 7
                                                                                        je    .Lx910_1
                        cmp              eax, 6
                                                                                        jne   .Lx910_0
                        mov              eax, dword ptr [rbp + 10528]
                        cmp              eax, 6
                                                                                        jne   .Lx910_0
.Lx910_1:
                        mov              rax, qword ptr [rbp + 10560]
                        mov              qword ptr [rbp + 10496], rax
                        mov              rax, qword ptr [rbp + 10568]
                        mov              qword ptr [rbp + 10504], rax
                                                                                        jmp   n824_op74_α
.Lx910_0:
                        lea              rdi, [rbp + 10560]
                        lea              rsi, [rbp + 10528]
                        lea              rdx, [rbp + 10496]
                        mov              rcx, 111
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n824_op74_α
n819_op74_β:
                                                                                        jmp   n798_var_α
#-----------------------------------------------------------------------------------------------------------------------
n820_assign_α:
                        mov              rax, qword ptr [rbp + 11184]
                        mov              rdx, qword ptr [rbp + 11192]
                        mov              qword ptr [1879052784], rax
                        mov              qword ptr [1879052792], rdx
                        mov              qword ptr [rbp + 11168], rax
                        mov              qword ptr [rbp + 11176], rdx
                                                                                        jmp   n803_call_α
n820_assign_β:
                                                                                        jmp   n803_call_α
#-----------------------------------------------------------------------------------------------------------------------
n821_assign_α:
                        mov              rax, qword ptr [rbp + 11504]
                        mov              rdx, qword ptr [rbp + 11512]
                        mov              qword ptr [1879052816], rax
                        mov              qword ptr [1879052824], rdx
                        mov              qword ptr [rbp + 11488], rax
                        mov              qword ptr [rbp + 11496], rdx
                                                                                        jmp   n822_var_α
n821_assign_β:
                                                                                        jmp   n822_var_α
#=======================================================================================================================
#                 src             claws                           :F(fail)
#-----------------------------------------------------------------------------------------------------------------------
n822_var_α:
                        mov              rax, qword ptr [1879052784]
                        mov              rdx, qword ptr [1879052792]
                        mov              qword ptr [rbp + 11616], rax
                        mov              qword ptr [rbp + 11624], rdx
                                                                                        jmp   n825_match_head_α
n822_var_β:
                                                                                        jmp   n826_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n823_assign_α:
                        mov              rax, qword ptr [rbp + 10272]
                        mov              rdx, qword ptr [rbp + 10280]
                        mov              qword ptr [1879052752], rax
                        mov              qword ptr [1879052760], rdx
                        mov              qword ptr [rbp + 10256], rax
                        mov              qword ptr [rbp + 10264], rdx
                                                                                        jmp   n805_var_α
n823_assign_β:
                                                                                        jmp   n805_var_α
#-----------------------------------------------------------------------------------------------------------------------
n824_op74_α:
                        mov              eax, dword ptr [rbp + 10528]
                        cmp              eax, 7
                                                                                        je    .Lx916_1
                        cmp              eax, 6
                                                                                        jne   .Lx916_0
                        mov              eax, dword ptr [rbp + 10560]
                        cmp              eax, 6
                                                                                        jne   .Lx916_0
.Lx916_1:
                        mov              rax, qword ptr [rbp + 10528]
                        mov              qword ptr [rbp + 10464], rax
                        mov              rax, qword ptr [rbp + 10536]
                        mov              qword ptr [rbp + 10472], rax
                                                                                        jmp   n827_op76_α
.Lx916_0:
                        lea              rdi, [rbp + 10528]
                        lea              rsi, [rbp + 10560]
                        lea              rdx, [rbp + 10464]
                        mov              rcx, 112
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n827_op76_α
n824_op74_β:
                                                                                        jmp   n798_var_α
#-----------------------------------------------------------------------------------------------------------------------
n825_match_head_α:
                        mov              qword ptr [rbp + 11592], rbp
                        mov              rdi, qword ptr [rbp + 11616]
                        mov              rsi, qword ptr [rbp + 11624]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [rbp + 11584], r12
                        mov              qword ptr [rbp + 11568], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 11560], rax
                        mov              dword ptr [rbp + 11552], 0
.Lx918_0:
                        mov              r14d, dword ptr [rbp + 11552]
                                                                                        jmp   n828_match_defer_α
n825_match_head_β:
                        add              dword ptr [rbp + 11552], 1
                        mov              eax, dword ptr [rbp + 11552]
                        cmp              eax, r15d
                                                                                        jg    .Lx918_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx918_1
                                                                                        jmp   .Lx918_0
.Lx918_1:
                        mov              rax, qword ptr [rbp + 11560]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 11568]
                        mov              r12, qword ptr [rbp + 11584]
                        mov              rbp, qword ptr [rbp + 11592]
                                                                                        jmp   n826_lit_string_α
#=======================================================================================================================
# fail            OUTPUT          =  'Pattern match failed'
#-----------------------------------------------------------------------------------------------------------------------
n826_lit_string_α:
                        mov              qword ptr [rbp + 11968], 1
                        mov              rax, qword ptr [rip + .Lx919_0]
                        mov              qword ptr [rbp + 11976], rax
                                                                                        jmp   n829_assign_α
n826_lit_string_β:
                                                                                        jmp   main_γ
.Lx919_0:
                        .quad            .Lx919_0_s
.Lx919_0_s:
                        .string          "Pattern match failed"
#-----------------------------------------------------------------------------------------------------------------------
n827_op76_α:
                        lea              rdi, [rbp + 10496]
                        lea              rsi, [rbp + 10464]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jle   n798_var_α
                        mov              qword ptr [rbp + 10432], 0
                        mov              qword ptr [rbp + 10440], 0
                                                                                        jmp   n830_var_α
n827_op76_β:
                                                                                        jmp   n798_var_α
#-----------------------------------------------------------------------------------------------------------------------
n828_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx922_11
                        mov              rax, qword ptr [1879052800]
                        mov              rdx, qword ptr [1879052808]
                        cmp              eax, 3
                                                                                        jne   .Lx922_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx922_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx922_10
.Lx922_9:
                        xor              eax, eax
.Lx922_10:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              qword ptr [rsi + 0], rax
.Lx922_11:
                        test             rax, rax
                                                                                        jz    .Lx922_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx922_4]
                        lea              rdx, [rip + .Lx922_5]
                                                                                        jmp   rax
.Lx922_4:
                                                                                        jmp   n831_match_release_α
.Lx922_5:
                                                                                        jmp   n825_match_head_β
.Lx922_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S7]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx922_2:
                        test             rax, rax
                                                                                        je    .Lx922_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx922_7]
                        lea              rdx, [rip + .Lx922_8]
                                                                                        jmp   rax
.Lx922_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx922_2
.Lx922_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx922_2
.Lx922_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n825_match_head_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx922_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n831_match_release_α
.Lx922_6:
                        add              rsp, 16
                                                                                        jmp   n825_match_head_β
n828_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n829_assign_α:
                        mov              rsi, qword ptr [rbp + 11968]
                        mov              rdx, qword ptr [rbp + 11976]
                        mov              rdi, qword ptr [rip + .Lx923_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 11952], rax
                        mov              qword ptr [rbp + 11960], rdx
                                                                                        jmp   main_γ
n829_assign_β:
                                                                                        jmp   main_γ
.Lx923_0:
                        .quad            .Lx923_0_s
.Lx923_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#                 b2              =   b2 b1
#-----------------------------------------------------------------------------------------------------------------------
n830_var_α:
                        mov              rax, qword ptr [1879052768]
                        mov              rdx, qword ptr [1879052776]
                        mov              qword ptr [rbp + 10688], rax
                        mov              qword ptr [rbp + 10696], rdx
                                                                                        jmp   n832_var_α
n830_var_β:
                                                                                        jmp   n833_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n831_match_release_α:
                        mov              rax, qword ptr [rbp + 11560]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 11568]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rsp + 11616]
                        mov              rsi, r12
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx926_1:
                        test             rax, rax
                                                                                        je    .Lx926_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx926_3]
                        lea              rdx, [rip + .Lx926_4]
                                                                                        jmp   rax
.Lx926_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx926_1
.Lx926_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx926_1
.Lx926_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + 11584]
                        mov              rbp, qword ptr [rbp + 11592]
                                                                                        jmp   n834_call_α
#-----------------------------------------------------------------------------------------------------------------------
n832_var_α:
                        mov              rax, qword ptr [1879052752]
                        mov              rdx, qword ptr [1879052760]
                        mov              qword ptr [rbp + 10720], rax
                        mov              qword ptr [rbp + 10728], rdx
                                                                                        jmp   n835_binop_α
n832_var_β:
                                                                                        jmp   n833_lit_string_α
#=======================================================================================================================
#                 b1              =
#-----------------------------------------------------------------------------------------------------------------------
n833_lit_string_α:
                        mov              qword ptr [rbp + 10768], 1
                        mov              rax, qword ptr [rip + .Lx928_0]
                        mov              qword ptr [rbp + 10776], rax
                                                                                        jmp   n836_assign_α
n833_lit_string_β:
                                                                                        jmp   n840_var_α
.Lx928_0:
                        .quad            .Lx928_0_s
.Lx928_0_s:
                        .string          ""
#=======================================================================================================================
#                 t1              =   TIME()
#-----------------------------------------------------------------------------------------------------------------------
n834_call_α:
                        .section         .rodata
.Lrkfn930:              .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn930]
                        lea              rsi, [rbp + 11680]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 11664], rax
                        mov              qword ptr [rbp + 11672], rdx
                        cmp              eax, 99
                                                                                        je    n838_lit_string_α
                                                                                        jmp   n837_assign_α
n834_call_β:
                                                                                        jmp   n838_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n835_binop_α:
                        mov              rdi, qword ptr [rbp + 10688]
                        mov              rsi, qword ptr [rbp + 10696]
                        mov              rdx, qword ptr [rbp + 10720]
                        mov              rcx, qword ptr [rbp + 10728]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 10656], rax
                        mov              qword ptr [rbp + 10664], rdx
                                                                                        jmp   n839_assign_α
n835_binop_β:
                                                                                        jmp   n833_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n836_assign_α:
                        mov              rax, qword ptr [rbp + 10768]
                        mov              rdx, qword ptr [rbp + 10776]
                        mov              qword ptr [1879052752], rax
                        mov              qword ptr [1879052760], rdx
                        mov              qword ptr [rbp + 10752], rax
                        mov              qword ptr [rbp + 10760], rdx
                                                                                        jmp   n840_var_α
n836_assign_β:
                                                                                        jmp   n840_var_α
#-----------------------------------------------------------------------------------------------------------------------
n837_assign_α:
                        mov              rax, qword ptr [rbp + 11664]
                        mov              rdx, qword ptr [rbp + 11672]
                        mov              qword ptr [1879052832], rax
                        mov              qword ptr [1879052840], rdx
                        mov              qword ptr [rbp + 11648], rax
                        mov              qword ptr [rbp + 11656], rdx
                                                                                        jmp   n838_lit_string_α
n837_assign_β:
                                                                                        jmp   n838_lit_string_α
#=======================================================================================================================
#                 TERMINAL        =   'match_ms=' (t1 - t0)
#-----------------------------------------------------------------------------------------------------------------------
n838_lit_string_α:
                        mov              qword ptr [rbp + 11744], 1
                        mov              rax, qword ptr [rip + .Lx934_0]
                        mov              qword ptr [rbp + 11752], rax
                                                                                        jmp   n841_var_α
n838_lit_string_β:
                                                                                        jmp   n844_var_α
.Lx934_0:
                        .quad            .Lx934_0_s
.Lx934_0_s:
                        .string          "match_ms="
#-----------------------------------------------------------------------------------------------------------------------
n839_assign_α:
                        mov              rax, qword ptr [rbp + 10656]
                        mov              rdx, qword ptr [rbp + 10664]
                        mov              qword ptr [1879052768], rax
                        mov              qword ptr [1879052776], rdx
                        mov              qword ptr [rbp + 10640], rax
                        mov              qword ptr [rbp + 10648], rdx
                                                                                        jmp   n833_lit_string_α
n839_assign_β:
                                                                                        jmp   n833_lit_string_α
#=======================================================================================================================
#                 GT(SIZE(b2), 262144)                            :F(slurp)
#-----------------------------------------------------------------------------------------------------------------------
n840_var_α:
                        mov              rax, qword ptr [1879052768]
                        mov              rdx, qword ptr [1879052776]
                        mov              qword ptr [rbp + 10976], rax
                        mov              qword ptr [rbp + 10984], rdx
                                                                                        jmp   n842_call_α
n840_var_β:
                                                                                        jmp   n798_var_α
#-----------------------------------------------------------------------------------------------------------------------
n841_var_α:
                        mov              rax, qword ptr [1879052832]
                        mov              rdx, qword ptr [1879052840]
                        mov              qword ptr [rbp + 11808], rax
                        mov              qword ptr [rbp + 11816], rdx
                                                                                        jmp   n843_var_α
n841_var_β:
                                                                                        jmp   n844_var_α
#-----------------------------------------------------------------------------------------------------------------------
n842_call_α:
                        mov              rax, qword ptr [rbp + 10976]
                        mov              qword ptr [rbp + 10944], rax
                        mov              rax, qword ptr [rbp + 10984]
                        mov              qword ptr [rbp + 10952], rax
                        .section         .rodata
.Lrkfn939:              .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn939]
                        lea              rsi, [rbp + 10944]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 10928], rax
                        mov              qword ptr [rbp + 10936], rdx
                        cmp              eax, 99
                                                                                        je    n798_var_α
                                                                                        jmp   n845_lit_integer_α
n842_call_β:
                                                                                        jmp   n798_var_α
#-----------------------------------------------------------------------------------------------------------------------
n843_var_α:
                        mov              rax, qword ptr [1879052816]
                        mov              rdx, qword ptr [1879052824]
                        mov              qword ptr [rbp + 11840], rax
                        mov              qword ptr [rbp + 11848], rdx
                                                                                        jmp   n846_binop_α
n843_var_β:
                                                                                        jmp   n844_var_α
#=======================================================================================================================
#                 pp_mem(mem)                                     :(END)
#-----------------------------------------------------------------------------------------------------------------------
n844_var_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 11920], rax
                        mov              qword ptr [rbp + 11928], rdx
                                                                                        jmp   n847_call_α
n844_var_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n845_lit_integer_α:
                        mov              qword ptr [rbp + 10896], 6
                        mov              rax, qword ptr [rip + .Lx942_0]
                        mov              qword ptr [rbp + 10904], rax
                                                                                        jmp   n848_op74_α
n845_lit_integer_β:
                                                                                        jmp   n798_var_α
.Lx942_0:
                        .quad            262144
#-----------------------------------------------------------------------------------------------------------------------
n846_binop_α:
                        mov              eax, dword ptr [rbp + 11808]
                        cmp              eax, 100
                                                                                        je    .Lx943_0
                        mov              eax, dword ptr [rbp + 11840]
                        cmp              eax, 100
                                                                                        je    .Lx943_0
                        mov              eax, dword ptr [rbp + 11808]
                        cmp              eax, 6
                                                                                        jne   .Lx943_2
                        mov              eax, dword ptr [rbp + 11840]
                        cmp              eax, 6
                                                                                        jne   .Lx943_2
.Lx943_1:
                        mov              rax, qword ptr [rbp + 11816]
                        mov              rcx, qword ptr [rbp + 11848]
                        sub              rax, rcx
                        mov              qword ptr [rbp + 11776], 6
                        mov              qword ptr [rbp + 11784], rax
                                                                                        jmp   n849_binop_α
.Lx943_0:
                        mov              rdi, qword ptr [rbp + 11808]
                        mov              rsi, qword ptr [rbp + 11816]
                        mov              rdx, qword ptr [rbp + 11840]
                        mov              rcx, qword ptr [rbp + 11848]
                        mov              r8d, 1
                        lea              r9, [rbp + 11776]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n849_binop_α
.Lx943_2:
                        mov              rdi, qword ptr [rbp + 11808]
                        mov              rsi, qword ptr [rbp + 11816]
                        mov              rdx, qword ptr [rbp + 11840]
                        mov              rcx, qword ptr [rbp + 11848]
                        mov              r8d, 1
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n844_var_α
                        mov              qword ptr [rbp + 11776], rax
                        mov              qword ptr [rbp + 11784], rdx
                                                                                        jmp   n849_binop_α
n846_binop_β:
                                                                                        jmp   n844_var_α
#-----------------------------------------------------------------------------------------------------------------------
n847_call_α:
                        sub              rsp, 336
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052352]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052360]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052368]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052376]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [1879052384]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [1879052392]
                        mov              qword ptr [rsp + 56], rax
                        mov              rax, qword ptr [1879052400]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [1879052408]
                        mov              qword ptr [rsp + 72], rax
                        mov              rax, qword ptr [1879052416]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [1879052424]
                        mov              qword ptr [rsp + 88], rax
                        mov              rax, qword ptr [1879052432]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [1879052440]
                        mov              qword ptr [rsp + 104], rax
                        mov              rax, qword ptr [1879052448]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [1879052456]
                        mov              qword ptr [rsp + 120], rax
                        mov              rax, qword ptr [1879052464]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [1879052472]
                        mov              qword ptr [rsp + 136], rax
                        mov              rax, qword ptr [1879052480]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [1879052488]
                        mov              qword ptr [rsp + 152], rax
                        mov              rax, qword ptr [1879052496]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [1879052504]
                        mov              qword ptr [rsp + 168], rax
                        mov              rax, qword ptr [1879052512]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [1879052520]
                        mov              qword ptr [rsp + 184], rax
                        mov              rax, qword ptr [1879052528]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [1879052536]
                        mov              qword ptr [rsp + 200], rax
                        mov              rax, qword ptr [1879052544]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [1879052552]
                        mov              qword ptr [rsp + 216], rax
                        mov              rax, qword ptr [1879052560]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [1879052568]
                        mov              qword ptr [rsp + 232], rax
                        mov              rax, qword ptr [1879052576]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [1879052584]
                        mov              qword ptr [rsp + 248], rax
                        mov              rax, qword ptr [1879052592]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [1879052600]
                        mov              qword ptr [rsp + 264], rax
                        mov              rax, qword ptr [1879052608]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [1879052616]
                        mov              qword ptr [rsp + 280], rax
                        mov              rax, qword ptr [1879052624]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [1879052632]
                        mov              qword ptr [rsp + 296], rax
                        mov              rax, qword ptr [1879052640]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [1879052648]
                        mov              qword ptr [rsp + 312], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 328], rax
                        mov              rdi, qword ptr [rip + .Lx945_0]
                        mov              esi, 20
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx945_5
                        mov              rax, qword ptr [rbp + 11920]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rbp + 11928]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx945_6]
                        lea              rdx, [rip + .Lx945_7]
                                                                                        jmp   rax
.Lx945_6:
                        mov              rdi, qword ptr [1879052320]
                        mov              rsi, qword ptr [1879052328]
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [1879052640], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [1879052648], rax
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [1879052624], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [1879052632], rax
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [1879052608], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [1879052616], rax
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [1879052592], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [1879052600], rax
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [1879052576], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [1879052584], rax
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [1879052560], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [1879052568], rax
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [1879052544], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [1879052552], rax
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [1879052528], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [1879052536], rax
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [1879052512], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [1879052520], rax
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [1879052496], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [1879052504], rax
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [1879052480], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [1879052488], rax
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [1879052464], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [1879052472], rax
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [1879052448], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [1879052456], rax
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [1879052432], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [1879052440], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [1879052416], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [1879052424], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [1879052400], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [1879052408], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [1879052384], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [1879052392], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052376], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052360], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 336
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx945_2
.Lx945_7:
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [1879052640], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [1879052648], rax
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [1879052624], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [1879052632], rax
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [1879052608], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [1879052616], rax
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [1879052592], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [1879052600], rax
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [1879052576], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [1879052584], rax
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [1879052560], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [1879052568], rax
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [1879052544], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [1879052552], rax
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [1879052528], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [1879052536], rax
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [1879052512], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [1879052520], rax
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [1879052496], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [1879052504], rax
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [1879052480], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [1879052488], rax
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [1879052464], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [1879052472], rax
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [1879052448], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [1879052456], rax
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [1879052432], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [1879052440], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [1879052416], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [1879052424], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [1879052400], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [1879052408], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [1879052384], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [1879052392], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052376], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052360], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 336
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx945_2
.Lx945_5:
                        add              rsp, 336
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx945_20
                        mov              rax, qword ptr [rbp + 11920]
                        mov              rdx, qword ptr [rbp + 11928]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx945_21
.Lx945_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 11920]
                        mov              rdx, qword ptr [rbp + 11928]
                        call             rt_arg_stage@PLT
.Lx945_21:
                        mov              rdi, qword ptr [rip + .Lx945_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx945_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx945_3]
                        lea              rdx, [rip + .Lx945_4]
                                                                                        jmp   rax
.Lx945_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx945_2
.Lx945_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx945_2
.Lx945_1:
                        call             rt_faildescr@PLT
.Lx945_2:
                        mov              qword ptr [rbp + 11872], rax
                        mov              qword ptr [rbp + 11880], rdx
                        cmp              eax, 99
                                                                                        je    main_γ
                                                                                        jmp   main_γ
n847_call_β:
                                                                                        jmp   main_γ
.Lx945_0:
                        .quad            .Lx945_0_s
.Lx945_0_s:
                        .string          "pp_mem"
#-----------------------------------------------------------------------------------------------------------------------
n848_op74_α:
                        mov              eax, dword ptr [rbp + 10928]
                        cmp              eax, 7
                                                                                        je    .Lx947_1
                        cmp              eax, 6
                                                                                        jne   .Lx947_0
                        mov              eax, dword ptr [rbp + 10896]
                        cmp              eax, 6
                                                                                        jne   .Lx947_0
.Lx947_1:
                        mov              rax, qword ptr [rbp + 10928]
                        mov              qword ptr [rbp + 10864], rax
                        mov              rax, qword ptr [rbp + 10936]
                        mov              qword ptr [rbp + 10872], rax
                                                                                        jmp   n850_op74_α
.Lx947_0:
                        lea              rdi, [rbp + 10928]
                        lea              rsi, [rbp + 10896]
                        lea              rdx, [rbp + 10864]
                        mov              rcx, 111
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n850_op74_α
n848_op74_β:
                                                                                        jmp   n798_var_α
#-----------------------------------------------------------------------------------------------------------------------
n849_binop_α:
                        mov              rdi, qword ptr [rbp + 11744]
                        mov              rsi, qword ptr [rbp + 11752]
                        mov              rdx, qword ptr [rbp + 11776]
                        mov              rcx, qword ptr [rbp + 11784]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 11712], rax
                        mov              qword ptr [rbp + 11720], rdx
                                                                                        jmp   n851_assign_α
n849_binop_β:
                                                                                        jmp   n844_var_α
#-----------------------------------------------------------------------------------------------------------------------
n850_op74_α:
                        mov              eax, dword ptr [rbp + 10896]
                        cmp              eax, 7
                                                                                        je    .Lx950_1
                        cmp              eax, 6
                                                                                        jne   .Lx950_0
                        mov              eax, dword ptr [rbp + 10928]
                        cmp              eax, 6
                                                                                        jne   .Lx950_0
.Lx950_1:
                        mov              rax, qword ptr [rbp + 10896]
                        mov              qword ptr [rbp + 10832], rax
                        mov              rax, qword ptr [rbp + 10904]
                        mov              qword ptr [rbp + 10840], rax
                                                                                        jmp   n852_op76_α
.Lx950_0:
                        lea              rdi, [rbp + 10896]
                        lea              rsi, [rbp + 10928]
                        lea              rdx, [rbp + 10832]
                        mov              rcx, 112
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n852_op76_α
n850_op74_β:
                                                                                        jmp   n798_var_α
#-----------------------------------------------------------------------------------------------------------------------
n851_assign_α:
                        mov              rsi, qword ptr [rbp + 11712]
                        mov              rdx, qword ptr [rbp + 11720]
                        mov              rdi, qword ptr [rip + .Lx951_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 11696], rax
                        mov              qword ptr [rbp + 11704], rdx
                                                                                        jmp   n844_var_α
n851_assign_β:
                                                                                        jmp   n844_var_α
.Lx951_0:
                        .quad            .Lx951_0_s
.Lx951_0_s:
                        .string          "TERMINAL"
#-----------------------------------------------------------------------------------------------------------------------
n852_op76_α:
                        lea              rdi, [rbp + 10864]
                        lea              rsi, [rbp + 10832]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jle   n798_var_α
                        mov              qword ptr [rbp + 10800], 0
                        mov              qword ptr [rbp + 10808], 0
                                                                                        jmp   n853_var_α
n852_op76_β:
                                                                                        jmp   n798_var_α
#=======================================================================================================================
#                 src             =   src b2
#-----------------------------------------------------------------------------------------------------------------------
n853_var_α:
                        mov              rax, qword ptr [1879052784]
                        mov              rdx, qword ptr [1879052792]
                        mov              qword ptr [rbp + 11056], rax
                        mov              qword ptr [rbp + 11064], rdx
                                                                                        jmp   n854_var_α
n853_var_β:
                                                                                        jmp   n855_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n854_var_α:
                        mov              rax, qword ptr [1879052768]
                        mov              rdx, qword ptr [1879052776]
                        mov              qword ptr [rbp + 11088], rax
                        mov              qword ptr [rbp + 11096], rdx
                                                                                        jmp   n856_binop_α
n854_var_β:
                                                                                        jmp   n855_lit_string_α
#=======================================================================================================================
#                 b2              =                               :(slurp)
#-----------------------------------------------------------------------------------------------------------------------
n855_lit_string_α:
                        mov              qword ptr [rbp + 11136], 1
                        mov              rax, qword ptr [rip + .Lx956_0]
                        mov              qword ptr [rbp + 11144], rax
                                                                                        jmp   n857_assign_α
n855_lit_string_β:
                                                                                        jmp   n798_var_α
.Lx956_0:
                        .quad            .Lx956_0_s
.Lx956_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n856_binop_α:
                        mov              rdi, qword ptr [rbp + 11056]
                        mov              rsi, qword ptr [rbp + 11064]
                        mov              rdx, qword ptr [rbp + 11088]
                        mov              rcx, qword ptr [rbp + 11096]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 11024], rax
                        mov              qword ptr [rbp + 11032], rdx
                                                                                        jmp   n858_assign_α
n856_binop_β:
                                                                                        jmp   n855_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n857_assign_α:
                        mov              rax, qword ptr [rbp + 11136]
                        mov              rdx, qword ptr [rbp + 11144]
                        mov              qword ptr [1879052768], rax
                        mov              qword ptr [1879052776], rdx
                        mov              qword ptr [rbp + 11120], rax
                        mov              qword ptr [rbp + 11128], rdx
                                                                                        jmp   n798_var_α
n857_assign_β:
                                                                                        jmp   n798_var_α
#-----------------------------------------------------------------------------------------------------------------------
n858_assign_α:
                        mov              rax, qword ptr [rbp + 11024]
                        mov              rdx, qword ptr [rbp + 11032]
                        mov              qword ptr [1879052784], rax
                        mov              qword ptr [1879052792], rdx
                        mov              qword ptr [rbp + 11008], rax
                        mov              qword ptr [rbp + 11016], rdx
                                                                                        jmp   n855_lit_string_α
n858_assign_β:
                                                                                        jmp   n855_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 12000]
                        add              rsp, 12008
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              dword ptr [rsp+0], 99
                        mov              dword ptr [rsp+4], 0
                        mov              qword ptr [rsp+8], 0
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 12000]
                        add              rsp, 12008
                        ret
                        .section         .rodata
.S0:                    .string          "num"
.S1:                    .string          "*new_sent"
.S2:                    .string          "wrd"
.S3:                    .string          "tag"
.S4:                    .string          "*add_tok"
.S5:                    .string          "epsilon"
.S6:                    .string          "nl"
.S7:                    .string          "claws"
                        .text
                        .section         .rodata
.C0:
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.C1:
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
                        .byte            1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.C2:
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0
                        .byte            0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
                        .byte            1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .text
                        .section         .note.GNU-stack,"",@progbits
