                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_new_sent_α
proc_new_sent_α:
                        .global          proc_new_sent_α
                        .global          proc_new_sent_β
                        .global          proc_new_sent_γ
                        .global          proc_new_sent_ω
                        sub              rsp, 464
                        mov              [rsp + 440], rcx
                        mov              [rsp + 448], rdx
                        mov              [rsp + 456], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 416], 0
                        mov              qword ptr [rsp + 424], rsp
proc_new_sent_α_body:
#=======================================================================================================================
# new_sent        sentno          =  +num
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain0_n0_α:
                        mov              rax, qword ptr [1879052704]
                        mov              rdx, qword ptr [1879052712]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   xchain0_n1_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_UNOP
xchain0_n1_α:
                        mov              rdi, qword ptr [rbp + 144]
                        mov              rsi, qword ptr [rbp + 152]
                        call             rt_num_pos@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                                                                                        jmp   xchain0_n3_α
#=======================================================================================================================
#                 mem[sentno]     =  TABLE()
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain0_n2_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   xchain0_n4_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain0_n3_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        mov              qword ptr [1879052384], rax
                        mov              qword ptr [1879052392], rdx
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   xchain0_n2_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain0_n4_α:
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   xchain0_n6_α
#=======================================================================================================================
#                 new_sent        =  .dummy                       :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain0_n5_α:
                        mov              qword ptr [rbp + 384], 1
                        mov              rax, qword ptr [rip + .Lx6_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   xchain0_n7_α
.Lx6_0:
                        .quad            .Lx6_0_s
.Lx6_0_s:
                        .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
# IR_SUBSCRIPT x[i] variable
xchain0_n6_α:
                        mov              rdi, qword ptr [rbp + 176]
                        mov              rsi, qword ptr [rbp + 184]
                        mov              rdx, qword ptr [rbp + 208]
                        mov              rcx, qword ptr [rbp + 216]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain0_n5_α
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   xchain0_n8_α
#-----------------------------------------------------------------------------------------------------------------------
xchain0_n7_α:
# BOX IR_CALL SNO$NAME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+384] -> [zr+352]
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 360], rax
                        .section         .rodata
.Lrkfn9:                .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn9]
                        lea              rsi, [rbp + 352]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    xchain0_n10_α
                                                                                        jmp   xchain0_n9_α
xchain0_n7_β:
                                                                                        jmp   xchain0_n10_α
#-----------------------------------------------------------------------------------------------------------------------
xchain0_n8_α:
# BOX IR_CALL TABLE(...) -> rt_call_arr [operand-marshal, FAIL->ω]
                        .section         .rodata
.Lrkfn11:               .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn11]
                        lea              rsi, [rbp + 288]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    xchain0_n5_α
                                                                                        jmp   xchain0_n11_α
xchain0_n8_β:
                                                                                        jmp   xchain0_n5_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain0_n9_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   xchain0_n10_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain0_n10_α:
                        mov              qword ptr [rbp + 16], 1
                        mov              rax, qword ptr [rip + .Lx13_0]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   xchain0_n12_α
.Lx13_0:
                        .quad            .Lx13_0_s
.Lx13_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN_VAR
xchain0_n11_α:
                        mov              rdi, qword ptr [rbp + 240]
                        mov              rsi, qword ptr [rbp + 248]
                        mov              rdx, qword ptr [rbp + 272]
                        mov              rcx, qword ptr [rbp + 280]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain0_n5_α
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   xchain0_n5_α
#-----------------------------------------------------------------------------------------------------------------------
xchain0_n12_α:
# BOX IR_CALL SNO$NRET(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+16] -> [zr+64]
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 72], rax
                        .section         .rodata
.Lrkfn16:               .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn16]
                        lea              rsi, [rbp + 64]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_new_sent_ω
                                                                                        jmp   proc_new_sent_γ
xchain0_n12_β:
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
                        mov              rax, [rbp + 440]
                        lea              rsp, [rbp + 464]
                        mov              rbp, [rbp + 456]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_new_sent_ω:
                        mov              rax, [rbp + 448]
                        lea              rsp, [rbp + 464]
                        mov              rbp, [rbp + 456]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_add_tok_α
proc_add_tok_α:
                        .global          proc_add_tok_α
                        .global          proc_add_tok_β
                        .global          proc_add_tok_γ
                        .global          proc_add_tok_ω
                        sub              rsp, 1936
                        mov              [rsp + 1912], rcx
                        mov              [rsp + 1920], rdx
                        mov              [rsp + 1928], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 1888], 0
                        mov              qword ptr [rsp + 1896], rsp
proc_add_tok_α_body:
#=======================================================================================================================
# add_tok         DIFFER(mem[sentno][wrd])                        :F(new_wrd)
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain17_n0_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   xchain17_n1_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain17_n1_α:
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   xchain17_n3_α
#=======================================================================================================================
# new_wrd         mem[sentno][wrd]       =  TABLE()
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain17_n2_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                                                                                        jmp   xchain17_n4_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_SUBSCRIPT x[i] variable
xchain17_n3_α:
                        mov              rdi, qword ptr [rbp + 144]
                        mov              rsi, qword ptr [rbp + 152]
                        mov              rdx, qword ptr [rbp + 176]
                        mov              rcx, qword ptr [rbp + 184]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain17_n2_α
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   xchain17_n6_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain17_n4_α:
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                                                                                        jmp   xchain17_n7_α
#=======================================================================================================================
# new_tag         mem[sentno][wrd][tag]  =  1
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain17_n5_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                                                                                        jmp   xchain17_n8_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_DEREF variable -> value
xchain17_n6_α:
                        mov              rdi, qword ptr [rbp + 208]
                        mov              rsi, qword ptr [rbp + 216]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    xchain17_n2_α
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   xchain17_n10_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_SUBSCRIPT x[i] variable
xchain17_n7_α:
                        mov              rdi, qword ptr [rbp + 1264]
                        mov              rsi, qword ptr [rbp + 1272]
                        mov              rdx, qword ptr [rbp + 1296]
                        mov              rcx, qword ptr [rbp + 1304]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain17_n5_α
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                                                                                        jmp   xchain17_n11_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain17_n8_α:
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                                                                                        jmp   xchain17_n12_α
#=======================================================================================================================
# done            add_tok         =  .dummy                       :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain17_n9_α:
                        mov              qword ptr [rbp + 1856], 1
                        mov              rax, qword ptr [rip + .Lx27_0]
                        mov              qword ptr [rbp + 1864], rax
                                                                                        jmp   xchain17_n13_α
.Lx27_0:
                        .quad            .Lx27_0_s
.Lx27_0_s:
                        .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain17_n10_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   xchain17_n14_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_DEREF variable -> value
xchain17_n11_α:
                        mov              rdi, qword ptr [rbp + 1328]
                        mov              rsi, qword ptr [rbp + 1336]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    xchain17_n5_α
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                                                                                        jmp   xchain17_n15_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_SUBSCRIPT x[i] variable
xchain17_n12_α:
                        mov              rdi, qword ptr [rbp + 1488]
                        mov              rsi, qword ptr [rbp + 1496]
                        mov              rdx, qword ptr [rbp + 1520]
                        mov              rcx, qword ptr [rbp + 1528]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain17_n9_α
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                                                                                        jmp   xchain17_n16_α
#-----------------------------------------------------------------------------------------------------------------------
xchain17_n13_α:
# BOX IR_CALL SNO$NAME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1856] -> [zr+1824]
                        mov              rax, qword ptr [rbp + 1856]
                        mov              qword ptr [rbp + 1824], rax
                        mov              rax, qword ptr [rbp + 1864]
                        mov              qword ptr [rbp + 1832], rax
                        .section         .rodata
.Lrkfn32:               .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn32]
                        lea              rsi, [rbp + 1824]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                        cmp              eax, 99
                                                                                        je    xchain17_n18_α
                                                                                        jmp   xchain17_n17_α
xchain17_n13_β:
                                                                                        jmp   xchain17_n18_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_SUBSCRIPT x[i] variable
xchain17_n14_α:
                        mov              rdi, qword ptr [rbp + 240]
                        mov              rsi, qword ptr [rbp + 248]
                        mov              rdx, qword ptr [rbp + 256]
                        mov              rcx, qword ptr [rbp + 264]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain17_n2_α
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   xchain17_n19_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain17_n15_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                                                                                        jmp   xchain17_n20_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_DEREF variable -> value
xchain17_n16_α:
                        mov              rdi, qword ptr [rbp + 1552]
                        mov              rsi, qword ptr [rbp + 1560]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    xchain17_n9_α
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                                                                                        jmp   xchain17_n21_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain17_n17_α:
                        mov              rax, qword ptr [rbp + 1808]
                        mov              rdx, qword ptr [rbp + 1816]
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                                                                                        jmp   xchain17_n18_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain17_n18_α:
                        mov              qword ptr [rbp + 16], 1
                        mov              rax, qword ptr [rip + .Lx37_0]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   xchain17_n22_α
.Lx37_0:
                        .quad            .Lx37_0_s
.Lx37_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
# IR_DEREF variable -> value
xchain17_n19_α:
                        mov              rdi, qword ptr [rbp + 288]
                        mov              rsi, qword ptr [rbp + 296]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    xchain17_n2_α
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   xchain17_n23_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_SUBSCRIPT x[i] variable
xchain17_n20_α:
                        mov              rdi, qword ptr [rbp + 1360]
                        mov              rsi, qword ptr [rbp + 1368]
                        mov              rdx, qword ptr [rbp + 1376]
                        mov              rcx, qword ptr [rbp + 1384]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain17_n5_α
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                                                                                        jmp   xchain17_n24_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain17_n21_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                                                                                        jmp   xchain17_n25_α
#-----------------------------------------------------------------------------------------------------------------------
xchain17_n22_α:
# BOX IR_CALL SNO$NRET(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+16] -> [zr+64]
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 72], rax
                        .section         .rodata
.Lrkfn42:               .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn42]
                        lea              rsi, [rbp + 64]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_add_tok_ω
                                                                                        jmp   proc_add_tok_γ
xchain17_n22_β:
                                                                                        jmp   proc_add_tok_ω
#-----------------------------------------------------------------------------------------------------------------------
xchain17_n23_α:
# BOX IR_CALL DIFFER(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+320] -> [zr+112]
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn44:               .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn44]
                        lea              rsi, [rbp + 112]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    xchain17_n2_α
                                                                                        jmp   xchain17_n26_α
xchain17_n23_β:
                                                                                        jmp   xchain17_n2_α
#-----------------------------------------------------------------------------------------------------------------------
xchain17_n24_α:
# BOX IR_CALL TABLE(...) -> rt_call_arr [operand-marshal, FAIL->ω]
                        .section         .rodata
.Lrkfn46:               .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn46]
                        lea              rsi, [rbp + 1456]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                        cmp              eax, 99
                                                                                        je    xchain17_n5_α
                                                                                        jmp   xchain17_n27_α
xchain17_n24_β:
                                                                                        jmp   xchain17_n5_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_SUBSCRIPT x[i] variable
xchain17_n25_α:
                        mov              rdi, qword ptr [rbp + 1584]
                        mov              rsi, qword ptr [rbp + 1592]
                        mov              rdx, qword ptr [rbp + 1600]
                        mov              rcx, qword ptr [rbp + 1608]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain17_n9_α
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                                                                                        jmp   xchain17_n28_α
#=======================================================================================================================
#                 DIFFER(mem[sentno][wrd][tag])                   :F(new_tag)
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain17_n26_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   xchain17_n29_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN_VAR
xchain17_n27_α:
                        mov              rdi, qword ptr [rbp + 1408]
                        mov              rsi, qword ptr [rbp + 1416]
                        mov              rdx, qword ptr [rbp + 1440]
                        mov              rcx, qword ptr [rbp + 1448]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain17_n5_α
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
                                                                                        jmp   xchain17_n5_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_DEREF variable -> value
xchain17_n28_α:
                        mov              rdi, qword ptr [rbp + 1632]
                        mov              rsi, qword ptr [rbp + 1640]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    xchain17_n9_α
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                                                                                        jmp   xchain17_n30_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain17_n29_α:
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   xchain17_n31_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain17_n30_α:
                        mov              rax, qword ptr [1879052512]
                        mov              rdx, qword ptr [1879052520]
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
                                                                                        jmp   xchain17_n32_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_SUBSCRIPT x[i] variable
xchain17_n31_α:
                        mov              rdi, qword ptr [rbp + 384]
                        mov              rsi, qword ptr [rbp + 392]
                        mov              rdx, qword ptr [rbp + 416]
                        mov              rcx, qword ptr [rbp + 424]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain17_n5_α
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   xchain17_n33_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_SUBSCRIPT x[i] variable
xchain17_n32_α:
                        mov              rdi, qword ptr [rbp + 1664]
                        mov              rsi, qword ptr [rbp + 1672]
                        mov              rdx, qword ptr [rbp + 1680]
                        mov              rcx, qword ptr [rbp + 1688]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain17_n9_α
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                                                                                        jmp   xchain17_n34_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_DEREF variable -> value
xchain17_n33_α:
                        mov              rdi, qword ptr [rbp + 448]
                        mov              rsi, qword ptr [rbp + 456]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    xchain17_n5_α
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   xchain17_n35_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain17_n34_α:
                        mov              qword ptr [rbp + 1744], 6
                        mov              rax, qword ptr [rip + .Lx56_0]
                        mov              qword ptr [rbp + 1752], rax
                                                                                        jmp   xchain17_n36_α
.Lx56_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain17_n35_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   xchain17_n37_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN_VAR
xchain17_n36_α:
                        mov              rdi, qword ptr [rbp + 1712]
                        mov              rsi, qword ptr [rbp + 1720]
                        mov              rdx, qword ptr [rbp + 1744]
                        mov              rcx, qword ptr [rbp + 1752]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain17_n9_α
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx
                                                                                        jmp   xchain17_n9_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_SUBSCRIPT x[i] variable
xchain17_n37_α:
                        mov              rdi, qword ptr [rbp + 480]
                        mov              rsi, qword ptr [rbp + 488]
                        mov              rdx, qword ptr [rbp + 496]
                        mov              rcx, qword ptr [rbp + 504]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain17_n5_α
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   xchain17_n38_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_DEREF variable -> value
xchain17_n38_α:
                        mov              rdi, qword ptr [rbp + 528]
                        mov              rsi, qword ptr [rbp + 536]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    xchain17_n5_α
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   xchain17_n39_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain17_n39_α:
                        mov              rax, qword ptr [1879052512]
                        mov              rdx, qword ptr [1879052520]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   xchain17_n40_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_SUBSCRIPT x[i] variable
xchain17_n40_α:
                        mov              rdi, qword ptr [rbp + 560]
                        mov              rsi, qword ptr [rbp + 568]
                        mov              rdx, qword ptr [rbp + 576]
                        mov              rcx, qword ptr [rbp + 584]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain17_n5_α
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   xchain17_n41_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_DEREF variable -> value
xchain17_n41_α:
                        mov              rdi, qword ptr [rbp + 608]
                        mov              rsi, qword ptr [rbp + 616]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    xchain17_n5_α
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   xchain17_n42_α
#-----------------------------------------------------------------------------------------------------------------------
xchain17_n42_α:
# BOX IR_CALL DIFFER(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+640] -> [zr+352]
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 360], rax
                        .section         .rodata
.Lrkfn65:               .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn65]
                        lea              rsi, [rbp + 352]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    xchain17_n5_α
                                                                                        jmp   xchain17_n43_α
xchain17_n42_β:
                                                                                        jmp   xchain17_n5_α
#=======================================================================================================================
#                 mem[sentno][wrd][tag]  =  mem[sentno][wrd][tag] + 1  :(done)
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain17_n43_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   xchain17_n44_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain17_n44_α:
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   xchain17_n45_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_SUBSCRIPT x[i] variable
xchain17_n45_α:
                        mov              rdi, qword ptr [rbp + 656]
                        mov              rsi, qword ptr [rbp + 664]
                        mov              rdx, qword ptr [rbp + 688]
                        mov              rcx, qword ptr [rbp + 696]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain17_n9_α
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   xchain17_n46_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_DEREF variable -> value
xchain17_n46_α:
                        mov              rdi, qword ptr [rbp + 720]
                        mov              rsi, qword ptr [rbp + 728]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    xchain17_n9_α
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   xchain17_n47_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain17_n47_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                                                                                        jmp   xchain17_n48_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_SUBSCRIPT x[i] variable
xchain17_n48_α:
                        mov              rdi, qword ptr [rbp + 752]
                        mov              rsi, qword ptr [rbp + 760]
                        mov              rdx, qword ptr [rbp + 768]
                        mov              rcx, qword ptr [rbp + 776]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain17_n9_α
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   xchain17_n49_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_DEREF variable -> value
xchain17_n49_α:
                        mov              rdi, qword ptr [rbp + 800]
                        mov              rsi, qword ptr [rbp + 808]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    xchain17_n9_α
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   xchain17_n50_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain17_n50_α:
                        mov              rax, qword ptr [1879052512]
                        mov              rdx, qword ptr [1879052520]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   xchain17_n51_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_SUBSCRIPT x[i] variable
xchain17_n51_α:
                        mov              rdi, qword ptr [rbp + 832]
                        mov              rsi, qword ptr [rbp + 840]
                        mov              rdx, qword ptr [rbp + 848]
                        mov              rcx, qword ptr [rbp + 856]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain17_n9_α
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   xchain17_n52_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain17_n52_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                                                                                        jmp   xchain17_n53_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain17_n53_α:
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                                                                                        jmp   xchain17_n54_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_SUBSCRIPT x[i] variable
xchain17_n54_α:
                        mov              rdi, qword ptr [rbp + 944]
                        mov              rsi, qword ptr [rbp + 952]
                        mov              rdx, qword ptr [rbp + 976]
                        mov              rcx, qword ptr [rbp + 984]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain17_n9_α
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   xchain17_n55_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_DEREF variable -> value
xchain17_n55_α:
                        mov              rdi, qword ptr [rbp + 1008]
                        mov              rsi, qword ptr [rbp + 1016]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    xchain17_n9_α
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   xchain17_n56_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain17_n56_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                                                                                        jmp   xchain17_n57_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_SUBSCRIPT x[i] variable
xchain17_n57_α:
                        mov              rdi, qword ptr [rbp + 1040]
                        mov              rsi, qword ptr [rbp + 1048]
                        mov              rdx, qword ptr [rbp + 1056]
                        mov              rcx, qword ptr [rbp + 1064]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain17_n9_α
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                                                                                        jmp   xchain17_n58_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_DEREF variable -> value
xchain17_n58_α:
                        mov              rdi, qword ptr [rbp + 1088]
                        mov              rsi, qword ptr [rbp + 1096]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    xchain17_n9_α
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   xchain17_n59_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain17_n59_α:
                        mov              rax, qword ptr [1879052512]
                        mov              rdx, qword ptr [1879052520]
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   xchain17_n60_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_SUBSCRIPT x[i] variable
xchain17_n60_α:
                        mov              rdi, qword ptr [rbp + 1120]
                        mov              rsi, qword ptr [rbp + 1128]
                        mov              rdx, qword ptr [rbp + 1136]
                        mov              rcx, qword ptr [rbp + 1144]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain17_n9_α
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                                                                                        jmp   xchain17_n61_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_DEREF variable -> value
xchain17_n61_α:
                        mov              rdi, qword ptr [rbp + 1168]
                        mov              rsi, qword ptr [rbp + 1176]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    xchain17_n9_α
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                                                                                        jmp   xchain17_n62_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain17_n62_α:
                        mov              qword ptr [rbp + 1216], 6
                        mov              rax, qword ptr [rip + .Lx85_0]
                        mov              qword ptr [rbp + 1224], rax
                                                                                        jmp   xchain17_n63_α
.Lx85_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
xchain17_n63_α:
# IR_BINOP_ARITH
                        mov              eax, dword ptr [rbp + 1200]
                        cmp              eax, 100
                                                                                        je    .Lx86_0
                        mov              eax, dword ptr [rbp + 1200]
                        cmp              eax, 6
                                                                                        jne   .Lx86_2
.Lx86_1:
                        mov              rax, qword ptr [rbp + 1208]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 912], 6
                        mov              qword ptr [rbp + 920], rax
                                                                                        jmp   xchain17_n64_α
.Lx86_0:
                        mov              rdi, qword ptr [rbp + 1200]
                        mov              rsi, qword ptr [rbp + 1208]
                        mov              rdx, qword ptr [rbp + 1216]
                        mov              rcx, qword ptr [rbp + 1224]
                        mov              r8d, 0
                        lea              r9, [rbp + 912]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   xchain17_n64_α
.Lx86_2:
                        mov              rdi, qword ptr [rbp + 1200]
                        mov              rsi, qword ptr [rbp + 1208]
                        mov              rdx, qword ptr [rbp + 1216]
                        mov              rcx, qword ptr [rbp + 1224]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    xchain17_n9_α
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                                                                                        jmp   xchain17_n64_α
xchain17_n63_β:
                                                                                        jmp   xchain17_n9_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN_VAR
xchain17_n64_α:
                        mov              rdi, qword ptr [rbp + 880]
                        mov              rsi, qword ptr [rbp + 888]
                        mov              rdx, qword ptr [rbp + 912]
                        mov              rcx, qword ptr [rbp + 920]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain17_n9_α
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                                                                                        jmp   xchain17_n9_α
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
                        mov              rax, [rbp + 1912]
                        lea              rsp, [rbp + 1936]
                        mov              rbp, [rbp + 1928]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_add_tok_ω:
                        mov              rax, [rbp + 1920]
                        lea              rsp, [rbp + 1936]
                        mov              rbp, [rbp + 1928]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pp_mem_α
proc_pp_mem_α:
                        .global          proc_pp_mem_α
                        .global          proc_pp_mem_β
                        .global          proc_pp_mem_γ
                        .global          proc_pp_mem_ω
                        sub              rsp, 7632
                        mov              [rsp + 7608], rcx
                        mov              [rsp + 7616], rdx
                        mov              [rsp + 7624], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 7584], 0
                        mov              qword ptr [rsp + 7592], rsp
proc_pp_mem_α_body:
#=======================================================================================================================
# pp_mem          ssk             =   SORT(mem)
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain88_n0_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   xchain88_n1_α
xchain88_n0_β:
                                                                                        jmp   xchain88_n2_α
#-----------------------------------------------------------------------------------------------------------------------
xchain88_n1_α:
# BOX CALL SORT(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [zr+160] -> [zr+128]
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
                                                                                        je    xchain88_n2_α
                                                                                        jmp   xchain88_n3_α
xchain88_n1_β:
                                                                                        jmp   xchain88_n2_α
#=======================================================================================================================
#                 si              =   0
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain88_n2_α:
                        mov              qword ptr [rbp + 208], 6
                        mov              rax, qword ptr [rip + .Lx91_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   xchain88_n4_α
xchain88_n2_β:
                                                                                        jmp   xchain88_n5_α
.Lx91_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain88_n3_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        mov              qword ptr [1879052352], rax
                        mov              qword ptr [1879052360], rdx
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   xchain88_n2_α
xchain88_n3_β:
                                                                                        jmp   xchain88_n2_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain88_n4_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   xchain88_n5_α
xchain88_n4_β:
                                                                                        jmp   xchain88_n5_α
#=======================================================================================================================
#                 ns              =   0
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain88_n5_α:
                        mov              qword ptr [rbp + 256], 6
                        mov              rax, qword ptr [rip + .Lx94_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   xchain88_n6_α
xchain88_n5_β:
                                                                                        jmp   xchain88_n7_α
.Lx94_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain88_n6_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        mov              qword ptr [1879052640], rax
                        mov              qword ptr [1879052648], rdx
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   xchain88_n7_α
xchain88_n6_β:
                                                                                        jmp   xchain88_n7_α
#=======================================================================================================================
# pm_cnt_loop     ns              =   ns + 1
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain88_n7_α:
                        mov              rax, qword ptr [1879052640]
                        mov              rdx, qword ptr [1879052648]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   xchain88_n8_α
xchain88_n7_β:
                                                                                        jmp   xchain88_n9_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain88_n8_α:
                        mov              qword ptr [rbp + 368], 6
                        mov              rax, qword ptr [rip + .Lx97_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   xchain88_n10_α
xchain88_n8_β:
                                                                                        jmp   xchain88_n9_α
.Lx97_0:
                        .quad            1
#=======================================================================================================================
#                 ssk[ns,1]                                       :S(pm_cnt_loop)
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain88_n9_α:
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   xchain88_n11_α
xchain88_n9_β:
                                                                                        jmp   xchain88_n12_α
#-----------------------------------------------------------------------------------------------------------------------
xchain88_n10_α:
# IR_BINOP_ARITH
                        mov              eax, dword ptr [rbp + 336]
                        cmp              eax, 100
                                                                                        je    .Lx99_0
                        mov              eax, dword ptr [rbp + 336]
                        cmp              eax, 6
                                                                                        jne   .Lx99_2
.Lx99_1:
                        mov              rax, qword ptr [rbp + 344]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 304], 6
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   xchain88_n13_α
.Lx99_0:
                        mov              rdi, qword ptr [rbp + 336]
                        mov              rsi, qword ptr [rbp + 344]
                        mov              rdx, qword ptr [rbp + 368]
                        mov              rcx, qword ptr [rbp + 376]
                        mov              r8d, 0
                        lea              r9, [rbp + 304]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   xchain88_n13_α
.Lx99_2:
                        mov              rdi, qword ptr [rbp + 336]
                        mov              rsi, qword ptr [rbp + 344]
                        mov              rdx, qword ptr [rbp + 368]
                        mov              rcx, qword ptr [rbp + 376]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    xchain88_n9_α
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   xchain88_n13_α
xchain88_n10_β:
                                                                                        jmp   xchain88_n9_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain88_n11_α:
                        mov              rax, qword ptr [1879052640]
                        mov              rdx, qword ptr [1879052648]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   xchain88_n14_α
xchain88_n11_β:
                                                                                        jmp   xchain88_n12_α
#=======================================================================================================================
#                 ns              =   ns - 1
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain88_n12_α:
                        mov              rax, qword ptr [1879052640]
                        mov              rdx, qword ptr [1879052648]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   xchain88_n15_α
xchain88_n12_β:
                                                                                        jmp   xchain88_n16_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain88_n13_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        mov              qword ptr [1879052640], rax
                        mov              qword ptr [1879052648], rdx
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   xchain88_n9_α
xchain88_n13_β:
                                                                                        jmp   xchain88_n9_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_SUBSCRIPT x[i] variable
xchain88_n14_α:
                        mov              rdi, qword ptr [rbp + 400]
                        mov              rsi, qword ptr [rbp + 408]
                        mov              rdx, qword ptr [rbp + 432]
                        mov              rcx, qword ptr [rbp + 440]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain88_n12_α
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   xchain88_n17_α
xchain88_n14_β:
                                                                                        jmp   xchain88_n12_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain88_n15_α:
                        mov              qword ptr [rbp + 656], 6
                        mov              rax, qword ptr [rip + .Lx104_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   xchain88_n18_α
xchain88_n15_β:
                                                                                        jmp   xchain88_n16_α
.Lx104_0:
                        .quad            1
#=======================================================================================================================
#                 si              =   0
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain88_n16_α:
                        mov              qword ptr [rbp + 704], 6
                        mov              rax, qword ptr [rip + .Lx105_0]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   xchain88_n19_α
xchain88_n16_β:
                                                                                        jmp   xchain88_n22_α
.Lx105_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain88_n17_α:
                        mov              qword ptr [rbp + 496], 6
                        mov              rax, qword ptr [rip + .Lx106_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   xchain88_n20_α
xchain88_n17_β:
                                                                                        jmp   xchain88_n12_α
.Lx106_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
xchain88_n18_α:
# IR_BINOP_ARITH
                        mov              eax, dword ptr [rbp + 624]
                        cmp              eax, 100
                                                                                        je    .Lx107_0
                        mov              eax, dword ptr [rbp + 624]
                        cmp              eax, 6
                                                                                        jne   .Lx107_2
.Lx107_1:
                        mov              rax, qword ptr [rbp + 632]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rbp + 592], 6
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   xchain88_n21_α
.Lx107_0:
                        mov              rdi, qword ptr [rbp + 624]
                        mov              rsi, qword ptr [rbp + 632]
                        mov              rdx, qword ptr [rbp + 656]
                        mov              rcx, qword ptr [rbp + 664]
                        mov              r8d, 1
                        lea              r9, [rbp + 592]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   xchain88_n21_α
.Lx107_2:
                        mov              rdi, qword ptr [rbp + 624]
                        mov              rsi, qword ptr [rbp + 632]
                        mov              rdx, qword ptr [rbp + 656]
                        mov              rcx, qword ptr [rbp + 664]
                        mov              r8d, 1
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    xchain88_n16_α
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   xchain88_n21_α
xchain88_n18_β:
                                                                                        jmp   xchain88_n16_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain88_n19_α:
                        mov              rax, qword ptr [rbp + 704]
                        mov              rdx, qword ptr [rbp + 712]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   xchain88_n22_α
xchain88_n19_β:
                                                                                        jmp   xchain88_n22_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_SUBSCRIPT x[i] variable
xchain88_n20_α:
                        mov              rdi, qword ptr [rbp + 464]
                        mov              rsi, qword ptr [rbp + 472]
                        mov              rdx, qword ptr [rbp + 496]
                        mov              rcx, qword ptr [rbp + 504]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain88_n12_α
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   xchain88_n23_α
xchain88_n20_β:
                                                                                        jmp   xchain88_n12_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain88_n21_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              rdx, qword ptr [rbp + 600]
                        mov              qword ptr [1879052640], rax
                        mov              qword ptr [1879052648], rdx
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   xchain88_n16_α
xchain88_n21_β:
                                                                                        jmp   xchain88_n16_α
#=======================================================================================================================
# pm_sent_loop    si              =   si + 1
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain88_n22_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   xchain88_n24_α
xchain88_n22_β:
                                                                                        jmp   xchain88_n25_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_DEREF variable -> value
xchain88_n23_α:
                        mov              rdi, qword ptr [rbp + 528]
                        mov              rsi, qword ptr [rbp + 536]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    xchain88_n12_α
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   xchain88_n7_α
xchain88_n23_β:
                                                                                        jmp   xchain88_n12_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain88_n24_α:
                        mov              qword ptr [rbp + 816], 6
                        mov              rax, qword ptr [rip + .Lx113_0]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   xchain88_n26_α
xchain88_n24_β:
                                                                                        jmp   xchain88_n25_α
.Lx113_0:
                        .quad            1
#=======================================================================================================================
#                 sentno          =   ssk[si,1]                   :F(pm_done)
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain88_n25_α:
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   xchain88_n27_α
xchain88_n25_β:
                                                                                        jmp   xchain88_n28_α
#-----------------------------------------------------------------------------------------------------------------------
xchain88_n26_α:
# IR_BINOP_ARITH
                        mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 100
                                                                                        je    .Lx115_0
                        mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 6
                                                                                        jne   .Lx115_2
.Lx115_1:
                        mov              rax, qword ptr [rbp + 792]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 752], 6
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   xchain88_n29_α
.Lx115_0:
                        mov              rdi, qword ptr [rbp + 784]
                        mov              rsi, qword ptr [rbp + 792]
                        mov              rdx, qword ptr [rbp + 816]
                        mov              rcx, qword ptr [rbp + 824]
                        mov              r8d, 0
                        lea              r9, [rbp + 752]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   xchain88_n29_α
.Lx115_2:
                        mov              rdi, qword ptr [rbp + 784]
                        mov              rsi, qword ptr [rbp + 792]
                        mov              rdx, qword ptr [rbp + 816]
                        mov              rcx, qword ptr [rbp + 824]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    xchain88_n25_α
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   xchain88_n29_α
xchain88_n26_β:
                                                                                        jmp   xchain88_n25_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain88_n27_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                                                                                        jmp   xchain88_n30_α
xchain88_n27_β:
                                                                                        jmp   xchain88_n28_α
#=======================================================================================================================
# pm_done         pp_mem          =   .dummy                      :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain88_n28_α:
                        mov              qword ptr [rbp + 7552], 1
                        mov              rax, qword ptr [rip + .Lx117_0]
                        mov              qword ptr [rbp + 7560], rax
                                                                                        jmp   xchain88_n31_α
xchain88_n28_β:
                                                                                        jmp   proc_pp_mem_γ
.Lx117_0:
                        .quad            .Lx117_0_s
.Lx117_0_s:
                        .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain88_n29_α:
                        mov              rax, qword ptr [rbp + 752]
                        mov              rdx, qword ptr [rbp + 760]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   xchain88_n25_α
xchain88_n29_β:
                                                                                        jmp   xchain88_n25_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_SUBSCRIPT x[i] variable
xchain88_n30_α:
                        mov              rdi, qword ptr [rbp + 864]
                        mov              rsi, qword ptr [rbp + 872]
                        mov              rdx, qword ptr [rbp + 896]
                        mov              rcx, qword ptr [rbp + 904]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain88_n28_α
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                                                                                        jmp   xchain88_n32_α
xchain88_n30_β:
                                                                                        jmp   xchain88_n28_α
#-----------------------------------------------------------------------------------------------------------------------
xchain88_n31_α:
# BOX IR_CALL SNO$NAME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7552] -> [zr+7520]
                        mov              rax, qword ptr [rbp + 7552]
                        mov              qword ptr [rbp + 7520], rax
                        mov              rax, qword ptr [rbp + 7560]
                        mov              qword ptr [rbp + 7528], rax
                        .section         .rodata
.Lrkfn121:              .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn121]
                        lea              rsi, [rbp + 7520]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 7504], rax
                        mov              qword ptr [rbp + 7512], rdx
                        cmp              eax, 99
                                                                                        je    proc_pp_mem_γ
                                                                                        jmp   xchain88_n33_α
xchain88_n31_β:
                                                                                        jmp   proc_pp_mem_γ
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain88_n32_α:
                        mov              qword ptr [rbp + 960], 6
                        mov              rax, qword ptr [rip + .Lx122_0]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   xchain88_n34_α
xchain88_n32_β:
                                                                                        jmp   xchain88_n28_α
.Lx122_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain88_n33_α:
                        mov              rax, qword ptr [rbp + 7504]
                        mov              rdx, qword ptr [rbp + 7512]
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                        mov              qword ptr [rbp + 7488], rax
                        mov              qword ptr [rbp + 7496], rdx
                                                                                        jmp   proc_pp_mem_γ
xchain88_n33_β:
                                                                                        jmp   proc_pp_mem_γ
#-----------------------------------------------------------------------------------------------------------------------
# IR_SUBSCRIPT x[i] variable
xchain88_n34_α:
                        mov              rdi, qword ptr [rbp + 928]
                        mov              rsi, qword ptr [rbp + 936]
                        mov              rdx, qword ptr [rbp + 960]
                        mov              rcx, qword ptr [rbp + 968]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain88_n28_α
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                                                                                        jmp   xchain88_n35_α
xchain88_n34_β:
                                                                                        jmp   xchain88_n28_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_DEREF variable -> value
xchain88_n35_α:
                        mov              rdi, qword ptr [rbp + 992]
                        mov              rsi, qword ptr [rbp + 1000]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    xchain88_n28_α
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                                                                                        jmp   xchain88_n36_α
xchain88_n35_β:
                                                                                        jmp   xchain88_n28_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain88_n36_α:
                        mov              rax, qword ptr [rbp + 1024]
                        mov              rdx, qword ptr [rbp + 1032]
                        mov              qword ptr [1879052384], rax
                        mov              qword ptr [1879052392], rdx
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   xchain88_n37_α
xchain88_n36_β:
                                                                                        jmp   xchain88_n28_α
#=======================================================================================================================
#                 last_sent       =   ''
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain88_n37_α:
                        mov              qword ptr [rbp + 1056], 1
                        mov              rax, qword ptr [rip + .Lx127_0]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   xchain88_n38_α
xchain88_n37_β:
                                                                                        jmp   xchain88_n39_α
.Lx127_0:
                        .quad            .Lx127_0_s
.Lx127_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain88_n38_α:
                        mov              rax, qword ptr [rbp + 1056]
                        mov              rdx, qword ptr [rbp + 1064]
                        mov              qword ptr [1879052608], rax
                        mov              qword ptr [1879052616], rdx
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   xchain88_n39_α
xchain88_n38_β:
                                                                                        jmp   xchain88_n39_α
#=======================================================================================================================
#                 last_sent       =   IDENT(si, ns) 1
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain88_n39_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                                                                                        jmp   xchain88_n40_α
xchain88_n39_β:
                                                                                        jmp   xchain88_n41_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain88_n40_α:
                        mov              rax, qword ptr [1879052640]
                        mov              rdx, qword ptr [1879052648]
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                                                                                        jmp   xchain88_n42_α
xchain88_n40_β:
                                                                                        jmp   xchain88_n41_α
#=======================================================================================================================
#                 pad             =   DUPL(' ', SIZE(sentno) + 4)
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain88_n41_α:
                        mov              qword ptr [rbp + 1376], 1
                        mov              rax, qword ptr [rip + .Lx131_0]
                        mov              qword ptr [rbp + 1384], rax
                                                                                        jmp   xchain88_n43_α
xchain88_n41_β:
                                                                                        jmp   xchain88_n46_α
.Lx131_0:
                        .quad            .Lx131_0_s
.Lx131_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
xchain88_n42_α:
# BOX IR_CALL IDENT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1200] -> [zr+1152]
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1160], rax
# marshal arg1 = producer-box slot [zr+1232] -> [zr+1168]
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1176], rax
                        .section         .rodata
.Lrkfn133:              .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn133]
                        lea              rsi, [rbp + 1152]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                        cmp              eax, 99
                                                                                        je    xchain88_n41_α
                                                                                        jmp   xchain88_n44_α
xchain88_n42_β:
                                                                                        jmp   xchain88_n41_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain88_n43_α:
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                                                                                        jmp   xchain88_n45_α
xchain88_n43_β:
                                                                                        jmp   xchain88_n46_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain88_n44_α:
                        mov              qword ptr [rbp + 1264], 6
                        mov              rax, qword ptr [rip + .Lx135_0]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   xchain88_n47_α
xchain88_n44_β:
                                                                                        jmp   xchain88_n41_α
.Lx135_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
xchain88_n45_α:
# BOX IR_CALL SIZE(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1488] -> [zr+1456]
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1464], rax
                        .section         .rodata
.Lrkfn137:              .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn137]
                        lea              rsi, [rbp + 1456]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                        cmp              eax, 99
                                                                                        je    xchain88_n46_α
                                                                                        jmp   xchain88_n48_α
xchain88_n45_β:
                                                                                        jmp   xchain88_n46_α
#=======================================================================================================================
#                 pfx             =   EQ(si, 1) '{' sentno ': {'
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain88_n46_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                                                                                        jmp   xchain88_n49_α
xchain88_n46_β:
                                                                                        jmp   xchain88_n50_α
#-----------------------------------------------------------------------------------------------------------------------
xchain88_n47_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 1136]
                        mov              rsi, qword ptr [rbp + 1144]
                        mov              rdx, qword ptr [rbp + 1264]
                        mov              rcx, qword ptr [rbp + 1272]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                                                                                        jmp   xchain88_n51_α
xchain88_n47_β:
                                                                                        jmp   xchain88_n41_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain88_n48_α:
                        mov              qword ptr [rbp + 1520], 6
                        mov              rax, qword ptr [rip + .Lx140_0]
                        mov              qword ptr [rbp + 1528], rax
                                                                                        jmp   xchain88_n52_α
xchain88_n48_β:
                                                                                        jmp   xchain88_n46_α
.Lx140_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain88_n49_α:
                        mov              qword ptr [rbp + 1760], 6
                        mov              rax, qword ptr [rip + .Lx141_0]
                        mov              qword ptr [rbp + 1768], rax
                                                                                        jmp   xchain88_n53_α
xchain88_n49_β:
                                                                                        jmp   xchain88_n50_α
.Lx141_0:
                        .quad            1
#=======================================================================================================================
#                 pfx             =   NE(si, 1) ' ' sentno ': {'
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain88_n50_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                                                                                        jmp   xchain88_n54_α
xchain88_n50_β:
                                                                                        jmp   xchain88_n55_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain88_n51_α:
                        mov              rax, qword ptr [rbp + 1104]
                        mov              rdx, qword ptr [rbp + 1112]
                        mov              qword ptr [1879052608], rax
                        mov              qword ptr [1879052616], rdx
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                                                                                        jmp   xchain88_n41_α
xchain88_n51_β:
                                                                                        jmp   xchain88_n41_α
#-----------------------------------------------------------------------------------------------------------------------
xchain88_n52_α:
# IR_BINOP_ARITH
                        mov              eax, dword ptr [rbp + 1440]
                        cmp              eax, 100
                                                                                        je    .Lx144_0
                        mov              eax, dword ptr [rbp + 1440]
                        cmp              eax, 6
                                                                                        jne   .Lx144_2
.Lx144_1:
                        mov              rax, qword ptr [rbp + 1448]
                        mov              rcx, 4
                        add              rax, rcx
                        mov              qword ptr [rbp + 1408], 6
                        mov              qword ptr [rbp + 1416], rax
                                                                                        jmp   xchain88_n56_α
.Lx144_0:
                        mov              rdi, qword ptr [rbp + 1440]
                        mov              rsi, qword ptr [rbp + 1448]
                        mov              rdx, qword ptr [rbp + 1520]
                        mov              rcx, qword ptr [rbp + 1528]
                        mov              r8d, 0
                        lea              r9, [rbp + 1408]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   xchain88_n56_α
.Lx144_2:
                        mov              rdi, qword ptr [rbp + 1440]
                        mov              rsi, qword ptr [rbp + 1448]
                        mov              rdx, qword ptr [rbp + 1520]
                        mov              rcx, qword ptr [rbp + 1528]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    xchain88_n46_α
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                                                                                        jmp   xchain88_n56_α
xchain88_n52_β:
                                                                                        jmp   xchain88_n46_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_COERCE_NUMERIC
xchain88_n53_α:
                        mov              eax, dword ptr [rbp + 1792]
                        cmp              eax, 7
                                                                                        je    .Lx146_1
                        cmp              eax, 6
                                                                                        jne   .Lx146_0
                        mov              eax, dword ptr [rbp + 1760]
                        cmp              eax, 6
                                                                                        jne   .Lx146_0
.Lx146_1:
                        mov              rax, qword ptr [rbp + 1792]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 1736], rax
                                                                                        jmp   xchain88_n57_α
.Lx146_0:
                        lea              rdi, [rbp + 1792]
                        lea              rsi, [rbp + 1760]
                        lea              rdx, [rbp + 1728]
                        mov              rcx, 101
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   xchain88_n57_α
xchain88_n53_β:
                                                                                        jmp   xchain88_n50_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain88_n54_α:
                        mov              qword ptr [rbp + 2128], 6
                        mov              rax, qword ptr [rip + .Lx147_0]
                        mov              qword ptr [rbp + 2136], rax
                                                                                        jmp   xchain88_n58_α
xchain88_n54_β:
                                                                                        jmp   xchain88_n55_α
.Lx147_0:
                        .quad            1
#=======================================================================================================================
#                 wsk             =   SORT(mem[sentno])
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain88_n55_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 2352], rax
                        mov              qword ptr [rbp + 2360], rdx
                                                                                        jmp   xchain88_n59_α
xchain88_n55_β:
                                                                                        jmp   xchain88_n60_α
#-----------------------------------------------------------------------------------------------------------------------
xchain88_n56_α:
# BOX IR_CALL DUPL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1376] -> [zr+1328]
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1336], rax
# marshal arg1 = producer-box slot [zr+1408] -> [zr+1344]
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 1352], rax
                        .section         .rodata
.Lrkfn150:              .string          "DUPL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn150]
                        lea              rsi, [rbp + 1328]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                        cmp              eax, 99
                                                                                        je    xchain88_n46_α
                                                                                        jmp   xchain88_n61_α
xchain88_n56_β:
                                                                                        jmp   xchain88_n46_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_COERCE_NUMERIC
xchain88_n57_α:
                        mov              eax, dword ptr [rbp + 1760]
                        cmp              eax, 7
                                                                                        je    .Lx152_1
                        cmp              eax, 6
                                                                                        jne   .Lx152_0
                        mov              eax, dword ptr [rbp + 1792]
                        cmp              eax, 6
                                                                                        jne   .Lx152_0
.Lx152_1:
                        mov              rax, qword ptr [rbp + 1760]
                        mov              qword ptr [rbp + 1696], rax
                        mov              rax, qword ptr [rbp + 1768]
                        mov              qword ptr [rbp + 1704], rax
                                                                                        jmp   xchain88_n62_α
.Lx152_0:
                        lea              rdi, [rbp + 1760]
                        lea              rsi, [rbp + 1792]
                        lea              rdx, [rbp + 1696]
                        mov              rcx, 102
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   xchain88_n62_α
xchain88_n57_β:
                                                                                        jmp   xchain88_n50_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_COERCE_NUMERIC
xchain88_n58_α:
                        mov              eax, dword ptr [rbp + 2160]
                        cmp              eax, 7
                                                                                        je    .Lx154_1
                        cmp              eax, 6
                                                                                        jne   .Lx154_0
                        mov              eax, dword ptr [rbp + 2128]
                        cmp              eax, 6
                                                                                        jne   .Lx154_0
.Lx154_1:
                        mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 2096], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 2104], rax
                                                                                        jmp   xchain88_n63_α
.Lx154_0:
                        lea              rdi, [rbp + 2160]
                        lea              rsi, [rbp + 2128]
                        lea              rdx, [rbp + 2096]
                        mov              rcx, 149
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   xchain88_n63_α
xchain88_n58_β:
                                                                                        jmp   xchain88_n55_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain88_n59_α:
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rbp + 2384], rax
                        mov              qword ptr [rbp + 2392], rdx
                                                                                        jmp   xchain88_n64_α
xchain88_n59_β:
                                                                                        jmp   xchain88_n60_α
#=======================================================================================================================
#                 wi              =   0
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain88_n60_α:
                        mov              qword ptr [rbp + 2480], 6
                        mov              rax, qword ptr [rip + .Lx156_0]
                        mov              qword ptr [rbp + 2488], rax
                                                                                        jmp   xchain88_n65_α
xchain88_n60_β:
                                                                                        jmp   xchain88_n69_α
.Lx156_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain88_n61_α:
                        mov              rax, qword ptr [rbp + 1312]
                        mov              rdx, qword ptr [rbp + 1320]
                        mov              qword ptr [1879052576], rax
                        mov              qword ptr [1879052584], rdx
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                                                                                        jmp   xchain88_n46_α
xchain88_n61_β:
                                                                                        jmp   xchain88_n46_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_CMP_TEST
xchain88_n62_α:
                        lea              rdi, [rbp + 1728]
                        lea              rsi, [rbp + 1696]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jne   xchain88_n50_α
                        mov              qword ptr [rbp + 1664], 0
                        mov              qword ptr [rbp + 1672], 0
                                                                                        jmp   xchain88_n66_α
xchain88_n62_β:
                                                                                        jmp   xchain88_n50_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_COERCE_NUMERIC
xchain88_n63_α:
                        mov              eax, dword ptr [rbp + 2128]
                        cmp              eax, 7
                                                                                        je    .Lx161_1
                        cmp              eax, 6
                                                                                        jne   .Lx161_0
                        mov              eax, dword ptr [rbp + 2160]
                        cmp              eax, 6
                                                                                        jne   .Lx161_0
.Lx161_1:
                        mov              rax, qword ptr [rbp + 2128]
                        mov              qword ptr [rbp + 2064], rax
                        mov              rax, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 2072], rax
                                                                                        jmp   xchain88_n67_α
.Lx161_0:
                        lea              rdi, [rbp + 2128]
                        lea              rsi, [rbp + 2160]
                        lea              rdx, [rbp + 2064]
                        mov              rcx, 150
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   xchain88_n67_α
xchain88_n63_β:
                                                                                        jmp   xchain88_n55_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_SUBSCRIPT x[i] variable
xchain88_n64_α:
                        mov              rdi, qword ptr [rbp + 2352]
                        mov              rsi, qword ptr [rbp + 2360]
                        mov              rdx, qword ptr [rbp + 2384]
                        mov              rcx, qword ptr [rbp + 2392]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain88_n60_α
                        mov              qword ptr [rbp + 2416], rax
                        mov              qword ptr [rbp + 2424], rdx
                                                                                        jmp   xchain88_n68_α
xchain88_n64_β:
                                                                                        jmp   xchain88_n60_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain88_n65_α:
                        mov              rax, qword ptr [rbp + 2480]
                        mov              rdx, qword ptr [rbp + 2488]
                        mov              qword ptr [1879052416], rax
                        mov              qword ptr [1879052424], rdx
                        mov              qword ptr [rbp + 2464], rax
                        mov              qword ptr [rbp + 2472], rdx
                                                                                        jmp   xchain88_n69_α
xchain88_n65_β:
                                                                                        jmp   xchain88_n69_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain88_n66_α:
                        mov              qword ptr [rbp + 1824], 1
                        mov              rax, qword ptr [rip + .Lx164_0]
                        mov              qword ptr [rbp + 1832], rax
                                                                                        jmp   xchain88_n70_α
xchain88_n66_β:
                                                                                        jmp   xchain88_n50_α
.Lx164_0:
                        .quad            .Lx164_0_s
.Lx164_0_s:
                        .string          "{"
#-----------------------------------------------------------------------------------------------------------------------
# IR_CMP_TEST
xchain88_n67_α:
                        lea              rdi, [rbp + 2096]
                        lea              rsi, [rbp + 2064]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        je    xchain88_n55_α
                        mov              qword ptr [rbp + 2032], 0
                        mov              qword ptr [rbp + 2040], 0
                                                                                        jmp   xchain88_n71_α
xchain88_n67_β:
                                                                                        jmp   xchain88_n55_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_DEREF variable -> value
xchain88_n68_α:
                        mov              rdi, qword ptr [rbp + 2416]
                        mov              rsi, qword ptr [rbp + 2424]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    xchain88_n60_α
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx
                                                                                        jmp   xchain88_n72_α
xchain88_n68_β:
                                                                                        jmp   xchain88_n60_α
#=======================================================================================================================
# pm_wrd_loop     wi              =   wi + 1
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain88_n69_α:
                        mov              rax, qword ptr [1879052416]
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rbp + 2560], rax
                        mov              qword ptr [rbp + 2568], rdx
                                                                                        jmp   xchain88_n73_α
xchain88_n69_β:
                                                                                        jmp   xchain88_n74_α
#-----------------------------------------------------------------------------------------------------------------------
xchain88_n70_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 1664]
                        mov              rsi, qword ptr [rbp + 1672]
                        mov              rdx, qword ptr [rbp + 1824]
                        mov              rcx, qword ptr [rbp + 1832]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                                                                                        jmp   xchain88_n75_α
xchain88_n70_β:
                                                                                        jmp   xchain88_n50_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain88_n71_α:
                        mov              qword ptr [rbp + 2192], 1
                        mov              rax, qword ptr [rip + .Lx170_0]
                        mov              qword ptr [rbp + 2200], rax
                                                                                        jmp   xchain88_n76_α
xchain88_n71_β:
                                                                                        jmp   xchain88_n55_α
.Lx170_0:
                        .quad            .Lx170_0_s
.Lx170_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
xchain88_n72_α:
# BOX CALL SORT(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [zr+2448] -> [zr+2320]
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
                                                                                        je    xchain88_n60_α
                                                                                        jmp   xchain88_n77_α
xchain88_n72_β:
                                                                                        jmp   xchain88_n60_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain88_n73_α:
                        mov              qword ptr [rbp + 2592], 6
                        mov              rax, qword ptr [rip + .Lx172_0]
                        mov              qword ptr [rbp + 2600], rax
                                                                                        jmp   xchain88_n78_α
xchain88_n73_β:
                                                                                        jmp   xchain88_n74_α
.Lx172_0:
                        .quad            1
#=======================================================================================================================
#                 wkey            =   wsk[wi,1]                   :F(pm_sent_loop)
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain88_n74_α:
                        mov              rax, qword ptr [1879052400]
                        mov              rdx, qword ptr [1879052408]
                        mov              qword ptr [rbp + 2640], rax
                        mov              qword ptr [rbp + 2648], rdx
                                                                                        jmp   xchain88_n79_α
xchain88_n74_β:
                                                                                        jmp   xchain88_n22_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain88_n75_α:
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx
                                                                                        jmp   xchain88_n80_α
xchain88_n75_β:
                                                                                        jmp   xchain88_n50_α
#-----------------------------------------------------------------------------------------------------------------------
xchain88_n76_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 2032]
                        mov              rsi, qword ptr [rbp + 2040]
                        mov              rdx, qword ptr [rbp + 2192]
                        mov              rcx, qword ptr [rbp + 2200]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx
                                                                                        jmp   xchain88_n81_α
xchain88_n76_β:
                                                                                        jmp   xchain88_n55_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain88_n77_α:
                        mov              rax, qword ptr [rbp + 2304]
                        mov              rdx, qword ptr [rbp + 2312]
                        mov              qword ptr [1879052400], rax
                        mov              qword ptr [1879052408], rdx
                        mov              qword ptr [rbp + 2288], rax
                        mov              qword ptr [rbp + 2296], rdx
                                                                                        jmp   xchain88_n60_α
xchain88_n77_β:
                                                                                        jmp   xchain88_n60_α
#-----------------------------------------------------------------------------------------------------------------------
xchain88_n78_α:
# IR_BINOP_ARITH
                        mov              eax, dword ptr [rbp + 2560]
                        cmp              eax, 100
                                                                                        je    .Lx177_0
                        mov              eax, dword ptr [rbp + 2560]
                        cmp              eax, 6
                                                                                        jne   .Lx177_2
.Lx177_1:
                        mov              rax, qword ptr [rbp + 2568]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 2528], 6
                        mov              qword ptr [rbp + 2536], rax
                                                                                        jmp   xchain88_n82_α
.Lx177_0:
                        mov              rdi, qword ptr [rbp + 2560]
                        mov              rsi, qword ptr [rbp + 2568]
                        mov              rdx, qword ptr [rbp + 2592]
                        mov              rcx, qword ptr [rbp + 2600]
                        mov              r8d, 0
                        lea              r9, [rbp + 2528]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   xchain88_n82_α
.Lx177_2:
                        mov              rdi, qword ptr [rbp + 2560]
                        mov              rsi, qword ptr [rbp + 2568]
                        mov              rdx, qword ptr [rbp + 2592]
                        mov              rcx, qword ptr [rbp + 2600]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    xchain88_n74_α
                        mov              qword ptr [rbp + 2528], rax
                        mov              qword ptr [rbp + 2536], rdx
                                                                                        jmp   xchain88_n82_α
xchain88_n78_β:
                                                                                        jmp   xchain88_n74_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain88_n79_α:
                        mov              rax, qword ptr [1879052416]
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rbp + 2672], rax
                        mov              qword ptr [rbp + 2680], rdx
                                                                                        jmp   xchain88_n83_α
xchain88_n79_β:
                                                                                        jmp   xchain88_n22_α
#-----------------------------------------------------------------------------------------------------------------------
xchain88_n80_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 1632]
                        mov              rsi, qword ptr [rbp + 1640]
                        mov              rdx, qword ptr [rbp + 1856]
                        mov              rcx, qword ptr [rbp + 1864]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                                                                                        jmp   xchain88_n84_α
xchain88_n80_β:
                                                                                        jmp   xchain88_n50_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain88_n81_α:
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rbp + 2224], rax
                        mov              qword ptr [rbp + 2232], rdx
                                                                                        jmp   xchain88_n85_α
xchain88_n81_β:
                                                                                        jmp   xchain88_n55_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain88_n82_α:
                        mov              rax, qword ptr [rbp + 2528]
                        mov              rdx, qword ptr [rbp + 2536]
                        mov              qword ptr [1879052416], rax
                        mov              qword ptr [1879052424], rdx
                        mov              qword ptr [rbp + 2512], rax
                        mov              qword ptr [rbp + 2520], rdx
                                                                                        jmp   xchain88_n74_α
xchain88_n82_β:
                                                                                        jmp   xchain88_n74_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_SUBSCRIPT x[i] variable
xchain88_n83_α:
                        mov              rdi, qword ptr [rbp + 2640]
                        mov              rsi, qword ptr [rbp + 2648]
                        mov              rdx, qword ptr [rbp + 2672]
                        mov              rcx, qword ptr [rbp + 2680]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain88_n22_α
                        mov              qword ptr [rbp + 2704], rax
                        mov              qword ptr [rbp + 2712], rdx
                                                                                        jmp   xchain88_n86_α
xchain88_n83_β:
                                                                                        jmp   xchain88_n22_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain88_n84_α:
                        mov              qword ptr [rbp + 1888], 1
                        mov              rax, qword ptr [rip + .Lx183_0]
                        mov              qword ptr [rbp + 1896], rax
                                                                                        jmp   xchain88_n87_α
xchain88_n84_β:
                                                                                        jmp   xchain88_n50_α
.Lx183_0:
                        .quad            .Lx183_0_s
.Lx183_0_s:
                        .string          ": {"
#-----------------------------------------------------------------------------------------------------------------------
xchain88_n85_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 2000]
                        mov              rsi, qword ptr [rbp + 2008]
                        mov              rdx, qword ptr [rbp + 2224]
                        mov              rcx, qword ptr [rbp + 2232]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx
                                                                                        jmp   xchain88_n88_α
xchain88_n85_β:
                                                                                        jmp   xchain88_n55_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain88_n86_α:
                        mov              qword ptr [rbp + 2736], 6
                        mov              rax, qword ptr [rip + .Lx185_0]
                        mov              qword ptr [rbp + 2744], rax
                                                                                        jmp   xchain88_n89_α
xchain88_n86_β:
                                                                                        jmp   xchain88_n22_α
.Lx185_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
xchain88_n87_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 1600]
                        mov              rsi, qword ptr [rbp + 1608]
                        mov              rdx, qword ptr [rbp + 1888]
                        mov              rcx, qword ptr [rbp + 1896]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                                                                                        jmp   xchain88_n90_α
xchain88_n87_β:
                                                                                        jmp   xchain88_n50_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain88_n88_α:
                        mov              qword ptr [rbp + 2256], 1
                        mov              rax, qword ptr [rip + .Lx187_0]
                        mov              qword ptr [rbp + 2264], rax
                                                                                        jmp   xchain88_n91_α
xchain88_n88_β:
                                                                                        jmp   xchain88_n55_α
.Lx187_0:
                        .quad            .Lx187_0_s
.Lx187_0_s:
                        .string          ": {"
#-----------------------------------------------------------------------------------------------------------------------
# IR_SUBSCRIPT x[i] variable
xchain88_n89_α:
                        mov              rdi, qword ptr [rbp + 2704]
                        mov              rsi, qword ptr [rbp + 2712]
                        mov              rdx, qword ptr [rbp + 2736]
                        mov              rcx, qword ptr [rbp + 2744]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain88_n22_α
                        mov              qword ptr [rbp + 2768], rax
                        mov              qword ptr [rbp + 2776], rdx
                                                                                        jmp   xchain88_n92_α
xchain88_n89_β:
                                                                                        jmp   xchain88_n22_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain88_n90_α:
                        mov              rax, qword ptr [rbp + 1568]
                        mov              rdx, qword ptr [rbp + 1576]
                        mov              qword ptr [1879052560], rax
                        mov              qword ptr [1879052568], rdx
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                                                                                        jmp   xchain88_n50_α
xchain88_n90_β:
                                                                                        jmp   xchain88_n50_α
#-----------------------------------------------------------------------------------------------------------------------
xchain88_n91_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 1968]
                        mov              rsi, qword ptr [rbp + 1976]
                        mov              rdx, qword ptr [rbp + 2256]
                        mov              rcx, qword ptr [rbp + 2264]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx
                                                                                        jmp   xchain88_n93_α
xchain88_n91_β:
                                                                                        jmp   xchain88_n55_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_DEREF variable -> value
xchain88_n92_α:
                        mov              rdi, qword ptr [rbp + 2768]
                        mov              rsi, qword ptr [rbp + 2776]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    xchain88_n22_α
                        mov              qword ptr [rbp + 2800], rax
                        mov              qword ptr [rbp + 2808], rdx
                                                                                        jmp   xchain88_n94_α
xchain88_n92_β:
                                                                                        jmp   xchain88_n22_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain88_n93_α:
                        mov              rax, qword ptr [rbp + 1936]
                        mov              rdx, qword ptr [rbp + 1944]
                        mov              qword ptr [1879052560], rax
                        mov              qword ptr [1879052568], rdx
                        mov              qword ptr [rbp + 1920], rax
                        mov              qword ptr [rbp + 1928], rdx
                                                                                        jmp   xchain88_n55_α
xchain88_n93_β:
                                                                                        jmp   xchain88_n55_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain88_n94_α:
                        mov              rax, qword ptr [rbp + 2800]
                        mov              rdx, qword ptr [rbp + 2808]
                        mov              qword ptr [1879052432], rax
                        mov              qword ptr [1879052440], rdx
                        mov              qword ptr [rbp + 2624], rax
                        mov              qword ptr [rbp + 2632], rdx
                                                                                        jmp   xchain88_n95_α
xchain88_n94_β:
                                                                                        jmp   xchain88_n22_α
#=======================================================================================================================
#                 next_wkey       =   ''
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain88_n95_α:
                        mov              qword ptr [rbp + 2832], 1
                        mov              rax, qword ptr [rip + .Lx194_0]
                        mov              qword ptr [rbp + 2840], rax
                                                                                        jmp   xchain88_n96_α
xchain88_n95_β:
                                                                                        jmp   xchain88_n97_α
.Lx194_0:
                        .quad            .Lx194_0_s
.Lx194_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain88_n96_α:
                        mov              rax, qword ptr [rbp + 2832]
                        mov              rdx, qword ptr [rbp + 2840]
                        mov              qword ptr [1879052592], rax
                        mov              qword ptr [1879052600], rdx
                        mov              qword ptr [rbp + 2816], rax
                        mov              qword ptr [rbp + 2824], rdx
                                                                                        jmp   xchain88_n97_α
xchain88_n96_β:
                                                                                        jmp   xchain88_n97_α
#=======================================================================================================================
#                 next_wkey       =   wsk[wi + 1,1]
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain88_n97_α:
                        mov              rax, qword ptr [1879052400]
                        mov              rdx, qword ptr [1879052408]
                        mov              qword ptr [rbp + 2880], rax
                        mov              qword ptr [rbp + 2888], rdx
                                                                                        jmp   xchain88_n98_α
xchain88_n97_β:
                                                                                        jmp   xchain88_n99_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain88_n98_α:
                        mov              rax, qword ptr [1879052416]
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rbp + 2944], rax
                        mov              qword ptr [rbp + 2952], rdx
                                                                                        jmp   xchain88_n100_α
xchain88_n98_β:
                                                                                        jmp   xchain88_n99_α
#=======================================================================================================================
#                 wrd             =   wkey
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain88_n99_α:
                        mov              rax, qword ptr [1879052432]
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rbp + 3136], rax
                        mov              qword ptr [rbp + 3144], rdx
                                                                                        jmp   xchain88_n101_α
xchain88_n99_β:
                                                                                        jmp   xchain88_n102_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain88_n100_α:
                        mov              qword ptr [rbp + 2976], 6
                        mov              rax, qword ptr [rip + .Lx199_0]
                        mov              qword ptr [rbp + 2984], rax
                                                                                        jmp   xchain88_n103_α
xchain88_n100_β:
                                                                                        jmp   xchain88_n99_α
.Lx199_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain88_n101_α:
                        mov              rax, qword ptr [rbp + 3136]
                        mov              rdx, qword ptr [rbp + 3144]
                        mov              qword ptr [1879052464], rax
                        mov              qword ptr [1879052472], rdx
                        mov              qword ptr [rbp + 3120], rax
                        mov              qword ptr [rbp + 3128], rdx
                                                                                        jmp   xchain88_n102_α
xchain88_n101_β:
                                                                                        jmp   xchain88_n102_α
#=======================================================================================================================
#                 wrd             ?   ARB "'"  =  ''              :F(pm_sq)
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain88_n102_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 3344], rax
                        mov              qword ptr [rbp + 3352], rdx
                                                                                        jmp   xchain88_n104_α
xchain88_n102_β:
                                                                                        jmp   xchain88_n105_α
#-----------------------------------------------------------------------------------------------------------------------
xchain88_n103_α:
# IR_BINOP_ARITH
                        mov              eax, dword ptr [rbp + 2944]
                        cmp              eax, 100
                                                                                        je    .Lx202_0
                        mov              eax, dword ptr [rbp + 2944]
                        cmp              eax, 6
                                                                                        jne   .Lx202_2
.Lx202_1:
                        mov              rax, qword ptr [rbp + 2952]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 2912], 6
                        mov              qword ptr [rbp + 2920], rax
                                                                                        jmp   xchain88_n106_α
.Lx202_0:
                        mov              rdi, qword ptr [rbp + 2944]
                        mov              rsi, qword ptr [rbp + 2952]
                        mov              rdx, qword ptr [rbp + 2976]
                        mov              rcx, qword ptr [rbp + 2984]
                        mov              r8d, 0
                        lea              r9, [rbp + 2912]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   xchain88_n106_α
.Lx202_2:
                        mov              rdi, qword ptr [rbp + 2944]
                        mov              rsi, qword ptr [rbp + 2952]
                        mov              rdx, qword ptr [rbp + 2976]
                        mov              rcx, qword ptr [rbp + 2984]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    xchain88_n99_α
                        mov              qword ptr [rbp + 2912], rax
                        mov              qword ptr [rbp + 2920], rdx
                                                                                        jmp   xchain88_n106_α
xchain88_n103_β:
                                                                                        jmp   xchain88_n99_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_HEAD
xchain88_n104_α:
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
.Lx204_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   xchain88_n107_α
xchain88_n104_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx204_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx204_1
                                                                                        jmp   .Lx204_0
.Lx204_1:
                        mov              rax, qword ptr [rsp + 8]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 16]
                        mov              r12, qword ptr [rbp + 3216]
                        mov              rbp, qword ptr [rbp + 3224]
                                                                                        jmp   xchain88_n105_α
#=======================================================================================================================
# pm_sq           wq              =   "'" wkey "'"
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain88_n105_α:
                        mov              qword ptr [rbp + 3632], 1
                        mov              rax, qword ptr [rip + .Lx205_0]
                        mov              qword ptr [rbp + 3640], rax
                                                                                        jmp   xchain88_n108_α
xchain88_n105_β:
                                                                                        jmp   xchain88_n114_α
.Lx205_0:
                        .quad            .Lx205_0_s
.Lx205_0_s:
                        .string          "'"
#-----------------------------------------------------------------------------------------------------------------------
# IR_SUBSCRIPT x[i] variable
xchain88_n106_α:
                        mov              rdi, qword ptr [rbp + 2880]
                        mov              rsi, qword ptr [rbp + 2888]
                        mov              rdx, qword ptr [rbp + 2912]
                        mov              rcx, qword ptr [rbp + 2920]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain88_n99_α
                        mov              qword ptr [rbp + 3008], rax
                        mov              qword ptr [rbp + 3016], rdx
                                                                                        jmp   xchain88_n109_α
xchain88_n106_β:
                                                                                        jmp   xchain88_n99_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
xchain88_n107_α:
                                                                                        jmp   xchain88_n111_α
xchain88_n107_as:
                                                                                        jmp   xchain88_n110_α
xchain88_n107_β:
                                                                                        jmp   xchain88_n112_β
xchain88_n107_af:
                                                                                        jmp   xchain88_n104_β
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain88_n108_α:
                        mov              rax, qword ptr [1879052432]
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rbp + 3664], rax
                        mov              qword ptr [rbp + 3672], rdx
                                                                                        jmp   xchain88_n113_α
xchain88_n108_β:
                                                                                        jmp   xchain88_n114_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain88_n109_α:
                        mov              qword ptr [rbp + 3040], 6
                        mov              rax, qword ptr [rip + .Lx210_0]
                        mov              qword ptr [rbp + 3048], rax
                                                                                        jmp   xchain88_n115_α
xchain88_n109_β:
                                                                                        jmp   xchain88_n99_α
.Lx210_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_RELEASE
xchain88_n110_α:
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
.Lx212_1:
                        test             rax, rax
                                                                                        je    .Lx212_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx212_3]
                        lea              rdx, [rip + .Lx212_4]
                                                                                        jmp   rax
.Lx212_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx212_1
.Lx212_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx212_1
.Lx212_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + 3216]
                                                                                        jmp   xchain88_n116_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_ARB
xchain88_n111_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], 0
                        mov              eax, r14d
                        mov              dword ptr [rsp + 4], eax
                                                                                        jmp   xchain88_n112_α
xchain88_n111_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 4]
                        add              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx214_0
                        mov              r14d, eax
                                                                                        jmp   xchain88_n112_α
.Lx214_0:
                        mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16
                                                                                        jmp   xchain88_n104_β
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_LIT
xchain88_n112_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    xchain88_n111_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 39
                                                                                        jne   xchain88_n111_β
                        add              r14d, 1
                                                                                        jmp   xchain88_n110_α
xchain88_n112_β:
                        sub              r14d, 1
                                                                                        jmp   xchain88_n111_β
#-----------------------------------------------------------------------------------------------------------------------
xchain88_n113_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 3632]
                        mov              rsi, qword ptr [rbp + 3640]
                        mov              rdx, qword ptr [rbp + 3664]
                        mov              rcx, qword ptr [rbp + 3672]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 3600], rax
                        mov              qword ptr [rbp + 3608], rdx
                                                                                        jmp   xchain88_n117_α
xchain88_n113_β:
                                                                                        jmp   xchain88_n114_α
#=======================================================================================================================
# pm_tdict        tsk             =   SORT(mem[sentno][wkey])
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain88_n114_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 3792], rax
                        mov              qword ptr [rbp + 3800], rdx
                                                                                        jmp   xchain88_n118_α
xchain88_n114_β:
                                                                                        jmp   xchain88_n119_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_SUBSCRIPT x[i] variable
xchain88_n115_α:
                        mov              rdi, qword ptr [rbp + 3008]
                        mov              rsi, qword ptr [rbp + 3016]
                        mov              rdx, qword ptr [rbp + 3040]
                        mov              rcx, qword ptr [rbp + 3048]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain88_n99_α
                        mov              qword ptr [rbp + 3072], rax
                        mov              qword ptr [rbp + 3080], rdx
                                                                                        jmp   xchain88_n120_α
xchain88_n115_β:
                                                                                        jmp   xchain88_n99_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain88_n116_α:
                        mov              qword ptr [rbp + 3248], 1
                        mov              rax, qword ptr [rip + .Lx220_0]
                        mov              qword ptr [rbp + 3256], rax
                                                                                        jmp   xchain88_n121_α
xchain88_n116_β:
                                                                                        jmp   xchain88_n105_α
.Lx220_0:
                        .quad            .Lx220_0_s
.Lx220_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain88_n117_α:
                        mov              qword ptr [rbp + 3696], 1
                        mov              rax, qword ptr [rip + .Lx221_0]
                        mov              qword ptr [rbp + 3704], rax
                                                                                        jmp   xchain88_n122_α
xchain88_n117_β:
                                                                                        jmp   xchain88_n114_α
.Lx221_0:
                        .quad            .Lx221_0_s
.Lx221_0_s:
                        .string          "'"
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain88_n118_α:
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rbp + 3824], rax
                        mov              qword ptr [rbp + 3832], rdx
                                                                                        jmp   xchain88_n123_α
xchain88_n118_β:
                                                                                        jmp   xchain88_n119_α
#=======================================================================================================================
#                 ti              =   0
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain88_n119_α:
                        mov              qword ptr [rbp + 4000], 6
                        mov              rax, qword ptr [rip + .Lx223_0]
                        mov              qword ptr [rbp + 4008], rax
                                                                                        jmp   xchain88_n124_α
xchain88_n119_β:
                                                                                        jmp   xchain88_n129_α
.Lx223_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
# IR_DEREF variable -> value
xchain88_n120_α:
                        mov              rdi, qword ptr [rbp + 3072]
                        mov              rsi, qword ptr [rbp + 3080]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    xchain88_n99_α
                        mov              qword ptr [rbp + 3104], rax
                        mov              qword ptr [rbp + 3112], rdx
                                                                                        jmp   xchain88_n125_α
xchain88_n120_β:
                                                                                        jmp   xchain88_n99_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_REPLACE
xchain88_n121_α:
                        mov              rdi, qword ptr [rip + .Lx226_0]
                        mov              rsi, qword ptr [rbp + 3344]
                        mov              rdx, qword ptr [rbp + 3352]
                        mov              ecx, dword ptr [rbp + 3184]
                        mov              r8, qword ptr [rbp + 3208]
                        lea              r9, [rbp + 3248]
                        call             rt_match_replace@PLT
                                                                                        jmp   .Lx226_1
.Lx226_0:
                        .quad            .Lx226_0_s
.Lx226_0_s:
                        .string          "wrd"
.Lx226_1:
                        mov              rbp, qword ptr [rbp + 3224]
                                                                                        jmp   xchain88_n126_α
#-----------------------------------------------------------------------------------------------------------------------
xchain88_n122_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 3600]
                        mov              rsi, qword ptr [rbp + 3608]
                        mov              rdx, qword ptr [rbp + 3696]
                        mov              rcx, qword ptr [rbp + 3704]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 3568], rax
                        mov              qword ptr [rbp + 3576], rdx
                                                                                        jmp   xchain88_n127_α
xchain88_n122_β:
                                                                                        jmp   xchain88_n114_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_SUBSCRIPT x[i] variable
xchain88_n123_α:
                        mov              rdi, qword ptr [rbp + 3792]
                        mov              rsi, qword ptr [rbp + 3800]
                        mov              rdx, qword ptr [rbp + 3824]
                        mov              rcx, qword ptr [rbp + 3832]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain88_n119_α
                        mov              qword ptr [rbp + 3856], rax
                        mov              qword ptr [rbp + 3864], rdx
                                                                                        jmp   xchain88_n128_α
xchain88_n123_β:
                                                                                        jmp   xchain88_n119_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain88_n124_α:
                        mov              rax, qword ptr [rbp + 4000]
                        mov              rdx, qword ptr [rbp + 4008]
                        mov              qword ptr [1879052496], rax
                        mov              qword ptr [1879052504], rdx
                        mov              qword ptr [rbp + 3984], rax
                        mov              qword ptr [rbp + 3992], rdx
                                                                                        jmp   xchain88_n129_α
xchain88_n124_β:
                                                                                        jmp   xchain88_n129_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain88_n125_α:
                        mov              rax, qword ptr [rbp + 3104]
                        mov              rdx, qword ptr [rbp + 3112]
                        mov              qword ptr [1879052592], rax
                        mov              qword ptr [1879052600], rdx
                        mov              qword ptr [rbp + 2864], rax
                        mov              qword ptr [rbp + 2872], rdx
                                                                                        jmp   xchain88_n99_α
xchain88_n125_β:
                                                                                        jmp   xchain88_n99_α
#=======================================================================================================================
#                 wq              =   '"' wkey '"'                :(pm_tdict)
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain88_n126_α:
                        mov              qword ptr [rbp + 3456], 1
                        mov              rax, qword ptr [rip + .Lx231_0]
                        mov              qword ptr [rbp + 3464], rax
                                                                                        jmp   xchain88_n130_α
xchain88_n126_β:
                                                                                        jmp   xchain88_n114_α
.Lx231_0:
                        .quad            .Lx231_0_s
.Lx231_0_s:
                        .string          "\""
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain88_n127_α:
                        mov              rax, qword ptr [rbp + 3568]
                        mov              rdx, qword ptr [rbp + 3576]
                        mov              qword ptr [1879052448], rax
                        mov              qword ptr [1879052456], rdx
                        mov              qword ptr [rbp + 3552], rax
                        mov              qword ptr [rbp + 3560], rdx
                                                                                        jmp   xchain88_n114_α
xchain88_n127_β:
                                                                                        jmp   xchain88_n114_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_DEREF variable -> value
xchain88_n128_α:
                        mov              rdi, qword ptr [rbp + 3856]
                        mov              rsi, qword ptr [rbp + 3864]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    xchain88_n119_α
                        mov              qword ptr [rbp + 3888], rax
                        mov              qword ptr [rbp + 3896], rdx
                                                                                        jmp   xchain88_n131_α
xchain88_n128_β:
                                                                                        jmp   xchain88_n119_α
#=======================================================================================================================
#                 tline           =   '{'
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain88_n129_α:
                        mov              qword ptr [rbp + 4048], 1
                        mov              rax, qword ptr [rip + .Lx234_0]
                        mov              qword ptr [rbp + 4056], rax
                                                                                        jmp   xchain88_n132_α
xchain88_n129_β:
                                                                                        jmp   xchain88_n135_α
.Lx234_0:
                        .quad            .Lx234_0_s
.Lx234_0_s:
                        .string          "{"
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain88_n130_α:
                        mov              rax, qword ptr [1879052432]
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rbp + 3488], rax
                        mov              qword ptr [rbp + 3496], rdx
                                                                                        jmp   xchain88_n133_α
xchain88_n130_β:
                                                                                        jmp   xchain88_n114_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain88_n131_α:
                        mov              rax, qword ptr [1879052432]
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rbp + 3904], rax
                        mov              qword ptr [rbp + 3912], rdx
                                                                                        jmp   xchain88_n134_α
xchain88_n131_β:
                                                                                        jmp   xchain88_n119_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain88_n132_α:
                        mov              rax, qword ptr [rbp + 4048]
                        mov              rdx, qword ptr [rbp + 4056]
                        mov              qword ptr [1879052544], rax
                        mov              qword ptr [1879052552], rdx
                        mov              qword ptr [rbp + 4032], rax
                        mov              qword ptr [rbp + 4040], rdx
                                                                                        jmp   xchain88_n135_α
xchain88_n132_β:
                                                                                        jmp   xchain88_n135_α
#-----------------------------------------------------------------------------------------------------------------------
xchain88_n133_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 3456]
                        mov              rsi, qword ptr [rbp + 3464]
                        mov              rdx, qword ptr [rbp + 3488]
                        mov              rcx, qword ptr [rbp + 3496]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 3424], rax
                        mov              qword ptr [rbp + 3432], rdx
                                                                                        jmp   xchain88_n136_α
xchain88_n133_β:
                                                                                        jmp   xchain88_n114_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_SUBSCRIPT x[i] variable
xchain88_n134_α:
                        mov              rdi, qword ptr [rbp + 3888]
                        mov              rsi, qword ptr [rbp + 3896]
                        mov              rdx, qword ptr [rbp + 3904]
                        mov              rcx, qword ptr [rbp + 3912]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain88_n119_α
                        mov              qword ptr [rbp + 3936], rax
                        mov              qword ptr [rbp + 3944], rdx
                                                                                        jmp   xchain88_n137_α
xchain88_n134_β:
                                                                                        jmp   xchain88_n119_α
#=======================================================================================================================
# pm_tag_loop     ti              =   ti + 1
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain88_n135_α:
                        mov              rax, qword ptr [1879052496]
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rbp + 4128], rax
                        mov              qword ptr [rbp + 4136], rdx
                                                                                        jmp   xchain88_n138_α
xchain88_n135_β:
                                                                                        jmp   xchain88_n139_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain88_n136_α:
                        mov              qword ptr [rbp + 3520], 1
                        mov              rax, qword ptr [rip + .Lx241_0]
                        mov              qword ptr [rbp + 3528], rax
                                                                                        jmp   xchain88_n140_α
xchain88_n136_β:
                                                                                        jmp   xchain88_n114_α
.Lx241_0:
                        .quad            .Lx241_0_s
.Lx241_0_s:
                        .string          "\""
#-----------------------------------------------------------------------------------------------------------------------
# IR_DEREF variable -> value
xchain88_n137_α:
                        mov              rdi, qword ptr [rbp + 3936]
                        mov              rsi, qword ptr [rbp + 3944]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    xchain88_n119_α
                        mov              qword ptr [rbp + 3968], rax
                        mov              qword ptr [rbp + 3976], rdx
                                                                                        jmp   xchain88_n141_α
xchain88_n137_β:
                                                                                        jmp   xchain88_n119_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain88_n138_α:
                        mov              qword ptr [rbp + 4160], 6
                        mov              rax, qword ptr [rip + .Lx243_0]
                        mov              qword ptr [rbp + 4168], rax
                                                                                        jmp   xchain88_n142_α
xchain88_n138_β:
                                                                                        jmp   xchain88_n139_α
.Lx243_0:
                        .quad            1
#=======================================================================================================================
#                 tag             =   tsk[ti,1]                   :F(pm_tag_close)
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain88_n139_α:
                        mov              rax, qword ptr [1879052480]
                        mov              rdx, qword ptr [1879052488]
                        mov              qword ptr [rbp + 4208], rax
                        mov              qword ptr [rbp + 4216], rdx
                                                                                        jmp   xchain88_n143_α
xchain88_n139_β:
                                                                                        jmp   xchain88_n144_α
#-----------------------------------------------------------------------------------------------------------------------
xchain88_n140_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 3424]
                        mov              rsi, qword ptr [rbp + 3432]
                        mov              rdx, qword ptr [rbp + 3520]
                        mov              rcx, qword ptr [rbp + 3528]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 3392], rax
                        mov              qword ptr [rbp + 3400], rdx
                                                                                        jmp   xchain88_n145_α
xchain88_n140_β:
                                                                                        jmp   xchain88_n114_α
#-----------------------------------------------------------------------------------------------------------------------
xchain88_n141_α:
# BOX CALL SORT(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [zr+3968] -> [zr+3760]
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
                                                                                        je    xchain88_n119_α
                                                                                        jmp   xchain88_n146_α
xchain88_n141_β:
                                                                                        jmp   xchain88_n119_α
#-----------------------------------------------------------------------------------------------------------------------
xchain88_n142_α:
# IR_BINOP_ARITH
                        mov              eax, dword ptr [rbp + 4128]
                        cmp              eax, 100
                                                                                        je    .Lx247_0
                        mov              eax, dword ptr [rbp + 4128]
                        cmp              eax, 6
                                                                                        jne   .Lx247_2
.Lx247_1:
                        mov              rax, qword ptr [rbp + 4136]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 4096], 6
                        mov              qword ptr [rbp + 4104], rax
                                                                                        jmp   xchain88_n147_α
.Lx247_0:
                        mov              rdi, qword ptr [rbp + 4128]
                        mov              rsi, qword ptr [rbp + 4136]
                        mov              rdx, qword ptr [rbp + 4160]
                        mov              rcx, qword ptr [rbp + 4168]
                        mov              r8d, 0
                        lea              r9, [rbp + 4096]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   xchain88_n147_α
.Lx247_2:
                        mov              rdi, qword ptr [rbp + 4128]
                        mov              rsi, qword ptr [rbp + 4136]
                        mov              rdx, qword ptr [rbp + 4160]
                        mov              rcx, qword ptr [rbp + 4168]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    xchain88_n139_α
                        mov              qword ptr [rbp + 4096], rax
                        mov              qword ptr [rbp + 4104], rdx
                                                                                        jmp   xchain88_n147_α
xchain88_n142_β:
                                                                                        jmp   xchain88_n139_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain88_n143_α:
                        mov              rax, qword ptr [1879052496]
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rbp + 4240], rax
                        mov              qword ptr [rbp + 4248], rdx
                                                                                        jmp   xchain88_n148_α
xchain88_n143_β:
                                                                                        jmp   xchain88_n144_α
#=======================================================================================================================
# pm_tag_close    tline           =   tline '}'
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain88_n144_α:
                        mov              rax, qword ptr [1879052544]
                        mov              rdx, qword ptr [1879052552]
                        mov              qword ptr [rbp + 5520], rax
                        mov              qword ptr [rbp + 5528], rdx
                                                                                        jmp   xchain88_n149_α
xchain88_n144_β:
                                                                                        jmp   xchain88_n150_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain88_n145_α:
                        mov              rax, qword ptr [rbp + 3392]
                        mov              rdx, qword ptr [rbp + 3400]
                        mov              qword ptr [1879052448], rax
                        mov              qword ptr [1879052456], rdx
                        mov              qword ptr [rbp + 3376], rax
                        mov              qword ptr [rbp + 3384], rdx
                                                                                        jmp   xchain88_n114_α
xchain88_n145_β:
                                                                                        jmp   xchain88_n114_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain88_n146_α:
                        mov              rax, qword ptr [rbp + 3744]
                        mov              rdx, qword ptr [rbp + 3752]
                        mov              qword ptr [1879052480], rax
                        mov              qword ptr [1879052488], rdx
                        mov              qword ptr [rbp + 3728], rax
                        mov              qword ptr [rbp + 3736], rdx
                                                                                        jmp   xchain88_n119_α
xchain88_n146_β:
                                                                                        jmp   xchain88_n119_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain88_n147_α:
                        mov              rax, qword ptr [rbp + 4096]
                        mov              rdx, qword ptr [rbp + 4104]
                        mov              qword ptr [1879052496], rax
                        mov              qword ptr [1879052504], rdx
                        mov              qword ptr [rbp + 4080], rax
                        mov              qword ptr [rbp + 4088], rdx
                                                                                        jmp   xchain88_n139_α
xchain88_n147_β:
                                                                                        jmp   xchain88_n139_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_SUBSCRIPT x[i] variable
xchain88_n148_α:
                        mov              rdi, qword ptr [rbp + 4208]
                        mov              rsi, qword ptr [rbp + 4216]
                        mov              rdx, qword ptr [rbp + 4240]
                        mov              rcx, qword ptr [rbp + 4248]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain88_n144_α
                        mov              qword ptr [rbp + 4272], rax
                        mov              qword ptr [rbp + 4280], rdx
                                                                                        jmp   xchain88_n151_α
xchain88_n148_β:
                                                                                        jmp   xchain88_n144_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain88_n149_α:
                        mov              qword ptr [rbp + 5552], 1
                        mov              rax, qword ptr [rip + .Lx254_0]
                        mov              qword ptr [rbp + 5560], rax
                                                                                        jmp   xchain88_n152_α
xchain88_n149_β:
                                                                                        jmp   xchain88_n150_α
.Lx254_0:
                        .quad            .Lx254_0_s
.Lx254_0_s:
                        .string          "}"
#=======================================================================================================================
#                 GT(SIZE(next_wkey), 0)                          :F(pm_last_wrd)
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain88_n150_α:
                        mov              rax, qword ptr [1879052592]
                        mov              rdx, qword ptr [1879052600]
                        mov              qword ptr [rbp + 5760], rax
                        mov              qword ptr [rbp + 5768], rdx
                                                                                        jmp   xchain88_n153_α
xchain88_n150_β:
                                                                                        jmp   xchain88_n154_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain88_n151_α:
                        mov              qword ptr [rbp + 4304], 6
                        mov              rax, qword ptr [rip + .Lx256_0]
                        mov              qword ptr [rbp + 4312], rax
                                                                                        jmp   xchain88_n155_α
xchain88_n151_β:
                                                                                        jmp   xchain88_n144_α
.Lx256_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
xchain88_n152_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 5520]
                        mov              rsi, qword ptr [rbp + 5528]
                        mov              rdx, qword ptr [rbp + 5552]
                        mov              rcx, qword ptr [rbp + 5560]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 5488], rax
                        mov              qword ptr [rbp + 5496], rdx
                                                                                        jmp   xchain88_n156_α
xchain88_n152_β:
                                                                                        jmp   xchain88_n150_α
#-----------------------------------------------------------------------------------------------------------------------
xchain88_n153_α:
# BOX IR_CALL SIZE(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5760] -> [zr+5728]
                        mov              rax, qword ptr [rbp + 5760]
                        mov              qword ptr [rbp + 5728], rax
                        mov              rax, qword ptr [rbp + 5768]
                        mov              qword ptr [rbp + 5736], rax
                        .section         .rodata
.Lrkfn259:              .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn259]
                        lea              rsi, [rbp + 5728]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5712], rax
                        mov              qword ptr [rbp + 5720], rdx
                        cmp              eax, 99
                                                                                        je    xchain88_n154_α
                                                                                        jmp   xchain88_n157_α
xchain88_n153_β:
                                                                                        jmp   xchain88_n154_α
#=======================================================================================================================
# pm_last_wrd     IDENT(wi, 1)                                    :F(pm_last_mid)
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain88_n154_α:
                        mov              rax, qword ptr [1879052416]
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rbp + 6592], rax
                        mov              qword ptr [rbp + 6600], rdx
                                                                                        jmp   xchain88_n158_α
xchain88_n154_β:
                                                                                        jmp   xchain88_n159_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_SUBSCRIPT x[i] variable
xchain88_n155_α:
                        mov              rdi, qword ptr [rbp + 4272]
                        mov              rsi, qword ptr [rbp + 4280]
                        mov              rdx, qword ptr [rbp + 4304]
                        mov              rcx, qword ptr [rbp + 4312]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain88_n144_α
                        mov              qword ptr [rbp + 4336], rax
                        mov              qword ptr [rbp + 4344], rdx
                                                                                        jmp   xchain88_n160_α
xchain88_n155_β:
                                                                                        jmp   xchain88_n144_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain88_n156_α:
                        mov              rax, qword ptr [rbp + 5488]
                        mov              rdx, qword ptr [rbp + 5496]
                        mov              qword ptr [1879052544], rax
                        mov              qword ptr [1879052552], rdx
                        mov              qword ptr [rbp + 5472], rax
                        mov              qword ptr [rbp + 5480], rdx
                                                                                        jmp   xchain88_n150_α
xchain88_n156_β:
                                                                                        jmp   xchain88_n150_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain88_n157_α:
                        mov              qword ptr [rbp + 5680], 6
                        mov              rax, qword ptr [rip + .Lx263_0]
                        mov              qword ptr [rbp + 5688], rax
                                                                                        jmp   xchain88_n161_α
xchain88_n157_β:
                                                                                        jmp   xchain88_n154_α
.Lx263_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain88_n158_α:
                        mov              qword ptr [rbp + 6624], 6
                        mov              rax, qword ptr [rip + .Lx264_0]
                        mov              qword ptr [rbp + 6632], rax
                                                                                        jmp   xchain88_n162_α
xchain88_n158_β:
                                                                                        jmp   xchain88_n159_α
.Lx264_0:
                        .quad            1
#=======================================================================================================================
# pm_last_mid     lline           =   pad wq ': ' tline
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain88_n159_α:
                        mov              rax, qword ptr [1879052576]
                        mov              rdx, qword ptr [1879052584]
                        mov              qword ptr [rbp + 7008], rax
                        mov              qword ptr [rbp + 7016], rdx
                                                                                        jmp   xchain88_n163_α
xchain88_n159_β:
                                                                                        jmp   xchain88_n164_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_DEREF variable -> value
xchain88_n160_α:
                        mov              rdi, qword ptr [rbp + 4336]
                        mov              rsi, qword ptr [rbp + 4344]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    xchain88_n144_α
                        mov              qword ptr [rbp + 4368], rax
                        mov              qword ptr [rbp + 4376], rdx
                                                                                        jmp   xchain88_n165_α
xchain88_n160_β:
                                                                                        jmp   xchain88_n144_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_COERCE_NUMERIC
xchain88_n161_α:
                        mov              eax, dword ptr [rbp + 5712]
                        cmp              eax, 7
                                                                                        je    .Lx268_1
                        cmp              eax, 6
                                                                                        jne   .Lx268_0
                        mov              eax, dword ptr [rbp + 5680]
                        cmp              eax, 6
                                                                                        jne   .Lx268_0
.Lx268_1:
                        mov              rax, qword ptr [rbp + 5712]
                        mov              qword ptr [rbp + 5648], rax
                        mov              rax, qword ptr [rbp + 5720]
                        mov              qword ptr [rbp + 5656], rax
                                                                                        jmp   xchain88_n166_α
.Lx268_0:
                        lea              rdi, [rbp + 5712]
                        lea              rsi, [rbp + 5680]
                        lea              rdx, [rbp + 5648]
                        mov              rcx, 111
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   xchain88_n166_α
xchain88_n161_β:
                                                                                        jmp   xchain88_n154_α
#-----------------------------------------------------------------------------------------------------------------------
xchain88_n162_α:
# BOX IR_CALL IDENT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6592] -> [zr+6544]
                        mov              rax, qword ptr [rbp + 6592]
                        mov              qword ptr [rbp + 6544], rax
                        mov              rax, qword ptr [rbp + 6600]
                        mov              qword ptr [rbp + 6552], rax
# marshal arg1 = producer-box slot [zr+6624] -> [zr+6560]
                        mov              rax, qword ptr [rbp + 6624]
                        mov              qword ptr [rbp + 6560], rax
                        mov              rax, qword ptr [rbp + 6632]
                        mov              qword ptr [rbp + 6568], rax
                        .section         .rodata
.Lrkfn270:              .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn270]
                        lea              rsi, [rbp + 6544]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 6528], rax
                        mov              qword ptr [rbp + 6536], rdx
                        cmp              eax, 99
                                                                                        je    xchain88_n159_α
                                                                                        jmp   xchain88_n167_α
xchain88_n162_β:
                                                                                        jmp   xchain88_n159_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain88_n163_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 7040], rax
                        mov              qword ptr [rbp + 7048], rdx
                                                                                        jmp   xchain88_n168_α
xchain88_n163_β:
                                                                                        jmp   xchain88_n164_α
#=======================================================================================================================
# pm_last_emit    IDENT(last_sent, 1)                             :F(pm_last_mid2)
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain88_n164_α:
                        mov              rax, qword ptr [1879052608]
                        mov              rdx, qword ptr [1879052616]
                        mov              qword ptr [rbp + 7200], rax
                        mov              qword ptr [rbp + 7208], rdx
                                                                                        jmp   xchain88_n169_α
xchain88_n164_β:
                                                                                        jmp   xchain88_n170_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain88_n165_α:
                        mov              rax, qword ptr [rbp + 4368]
                        mov              rdx, qword ptr [rbp + 4376]
                        mov              qword ptr [1879052512], rax
                        mov              qword ptr [1879052520], rdx
                        mov              qword ptr [rbp + 4192], rax
                        mov              qword ptr [rbp + 4200], rdx
                                                                                        jmp   xchain88_n171_α
xchain88_n165_β:
                                                                                        jmp   xchain88_n144_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_COERCE_NUMERIC
xchain88_n166_α:
                        mov              eax, dword ptr [rbp + 5680]
                        cmp              eax, 7
                                                                                        je    .Lx275_1
                        cmp              eax, 6
                                                                                        jne   .Lx275_0
                        mov              eax, dword ptr [rbp + 5712]
                        cmp              eax, 6
                                                                                        jne   .Lx275_0
.Lx275_1:
                        mov              rax, qword ptr [rbp + 5680]
                        mov              qword ptr [rbp + 5616], rax
                        mov              rax, qword ptr [rbp + 5688]
                        mov              qword ptr [rbp + 5624], rax
                                                                                        jmp   xchain88_n172_α
.Lx275_0:
                        lea              rdi, [rbp + 5680]
                        lea              rsi, [rbp + 5712]
                        lea              rdx, [rbp + 5616]
                        mov              rcx, 112
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   xchain88_n172_α
xchain88_n166_β:
                                                                                        jmp   xchain88_n154_α
#=======================================================================================================================
#                 lline           =   pfx wq ': ' tline           :(pm_last_emit)
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain88_n167_α:
                        mov              rax, qword ptr [1879052560]
                        mov              rdx, qword ptr [1879052568]
                        mov              qword ptr [rbp + 6768], rax
                        mov              qword ptr [rbp + 6776], rdx
                                                                                        jmp   xchain88_n173_α
xchain88_n167_β:
                                                                                        jmp   xchain88_n164_α
#-----------------------------------------------------------------------------------------------------------------------
xchain88_n168_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 7008]
                        mov              rsi, qword ptr [rbp + 7016]
                        mov              rdx, qword ptr [rbp + 7040]
                        mov              rcx, qword ptr [rbp + 7048]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 6976], rax
                        mov              qword ptr [rbp + 6984], rdx
                                                                                        jmp   xchain88_n174_α
xchain88_n168_β:
                                                                                        jmp   xchain88_n164_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain88_n169_α:
                        mov              qword ptr [rbp + 7232], 6
                        mov              rax, qword ptr [rip + .Lx278_0]
                        mov              qword ptr [rbp + 7240], rax
                                                                                        jmp   xchain88_n175_α
xchain88_n169_β:
                                                                                        jmp   xchain88_n170_α
.Lx278_0:
                        .quad            1
#=======================================================================================================================
# pm_last_mid2    OUTPUT          =   lline '},'                  :(pm_sent_loop)
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain88_n170_α:
                        mov              rax, qword ptr [1879052624]
                        mov              rdx, qword ptr [1879052632]
                        mov              qword ptr [rbp + 7424], rax
                        mov              qword ptr [rbp + 7432], rdx
                                                                                        jmp   xchain88_n176_α
xchain88_n170_β:
                                                                                        jmp   xchain88_n22_α
#=======================================================================================================================
#                 tv              =   mem[sentno][wkey][tag]
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain88_n171_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 4400], rax
                        mov              qword ptr [rbp + 4408], rdx
                                                                                        jmp   xchain88_n177_α
xchain88_n171_β:
                                                                                        jmp   xchain88_n178_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_CMP_TEST
xchain88_n172_α:
                        lea              rdi, [rbp + 5648]
                        lea              rsi, [rbp + 5616]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jle   xchain88_n154_α
                        mov              qword ptr [rbp + 5584], 0
                        mov              qword ptr [rbp + 5592], 0
                                                                                        jmp   xchain88_n179_α
xchain88_n172_β:
                                                                                        jmp   xchain88_n154_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain88_n173_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 6800], rax
                        mov              qword ptr [rbp + 6808], rdx
                                                                                        jmp   xchain88_n180_α
xchain88_n173_β:
                                                                                        jmp   xchain88_n164_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain88_n174_α:
                        mov              qword ptr [rbp + 7072], 1
                        mov              rax, qword ptr [rip + .Lx284_0]
                        mov              qword ptr [rbp + 7080], rax
                                                                                        jmp   xchain88_n181_α
xchain88_n174_β:
                                                                                        jmp   xchain88_n164_α
.Lx284_0:
                        .quad            .Lx284_0_s
.Lx284_0_s:
                        .string          ": "
#-----------------------------------------------------------------------------------------------------------------------
xchain88_n175_α:
# BOX IR_CALL IDENT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7200] -> [zr+7152]
                        mov              rax, qword ptr [rbp + 7200]
                        mov              qword ptr [rbp + 7152], rax
                        mov              rax, qword ptr [rbp + 7208]
                        mov              qword ptr [rbp + 7160], rax
# marshal arg1 = producer-box slot [zr+7232] -> [zr+7168]
                        mov              rax, qword ptr [rbp + 7232]
                        mov              qword ptr [rbp + 7168], rax
                        mov              rax, qword ptr [rbp + 7240]
                        mov              qword ptr [rbp + 7176], rax
                        .section         .rodata
.Lrkfn286:              .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn286]
                        lea              rsi, [rbp + 7152]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 7136], rax
                        mov              qword ptr [rbp + 7144], rdx
                        cmp              eax, 99
                                                                                        je    xchain88_n170_α
                                                                                        jmp   xchain88_n182_α
xchain88_n175_β:
                                                                                        jmp   xchain88_n170_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain88_n176_α:
                        mov              qword ptr [rbp + 7456], 1
                        mov              rax, qword ptr [rip + .Lx287_0]
                        mov              qword ptr [rbp + 7464], rax
                                                                                        jmp   xchain88_n183_α
xchain88_n176_β:
                                                                                        jmp   xchain88_n22_α
.Lx287_0:
                        .quad            .Lx287_0_s
.Lx287_0_s:
                        .string          "},"
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain88_n177_α:
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rbp + 4432], rax
                        mov              qword ptr [rbp + 4440], rdx
                                                                                        jmp   xchain88_n184_α
xchain88_n177_β:
                                                                                        jmp   xchain88_n178_α
#=======================================================================================================================
#                 IDENT(tline, '{')                               :F(pm_tag_sep)
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain88_n178_α:
                        mov              rax, qword ptr [1879052544]
                        mov              rdx, qword ptr [1879052552]
                        mov              qword ptr [rbp + 4736], rax
                        mov              qword ptr [rbp + 4744], rdx
                                                                                        jmp   xchain88_n185_α
xchain88_n178_β:
                                                                                        jmp   xchain88_n186_α
#=======================================================================================================================
#                 IDENT(wi, 1)                                    :F(pm_mid_wrd)
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain88_n179_α:
                        mov              rax, qword ptr [1879052416]
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rbp + 5856], rax
                        mov              qword ptr [rbp + 5864], rdx
                                                                                        jmp   xchain88_n187_α
xchain88_n179_β:
                                                                                        jmp   xchain88_n188_α
#-----------------------------------------------------------------------------------------------------------------------
xchain88_n180_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 6768]
                        mov              rsi, qword ptr [rbp + 6776]
                        mov              rdx, qword ptr [rbp + 6800]
                        mov              rcx, qword ptr [rbp + 6808]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 6736], rax
                        mov              qword ptr [rbp + 6744], rdx
                                                                                        jmp   xchain88_n189_α
xchain88_n180_β:
                                                                                        jmp   xchain88_n164_α
#-----------------------------------------------------------------------------------------------------------------------
xchain88_n181_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 6976]
                        mov              rsi, qword ptr [rbp + 6984]
                        mov              rdx, qword ptr [rbp + 7072]
                        mov              rcx, qword ptr [rbp + 7080]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 6944], rax
                        mov              qword ptr [rbp + 6952], rdx
                                                                                        jmp   xchain88_n190_α
xchain88_n181_β:
                                                                                        jmp   xchain88_n164_α
#=======================================================================================================================
#                 OUTPUT          =   lline '}}'                  :(pm_sent_loop)
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain88_n182_α:
                        mov              rax, qword ptr [1879052624]
                        mov              rdx, qword ptr [1879052632]
                        mov              qword ptr [rbp + 7312], rax
                        mov              qword ptr [rbp + 7320], rdx
                                                                                        jmp   xchain88_n191_α
xchain88_n182_β:
                                                                                        jmp   xchain88_n22_α
#-----------------------------------------------------------------------------------------------------------------------
xchain88_n183_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 7424]
                        mov              rsi, qword ptr [rbp + 7432]
                        mov              rdx, qword ptr [rbp + 7456]
                        mov              rcx, qword ptr [rbp + 7464]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 7392], rax
                        mov              qword ptr [rbp + 7400], rdx
                                                                                        jmp   xchain88_n192_α
xchain88_n183_β:
                                                                                        jmp   xchain88_n22_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_SUBSCRIPT x[i] variable
xchain88_n184_α:
                        mov              rdi, qword ptr [rbp + 4400]
                        mov              rsi, qword ptr [rbp + 4408]
                        mov              rdx, qword ptr [rbp + 4432]
                        mov              rcx, qword ptr [rbp + 4440]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain88_n178_α
                        mov              qword ptr [rbp + 4464], rax
                        mov              qword ptr [rbp + 4472], rdx
                                                                                        jmp   xchain88_n193_α
xchain88_n184_β:
                                                                                        jmp   xchain88_n178_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain88_n185_α:
                        mov              qword ptr [rbp + 4768], 1
                        mov              rax, qword ptr [rip + .Lx296_0]
                        mov              qword ptr [rbp + 4776], rax
                                                                                        jmp   xchain88_n194_α
xchain88_n185_β:
                                                                                        jmp   xchain88_n186_α
.Lx296_0:
                        .quad            .Lx296_0_s
.Lx296_0_s:
                        .string          "{"
#=======================================================================================================================
# pm_tag_sep      tline           =   tline ', ' "'" tag "': " tv :(pm_tag_loop)
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain88_n186_α:
                        mov              rax, qword ptr [1879052544]
                        mov              rdx, qword ptr [1879052552]
                        mov              qword ptr [rbp + 5280], rax
                        mov              qword ptr [rbp + 5288], rdx
                                                                                        jmp   xchain88_n195_α
xchain88_n186_β:
                                                                                        jmp   xchain88_n135_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain88_n187_α:
                        mov              qword ptr [rbp + 5888], 6
                        mov              rax, qword ptr [rip + .Lx298_0]
                        mov              qword ptr [rbp + 5896], rax
                                                                                        jmp   xchain88_n196_α
xchain88_n187_β:
                                                                                        jmp   xchain88_n188_α
.Lx298_0:
                        .quad            1
#=======================================================================================================================
# pm_mid_wrd      OUTPUT          =   pad wq ': ' tline ','       :(pm_wrd_loop)
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain88_n188_α:
                        mov              rax, qword ptr [1879052576]
                        mov              rdx, qword ptr [1879052584]
                        mov              qword ptr [rbp + 6368], rax
                        mov              qword ptr [rbp + 6376], rdx
                                                                                        jmp   xchain88_n197_α
xchain88_n188_β:
                                                                                        jmp   xchain88_n69_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain88_n189_α:
                        mov              qword ptr [rbp + 6832], 1
                        mov              rax, qword ptr [rip + .Lx300_0]
                        mov              qword ptr [rbp + 6840], rax
                                                                                        jmp   xchain88_n198_α
xchain88_n189_β:
                                                                                        jmp   xchain88_n164_α
.Lx300_0:
                        .quad            .Lx300_0_s
.Lx300_0_s:
                        .string          ": "
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain88_n190_α:
                        mov              rax, qword ptr [1879052544]
                        mov              rdx, qword ptr [1879052552]
                        mov              qword ptr [rbp + 7104], rax
                        mov              qword ptr [rbp + 7112], rdx
                                                                                        jmp   xchain88_n199_α
xchain88_n190_β:
                                                                                        jmp   xchain88_n164_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain88_n191_α:
                        mov              qword ptr [rbp + 7344], 1
                        mov              rax, qword ptr [rip + .Lx302_0]
                        mov              qword ptr [rbp + 7352], rax
                                                                                        jmp   xchain88_n200_α
xchain88_n191_β:
                                                                                        jmp   xchain88_n22_α
.Lx302_0:
                        .quad            .Lx302_0_s
.Lx302_0_s:
                        .string          "}}"
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN global
xchain88_n192_α:
                        mov              rsi, qword ptr [rbp + 7392]
                        mov              rdx, qword ptr [rbp + 7400]
                        mov              rdi, qword ptr [rip + .Lx303_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 7376], rax
                        mov              qword ptr [rbp + 7384], rdx
                                                                                        jmp   xchain88_n22_α
xchain88_n192_β:
                                                                                        jmp   xchain88_n22_α
.Lx303_0:
                        .quad            .Lx303_0_s
.Lx303_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
# IR_DEREF variable -> value
xchain88_n193_α:
                        mov              rdi, qword ptr [rbp + 4464]
                        mov              rsi, qword ptr [rbp + 4472]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    xchain88_n178_α
                        mov              qword ptr [rbp + 4496], rax
                        mov              qword ptr [rbp + 4504], rdx
                                                                                        jmp   xchain88_n201_α
xchain88_n193_β:
                                                                                        jmp   xchain88_n178_α
#-----------------------------------------------------------------------------------------------------------------------
xchain88_n194_α:
# BOX IR_CALL IDENT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4736] -> [zr+4688]
                        mov              rax, qword ptr [rbp + 4736]
                        mov              qword ptr [rbp + 4688], rax
                        mov              rax, qword ptr [rbp + 4744]
                        mov              qword ptr [rbp + 4696], rax
# marshal arg1 = producer-box slot [zr+4768] -> [zr+4704]
                        mov              rax, qword ptr [rbp + 4768]
                        mov              qword ptr [rbp + 4704], rax
                        mov              rax, qword ptr [rbp + 4776]
                        mov              qword ptr [rbp + 4712], rax
                        .section         .rodata
.Lrkfn306:              .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn306]
                        lea              rsi, [rbp + 4688]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4672], rax
                        mov              qword ptr [rbp + 4680], rdx
                        cmp              eax, 99
                                                                                        je    xchain88_n186_α
                                                                                        jmp   xchain88_n202_α
xchain88_n194_β:
                                                                                        jmp   xchain88_n186_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain88_n195_α:
                        mov              qword ptr [rbp + 5312], 1
                        mov              rax, qword ptr [rip + .Lx307_0]
                        mov              qword ptr [rbp + 5320], rax
                                                                                        jmp   xchain88_n203_α
xchain88_n195_β:
                                                                                        jmp   xchain88_n135_α
.Lx307_0:
                        .quad            .Lx307_0_s
.Lx307_0_s:
                        .string          ", "
#-----------------------------------------------------------------------------------------------------------------------
xchain88_n196_α:
# BOX IR_CALL IDENT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5856] -> [zr+5808]
                        mov              rax, qword ptr [rbp + 5856]
                        mov              qword ptr [rbp + 5808], rax
                        mov              rax, qword ptr [rbp + 5864]
                        mov              qword ptr [rbp + 5816], rax
# marshal arg1 = producer-box slot [zr+5888] -> [zr+5824]
                        mov              rax, qword ptr [rbp + 5888]
                        mov              qword ptr [rbp + 5824], rax
                        mov              rax, qword ptr [rbp + 5896]
                        mov              qword ptr [rbp + 5832], rax
                        .section         .rodata
.Lrkfn309:              .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn309]
                        lea              rsi, [rbp + 5808]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5792], rax
                        mov              qword ptr [rbp + 5800], rdx
                        cmp              eax, 99
                                                                                        je    xchain88_n188_α
                                                                                        jmp   xchain88_n204_α
xchain88_n196_β:
                                                                                        jmp   xchain88_n188_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain88_n197_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 6400], rax
                        mov              qword ptr [rbp + 6408], rdx
                                                                                        jmp   xchain88_n205_α
xchain88_n197_β:
                                                                                        jmp   xchain88_n69_α
#-----------------------------------------------------------------------------------------------------------------------
xchain88_n198_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 6736]
                        mov              rsi, qword ptr [rbp + 6744]
                        mov              rdx, qword ptr [rbp + 6832]
                        mov              rcx, qword ptr [rbp + 6840]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 6704], rax
                        mov              qword ptr [rbp + 6712], rdx
                                                                                        jmp   xchain88_n206_α
xchain88_n198_β:
                                                                                        jmp   xchain88_n164_α
#-----------------------------------------------------------------------------------------------------------------------
xchain88_n199_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 6944]
                        mov              rsi, qword ptr [rbp + 6952]
                        mov              rdx, qword ptr [rbp + 7104]
                        mov              rcx, qword ptr [rbp + 7112]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 6912], rax
                        mov              qword ptr [rbp + 6920], rdx
                                                                                        jmp   xchain88_n207_α
xchain88_n199_β:
                                                                                        jmp   xchain88_n164_α
#-----------------------------------------------------------------------------------------------------------------------
xchain88_n200_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 7312]
                        mov              rsi, qword ptr [rbp + 7320]
                        mov              rdx, qword ptr [rbp + 7344]
                        mov              rcx, qword ptr [rbp + 7352]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 7280], rax
                        mov              qword ptr [rbp + 7288], rdx
                                                                                        jmp   xchain88_n208_α
xchain88_n200_β:
                                                                                        jmp   xchain88_n22_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain88_n201_α:
                        mov              rax, qword ptr [1879052432]
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rbp + 4512], rax
                        mov              qword ptr [rbp + 4520], rdx
                                                                                        jmp   xchain88_n209_α
xchain88_n201_β:
                                                                                        jmp   xchain88_n178_α
#=======================================================================================================================
#                 tline           =   tline "'" tag "': " tv      :(pm_tag_loop)
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain88_n202_α:
                        mov              rax, qword ptr [1879052544]
                        mov              rdx, qword ptr [1879052552]
                        mov              qword ptr [rbp + 4944], rax
                        mov              qword ptr [rbp + 4952], rdx
                                                                                        jmp   xchain88_n210_α
xchain88_n202_β:
                                                                                        jmp   xchain88_n135_α
#-----------------------------------------------------------------------------------------------------------------------
xchain88_n203_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 5280]
                        mov              rsi, qword ptr [rbp + 5288]
                        mov              rdx, qword ptr [rbp + 5312]
                        mov              rcx, qword ptr [rbp + 5320]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 5248], rax
                        mov              qword ptr [rbp + 5256], rdx
                                                                                        jmp   xchain88_n211_α
xchain88_n203_β:
                                                                                        jmp   xchain88_n135_α
#=======================================================================================================================
#                 OUTPUT          =   pfx wq ': ' tline ','       :(pm_wrd_loop)
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain88_n204_α:
                        mov              rax, qword ptr [1879052560]
                        mov              rdx, qword ptr [1879052568]
                        mov              qword ptr [rbp + 6064], rax
                        mov              qword ptr [rbp + 6072], rdx
                                                                                        jmp   xchain88_n212_α
xchain88_n204_β:
                                                                                        jmp   xchain88_n69_α
#-----------------------------------------------------------------------------------------------------------------------
xchain88_n205_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 6368]
                        mov              rsi, qword ptr [rbp + 6376]
                        mov              rdx, qword ptr [rbp + 6400]
                        mov              rcx, qword ptr [rbp + 6408]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 6336], rax
                        mov              qword ptr [rbp + 6344], rdx
                                                                                        jmp   xchain88_n213_α
xchain88_n205_β:
                                                                                        jmp   xchain88_n69_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain88_n206_α:
                        mov              rax, qword ptr [1879052544]
                        mov              rdx, qword ptr [1879052552]
                        mov              qword ptr [rbp + 6864], rax
                        mov              qword ptr [rbp + 6872], rdx
                                                                                        jmp   xchain88_n214_α
xchain88_n206_β:
                                                                                        jmp   xchain88_n164_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain88_n207_α:
                        mov              rax, qword ptr [rbp + 6912]
                        mov              rdx, qword ptr [rbp + 6920]
                        mov              qword ptr [1879052624], rax
                        mov              qword ptr [1879052632], rdx
                        mov              qword ptr [rbp + 6896], rax
                        mov              qword ptr [rbp + 6904], rdx
                                                                                        jmp   xchain88_n164_α
xchain88_n207_β:
                                                                                        jmp   xchain88_n164_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN global
xchain88_n208_α:
                        mov              rsi, qword ptr [rbp + 7280]
                        mov              rdx, qword ptr [rbp + 7288]
                        mov              rdi, qword ptr [rip + .Lx321_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 7264], rax
                        mov              qword ptr [rbp + 7272], rdx
                                                                                        jmp   xchain88_n22_α
xchain88_n208_β:
                                                                                        jmp   xchain88_n22_α
.Lx321_0:
                        .quad            .Lx321_0_s
.Lx321_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
# IR_SUBSCRIPT x[i] variable
xchain88_n209_α:
                        mov              rdi, qword ptr [rbp + 4496]
                        mov              rsi, qword ptr [rbp + 4504]
                        mov              rdx, qword ptr [rbp + 4512]
                        mov              rcx, qword ptr [rbp + 4520]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain88_n178_α
                        mov              qword ptr [rbp + 4544], rax
                        mov              qword ptr [rbp + 4552], rdx
                                                                                        jmp   xchain88_n215_α
xchain88_n209_β:
                                                                                        jmp   xchain88_n178_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain88_n210_α:
                        mov              qword ptr [rbp + 4976], 1
                        mov              rax, qword ptr [rip + .Lx323_0]
                        mov              qword ptr [rbp + 4984], rax
                                                                                        jmp   xchain88_n216_α
xchain88_n210_β:
                                                                                        jmp   xchain88_n135_α
.Lx323_0:
                        .quad            .Lx323_0_s
.Lx323_0_s:
                        .string          "'"
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain88_n211_α:
                        mov              qword ptr [rbp + 5344], 1
                        mov              rax, qword ptr [rip + .Lx324_0]
                        mov              qword ptr [rbp + 5352], rax
                                                                                        jmp   xchain88_n217_α
xchain88_n211_β:
                                                                                        jmp   xchain88_n135_α
.Lx324_0:
                        .quad            .Lx324_0_s
.Lx324_0_s:
                        .string          "'"
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain88_n212_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 6096], rax
                        mov              qword ptr [rbp + 6104], rdx
                                                                                        jmp   xchain88_n218_α
xchain88_n212_β:
                                                                                        jmp   xchain88_n69_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain88_n213_α:
                        mov              qword ptr [rbp + 6432], 1
                        mov              rax, qword ptr [rip + .Lx326_0]
                        mov              qword ptr [rbp + 6440], rax
                                                                                        jmp   xchain88_n219_α
xchain88_n213_β:
                                                                                        jmp   xchain88_n69_α
.Lx326_0:
                        .quad            .Lx326_0_s
.Lx326_0_s:
                        .string          ": "
#-----------------------------------------------------------------------------------------------------------------------
xchain88_n214_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 6704]
                        mov              rsi, qword ptr [rbp + 6712]
                        mov              rdx, qword ptr [rbp + 6864]
                        mov              rcx, qword ptr [rbp + 6872]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 6672], rax
                        mov              qword ptr [rbp + 6680], rdx
                                                                                        jmp   xchain88_n220_α
xchain88_n214_β:
                                                                                        jmp   xchain88_n164_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_DEREF variable -> value
xchain88_n215_α:
                        mov              rdi, qword ptr [rbp + 4544]
                        mov              rsi, qword ptr [rbp + 4552]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    xchain88_n178_α
                        mov              qword ptr [rbp + 4576], rax
                        mov              qword ptr [rbp + 4584], rdx
                                                                                        jmp   xchain88_n221_α
xchain88_n215_β:
                                                                                        jmp   xchain88_n178_α
#-----------------------------------------------------------------------------------------------------------------------
xchain88_n216_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 4944]
                        mov              rsi, qword ptr [rbp + 4952]
                        mov              rdx, qword ptr [rbp + 4976]
                        mov              rcx, qword ptr [rbp + 4984]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 4912], rax
                        mov              qword ptr [rbp + 4920], rdx
                                                                                        jmp   xchain88_n222_α
xchain88_n216_β:
                                                                                        jmp   xchain88_n135_α
#-----------------------------------------------------------------------------------------------------------------------
xchain88_n217_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 5248]
                        mov              rsi, qword ptr [rbp + 5256]
                        mov              rdx, qword ptr [rbp + 5344]
                        mov              rcx, qword ptr [rbp + 5352]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 5216], rax
                        mov              qword ptr [rbp + 5224], rdx
                                                                                        jmp   xchain88_n223_α
xchain88_n217_β:
                                                                                        jmp   xchain88_n135_α
#-----------------------------------------------------------------------------------------------------------------------
xchain88_n218_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 6064]
                        mov              rsi, qword ptr [rbp + 6072]
                        mov              rdx, qword ptr [rbp + 6096]
                        mov              rcx, qword ptr [rbp + 6104]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 6032], rax
                        mov              qword ptr [rbp + 6040], rdx
                                                                                        jmp   xchain88_n224_α
xchain88_n218_β:
                                                                                        jmp   xchain88_n69_α
#-----------------------------------------------------------------------------------------------------------------------
xchain88_n219_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 6336]
                        mov              rsi, qword ptr [rbp + 6344]
                        mov              rdx, qword ptr [rbp + 6432]
                        mov              rcx, qword ptr [rbp + 6440]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 6304], rax
                        mov              qword ptr [rbp + 6312], rdx
                                                                                        jmp   xchain88_n225_α
xchain88_n219_β:
                                                                                        jmp   xchain88_n69_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain88_n220_α:
                        mov              rax, qword ptr [rbp + 6672]
                        mov              rdx, qword ptr [rbp + 6680]
                        mov              qword ptr [1879052624], rax
                        mov              qword ptr [1879052632], rdx
                        mov              qword ptr [rbp + 6656], rax
                        mov              qword ptr [rbp + 6664], rdx
                                                                                        jmp   xchain88_n164_α
xchain88_n220_β:
                                                                                        jmp   xchain88_n164_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain88_n221_α:
                        mov              rax, qword ptr [1879052512]
                        mov              rdx, qword ptr [1879052520]
                        mov              qword ptr [rbp + 4592], rax
                        mov              qword ptr [rbp + 4600], rdx
                                                                                        jmp   xchain88_n226_α
xchain88_n221_β:
                                                                                        jmp   xchain88_n178_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain88_n222_α:
                        mov              rax, qword ptr [1879052512]
                        mov              rdx, qword ptr [1879052520]
                        mov              qword ptr [rbp + 5008], rax
                        mov              qword ptr [rbp + 5016], rdx
                                                                                        jmp   xchain88_n227_α
xchain88_n222_β:
                                                                                        jmp   xchain88_n135_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain88_n223_α:
                        mov              rax, qword ptr [1879052512]
                        mov              rdx, qword ptr [1879052520]
                        mov              qword ptr [rbp + 5376], rax
                        mov              qword ptr [rbp + 5384], rdx
                                                                                        jmp   xchain88_n228_α
xchain88_n223_β:
                                                                                        jmp   xchain88_n135_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain88_n224_α:
                        mov              qword ptr [rbp + 6128], 1
                        mov              rax, qword ptr [rip + .Lx337_0]
                        mov              qword ptr [rbp + 6136], rax
                                                                                        jmp   xchain88_n229_α
xchain88_n224_β:
                                                                                        jmp   xchain88_n69_α
.Lx337_0:
                        .quad            .Lx337_0_s
.Lx337_0_s:
                        .string          ": "
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain88_n225_α:
                        mov              rax, qword ptr [1879052544]
                        mov              rdx, qword ptr [1879052552]
                        mov              qword ptr [rbp + 6464], rax
                        mov              qword ptr [rbp + 6472], rdx
                                                                                        jmp   xchain88_n230_α
xchain88_n225_β:
                                                                                        jmp   xchain88_n69_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_SUBSCRIPT x[i] variable
xchain88_n226_α:
                        mov              rdi, qword ptr [rbp + 4576]
                        mov              rsi, qword ptr [rbp + 4584]
                        mov              rdx, qword ptr [rbp + 4592]
                        mov              rcx, qword ptr [rbp + 4600]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain88_n178_α
                        mov              qword ptr [rbp + 4624], rax
                        mov              qword ptr [rbp + 4632], rdx
                                                                                        jmp   xchain88_n231_α
xchain88_n226_β:
                                                                                        jmp   xchain88_n178_α
#-----------------------------------------------------------------------------------------------------------------------
xchain88_n227_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 4912]
                        mov              rsi, qword ptr [rbp + 4920]
                        mov              rdx, qword ptr [rbp + 5008]
                        mov              rcx, qword ptr [rbp + 5016]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 4880], rax
                        mov              qword ptr [rbp + 4888], rdx
                                                                                        jmp   xchain88_n232_α
xchain88_n227_β:
                                                                                        jmp   xchain88_n135_α
#-----------------------------------------------------------------------------------------------------------------------
xchain88_n228_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 5216]
                        mov              rsi, qword ptr [rbp + 5224]
                        mov              rdx, qword ptr [rbp + 5376]
                        mov              rcx, qword ptr [rbp + 5384]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 5184], rax
                        mov              qword ptr [rbp + 5192], rdx
                                                                                        jmp   xchain88_n233_α
xchain88_n228_β:
                                                                                        jmp   xchain88_n135_α
#-----------------------------------------------------------------------------------------------------------------------
xchain88_n229_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 6032]
                        mov              rsi, qword ptr [rbp + 6040]
                        mov              rdx, qword ptr [rbp + 6128]
                        mov              rcx, qword ptr [rbp + 6136]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 6000], rax
                        mov              qword ptr [rbp + 6008], rdx
                                                                                        jmp   xchain88_n234_α
xchain88_n229_β:
                                                                                        jmp   xchain88_n69_α
#-----------------------------------------------------------------------------------------------------------------------
xchain88_n230_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 6304]
                        mov              rsi, qword ptr [rbp + 6312]
                        mov              rdx, qword ptr [rbp + 6464]
                        mov              rcx, qword ptr [rbp + 6472]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 6272], rax
                        mov              qword ptr [rbp + 6280], rdx
                                                                                        jmp   xchain88_n235_α
xchain88_n230_β:
                                                                                        jmp   xchain88_n69_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_DEREF variable -> value
xchain88_n231_α:
                        mov              rdi, qword ptr [rbp + 4624]
                        mov              rsi, qword ptr [rbp + 4632]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    xchain88_n178_α
                        mov              qword ptr [rbp + 4656], rax
                        mov              qword ptr [rbp + 4664], rdx
                                                                                        jmp   xchain88_n236_α
xchain88_n231_β:
                                                                                        jmp   xchain88_n178_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain88_n232_α:
                        mov              qword ptr [rbp + 5040], 1
                        mov              rax, qword ptr [rip + .Lx345_0]
                        mov              qword ptr [rbp + 5048], rax
                                                                                        jmp   xchain88_n237_α
xchain88_n232_β:
                                                                                        jmp   xchain88_n135_α
.Lx345_0:
                        .quad            .Lx345_0_s
.Lx345_0_s:
                        .string          "': "
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain88_n233_α:
                        mov              qword ptr [rbp + 5408], 1
                        mov              rax, qword ptr [rip + .Lx346_0]
                        mov              qword ptr [rbp + 5416], rax
                                                                                        jmp   xchain88_n238_α
xchain88_n233_β:
                                                                                        jmp   xchain88_n135_α
.Lx346_0:
                        .quad            .Lx346_0_s
.Lx346_0_s:
                        .string          "': "
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain88_n234_α:
                        mov              rax, qword ptr [1879052544]
                        mov              rdx, qword ptr [1879052552]
                        mov              qword ptr [rbp + 6160], rax
                        mov              qword ptr [rbp + 6168], rdx
                                                                                        jmp   xchain88_n239_α
xchain88_n234_β:
                                                                                        jmp   xchain88_n69_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain88_n235_α:
                        mov              qword ptr [rbp + 6496], 1
                        mov              rax, qword ptr [rip + .Lx348_0]
                        mov              qword ptr [rbp + 6504], rax
                                                                                        jmp   xchain88_n240_α
xchain88_n235_β:
                                                                                        jmp   xchain88_n69_α
.Lx348_0:
                        .quad            .Lx348_0_s
.Lx348_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain88_n236_α:
                        mov              rax, qword ptr [rbp + 4656]
                        mov              rdx, qword ptr [rbp + 4664]
                        mov              qword ptr [1879052528], rax
                        mov              qword ptr [1879052536], rdx
                        mov              qword ptr [rbp + 4384], rax
                        mov              qword ptr [rbp + 4392], rdx
                                                                                        jmp   xchain88_n178_α
xchain88_n236_β:
                                                                                        jmp   xchain88_n178_α
#-----------------------------------------------------------------------------------------------------------------------
xchain88_n237_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 4880]
                        mov              rsi, qword ptr [rbp + 4888]
                        mov              rdx, qword ptr [rbp + 5040]
                        mov              rcx, qword ptr [rbp + 5048]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 4848], rax
                        mov              qword ptr [rbp + 4856], rdx
                                                                                        jmp   xchain88_n241_α
xchain88_n237_β:
                                                                                        jmp   xchain88_n135_α
#-----------------------------------------------------------------------------------------------------------------------
xchain88_n238_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 5184]
                        mov              rsi, qword ptr [rbp + 5192]
                        mov              rdx, qword ptr [rbp + 5408]
                        mov              rcx, qword ptr [rbp + 5416]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 5152], rax
                        mov              qword ptr [rbp + 5160], rdx
                                                                                        jmp   xchain88_n242_α
xchain88_n238_β:
                                                                                        jmp   xchain88_n135_α
#-----------------------------------------------------------------------------------------------------------------------
xchain88_n239_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 6000]
                        mov              rsi, qword ptr [rbp + 6008]
                        mov              rdx, qword ptr [rbp + 6160]
                        mov              rcx, qword ptr [rbp + 6168]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 5968], rax
                        mov              qword ptr [rbp + 5976], rdx
                                                                                        jmp   xchain88_n243_α
xchain88_n239_β:
                                                                                        jmp   xchain88_n69_α
#-----------------------------------------------------------------------------------------------------------------------
xchain88_n240_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 6272]
                        mov              rsi, qword ptr [rbp + 6280]
                        mov              rdx, qword ptr [rbp + 6496]
                        mov              rcx, qword ptr [rbp + 6504]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 6240], rax
                        mov              qword ptr [rbp + 6248], rdx
                                                                                        jmp   xchain88_n244_α
xchain88_n240_β:
                                                                                        jmp   xchain88_n69_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain88_n241_α:
                        mov              rax, qword ptr [1879052528]
                        mov              rdx, qword ptr [1879052536]
                        mov              qword ptr [rbp + 5072], rax
                        mov              qword ptr [rbp + 5080], rdx
                                                                                        jmp   xchain88_n245_α
xchain88_n241_β:
                                                                                        jmp   xchain88_n135_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain88_n242_α:
                        mov              rax, qword ptr [1879052528]
                        mov              rdx, qword ptr [1879052536]
                        mov              qword ptr [rbp + 5440], rax
                        mov              qword ptr [rbp + 5448], rdx
                                                                                        jmp   xchain88_n246_α
xchain88_n242_β:
                                                                                        jmp   xchain88_n135_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain88_n243_α:
                        mov              qword ptr [rbp + 6192], 1
                        mov              rax, qword ptr [rip + .Lx356_0]
                        mov              qword ptr [rbp + 6200], rax
                                                                                        jmp   xchain88_n247_α
xchain88_n243_β:
                                                                                        jmp   xchain88_n69_α
.Lx356_0:
                        .quad            .Lx356_0_s
.Lx356_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN global
xchain88_n244_α:
                        mov              rsi, qword ptr [rbp + 6240]
                        mov              rdx, qword ptr [rbp + 6248]
                        mov              rdi, qword ptr [rip + .Lx357_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 6224], rax
                        mov              qword ptr [rbp + 6232], rdx
                                                                                        jmp   xchain88_n69_α
xchain88_n244_β:
                                                                                        jmp   xchain88_n69_α
.Lx357_0:
                        .quad            .Lx357_0_s
.Lx357_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
xchain88_n245_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 4848]
                        mov              rsi, qword ptr [rbp + 4856]
                        mov              rdx, qword ptr [rbp + 5072]
                        mov              rcx, qword ptr [rbp + 5080]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 4816], rax
                        mov              qword ptr [rbp + 4824], rdx
                                                                                        jmp   xchain88_n248_α
xchain88_n245_β:
                                                                                        jmp   xchain88_n135_α
#-----------------------------------------------------------------------------------------------------------------------
xchain88_n246_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 5152]
                        mov              rsi, qword ptr [rbp + 5160]
                        mov              rdx, qword ptr [rbp + 5440]
                        mov              rcx, qword ptr [rbp + 5448]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 5120], rax
                        mov              qword ptr [rbp + 5128], rdx
                                                                                        jmp   xchain88_n249_α
xchain88_n246_β:
                                                                                        jmp   xchain88_n135_α
#-----------------------------------------------------------------------------------------------------------------------
xchain88_n247_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 5968]
                        mov              rsi, qword ptr [rbp + 5976]
                        mov              rdx, qword ptr [rbp + 6192]
                        mov              rcx, qword ptr [rbp + 6200]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 5936], rax
                        mov              qword ptr [rbp + 5944], rdx
                                                                                        jmp   xchain88_n250_α
xchain88_n247_β:
                                                                                        jmp   xchain88_n69_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain88_n248_α:
                        mov              rax, qword ptr [rbp + 4816]
                        mov              rdx, qword ptr [rbp + 4824]
                        mov              qword ptr [1879052544], rax
                        mov              qword ptr [1879052552], rdx
                        mov              qword ptr [rbp + 4800], rax
                        mov              qword ptr [rbp + 4808], rdx
                                                                                        jmp   xchain88_n135_α
xchain88_n248_β:
                                                                                        jmp   xchain88_n135_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain88_n249_α:
                        mov              rax, qword ptr [rbp + 5120]
                        mov              rdx, qword ptr [rbp + 5128]
                        mov              qword ptr [1879052544], rax
                        mov              qword ptr [1879052552], rdx
                        mov              qword ptr [rbp + 5104], rax
                        mov              qword ptr [rbp + 5112], rdx
                                                                                        jmp   xchain88_n135_α
xchain88_n249_β:
                                                                                        jmp   xchain88_n135_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN global
xchain88_n250_α:
                        mov              rsi, qword ptr [rbp + 5936]
                        mov              rdx, qword ptr [rbp + 5944]
                        mov              rdi, qword ptr [rip + .Lx363_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 5920], rax
                        mov              qword ptr [rbp + 5928], rdx
                                                                                        jmp   xchain88_n69_α
xchain88_n250_β:
                                                                                        jmp   xchain88_n69_α
.Lx363_0:
                        .quad            .Lx363_0_s
.Lx363_0_s:
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
                        mov              rax, [rbp + 7608]
                        lea              rsp, [rbp + 7632]
                        mov              rbp, [rbp + 7624]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pp_mem_ω:
                        mov              rax, [rbp + 7616]
                        lea              rsp, [rbp + 7632]
                        mov              rbp, [rbp + 7624]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$0_α
proc_PAT$0_α:
                        .global          proc_PAT$0_α
                        .global          proc_PAT$0_β
                        .global          proc_PAT$0_γ
                        .global          proc_PAT$0_ω
                        sub              rsp, 768
                        mov              [rsp + 744], rcx
                        mov              [rsp + 752], rdx
                        mov              [rsp + 760], rbp
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
                        mov              qword ptr [rsp + 720], 0
                        mov              qword ptr [rsp + 728], rsp
                        mov              qword ptr [rbp + 736], r8
                        mov              dword ptr [rbp + 728], r14d
proc_PAT$0_attempt:
proc_PAT$0_α_body:
                        lea              rax, [rip + xchain364_n0_β]
                        mov              qword ptr [rbp + 704], rax
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
xchain364_n0_α:
                        mov              dword ptr [rbp + 16], r14d
                                                                                        jmp   xchain364_n1_α
xchain364_n0_as:
                                                                                        jmp   proc_PAT$0_γ
xchain364_n0_β:
                                                                                        jmp   xchain364_n5_β
xchain364_n0_af:
                                                                                        jmp   proc_PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain364_n1_α:
                        mov              qword ptr [rbp + 48], 6
                        mov              rax, qword ptr [rip + .Lx367_0]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   xchain364_n2_α
xchain364_n1_β:
                                                                                        jmp   proc_PAT$0_ω
.Lx367_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_POS
xchain364_n2_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   proc_PAT$0_ω
                                                                                        jmp   xchain364_n3_α
xchain364_n2_β:
                                                                                        jmp   proc_PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_ARBNO_NARY (ZB-FC-4 rsp linked-frame-chain)
xchain364_n3_α:
                        mov              dword ptr [rbp + 96], r14d
                        mov              dword ptr [rbp + 100], r14d
                        mov              dword ptr [rbp + 104], 0
                        mov              qword ptr [rbp + 120], rsp
                        mov              qword ptr [rbp + 112], 0
                                                                                        jmp   xchain364_n4_α
xchain364_n3_β:
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
                                                                                        jmp   xchain364_n6_α
xchain364_n3_as:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              r14d, eax
                                                                                        je    xchain364_n6_β
                        mov              rbp, qword ptr [rbp + 8]
                        mov              eax, dword ptr [rbp + 104]
                        add              eax, 1
                        mov              dword ptr [rbp + 104], eax
                        mov              dword ptr [rbp + 100], r14d
                                                                                        jmp   xchain364_n4_α
xchain364_n3_af:
                        mov              rax, qword ptr [rbp + 24]
                        mov              rdx, qword ptr [rbp + 8]
                        lea              rsp, [rbp + 680]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 104]
                        test             ecx, ecx
                                                                                        jz    .Lx370_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 104], ecx
                        mov              qword ptr [rbp + 112], rax
                        lea              rbp, [rax + -8]
                                                                                        jmp   xchain364_n6_β
.Lx370_2:
                        mov              r14d, dword ptr [rbp + 96]
                        mov              rsp, qword ptr [rbp + 120]
                                                                                        jmp   xchain364_n2_β
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain364_n4_α:
                        mov              qword ptr [rbp + 672], 6
                        mov              rax, qword ptr [rip + .Lx371_0]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   xchain364_n5_α
xchain364_n4_β:
                                                                                        jmp   xchain364_n3_β
.Lx371_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_RPOS
xchain364_n5_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   xchain364_n3_β
                                                                                        jmp   proc_PAT$0_γ
xchain364_n5_β:
                                                                                        jmp   xchain364_n3_β
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
xchain364_n6_α:
                        mov              dword ptr [rbp + 144], r14d
                                                                                        jmp   xchain364_n8_α
xchain364_n6_as:
                                                                                        jmp   xchain364_n3_as
xchain364_n6_β:
                                                                                        jmp   xchain364_n7_β
xchain364_n6_af:
                                                                                        jmp   xchain364_n3_af
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_SPAN
xchain364_n7_α:
                        sub              rsp, 16
                        movsxd           rcx, r14d
.Lx376_0:
                        cmp              ecx, r15d
                                                                                        jge   .Lx376_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32
                                                                                        je    .Lx376_10
                        cmp              esi, 10
                                                                                        je    .Lx376_10
                                                                                        jmp   .Lx376_1
.Lx376_10:
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx376_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32
                                                                                        je    .Lx376_11
                        cmp              esi, 10
                                                                                        je    .Lx376_11
                                                                                        jmp   .Lx376_1
.Lx376_11:
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx376_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32
                                                                                        je    .Lx376_12
                        cmp              esi, 10
                                                                                        je    .Lx376_12
                                                                                        jmp   .Lx376_1
.Lx376_12:
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx376_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32
                                                                                        je    .Lx376_13
                        cmp              esi, 10
                                                                                        je    .Lx376_13
                                                                                        jmp   .Lx376_1
.Lx376_13:
                        add              ecx, 1
                                                                                        jmp   .Lx376_0
.Lx376_1:
                        cmp              ecx, r14d
                                                                                        jg    .Lx376_240
                        add              rsp, 16
                                                                                        jmp   xchain364_n8_β
.Lx376_240:
                        mov              dword ptr [rsp + 4], r14d
                        mov              r14d, ecx
                                                                                        jmp   xchain364_n3_as
xchain364_n7_β:
xchain364_n7_β:
                        mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16
                                                                                        jmp   xchain364_n8_β
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_ALT_NARY
xchain364_n8_α:
                        mov              dword ptr [rbp + 160], r14d
                        mov              dword ptr [rbp + 164], 0
                                                                                        jmp   xchain364_n9_α
xchain364_n8_as:
                                                                                        jmp   xchain364_n7_α
xchain364_n8_β:
                        mov              eax, dword ptr [rbp + 164]
                        cmp              eax, 0
                                                                                        je    xchain364_n9_β
                                                                                        jmp   xchain364_n10_β
xchain364_n8_af:
                        add              dword ptr [rbp + 164], 1
                        mov              r14d, dword ptr [rbp + 160]
                        mov              eax, dword ptr [rbp + 164]
                        cmp              eax, 1
                                                                                        je    xchain364_n10_α
                                                                                        jmp   xchain364_n3_af
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
xchain364_n9_α:
                        mov              dword ptr [rbp + 176], r14d
                                                                                        jmp   xchain364_n11_α
xchain364_n9_as:
                                                                                        jmp   xchain364_n8_as
xchain364_n9_β:
                                                                                        jmp   xchain364_n15_β
xchain364_n9_af:
                                                                                        jmp   xchain364_n8_af
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
xchain364_n10_α:
                        mov              dword ptr [rbp + 352], r14d
                                                                                        jmp   xchain364_n16_α
xchain364_n10_as:
                                                                                        jmp   xchain364_n8_as
xchain364_n10_β:
                                                                                        jmp   xchain364_n22_β
xchain364_n10_af:
                                                                                        jmp   xchain364_n8_af
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_CAPTURE_SAVE push
xchain364_n11_α:
                        lea              rdi, [rbp + 224]
                        mov              esi, r14d
                        call             rt_cap_push@PLT
                                                                                        jmp   xchain364_n23_α
xchain364_n11_β:
                        lea              rdi, [rbp + 224]
                        call             rt_cap_pop@PLT
                                                                                        jmp   xchain364_n8_af
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
xchain364_n12_α:
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
                                                                                        jmp   xchain364_n13_α
xchain364_n12_β:
                        sub              r12, 24
                                                                                        jmp   xchain364_n23_β
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_LIT
xchain364_n13_α:
                        mov              eax, r14d
                        add              eax, 10
                        cmp              eax, r15d
                                                                                        jg    xchain364_n12_β
                        movsxd           rcx, r14d
                        mov              rdx, qword ptr [r13+rcx]
                        movabs           rax, 5791411556081353567
                        cmp              rdx, rax
                                                                                        jne   xchain364_n12_β
                        movzx            eax, byte ptr [r13+rcx+8]
                        cmp              eax, 85
                                                                                        jne   xchain364_n12_β
                        movzx            eax, byte ptr [r13+rcx+9]
                        cmp              eax, 78
                                                                                        jne   xchain364_n12_β
                        add              r14d, 10
                                                                                        jmp   xchain364_n14_α
xchain364_n13_β:
                        sub              r14d, 10
                                                                                        jmp   xchain364_n12_β
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_CAPTURE_SAVE push
xchain364_n14_α:
                        lea              rdi, [rbp + 304]
                        mov              esi, r14d
                        call             rt_cap_push@PLT
                                                                                        jmp   xchain364_n24_α
xchain364_n14_β:
                        lea              rdi, [rbp + 304]
                        call             rt_cap_pop@PLT
                                                                                        jmp   xchain364_n13_β
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
xchain364_n15_α:
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
                                                                                        jmp   xchain364_n8_as
xchain364_n15_β:
                        sub              r12, 24
                                                                                        jmp   xchain364_n24_β
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_CAPTURE_SAVE push
xchain364_n16_α:
                        lea              rdi, [rbp + 400]
                        mov              esi, r14d
                        call             rt_cap_push@PLT
                                                                                        jmp   xchain364_n25_α
xchain364_n16_β:
                        lea              rdi, [rbp + 400]
                        call             rt_cap_pop@PLT
                                                                                        jmp   xchain364_n8_af
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
xchain364_n17_α:
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
                                                                                        jmp   xchain364_n18_α
xchain364_n17_β:
                        sub              r12, 24
                                                                                        jmp   xchain364_n25_β
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_LIT
xchain364_n18_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    xchain364_n17_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 95
                                                                                        jne   xchain364_n17_β
                        add              r14d, 1
                                                                                        jmp   xchain364_n19_α
xchain364_n18_β:
                        sub              r14d, 1
                                                                                        jmp   xchain364_n17_β
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_CAPTURE_SAVE push
xchain364_n19_α:
                        lea              rdi, [rbp + 496]
                        mov              esi, r14d
                        call             rt_cap_push@PLT
                                                                                        jmp   xchain364_n26_α
xchain364_n19_β:
                        lea              rdi, [rbp + 496]
                        call             rt_cap_pop@PLT
                                                                                        jmp   xchain364_n18_β
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
xchain364_n20_α:
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
                                                                                        jmp   xchain364_n21_α
xchain364_n20_β:
                        sub              r12, 24
                                                                                        jmp   xchain364_n26_β
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_CAPTURE_SAVE push
xchain364_n21_α:
                        lea              rdi, [rbp + 592]
                        mov              esi, r14d
                        call             rt_cap_push@PLT
                                                                                        jmp   xchain364_n27_α
xchain364_n21_β:
                        lea              rdi, [rbp + 592]
                        call             rt_cap_pop@PLT
                                                                                        jmp   xchain364_n20_β
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
xchain364_n22_α:
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
                                                                                        jmp   xchain364_n8_as
xchain364_n22_β:
                        sub              r12, 24
                                                                                        jmp   xchain364_n27_β
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_SPAN
xchain364_n23_α:
                        sub              rsp, 16
                        lea              rdi, [rip + .C0]
                        movsxd           rcx, r14d
.Lx408_0:
                        cmp              ecx, r15d
                                                                                        jge   .Lx408_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx408_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx408_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx408_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx408_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx408_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx408_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx408_1
                        add              ecx, 1
                                                                                        jmp   .Lx408_0
.Lx408_1:
                        cmp              ecx, r14d
                                                                                        jg    .Lx408_240
                        add              rsp, 16
                                                                                        jmp   xchain364_n11_β
.Lx408_240:
                        mov              dword ptr [rsp + 4], r14d
                        mov              r14d, ecx
                                                                                        jmp   xchain364_n12_α
xchain364_n23_β:
xchain364_n23_β:
                        mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16
                                                                                        jmp   xchain364_n11_β
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain364_n24_α:
                        lea              rdi, [rip + .S5]
                        xor              esi, esi
                        call             rt_defer_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx409_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx409_4]
                        lea              rdx, [rip + .Lx409_5]
                                                                                        jmp   rax
.Lx409_4:
                                                                                        jmp   xchain364_n15_α
.Lx409_5:
                                                                                        jmp   xchain364_n14_β
.Lx409_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S5]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx409_2:
                        test             rax, rax
                                                                                        je    .Lx409_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx409_7]
                        lea              rdx, [rip + .Lx409_8]
                                                                                        jmp   rax
.Lx409_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx409_2
.Lx409_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx409_2
.Lx409_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    xchain364_n14_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx409_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   xchain364_n15_α
.Lx409_6:
                        add              rsp, 16
                                                                                        jmp   xchain364_n14_β
xchain364_n24_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
xchain364_n25_α:
                        mov              dword ptr [rbp + 432], r14d
                                                                                        jmp   xchain364_n28_α
xchain364_n25_as:
                                                                                        jmp   xchain364_n17_α
xchain364_n25_β:
                                                                                        jmp   xchain364_n29_β
xchain364_n25_af:
                                                                                        jmp   xchain364_n16_β
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
xchain364_n26_α:
                        mov              dword ptr [rbp + 528], r14d
                                                                                        jmp   xchain364_n30_α
xchain364_n26_as:
                                                                                        jmp   xchain364_n20_α
xchain364_n26_β:
                                                                                        jmp   xchain364_n31_β
xchain364_n26_af:
                                                                                        jmp   xchain364_n19_β
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain364_n27_α:
                        lea              rdi, [rip + .S5]
                        xor              esi, esi
                        call             rt_defer_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx414_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx414_4]
                        lea              rdx, [rip + .Lx414_5]
                                                                                        jmp   rax
.Lx414_4:
                                                                                        jmp   xchain364_n22_α
.Lx414_5:
                                                                                        jmp   xchain364_n21_β
.Lx414_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S5]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx414_2:
                        test             rax, rax
                                                                                        je    .Lx414_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx414_7]
                        lea              rdx, [rip + .Lx414_8]
                                                                                        jmp   rax
.Lx414_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx414_2
.Lx414_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx414_2
.Lx414_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    xchain364_n21_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx414_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   xchain364_n22_α
.Lx414_6:
                        add              rsp, 16
                                                                                        jmp   xchain364_n21_β
xchain364_n27_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_NOTANY
xchain364_n28_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   xchain364_n16_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 95
                                                                                        je    xchain364_n16_β
                        add              r14d, 1
                                                                                        jmp   xchain364_n29_α
xchain364_n28_β:
                        sub              r14d, 1
                                                                                        jmp   xchain364_n16_β
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_BREAK
xchain364_n29_α:
                        sub              rsp, 16
                        movsxd           rcx, r14d
.Lx417_0:
                        cmp              ecx, r15d
                                                                                        jl    .Lx417_237
                        add              rsp, 16
                                                                                        jmp   xchain364_n28_β
.Lx417_237:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 95
                                                                                        je    .Lx417_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx417_238
                        add              rsp, 16
                                                                                        jmp   xchain364_n28_β
.Lx417_238:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 95
                                                                                        je    .Lx417_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx417_239
                        add              rsp, 16
                                                                                        jmp   xchain364_n28_β
.Lx417_239:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 95
                                                                                        je    .Lx417_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx417_240
                        add              rsp, 16
                                                                                        jmp   xchain364_n28_β
.Lx417_240:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 95
                                                                                        je    .Lx417_1
                        add              ecx, 1
                                                                                        jmp   .Lx417_0
.Lx417_1:
                        mov              dword ptr [rsp + 0], r14d
                        mov              r14d, ecx
                                                                                        jmp   xchain364_n17_α
xchain364_n29_β:
                        mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   xchain364_n28_β
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_ANY
xchain364_n30_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   xchain364_n19_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C1]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    xchain364_n19_β
                        add              r14d, 1
                                                                                        jmp   xchain364_n31_α
xchain364_n30_β:
                        sub              r14d, 1
                                                                                        jmp   xchain364_n19_β
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_SPAN
xchain364_n31_α:
                        sub              rsp, 16
                        lea              rdi, [rip + .C2]
                        movsxd           rcx, r14d
.Lx421_0:
                        cmp              ecx, r15d
                                                                                        jge   .Lx421_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx421_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx421_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx421_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx421_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx421_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx421_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx421_1
                        add              ecx, 1
                                                                                        jmp   .Lx421_0
.Lx421_1:
                        cmp              ecx, r14d
                                                                                        jg    .Lx421_240
                        add              rsp, 16
                                                                                        jmp   xchain364_n30_β
.Lx421_240:
                        mov              dword ptr [rsp + 4], r14d
                        mov              r14d, ecx
                                                                                        jmp   xchain364_n20_α
xchain364_n31_β:
xchain364_n31_β:
                        mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16
                                                                                        jmp   xchain364_n30_β
proc_PAT$0_scanhit:
                        cmp              qword ptr [rbp + 736], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 728]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$0_γ
proc_PAT$0_scanfail:
                        cmp              qword ptr [rbp + 736], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 728]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 728], eax
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
                        mov              rax, [rbp + 744]
                        mov              rbp, [rbp + 760]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_ω:
                        mov              rax, [rbp + 752]
                        lea              rsp, [rbp + 768]
                        mov              rbp, [rbp + 760]
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
                        mov              esi, 432
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
                        mov              esi, 1904
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
                        mov              esi, 7600
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
                        mov              esi, 736
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
                        sub              rsp, 65544
                        mov              rdi, rsp
                        mov              ecx, 65544
                        xor              eax, eax
                        rep stosb
                        mov              qword ptr [rsp + 12008], rsp
                        mov              r12, qword ptr [1879048192]
                        mov              [rsp + 65536], rbp
                        mov              rbp, rsp
main_α_body:
#=======================================================================================================================
#                 &ALPHABET       POS(10) LEN(1) . nl
#-----------------------------------------------------------------------------------------------------------------------
# IR_KEYWORD_SNOBOL4_read
xchain422_n0_α:
                        mov              rdi, qword ptr [rip + .Lx423_0]
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   xchain422_n1_α
xchain422_n0_β:
                                                                                        jmp   xchain422_n8_α
.Lx423_0:
                        .quad            .Lx423_0_s
.Lx423_0_s:
                        .string          "ALPHABET"
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_HEAD
xchain422_n1_α:
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
.Lx425_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   xchain422_n2_α
xchain422_n1_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx425_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx425_1
                                                                                        jmp   .Lx425_0
.Lx425_1:
                        mov              rax, qword ptr [rsp + 8]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 16]
                        mov              r12, qword ptr [rbp + 144]
                        mov              rbp, qword ptr [rbp + 152]
                                                                                        jmp   xchain422_n8_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
xchain422_n2_α:
                                                                                        jmp   xchain422_n4_α
xchain422_n2_as:
                                                                                        jmp   xchain422_n3_α
xchain422_n2_β:
                                                                                        jmp   xchain422_n7_β
xchain422_n2_af:
                                                                                        jmp   xchain422_n1_β
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_RELEASE
xchain422_n3_α:
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
.Lx429_1:
                        test             rax, rax
                                                                                        je    .Lx429_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx429_3]
                        lea              rdx, [rip + .Lx429_4]
                                                                                        jmp   rax
.Lx429_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx429_1
.Lx429_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx429_1
.Lx429_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + 144]
                        mov              rbp, qword ptr [rbp + 152]
                                                                                        jmp   xchain422_n8_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain422_n4_α:
                        mov              qword ptr [rbp + 192], 6
                        mov              rax, qword ptr [rip + .Lx430_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   xchain422_n5_α
xchain422_n4_β:
                                                                                        jmp   xchain422_n1_β
.Lx430_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_POS
xchain422_n5_α:
                        mov              rax, 10
                        cmp              r14d, eax
                                                                                        jne   xchain422_n1_β
                                                                                        jmp   xchain422_n6_α
xchain422_n5_β:
                                                                                        jmp   xchain422_n1_β
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_CAPTURE_SAVE fc cell
xchain422_n6_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   xchain422_n9_α
xchain422_n6_β:
                        add              rsp, 16
                                                                                        jmp   xchain422_n1_β
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
xchain422_n7_α:
                        mov              eax, dword ptr [rsp + 0]
                        lea              rcx, [rip + .S6]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   xchain422_n3_α
xchain422_n7_β:
                        sub              r12, 24
                                                                                        jmp   xchain422_n9_β
#=======================================================================================================================
#                 DIGITS          =  '0123456789'
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain422_n8_α:
                        mov              qword ptr [rbp + 320], 1
                        mov              rax, qword ptr [rip + .Lx436_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   xchain422_n10_α
xchain422_n8_β:
                                                                                        jmp   xchain422_n11_α
.Lx436_0:
                        .quad            .Lx436_0_s
.Lx436_0_s:
                        .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_LEN
xchain422_n9_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jle   .Lx437_240
                        add              rsp, 16
                                                                                        jmp   xchain422_n1_β
.Lx437_240:
                        add              r14d, 1
                                                                                        jmp   xchain422_n7_α
xchain422_n9_β:
                        sub              r14d, 1
                        add              rsp, 16
                                                                                        jmp   xchain422_n1_β
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain422_n10_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        mov              qword ptr [1879052672], rax
                        mov              qword ptr [1879052680], rdx
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   xchain422_n11_α
xchain422_n10_β:
                                                                                        jmp   xchain422_n11_α
#=======================================================================================================================
#                 UCASE           =  'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain422_n11_α:
                        mov              qword ptr [rbp + 368], 1
                        mov              rax, qword ptr [rip + .Lx439_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   xchain422_n12_α
xchain422_n11_β:
                                                                                        jmp   xchain422_n13_α
.Lx439_0:
                        .quad            .Lx439_0_s
.Lx439_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain422_n12_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        mov              qword ptr [1879052688], rax
                        mov              qword ptr [1879052696], rdx
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   xchain422_n13_α
xchain422_n12_β:
                                                                                        jmp   xchain422_n13_α
#=======================================================================================================================
#                 DEFINE('new_sent()')                            :(new_sent_end)
#                 DEFINE('add_tok()')                             :(add_tok_end)
#                 DEFINE('pp_mem(mem)ssk,si,sentno,wsk,wi,wkey,wq,wrd,tsk,ti,tag,tv,tline,pfx,pad,next_wkey,last_sent,lline,ns') :(pp_mem_end)
#                 &TRIM           =   0
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain422_n13_α:
                        mov              qword ptr [rbp + 10048], 1
                        mov              rax, qword ptr [rip + .Lx441_0]
                        mov              qword ptr [rbp + 10056], rax
                                                                                        jmp   xchain422_n14_α
xchain422_n13_β:
                                                                                        jmp   xchain422_n16_α
.Lx441_0:
                        .quad            .Lx441_0_s
.Lx441_0_s:
                        .string          "TRIM"
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain422_n14_α:
                        mov              qword ptr [rbp + 10080], 6
                        mov              rax, qword ptr [rip + .Lx442_0]
                        mov              qword ptr [rbp + 10088], rax
                                                                                        jmp   xchain422_n15_α
xchain422_n14_β:
                                                                                        jmp   xchain422_n16_α
.Lx442_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
xchain422_n15_α:
# BOX IR_CALL SNO$KWSET(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10048] -> [zr+10000]
                        mov              rax, qword ptr [rbp + 10048]
                        mov              qword ptr [rbp + 10000], rax
                        mov              rax, qword ptr [rbp + 10056]
                        mov              qword ptr [rbp + 10008], rax
# marshal arg1 = producer-box slot [zr+10080] -> [zr+10016]
                        mov              rax, qword ptr [rbp + 10080]
                        mov              qword ptr [rbp + 10016], rax
                        mov              rax, qword ptr [rbp + 10088]
                        mov              qword ptr [rbp + 10024], rax
                        .section         .rodata
.Lrkfn444:              .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn444]
                        lea              rsi, [rbp + 10000]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 9984], rax
                        mov              qword ptr [rbp + 9992], rdx
                        cmp              eax, 99
                                                                                        je    xchain422_n16_α
                                                                                        jmp   xchain422_n16_α
xchain422_n15_β:
                                                                                        jmp   xchain422_n16_α
#=======================================================================================================================
#                 nl              =   CHAR(10)
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain422_n16_α:
                        mov              qword ptr [rbp + 10176], 6
                        mov              rax, qword ptr [rip + .Lx445_0]
                        mov              qword ptr [rbp + 10184], rax
                                                                                        jmp   xchain422_n17_α
xchain422_n16_β:
                                                                                        jmp   xchain422_n19_α
.Lx445_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
xchain422_n17_α:
# BOX CALL CHAR(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [zr+10176] -> [zr+10144]
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
                                                                                        je    xchain422_n19_α
                                                                                        jmp   xchain422_n18_α
xchain422_n17_β:
                                                                                        jmp   xchain422_n19_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain422_n18_α:
                        mov              rax, qword ptr [rbp + 10128]
                        mov              rdx, qword ptr [rbp + 10136]
                        mov              qword ptr [1879052656], rax
                        mov              qword ptr [1879052664], rdx
                        mov              qword ptr [rbp + 10112], rax
                        mov              qword ptr [rbp + 10120], rdx
                                                                                        jmp   xchain422_n19_α
xchain422_n18_β:
                                                                                        jmp   xchain422_n19_α
#=======================================================================================================================
# slurp           line            =   INPUT                       :F(slurp_f)
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain422_n19_α:
                        mov              rdi, qword ptr [rip + .Lx448_0]
                        call             NV_GET_fn@PLT
                        cmp              eax, 99
                                                                                        je    xchain422_n21_α
                        mov              qword ptr [rbp + 10224], rax
                        mov              qword ptr [rbp + 10232], rdx
                                                                                        jmp   xchain422_n20_α
xchain422_n19_β:
                                                                                        jmp   xchain422_n21_α
.Lx448_0:
                        .quad            .Lx448_0_s
.Lx448_0_s:
                        .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain422_n20_α:
                        mov              rax, qword ptr [rbp + 10224]
                        mov              rdx, qword ptr [rbp + 10232]
                        mov              qword ptr [1879052736], rax
                        mov              qword ptr [1879052744], rdx
                        mov              qword ptr [rbp + 10208], rax
                        mov              qword ptr [rbp + 10216], rdx
                                                                                        jmp   xchain422_n22_α
xchain422_n20_β:
                                                                                        jmp   xchain422_n21_α
#=======================================================================================================================
# slurp_f         src             =   src b2 b1
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain422_n21_α:
                        mov              rax, qword ptr [1879052784]
                        mov              rdx, qword ptr [1879052792]
                        mov              qword ptr [rbp + 11248], rax
                        mov              qword ptr [rbp + 11256], rdx
                                                                                        jmp   xchain422_n23_α
xchain422_n21_β:
                                                                                        jmp   xchain422_n24_α
#=======================================================================================================================
#                 b1              =   b1 line nl
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain422_n22_α:
                        mov              rax, qword ptr [1879052752]
                        mov              rdx, qword ptr [1879052760]
                        mov              qword ptr [rbp + 10336], rax
                        mov              qword ptr [rbp + 10344], rdx
                                                                                        jmp   xchain422_n25_α
xchain422_n22_β:
                                                                                        jmp   xchain422_n26_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain422_n23_α:
                        mov              rax, qword ptr [1879052768]
                        mov              rdx, qword ptr [1879052776]
                        mov              qword ptr [rbp + 11280], rax
                        mov              qword ptr [rbp + 11288], rdx
                                                                                        jmp   xchain422_n27_α
xchain422_n23_β:
                                                                                        jmp   xchain422_n24_α
#=======================================================================================================================
#                 mem             =   TABLE()
#-----------------------------------------------------------------------------------------------------------------------
xchain422_n24_α:
# BOX IR_CALL TABLE(...) -> rt_call_arr [operand-marshal, FAIL->ω]
                        .section         .rodata
.Lrkfn454:              .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn454]
                        lea              rsi, [rbp + 11376]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 11360], rax
                        mov              qword ptr [rbp + 11368], rdx
                        cmp              eax, 99
                                                                                        je    xchain422_n29_α
                                                                                        jmp   xchain422_n28_α
xchain422_n24_β:
                                                                                        jmp   xchain422_n29_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain422_n25_α:
                        mov              rax, qword ptr [1879052736]
                        mov              rdx, qword ptr [1879052744]
                        mov              qword ptr [rbp + 10368], rax
                        mov              qword ptr [rbp + 10376], rdx
                                                                                        jmp   xchain422_n30_α
xchain422_n25_β:
                                                                                        jmp   xchain422_n26_α
#=======================================================================================================================
#                 GT(SIZE(b1), 8192)                              :F(slurp)
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain422_n26_α:
                        mov              rax, qword ptr [1879052752]
                        mov              rdx, qword ptr [1879052760]
                        mov              qword ptr [rbp + 10608], rax
                        mov              qword ptr [rbp + 10616], rdx
                                                                                        jmp   xchain422_n31_α
xchain422_n26_β:
                                                                                        jmp   xchain422_n19_α
#-----------------------------------------------------------------------------------------------------------------------
xchain422_n27_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 11248]
                        mov              rsi, qword ptr [rbp + 11256]
                        mov              rdx, qword ptr [rbp + 11280]
                        mov              rcx, qword ptr [rbp + 11288]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 11216], rax
                        mov              qword ptr [rbp + 11224], rdx
                                                                                        jmp   xchain422_n32_α
xchain422_n27_β:
                                                                                        jmp   xchain422_n24_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain422_n28_α:
                        mov              rax, qword ptr [rbp + 11360]
                        mov              rdx, qword ptr [rbp + 11368]
                        mov              qword ptr [1879052336], rax
                        mov              qword ptr [1879052344], rdx
                        mov              qword ptr [rbp + 11344], rax
                        mov              qword ptr [rbp + 11352], rdx
                                                                                        jmp   xchain422_n29_α
xchain422_n28_β:
                                                                                        jmp   xchain422_n29_α
#=======================================================================================================================
#                 claws           =
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain422_n29_α:
                        mov              qword ptr [rbp + 11456], 1
                        mov              rax, qword ptr [rip + .Lx459_0]
                        mov              qword ptr [rbp + 11464], rax
                                                                                        jmp   xchain422_n33_α
xchain422_n29_β:
                                                                                        jmp   xchain422_n38_α
.Lx459_0:
                        .quad            .Lx459_0_s
.Lx459_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
xchain422_n30_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 10336]
                        mov              rsi, qword ptr [rbp + 10344]
                        mov              rdx, qword ptr [rbp + 10368]
                        mov              rcx, qword ptr [rbp + 10376]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 10304], rax
                        mov              qword ptr [rbp + 10312], rdx
                                                                                        jmp   xchain422_n34_α
xchain422_n30_β:
                                                                                        jmp   xchain422_n26_α
#-----------------------------------------------------------------------------------------------------------------------
xchain422_n31_α:
# BOX IR_CALL SIZE(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10608] -> [zr+10576]
                        mov              rax, qword ptr [rbp + 10608]
                        mov              qword ptr [rbp + 10576], rax
                        mov              rax, qword ptr [rbp + 10616]
                        mov              qword ptr [rbp + 10584], rax
                        .section         .rodata
.Lrkfn462:              .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn462]
                        lea              rsi, [rbp + 10576]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 10560], rax
                        mov              qword ptr [rbp + 10568], rdx
                        cmp              eax, 99
                                                                                        je    xchain422_n19_α
                                                                                        jmp   xchain422_n35_α
xchain422_n31_β:
                                                                                        jmp   xchain422_n19_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain422_n32_α:
                        mov              rax, qword ptr [1879052752]
                        mov              rdx, qword ptr [1879052760]
                        mov              qword ptr [rbp + 11312], rax
                        mov              qword ptr [rbp + 11320], rdx
                                                                                        jmp   xchain422_n36_α
xchain422_n32_β:
                                                                                        jmp   xchain422_n24_α
#-----------------------------------------------------------------------------------------------------------------------
xchain422_n33_α:
# BOX IR_CALL SNO$MKPAT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11456] -> [zr+11424]
                        mov              rax, qword ptr [rbp + 11456]
                        mov              qword ptr [rbp + 11424], rax
                        mov              rax, qword ptr [rbp + 11464]
                        mov              qword ptr [rbp + 11432], rax
                        .section         .rodata
.Lrkfn465:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn465]
                        lea              rsi, [rbp + 11424]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 11408], rax
                        mov              qword ptr [rbp + 11416], rdx
                        cmp              eax, 99
                                                                                        je    xchain422_n38_α
                                                                                        jmp   xchain422_n37_α
xchain422_n33_β:
                                                                                        jmp   xchain422_n38_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain422_n34_α:
                        mov              rax, qword ptr [1879052656]
                        mov              rdx, qword ptr [1879052664]
                        mov              qword ptr [rbp + 10400], rax
                        mov              qword ptr [rbp + 10408], rdx
                                                                                        jmp   xchain422_n39_α
xchain422_n34_β:
                                                                                        jmp   xchain422_n26_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain422_n35_α:
                        mov              qword ptr [rbp + 10528], 6
                        mov              rax, qword ptr [rip + .Lx467_0]
                        mov              qword ptr [rbp + 10536], rax
                                                                                        jmp   xchain422_n40_α
xchain422_n35_β:
                                                                                        jmp   xchain422_n19_α
.Lx467_0:
                        .quad            8192
#-----------------------------------------------------------------------------------------------------------------------
xchain422_n36_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 11216]
                        mov              rsi, qword ptr [rbp + 11224]
                        mov              rdx, qword ptr [rbp + 11312]
                        mov              rcx, qword ptr [rbp + 11320]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 11184], rax
                        mov              qword ptr [rbp + 11192], rdx
                                                                                        jmp   xchain422_n41_α
xchain422_n36_β:
                                                                                        jmp   xchain422_n24_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain422_n37_α:
                        mov              rax, qword ptr [rbp + 11408]
                        mov              rdx, qword ptr [rbp + 11416]
                        mov              qword ptr [1879052800], rax
                        mov              qword ptr [1879052808], rdx
                        mov              qword ptr [rbp + 11392], rax
                        mov              qword ptr [rbp + 11400], rdx
                                                                                        jmp   xchain422_n38_α
xchain422_n37_β:
                                                                                        jmp   xchain422_n38_α
#=======================================================================================================================
#                 t0              =   TIME()
#-----------------------------------------------------------------------------------------------------------------------
xchain422_n38_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
                        .section         .rodata
.Lrkfn471:              .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn471]
                        lea              rsi, [rbp + 11520]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 11504], rax
                        mov              qword ptr [rbp + 11512], rdx
                        cmp              eax, 99
                                                                                        je    xchain422_n43_α
                                                                                        jmp   xchain422_n42_α
xchain422_n38_β:
                                                                                        jmp   xchain422_n43_α
#-----------------------------------------------------------------------------------------------------------------------
xchain422_n39_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 10304]
                        mov              rsi, qword ptr [rbp + 10312]
                        mov              rdx, qword ptr [rbp + 10400]
                        mov              rcx, qword ptr [rbp + 10408]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 10272], rax
                        mov              qword ptr [rbp + 10280], rdx
                                                                                        jmp   xchain422_n44_α
xchain422_n39_β:
                                                                                        jmp   xchain422_n26_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_COERCE_NUMERIC
xchain422_n40_α:
                        mov              eax, dword ptr [rbp + 10560]
                        cmp              eax, 7
                                                                                        je    .Lx474_1
                        cmp              eax, 6
                                                                                        jne   .Lx474_0
                        mov              eax, dword ptr [rbp + 10528]
                        cmp              eax, 6
                                                                                        jne   .Lx474_0
.Lx474_1:
                        mov              rax, qword ptr [rbp + 10560]
                        mov              qword ptr [rbp + 10496], rax
                        mov              rax, qword ptr [rbp + 10568]
                        mov              qword ptr [rbp + 10504], rax
                                                                                        jmp   xchain422_n45_α
.Lx474_0:
                        lea              rdi, [rbp + 10560]
                        lea              rsi, [rbp + 10528]
                        lea              rdx, [rbp + 10496]
                        mov              rcx, 111
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   xchain422_n45_α
xchain422_n40_β:
                                                                                        jmp   xchain422_n19_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain422_n41_α:
                        mov              rax, qword ptr [rbp + 11184]
                        mov              rdx, qword ptr [rbp + 11192]
                        mov              qword ptr [1879052784], rax
                        mov              qword ptr [1879052792], rdx
                        mov              qword ptr [rbp + 11168], rax
                        mov              qword ptr [rbp + 11176], rdx
                                                                                        jmp   xchain422_n24_α
xchain422_n41_β:
                                                                                        jmp   xchain422_n24_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain422_n42_α:
                        mov              rax, qword ptr [rbp + 11504]
                        mov              rdx, qword ptr [rbp + 11512]
                        mov              qword ptr [1879052816], rax
                        mov              qword ptr [1879052824], rdx
                        mov              qword ptr [rbp + 11488], rax
                        mov              qword ptr [rbp + 11496], rdx
                                                                                        jmp   xchain422_n43_α
xchain422_n42_β:
                                                                                        jmp   xchain422_n43_α
#=======================================================================================================================
#                 src             claws                           :F(fail)
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain422_n43_α:
                        mov              rax, qword ptr [1879052784]
                        mov              rdx, qword ptr [1879052792]
                        mov              qword ptr [rbp + 11616], rax
                        mov              qword ptr [rbp + 11624], rdx
                                                                                        jmp   xchain422_n46_α
xchain422_n43_β:
                                                                                        jmp   xchain422_n47_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain422_n44_α:
                        mov              rax, qword ptr [rbp + 10272]
                        mov              rdx, qword ptr [rbp + 10280]
                        mov              qword ptr [1879052752], rax
                        mov              qword ptr [1879052760], rdx
                        mov              qword ptr [rbp + 10256], rax
                        mov              qword ptr [rbp + 10264], rdx
                                                                                        jmp   xchain422_n26_α
xchain422_n44_β:
                                                                                        jmp   xchain422_n26_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_COERCE_NUMERIC
xchain422_n45_α:
                        mov              eax, dword ptr [rbp + 10528]
                        cmp              eax, 7
                                                                                        je    .Lx480_1
                        cmp              eax, 6
                                                                                        jne   .Lx480_0
                        mov              eax, dword ptr [rbp + 10560]
                        cmp              eax, 6
                                                                                        jne   .Lx480_0
.Lx480_1:
                        mov              rax, qword ptr [rbp + 10528]
                        mov              qword ptr [rbp + 10464], rax
                        mov              rax, qword ptr [rbp + 10536]
                        mov              qword ptr [rbp + 10472], rax
                                                                                        jmp   xchain422_n48_α
.Lx480_0:
                        lea              rdi, [rbp + 10528]
                        lea              rsi, [rbp + 10560]
                        lea              rdx, [rbp + 10464]
                        mov              rcx, 112
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   xchain422_n48_α
xchain422_n45_β:
                                                                                        jmp   xchain422_n19_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_HEAD
xchain422_n46_α:
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
.Lx482_0:
                        mov              r14d, dword ptr [rbp + 11552]
                                                                                        jmp   xchain422_n49_α
xchain422_n46_β:
                        add              dword ptr [rbp + 11552], 1
                        mov              eax, dword ptr [rbp + 11552]
                        cmp              eax, r15d
                                                                                        jg    .Lx482_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx482_1
                                                                                        jmp   .Lx482_0
.Lx482_1:
                        mov              rax, qword ptr [rbp + 11560]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 11568]
                        mov              r12, qword ptr [rbp + 11584]
                        mov              rbp, qword ptr [rbp + 11592]
                                                                                        jmp   xchain422_n47_α
#=======================================================================================================================
# fail            OUTPUT          =  'Pattern match failed'
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain422_n47_α:
                        mov              qword ptr [rbp + 11968], 1
                        mov              rax, qword ptr [rip + .Lx483_0]
                        mov              qword ptr [rbp + 11976], rax
                                                                                        jmp   xchain422_n50_α
xchain422_n47_β:
                                                                                        jmp   main_γ
.Lx483_0:
                        .quad            .Lx483_0_s
.Lx483_0_s:
                        .string          "Pattern match failed"
#-----------------------------------------------------------------------------------------------------------------------
# IR_CMP_TEST
xchain422_n48_α:
                        lea              rdi, [rbp + 10496]
                        lea              rsi, [rbp + 10464]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jle   xchain422_n19_α
                        mov              qword ptr [rbp + 10432], 0
                        mov              qword ptr [rbp + 10440], 0
                                                                                        jmp   xchain422_n51_α
xchain422_n48_β:
                                                                                        jmp   xchain422_n19_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain422_n49_α:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx486_11
                        mov              rax, qword ptr [1879052800]
                        mov              rdx, qword ptr [1879052808]
                        cmp              eax, 3
                                                                                        jne   .Lx486_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx486_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx486_10
.Lx486_9:
                        xor              eax, eax
.Lx486_10:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              qword ptr [rsi + 0], rax
.Lx486_11:
                        test             rax, rax
                                                                                        jz    .Lx486_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx486_4]
                        lea              rdx, [rip + .Lx486_5]
                                                                                        jmp   rax
.Lx486_4:
                                                                                        jmp   xchain422_n52_α
.Lx486_5:
                                                                                        jmp   xchain422_n46_β
.Lx486_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S7]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx486_2:
                        test             rax, rax
                                                                                        je    .Lx486_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx486_7]
                        lea              rdx, [rip + .Lx486_8]
                                                                                        jmp   rax
.Lx486_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx486_2
.Lx486_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx486_2
.Lx486_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    xchain422_n46_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx486_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   xchain422_n52_α
.Lx486_6:
                        add              rsp, 16
                                                                                        jmp   xchain422_n46_β
xchain422_n49_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN global
xchain422_n50_α:
                        mov              rsi, qword ptr [rbp + 11968]
                        mov              rdx, qword ptr [rbp + 11976]
                        mov              rdi, qword ptr [rip + .Lx487_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 11952], rax
                        mov              qword ptr [rbp + 11960], rdx
                                                                                        jmp   main_γ
xchain422_n50_β:
                                                                                        jmp   main_γ
.Lx487_0:
                        .quad            .Lx487_0_s
.Lx487_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#                 b2              =   b2 b1
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain422_n51_α:
                        mov              rax, qword ptr [1879052768]
                        mov              rdx, qword ptr [1879052776]
                        mov              qword ptr [rbp + 10688], rax
                        mov              qword ptr [rbp + 10696], rdx
                                                                                        jmp   xchain422_n53_α
xchain422_n51_β:
                                                                                        jmp   xchain422_n54_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_RELEASE
xchain422_n52_α:
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
.Lx490_1:
                        test             rax, rax
                                                                                        je    .Lx490_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx490_3]
                        lea              rdx, [rip + .Lx490_4]
                                                                                        jmp   rax
.Lx490_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx490_1
.Lx490_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx490_1
.Lx490_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + 11584]
                        mov              rbp, qword ptr [rbp + 11592]
                                                                                        jmp   xchain422_n55_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain422_n53_α:
                        mov              rax, qword ptr [1879052752]
                        mov              rdx, qword ptr [1879052760]
                        mov              qword ptr [rbp + 10720], rax
                        mov              qword ptr [rbp + 10728], rdx
                                                                                        jmp   xchain422_n56_α
xchain422_n53_β:
                                                                                        jmp   xchain422_n54_α
#=======================================================================================================================
#                 b1              =
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain422_n54_α:
                        mov              qword ptr [rbp + 10768], 1
                        mov              rax, qword ptr [rip + .Lx492_0]
                        mov              qword ptr [rbp + 10776], rax
                                                                                        jmp   xchain422_n57_α
xchain422_n54_β:
                                                                                        jmp   xchain422_n61_α
.Lx492_0:
                        .quad            .Lx492_0_s
.Lx492_0_s:
                        .string          ""
#=======================================================================================================================
#                 t1              =   TIME()
#-----------------------------------------------------------------------------------------------------------------------
xchain422_n55_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
                        .section         .rodata
.Lrkfn494:              .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn494]
                        lea              rsi, [rbp + 11680]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 11664], rax
                        mov              qword ptr [rbp + 11672], rdx
                        cmp              eax, 99
                                                                                        je    xchain422_n59_α
                                                                                        jmp   xchain422_n58_α
xchain422_n55_β:
                                                                                        jmp   xchain422_n59_α
#-----------------------------------------------------------------------------------------------------------------------
xchain422_n56_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 10688]
                        mov              rsi, qword ptr [rbp + 10696]
                        mov              rdx, qword ptr [rbp + 10720]
                        mov              rcx, qword ptr [rbp + 10728]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 10656], rax
                        mov              qword ptr [rbp + 10664], rdx
                                                                                        jmp   xchain422_n60_α
xchain422_n56_β:
                                                                                        jmp   xchain422_n54_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain422_n57_α:
                        mov              rax, qword ptr [rbp + 10768]
                        mov              rdx, qword ptr [rbp + 10776]
                        mov              qword ptr [1879052752], rax
                        mov              qword ptr [1879052760], rdx
                        mov              qword ptr [rbp + 10752], rax
                        mov              qword ptr [rbp + 10760], rdx
                                                                                        jmp   xchain422_n61_α
xchain422_n57_β:
                                                                                        jmp   xchain422_n61_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain422_n58_α:
                        mov              rax, qword ptr [rbp + 11664]
                        mov              rdx, qword ptr [rbp + 11672]
                        mov              qword ptr [1879052832], rax
                        mov              qword ptr [1879052840], rdx
                        mov              qword ptr [rbp + 11648], rax
                        mov              qword ptr [rbp + 11656], rdx
                                                                                        jmp   xchain422_n59_α
xchain422_n58_β:
                                                                                        jmp   xchain422_n59_α
#=======================================================================================================================
#                 TERMINAL        =   'match_ms=' (t1 - t0)
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain422_n59_α:
                        mov              qword ptr [rbp + 11744], 1
                        mov              rax, qword ptr [rip + .Lx498_0]
                        mov              qword ptr [rbp + 11752], rax
                                                                                        jmp   xchain422_n62_α
xchain422_n59_β:
                                                                                        jmp   xchain422_n65_α
.Lx498_0:
                        .quad            .Lx498_0_s
.Lx498_0_s:
                        .string          "match_ms="
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain422_n60_α:
                        mov              rax, qword ptr [rbp + 10656]
                        mov              rdx, qword ptr [rbp + 10664]
                        mov              qword ptr [1879052768], rax
                        mov              qword ptr [1879052776], rdx
                        mov              qword ptr [rbp + 10640], rax
                        mov              qword ptr [rbp + 10648], rdx
                                                                                        jmp   xchain422_n54_α
xchain422_n60_β:
                                                                                        jmp   xchain422_n54_α
#=======================================================================================================================
#                 GT(SIZE(b2), 262144)                            :F(slurp)
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain422_n61_α:
                        mov              rax, qword ptr [1879052768]
                        mov              rdx, qword ptr [1879052776]
                        mov              qword ptr [rbp + 10976], rax
                        mov              qword ptr [rbp + 10984], rdx
                                                                                        jmp   xchain422_n63_α
xchain422_n61_β:
                                                                                        jmp   xchain422_n19_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain422_n62_α:
                        mov              rax, qword ptr [1879052832]
                        mov              rdx, qword ptr [1879052840]
                        mov              qword ptr [rbp + 11808], rax
                        mov              qword ptr [rbp + 11816], rdx
                                                                                        jmp   xchain422_n64_α
xchain422_n62_β:
                                                                                        jmp   xchain422_n65_α
#-----------------------------------------------------------------------------------------------------------------------
xchain422_n63_α:
# BOX IR_CALL SIZE(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10976] -> [zr+10944]
                        mov              rax, qword ptr [rbp + 10976]
                        mov              qword ptr [rbp + 10944], rax
                        mov              rax, qword ptr [rbp + 10984]
                        mov              qword ptr [rbp + 10952], rax
                        .section         .rodata
.Lrkfn503:              .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn503]
                        lea              rsi, [rbp + 10944]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 10928], rax
                        mov              qword ptr [rbp + 10936], rdx
                        cmp              eax, 99
                                                                                        je    xchain422_n19_α
                                                                                        jmp   xchain422_n66_α
xchain422_n63_β:
                                                                                        jmp   xchain422_n19_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain422_n64_α:
                        mov              rax, qword ptr [1879052816]
                        mov              rdx, qword ptr [1879052824]
                        mov              qword ptr [rbp + 11840], rax
                        mov              qword ptr [rbp + 11848], rdx
                                                                                        jmp   xchain422_n67_α
xchain422_n64_β:
                                                                                        jmp   xchain422_n65_α
#=======================================================================================================================
#                 pp_mem(mem)                                     :(END)
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain422_n65_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 11920], rax
                        mov              qword ptr [rbp + 11928], rdx
                                                                                        jmp   xchain422_n68_α
xchain422_n65_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain422_n66_α:
                        mov              qword ptr [rbp + 10896], 6
                        mov              rax, qword ptr [rip + .Lx506_0]
                        mov              qword ptr [rbp + 10904], rax
                                                                                        jmp   xchain422_n69_α
xchain422_n66_β:
                                                                                        jmp   xchain422_n19_α
.Lx506_0:
                        .quad            262144
#-----------------------------------------------------------------------------------------------------------------------
xchain422_n67_α:
# IR_BINOP_ARITH
                        mov              eax, dword ptr [rbp + 11808]
                        cmp              eax, 100
                                                                                        je    .Lx507_0
                        mov              eax, dword ptr [rbp + 11840]
                        cmp              eax, 100
                                                                                        je    .Lx507_0
                        mov              eax, dword ptr [rbp + 11808]
                        cmp              eax, 6
                                                                                        jne   .Lx507_2
                        mov              eax, dword ptr [rbp + 11840]
                        cmp              eax, 6
                                                                                        jne   .Lx507_2
.Lx507_1:
                        mov              rax, qword ptr [rbp + 11816]
                        mov              rcx, qword ptr [rbp + 11848]
                        sub              rax, rcx
                        mov              qword ptr [rbp + 11776], 6
                        mov              qword ptr [rbp + 11784], rax
                                                                                        jmp   xchain422_n70_α
.Lx507_0:
                        mov              rdi, qword ptr [rbp + 11808]
                        mov              rsi, qword ptr [rbp + 11816]
                        mov              rdx, qword ptr [rbp + 11840]
                        mov              rcx, qword ptr [rbp + 11848]
                        mov              r8d, 1
                        lea              r9, [rbp + 11776]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   xchain422_n70_α
.Lx507_2:
                        mov              rdi, qword ptr [rbp + 11808]
                        mov              rsi, qword ptr [rbp + 11816]
                        mov              rdx, qword ptr [rbp + 11840]
                        mov              rcx, qword ptr [rbp + 11848]
                        mov              r8d, 1
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    xchain422_n65_α
                        mov              qword ptr [rbp + 11776], rax
                        mov              qword ptr [rbp + 11784], rdx
                                                                                        jmp   xchain422_n70_α
xchain422_n67_β:
                                                                                        jmp   xchain422_n65_α
#-----------------------------------------------------------------------------------------------------------------------
xchain422_n68_α:
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
                        mov              rdi, qword ptr [rip + .Lx509_0]
                        mov              esi, 20
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx509_5
                        mov              rax, qword ptr [rbp + 11920]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rbp + 11928]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx509_6]
                        lea              rdx, [rip + .Lx509_7]
                                                                                        jmp   rax
.Lx509_6:
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
                                                                                        jmp   .Lx509_2
.Lx509_7:
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
                                                                                        jmp   .Lx509_2
.Lx509_5:
                        add              rsp, 336
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx509_20
                        mov              rax, qword ptr [rbp + 11920]
                        mov              rdx, qword ptr [rbp + 11928]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx509_21
.Lx509_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 11920]
                        mov              rdx, qword ptr [rbp + 11928]
                        call             rt_arg_stage@PLT
.Lx509_21:
                        mov              rdi, qword ptr [rip + .Lx509_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx509_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx509_3]
                        lea              rdx, [rip + .Lx509_4]
                                                                                        jmp   rax
.Lx509_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx509_2
.Lx509_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx509_2
.Lx509_1:
                        call             rt_faildescr@PLT
.Lx509_2:
                        mov              qword ptr [rbp + 11872], rax
                        mov              qword ptr [rbp + 11880], rdx
                        cmp              eax, 99
                                                                                        je    main_γ
                                                                                        jmp   main_γ
xchain422_n68_β:
                                                                                        jmp   main_γ
.Lx509_0:
                        .quad            .Lx509_0_s
.Lx509_0_s:
                        .string          "pp_mem"
#-----------------------------------------------------------------------------------------------------------------------
# IR_COERCE_NUMERIC
xchain422_n69_α:
                        mov              eax, dword ptr [rbp + 10928]
                        cmp              eax, 7
                                                                                        je    .Lx511_1
                        cmp              eax, 6
                                                                                        jne   .Lx511_0
                        mov              eax, dword ptr [rbp + 10896]
                        cmp              eax, 6
                                                                                        jne   .Lx511_0
.Lx511_1:
                        mov              rax, qword ptr [rbp + 10928]
                        mov              qword ptr [rbp + 10864], rax
                        mov              rax, qword ptr [rbp + 10936]
                        mov              qword ptr [rbp + 10872], rax
                                                                                        jmp   xchain422_n71_α
.Lx511_0:
                        lea              rdi, [rbp + 10928]
                        lea              rsi, [rbp + 10896]
                        lea              rdx, [rbp + 10864]
                        mov              rcx, 111
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   xchain422_n71_α
xchain422_n69_β:
                                                                                        jmp   xchain422_n19_α
#-----------------------------------------------------------------------------------------------------------------------
xchain422_n70_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 11744]
                        mov              rsi, qword ptr [rbp + 11752]
                        mov              rdx, qword ptr [rbp + 11776]
                        mov              rcx, qword ptr [rbp + 11784]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 11712], rax
                        mov              qword ptr [rbp + 11720], rdx
                                                                                        jmp   xchain422_n72_α
xchain422_n70_β:
                                                                                        jmp   xchain422_n65_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_COERCE_NUMERIC
xchain422_n71_α:
                        mov              eax, dword ptr [rbp + 10896]
                        cmp              eax, 7
                                                                                        je    .Lx514_1
                        cmp              eax, 6
                                                                                        jne   .Lx514_0
                        mov              eax, dword ptr [rbp + 10928]
                        cmp              eax, 6
                                                                                        jne   .Lx514_0
.Lx514_1:
                        mov              rax, qword ptr [rbp + 10896]
                        mov              qword ptr [rbp + 10832], rax
                        mov              rax, qword ptr [rbp + 10904]
                        mov              qword ptr [rbp + 10840], rax
                                                                                        jmp   xchain422_n73_α
.Lx514_0:
                        lea              rdi, [rbp + 10896]
                        lea              rsi, [rbp + 10928]
                        lea              rdx, [rbp + 10832]
                        mov              rcx, 112
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   xchain422_n73_α
xchain422_n71_β:
                                                                                        jmp   xchain422_n19_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN global
xchain422_n72_α:
                        mov              rsi, qword ptr [rbp + 11712]
                        mov              rdx, qword ptr [rbp + 11720]
                        mov              rdi, qword ptr [rip + .Lx515_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 11696], rax
                        mov              qword ptr [rbp + 11704], rdx
                                                                                        jmp   xchain422_n65_α
xchain422_n72_β:
                                                                                        jmp   xchain422_n65_α
.Lx515_0:
                        .quad            .Lx515_0_s
.Lx515_0_s:
                        .string          "TERMINAL"
#-----------------------------------------------------------------------------------------------------------------------
# IR_CMP_TEST
xchain422_n73_α:
                        lea              rdi, [rbp + 10864]
                        lea              rsi, [rbp + 10832]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jle   xchain422_n19_α
                        mov              qword ptr [rbp + 10800], 0
                        mov              qword ptr [rbp + 10808], 0
                                                                                        jmp   xchain422_n74_α
xchain422_n73_β:
                                                                                        jmp   xchain422_n19_α
#=======================================================================================================================
#                 src             =   src b2
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain422_n74_α:
                        mov              rax, qword ptr [1879052784]
                        mov              rdx, qword ptr [1879052792]
                        mov              qword ptr [rbp + 11056], rax
                        mov              qword ptr [rbp + 11064], rdx
                                                                                        jmp   xchain422_n75_α
xchain422_n74_β:
                                                                                        jmp   xchain422_n76_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain422_n75_α:
                        mov              rax, qword ptr [1879052768]
                        mov              rdx, qword ptr [1879052776]
                        mov              qword ptr [rbp + 11088], rax
                        mov              qword ptr [rbp + 11096], rdx
                                                                                        jmp   xchain422_n77_α
xchain422_n75_β:
                                                                                        jmp   xchain422_n76_α
#=======================================================================================================================
#                 b2              =                               :(slurp)
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain422_n76_α:
                        mov              qword ptr [rbp + 11136], 1
                        mov              rax, qword ptr [rip + .Lx520_0]
                        mov              qword ptr [rbp + 11144], rax
                                                                                        jmp   xchain422_n78_α
xchain422_n76_β:
                                                                                        jmp   xchain422_n19_α
.Lx520_0:
                        .quad            .Lx520_0_s
.Lx520_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
xchain422_n77_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 11056]
                        mov              rsi, qword ptr [rbp + 11064]
                        mov              rdx, qword ptr [rbp + 11088]
                        mov              rcx, qword ptr [rbp + 11096]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 11024], rax
                        mov              qword ptr [rbp + 11032], rdx
                                                                                        jmp   xchain422_n79_α
xchain422_n77_β:
                                                                                        jmp   xchain422_n76_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain422_n78_α:
                        mov              rax, qword ptr [rbp + 11136]
                        mov              rdx, qword ptr [rbp + 11144]
                        mov              qword ptr [1879052768], rax
                        mov              qword ptr [1879052776], rdx
                        mov              qword ptr [rbp + 11120], rax
                        mov              qword ptr [rbp + 11128], rdx
                                                                                        jmp   xchain422_n19_α
xchain422_n78_β:
                                                                                        jmp   xchain422_n19_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain422_n79_α:
                        mov              rax, qword ptr [rbp + 11024]
                        mov              rdx, qword ptr [rbp + 11032]
                        mov              qword ptr [1879052784], rax
                        mov              qword ptr [1879052792], rdx
                        mov              qword ptr [rbp + 11008], rax
                        mov              qword ptr [rbp + 11016], rdx
                                                                                        jmp   xchain422_n76_α
xchain422_n79_β:
                                                                                        jmp   xchain422_n76_α
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, qword ptr [rbp + 12008]
                        mov              rbp, [rsp + 65536]
                        add              rsp, 65544
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, qword ptr [rbp + 12008]
                        mov              dword ptr [rsp+0], 99
                        mov              dword ptr [rsp+4], 0
                        mov              qword ptr [rsp+8], 0
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 65536]
                        add              rsp, 65544
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
