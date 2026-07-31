                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_LBL__new_sent_α
proc_LBL__new_sent_α:
                        .global          proc_LBL__new_sent_α
                        .global          proc_LBL__new_sent_β
                        .global          proc_LBL__new_sent_γ
                        .global          proc_LBL__new_sent_ω
                        sub              rsp, 6736
                        mov              [rsp + 6712], rcx
                        mov              [rsp + 6720], rdx
                        mov              [rsp + 6728], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 272], 0
                        mov              qword ptr [rsp + 280], 0
                        mov              qword ptr [rsp + 6688], 0
                        mov              qword ptr [rsp + 6696], 0
proc_LBL__new_sent_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_goto_α:
                                                                                        jmp   n1_var_α
n0_goto_β:
                                                                                        jmp   proc_LBL__new_sent_ω
#=======================================================================================================================
# new_sent        sentno          =  +num
#-----------------------------------------------------------------------------------------------------------------------
n1_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052704]
                        mov              rdx, qword ptr [1879052712]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n2_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n2_unop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        call             rt_num_pos@PLT
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        add              rsp, 16
                                                                                        jmp   n3_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n3_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052384], rax
                        mov              qword ptr [1879052392], rdx
                                                                                        jmp   n4_var_α
#=======================================================================================================================
#                 mem[sentno]     =  TABLE()
#-----------------------------------------------------------------------------------------------------------------------
n4_var_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                                                                                        jmp   n5_var_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_α:
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                                                                                        jmp   n6_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n6_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 384]
                        mov              rsi, qword ptr [rsp + 392]
                        mov              rdx, qword ptr [rsp + 400]
                        mov              rcx, qword ptr [rsp + 408]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx22_240
                        add              rsp, 16
                                                                                        jmp   n9_lit_string_α
.Lx22_240:
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                        add              rsp, 16
                                                                                        jmp   n7_call_α
#-----------------------------------------------------------------------------------------------------------------------
n7_call_α:
                        .section         .rodata
.Lrkfn24:               .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn24]
                        lea              rsi, [rsp + 432]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                        cmp              eax, 99
                                                                                        je    n9_lit_string_α
                                                                                        jmp   n8_assign_var_α
n7_call_β:
                                                                                        jmp   n9_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n8_assign_var_α:
                        mov              rdi, qword ptr [rsp + 400]
                        mov              rsi, qword ptr [rsp + 408]
                        mov              rdx, qword ptr [rsp + 416]
                        mov              rcx, qword ptr [rsp + 424]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n9_lit_string_α
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                                                                                        jmp   n9_lit_string_α
#=======================================================================================================================
#                 new_sent        =  .dummy                       :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:
                        mov              qword ptr [rsp + 512], 1
                        mov              dword ptr [rsp + 516], 5
                        mov              rax, qword ptr [rip + .Lx26_0]
                        mov              qword ptr [rsp + 520], rax
                                                                                        jmp   n10_call_α
.Lx26_0:
                        .quad            .Lx26_0_s
.Lx26_0_s:
                        .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n10_call_α:
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 488], rax
                        .section         .rodata
.Lrkfn28:               .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn28]
                        lea              rsi, [rsp + 480]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                        cmp              eax, 99
                                                                                        je    n12_lit_string_α
                                                                                        jmp   n11_assign_α
n10_call_β:
                                                                                        jmp   n12_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n11_assign_α:
                        mov              rax, qword ptr [rsp + 464]
                        mov              rdx, qword ptr [rsp + 472]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n12_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_string_α:
                        mov              qword ptr [rsp + 32], 1
                        mov              dword ptr [rsp + 36], 0
                        mov              rax, qword ptr [rip + .Lx30_0]
                        mov              qword ptr [rsp + 40], rax
                                                                                        jmp   n13_call_α
.Lx30_0:
                        .quad            .Lx30_0_s
.Lx30_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n13_call_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 72], rax
                        .section         .rodata
.Lrkfn32:               .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn32]
                        lea              rsi, [rsp + 64]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              eax, 99
                                                                                        je    n15_save_restore_α
                                                                                        jmp   n14_save_restore_α
n13_call_β:
                                                                                        jmp   n15_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n14_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n15_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__new_sent_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__new_sent_β:
                                                                                        jmp   proc_LBL__new_sent_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__new_sent_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 6712]
                        lea              rsp, [rbp + 6736]
                        mov              rbp, [rbp + 6728]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__new_sent_ω:
                        mov              rax, [rbp + 6720]
                        lea              rsp, [rbp + 6736]
                        mov              rbp, [rbp + 6728]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_LBL__add_tok_α
proc_LBL__add_tok_α:
                        .global          proc_LBL__add_tok_α
                        .global          proc_LBL__add_tok_β
                        .global          proc_LBL__add_tok_γ
                        .global          proc_LBL__add_tok_ω
                        sub              rsp, 6736
                        mov              [rsp + 6712], rcx
                        mov              [rsp + 6720], rdx
                        mov              [rsp + 6728], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 272], 0
                        mov              qword ptr [rsp + 280], 0
                        mov              qword ptr [rsp + 6688], 0
                        mov              qword ptr [rsp + 6696], 0
proc_LBL__add_tok_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n37_goto_α:
                                                                                        jmp   n38_var_α
n37_goto_β:
                                                                                        jmp   proc_LBL__add_tok_ω
#=======================================================================================================================
# add_tok         DIFFER(mem[sentno][wrd])                        :F(new_wrd)
#-----------------------------------------------------------------------------------------------------------------------
n38_var_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                                                                                        jmp   n39_var_α
#-----------------------------------------------------------------------------------------------------------------------
n39_var_α:
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                                                                                        jmp   n40_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n40_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 592]
                        mov              rsi, qword ptr [rsp + 600]
                        mov              rdx, qword ptr [rsp + 608]
                        mov              rcx, qword ptr [rsp + 616]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx108_240
                        add              rsp, 16
                                                                                        jmp   n79_var_α
.Lx108_240:
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx
                        add              rsp, 16
                                                                                        jmp   n41_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n41_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 624]
                        mov              rsi, qword ptr [rsp + 632]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx109_240
                        add              rsp, 16
                                                                                        jmp   n79_var_α
.Lx109_240:
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx
                        add              rsp, 16
                                                                                        jmp   n42_var_α
#-----------------------------------------------------------------------------------------------------------------------
n42_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx
                                                                                        jmp   n43_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n43_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 640]
                        mov              rsi, qword ptr [rsp + 648]
                        mov              rdx, qword ptr [rsp + 656]
                        mov              rcx, qword ptr [rsp + 664]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx111_240
                        add              rsp, 16
                                                                                        jmp   n79_var_α
.Lx111_240:
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx
                        add              rsp, 16
                                                                                        jmp   n44_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n44_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 672]
                        mov              rsi, qword ptr [rsp + 680]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx112_240
                        add              rsp, 16
                                                                                        jmp   n79_var_α
.Lx112_240:
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                        add              rsp, 16
                                                                                        jmp   n45_call_α
#-----------------------------------------------------------------------------------------------------------------------
n45_call_α:
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 552], rax
                        .section         .rodata
.Lrkfn114:              .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn114]
                        lea              rsi, [rsp + 544]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx
                        cmp              eax, 99
                                                                                        je    n79_var_α
                                                                                        jmp   n46_var_α
n45_call_β:
                                                                                        jmp   n79_var_α
#=======================================================================================================================
#                 DIFFER(mem[sentno][wrd][tag])                   :F(new_tag)
#-----------------------------------------------------------------------------------------------------------------------
n46_var_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx
                                                                                        jmp   n47_var_α
#-----------------------------------------------------------------------------------------------------------------------
n47_var_α:
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx
                                                                                        jmp   n48_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n48_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 752]
                        mov              rsi, qword ptr [rsp + 760]
                        mov              rdx, qword ptr [rsp + 768]
                        mov              rcx, qword ptr [rsp + 776]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx117_240
                        add              rsp, 16
                                                                                        jmp   n87_var_α
.Lx117_240:
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx
                        add              rsp, 16
                                                                                        jmp   n49_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n49_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 784]
                        mov              rsi, qword ptr [rsp + 792]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx118_240
                        add              rsp, 16
                                                                                        jmp   n87_var_α
.Lx118_240:
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx
                        add              rsp, 16
                                                                                        jmp   n50_var_α
#-----------------------------------------------------------------------------------------------------------------------
n50_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx
                                                                                        jmp   n51_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n51_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 800]
                        mov              rsi, qword ptr [rsp + 808]
                        mov              rdx, qword ptr [rsp + 816]
                        mov              rcx, qword ptr [rsp + 824]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx120_240
                        add              rsp, 16
                                                                                        jmp   n87_var_α
.Lx120_240:
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx
                        add              rsp, 16
                                                                                        jmp   n52_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n52_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 832]
                        mov              rsi, qword ptr [rsp + 840]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx121_240
                        add              rsp, 16
                                                                                        jmp   n87_var_α
.Lx121_240:
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx
                        add              rsp, 16
                                                                                        jmp   n53_var_α
#-----------------------------------------------------------------------------------------------------------------------
n53_var_α:
                        mov              rax, qword ptr [1879052512]
                        mov              rdx, qword ptr [1879052520]
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx
                                                                                        jmp   n54_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n54_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 848]
                        mov              rsi, qword ptr [rsp + 856]
                        mov              rdx, qword ptr [rsp + 864]
                        mov              rcx, qword ptr [rsp + 872]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx123_240
                        add              rsp, 16
                                                                                        jmp   n87_var_α
.Lx123_240:
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx
                        add              rsp, 16
                                                                                        jmp   n55_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n55_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 880]
                        mov              rsi, qword ptr [rsp + 888]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx124_240
                        add              rsp, 16
                                                                                        jmp   n87_var_α
.Lx124_240:
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx
                        add              rsp, 16
                                                                                        jmp   n56_call_α
#-----------------------------------------------------------------------------------------------------------------------
n56_call_α:
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 712], rax
                        .section         .rodata
.Lrkfn126:              .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn126]
                        lea              rsi, [rsp + 704]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                        cmp              eax, 99
                                                                                        je    n87_var_α
                                                                                        jmp   n57_var_α
n56_call_β:
                                                                                        jmp   n87_var_α
#=======================================================================================================================
#                 mem[sentno][wrd][tag]  =  mem[sentno][wrd][tag] + 1  :(done)
#-----------------------------------------------------------------------------------------------------------------------
n57_var_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx
                                                                                        jmp   n58_var_α
#-----------------------------------------------------------------------------------------------------------------------
n58_var_α:
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx
                                                                                        jmp   n59_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n59_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 912]
                        mov              rsi, qword ptr [rsp + 920]
                        mov              rdx, qword ptr [rsp + 928]
                        mov              rcx, qword ptr [rsp + 936]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx129_240
                        add              rsp, 16
                                                                                        jmp   n98_lit_string_α
.Lx129_240:
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx
                        add              rsp, 16
                                                                                        jmp   n60_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n60_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 944]
                        mov              rsi, qword ptr [rsp + 952]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx130_240
                        add              rsp, 16
                                                                                        jmp   n98_lit_string_α
.Lx130_240:
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx
                        add              rsp, 16
                                                                                        jmp   n61_var_α
#-----------------------------------------------------------------------------------------------------------------------
n61_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx
                                                                                        jmp   n62_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n62_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 960]
                        mov              rsi, qword ptr [rsp + 968]
                        mov              rdx, qword ptr [rsp + 976]
                        mov              rcx, qword ptr [rsp + 984]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx132_240
                        add              rsp, 16
                                                                                        jmp   n98_lit_string_α
.Lx132_240:
                        mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx
                        add              rsp, 16
                                                                                        jmp   n63_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n63_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 992]
                        mov              rsi, qword ptr [rsp + 1000]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx133_240
                        add              rsp, 16
                                                                                        jmp   n98_lit_string_α
.Lx133_240:
                        mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1016], rdx
                        add              rsp, 16
                                                                                        jmp   n64_var_α
#-----------------------------------------------------------------------------------------------------------------------
n64_var_α:
                        mov              rax, qword ptr [1879052512]
                        mov              rdx, qword ptr [1879052520]
                        mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1016], rdx
                                                                                        jmp   n65_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n65_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 1008]
                        mov              rsi, qword ptr [rsp + 1016]
                        mov              rdx, qword ptr [rsp + 1024]
                        mov              rcx, qword ptr [rsp + 1032]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx135_240
                        add              rsp, 16
                                                                                        jmp   n98_lit_string_α
.Lx135_240:
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx
                        add              rsp, 16
                                                                                        jmp   n66_var_α
#-----------------------------------------------------------------------------------------------------------------------
n66_var_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx
                                                                                        jmp   n67_var_α
#-----------------------------------------------------------------------------------------------------------------------
n67_var_α:
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 1072], rax
                        mov              qword ptr [rsp + 1080], rdx
                                                                                        jmp   n68_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n68_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 1072]
                        mov              rsi, qword ptr [rsp + 1080]
                        mov              rdx, qword ptr [rsp + 1088]
                        mov              rcx, qword ptr [rsp + 1096]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx138_240
                        add              rsp, 16
                                                                                        jmp   n98_lit_string_α
.Lx138_240:
                        mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rdx
                        add              rsp, 16
                                                                                        jmp   n69_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n69_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 1104]
                        mov              rsi, qword ptr [rsp + 1112]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx139_240
                        add              rsp, 16
                                                                                        jmp   n98_lit_string_α
.Lx139_240:
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx
                        add              rsp, 16
                                                                                        jmp   n70_var_α
#-----------------------------------------------------------------------------------------------------------------------
n70_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx
                                                                                        jmp   n71_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n71_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 1120]
                        mov              rsi, qword ptr [rsp + 1128]
                        mov              rdx, qword ptr [rsp + 1136]
                        mov              rcx, qword ptr [rsp + 1144]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx141_240
                        add              rsp, 16
                                                                                        jmp   n98_lit_string_α
.Lx141_240:
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx
                        add              rsp, 16
                                                                                        jmp   n72_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n72_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 1152]
                        mov              rsi, qword ptr [rsp + 1160]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx142_240
                        add              rsp, 16
                                                                                        jmp   n98_lit_string_α
.Lx142_240:
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx
                        add              rsp, 16
                                                                                        jmp   n73_var_α
#-----------------------------------------------------------------------------------------------------------------------
n73_var_α:
                        mov              rax, qword ptr [1879052512]
                        mov              rdx, qword ptr [1879052520]
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx
                                                                                        jmp   n74_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n74_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 1168]
                        mov              rsi, qword ptr [rsp + 1176]
                        mov              rdx, qword ptr [rsp + 1184]
                        mov              rcx, qword ptr [rsp + 1192]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx144_240
                        add              rsp, 16
                                                                                        jmp   n98_lit_string_α
.Lx144_240:
                        mov              qword ptr [rsp + 1200], rax
                        mov              qword ptr [rsp + 1208], rdx
                        add              rsp, 16
                                                                                        jmp   n75_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n75_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 1200]
                        mov              rsi, qword ptr [rsp + 1208]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx145_240
                        add              rsp, 16
                                                                                        jmp   n98_lit_string_α
.Lx145_240:
                        mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx
                        add              rsp, 16
                                                                                        jmp   n76_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_integer_α:
                        mov              qword ptr [rsp + 1216], 6
                        mov              rax, qword ptr [rip + .Lx146_0]
                        mov              qword ptr [rsp + 1224], rax
                                                                                        jmp   n77_binop_α
.Lx146_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n77_binop_α:
                        mov              eax, dword ptr [rsp + 1200]
                        cmp              eax, 6
                                                                                        jne   .Lx147_0
                        mov              rax, qword ptr [rsp + 1208]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rsp + 1040], 6
                        mov              qword ptr [rsp + 1048], rax
                                                                                        jmp   n78_assign_var_α
.Lx147_0:
                        mov              rdi, qword ptr [rsp + 1200]
                        mov              rsi, qword ptr [rsp + 1208]
                        mov              rdx, qword ptr [rsp + 1216]
                        mov              rcx, qword ptr [rsp + 1224]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n98_lit_string_α
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx
                                                                                        jmp   n78_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n78_assign_var_α:
                        mov              rdi, qword ptr [rsp + 1024]
                        mov              rsi, qword ptr [rsp + 1032]
                        mov              rdx, qword ptr [rsp + 1040]
                        mov              rcx, qword ptr [rsp + 1048]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n98_lit_string_α
                        mov              qword ptr [rsp + 1232], rax
                        mov              qword ptr [rsp + 1240], rdx
                                                                                        jmp   n98_lit_string_α
#=======================================================================================================================
# new_wrd         mem[sentno][wrd]       =  TABLE()
#-----------------------------------------------------------------------------------------------------------------------
n79_var_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 1248], rax
                        mov              qword ptr [rsp + 1256], rdx
                                                                                        jmp   n80_var_α
#-----------------------------------------------------------------------------------------------------------------------
n80_var_α:
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 1264], rax
                        mov              qword ptr [rsp + 1272], rdx
                                                                                        jmp   n81_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n81_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 1264]
                        mov              rsi, qword ptr [rsp + 1272]
                        mov              rdx, qword ptr [rsp + 1280]
                        mov              rcx, qword ptr [rsp + 1288]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx151_240
                        add              rsp, 16
                                                                                        jmp   n87_var_α
.Lx151_240:
                        mov              qword ptr [rsp + 1296], rax
                        mov              qword ptr [rsp + 1304], rdx
                        add              rsp, 16
                                                                                        jmp   n82_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n82_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 1296]
                        mov              rsi, qword ptr [rsp + 1304]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx152_240
                        add              rsp, 16
                                                                                        jmp   n87_var_α
.Lx152_240:
                        mov              qword ptr [rsp + 1312], rax
                        mov              qword ptr [rsp + 1320], rdx
                        add              rsp, 16
                                                                                        jmp   n83_var_α
#-----------------------------------------------------------------------------------------------------------------------
n83_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 1312], rax
                        mov              qword ptr [rsp + 1320], rdx
                                                                                        jmp   n84_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n84_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 1312]
                        mov              rsi, qword ptr [rsp + 1320]
                        mov              rdx, qword ptr [rsp + 1328]
                        mov              rcx, qword ptr [rsp + 1336]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx154_240
                        add              rsp, 16
                                                                                        jmp   n87_var_α
.Lx154_240:
                        mov              qword ptr [rsp + 1344], rax
                        mov              qword ptr [rsp + 1352], rdx
                        add              rsp, 16
                                                                                        jmp   n85_call_α
#-----------------------------------------------------------------------------------------------------------------------
n85_call_α:
                        .section         .rodata
.Lrkfn156:              .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn156]
                        lea              rsi, [rsp + 1360]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1344], rax
                        mov              qword ptr [rsp + 1352], rdx
                        cmp              eax, 99
                                                                                        je    n87_var_α
                                                                                        jmp   n86_assign_var_α
n85_call_β:
                                                                                        jmp   n87_var_α
#-----------------------------------------------------------------------------------------------------------------------
n86_assign_var_α:
                        mov              rdi, qword ptr [rsp + 1328]
                        mov              rsi, qword ptr [rsp + 1336]
                        mov              rdx, qword ptr [rsp + 1344]
                        mov              rcx, qword ptr [rsp + 1352]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n87_var_α
                        mov              qword ptr [rsp + 1376], rax
                        mov              qword ptr [rsp + 1384], rdx
                                                                                        jmp   n87_var_α
#=======================================================================================================================
# new_tag         mem[sentno][wrd][tag]  =  1
#-----------------------------------------------------------------------------------------------------------------------
n87_var_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 1392], rax
                        mov              qword ptr [rsp + 1400], rdx
                                                                                        jmp   n88_var_α
#-----------------------------------------------------------------------------------------------------------------------
n88_var_α:
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 1408], rax
                        mov              qword ptr [rsp + 1416], rdx
                                                                                        jmp   n89_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n89_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 1408]
                        mov              rsi, qword ptr [rsp + 1416]
                        mov              rdx, qword ptr [rsp + 1424]
                        mov              rcx, qword ptr [rsp + 1432]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx160_240
                        add              rsp, 16
                                                                                        jmp   n98_lit_string_α
.Lx160_240:
                        mov              qword ptr [rsp + 1440], rax
                        mov              qword ptr [rsp + 1448], rdx
                        add              rsp, 16
                                                                                        jmp   n90_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n90_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 1440]
                        mov              rsi, qword ptr [rsp + 1448]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx161_240
                        add              rsp, 16
                                                                                        jmp   n98_lit_string_α
.Lx161_240:
                        mov              qword ptr [rsp + 1456], rax
                        mov              qword ptr [rsp + 1464], rdx
                        add              rsp, 16
                                                                                        jmp   n91_var_α
#-----------------------------------------------------------------------------------------------------------------------
n91_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 1456], rax
                        mov              qword ptr [rsp + 1464], rdx
                                                                                        jmp   n92_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n92_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 1456]
                        mov              rsi, qword ptr [rsp + 1464]
                        mov              rdx, qword ptr [rsp + 1472]
                        mov              rcx, qword ptr [rsp + 1480]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx163_240
                        add              rsp, 16
                                                                                        jmp   n98_lit_string_α
.Lx163_240:
                        mov              qword ptr [rsp + 1488], rax
                        mov              qword ptr [rsp + 1496], rdx
                        add              rsp, 16
                                                                                        jmp   n93_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n93_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 1488]
                        mov              rsi, qword ptr [rsp + 1496]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx164_240
                        add              rsp, 16
                                                                                        jmp   n98_lit_string_α
.Lx164_240:
                        mov              qword ptr [rsp + 1504], rax
                        mov              qword ptr [rsp + 1512], rdx
                        add              rsp, 16
                                                                                        jmp   n94_var_α
#-----------------------------------------------------------------------------------------------------------------------
n94_var_α:
                        mov              rax, qword ptr [1879052512]
                        mov              rdx, qword ptr [1879052520]
                        mov              qword ptr [rsp + 1504], rax
                        mov              qword ptr [rsp + 1512], rdx
                                                                                        jmp   n95_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n95_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 1504]
                        mov              rsi, qword ptr [rsp + 1512]
                        mov              rdx, qword ptr [rsp + 1520]
                        mov              rcx, qword ptr [rsp + 1528]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx166_240
                        add              rsp, 16
                                                                                        jmp   n98_lit_string_α
.Lx166_240:
                        mov              qword ptr [rsp + 1536], rax
                        mov              qword ptr [rsp + 1544], rdx
                        add              rsp, 16
                                                                                        jmp   n96_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_integer_α:
                        mov              qword ptr [rsp + 1536], 6
                        mov              rax, qword ptr [rip + .Lx167_0]
                        mov              qword ptr [rsp + 1544], rax
                                                                                        jmp   n97_assign_var_α
.Lx167_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n97_assign_var_α:
                        mov              rdi, qword ptr [rsp + 1520]
                        mov              rsi, qword ptr [rsp + 1528]
                        mov              rdx, qword ptr [rsp + 1536]
                        mov              rcx, qword ptr [rsp + 1544]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n98_lit_string_α
                        mov              qword ptr [rsp + 1552], rax
                        mov              qword ptr [rsp + 1560], rdx
                                                                                        jmp   n98_lit_string_α
#=======================================================================================================================
# done            add_tok         =  .dummy                       :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n98_lit_string_α:
                        mov              qword ptr [rsp + 1616], 1
                        mov              dword ptr [rsp + 1620], 5
                        mov              rax, qword ptr [rip + .Lx169_0]
                        mov              qword ptr [rsp + 1624], rax
                                                                                        jmp   n99_call_α
.Lx169_0:
                        .quad            .Lx169_0_s
.Lx169_0_s:
                        .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n99_call_α:
                        mov              rax, qword ptr [rsp + 1616]
                        mov              qword ptr [rsp + 1584], rax
                        mov              rax, qword ptr [rsp + 1624]
                        mov              qword ptr [rsp + 1592], rax
                        .section         .rodata
.Lrkfn171:              .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn171]
                        lea              rsi, [rsp + 1584]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1568], rax
                        mov              qword ptr [rsp + 1576], rdx
                        cmp              eax, 99
                                                                                        je    n101_lit_string_α
                                                                                        jmp   n100_assign_α
n99_call_β:
                                                                                        jmp   n101_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n100_assign_α:
                        mov              rax, qword ptr [rsp + 1568]
                        mov              rdx, qword ptr [rsp + 1576]
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n101_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n101_lit_string_α:
                        mov              qword ptr [rsp + 32], 1
                        mov              dword ptr [rsp + 36], 0
                        mov              rax, qword ptr [rip + .Lx173_0]
                        mov              qword ptr [rsp + 40], rax
                                                                                        jmp   n102_call_α
.Lx173_0:
                        .quad            .Lx173_0_s
.Lx173_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n102_call_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 72], rax
                        .section         .rodata
.Lrkfn175:              .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn175]
                        lea              rsi, [rsp + 64]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              eax, 99
                                                                                        je    n104_save_restore_α
                                                                                        jmp   n103_save_restore_α
n102_call_β:
                                                                                        jmp   n104_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n103_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n104_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__add_tok_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__add_tok_β:
                                                                                        jmp   proc_LBL__add_tok_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__add_tok_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 6712]
                        lea              rsp, [rbp + 6736]
                        mov              rbp, [rbp + 6728]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__add_tok_ω:
                        mov              rax, [rbp + 6720]
                        lea              rsp, [rbp + 6736]
                        mov              rbp, [rbp + 6728]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_LBL__pp_mem_α
proc_LBL__pp_mem_α:
                        .global          proc_LBL__pp_mem_α
                        .global          proc_LBL__pp_mem_β
                        .global          proc_LBL__pp_mem_γ
                        .global          proc_LBL__pp_mem_ω
                        sub              rsp, 6736
                        mov              [rsp + 6712], rcx
                        mov              [rsp + 6720], rdx
                        mov              [rsp + 6728], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 272], 0
                        mov              qword ptr [rsp + 280], 0
                        mov              qword ptr [rsp + 6688], 0
                        mov              qword ptr [rsp + 6696], 0
proc_LBL__pp_mem_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n180_goto_α:
                                                                                        jmp   n181_var_α
n180_goto_β:
                                                                                        jmp   proc_LBL__pp_mem_ω
#=======================================================================================================================
# pp_mem          ssk             =   SORT(mem)
#-----------------------------------------------------------------------------------------------------------------------
n181_var_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 1680], rax
                        mov              qword ptr [rsp + 1688], rdx
                                                                                        jmp   n182_call_α
n181_var_β:
                                                                                        jmp   n184_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n182_call_α:
                        mov              rax, qword ptr [rsp + 1680]
                        mov              qword ptr [rsp + 1648], rax
                        mov              rax, qword ptr [rsp + 1688]
                        mov              qword ptr [rsp + 1656], rax
                        .section         .rodata
.Lbynamefn83:           .string          "SORT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn83]
                        lea              rsi, [rsp + 1648]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1632], rax
                        mov              qword ptr [rsp + 1640], rdx
                        cmp              eax, 99
                                                                                        je    n184_lit_integer_α
                                                                                        jmp   n183_assign_α
n182_call_β:
                                                                                        jmp   n184_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n183_assign_α:
                        mov              rax, qword ptr [rsp + 1632]
                        mov              rdx, qword ptr [rsp + 1640]
                        mov              qword ptr [1879052352], rax
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n184_lit_integer_α
n183_assign_β:
                                                                                        jmp   n184_lit_integer_α
#=======================================================================================================================
#                 si              =   0
#-----------------------------------------------------------------------------------------------------------------------
n184_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx437_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n185_assign_α
n184_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n186_lit_integer_α
.Lx437_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n185_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n186_lit_integer_α
n185_assign_β:
                                                                                        jmp   n186_lit_integer_α
#=======================================================================================================================
#                 ns              =   0
#-----------------------------------------------------------------------------------------------------------------------
n186_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx439_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n187_assign_α
n186_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n188_var_α
.Lx439_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n187_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052640], rax
                        mov              qword ptr [1879052648], rdx
                                                                                        jmp   n188_var_α
n187_assign_β:
                                                                                        jmp   n188_var_α
#=======================================================================================================================
# pm_cnt_loop     ns              =   ns + 1
#-----------------------------------------------------------------------------------------------------------------------
n188_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052640]
                        mov              rdx, qword ptr [1879052648]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n189_lit_integer_α
n188_var_β:
                        add              rsp, 16
                                                                                        jmp   n192_var_α
#-----------------------------------------------------------------------------------------------------------------------
n189_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx442_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n190_binop_α
n189_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n192_var_α
.Lx442_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n190_binop_α:
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx443_0
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, 6
                                                                                        jne   .Lx443_0
                        mov              rax, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rsp + 8]
                        add              rax, rcx
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n191_assign_α
.Lx443_0:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx443_240
                        add              rsp, 32
                                                                                        jmp   n192_var_α
.Lx443_240:
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n191_assign_α
n190_binop_β:
                        add              rsp, 32
                                                                                        jmp   n192_var_α
#-----------------------------------------------------------------------------------------------------------------------
n191_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052640], rax
                        mov              qword ptr [1879052648], rdx
                                                                                        jmp   n192_var_α
n191_assign_β:
                                                                                        jmp   n192_var_α
#=======================================================================================================================
#                 ssk[ns,1]                                       :S(pm_cnt_loop)
#-----------------------------------------------------------------------------------------------------------------------
n192_var_α:
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 1776], rax
                        mov              qword ptr [rsp + 1784], rdx
                                                                                        jmp   n193_var_α
n192_var_β:
                                                                                        jmp   n198_var_α
#-----------------------------------------------------------------------------------------------------------------------
n193_var_α:
                        mov              rax, qword ptr [1879052640]
                        mov              rdx, qword ptr [1879052648]
                        mov              qword ptr [rsp + 1792], rax
                        mov              qword ptr [rsp + 1800], rdx
                                                                                        jmp   n194_subscript_α
n193_var_β:
                                                                                        jmp   n198_var_α
#-----------------------------------------------------------------------------------------------------------------------
n194_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 1792]
                        mov              rsi, qword ptr [rsp + 1800]
                        mov              rdx, qword ptr [rsp + 1808]
                        mov              rcx, qword ptr [rsp + 1816]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx447_240
                        add              rsp, 16
                                                                                        jmp   n198_var_α
.Lx447_240:
                        mov              qword ptr [rsp + 1824], rax
                        mov              qword ptr [rsp + 1832], rdx
                        add              rsp, 16
                                                                                        jmp   n195_lit_integer_α
n194_subscript_β:
                        sub              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n198_var_α
#-----------------------------------------------------------------------------------------------------------------------
n195_lit_integer_α:
                        mov              qword ptr [rsp + 1824], 6
                        mov              rax, qword ptr [rip + .Lx448_0]
                        mov              qword ptr [rsp + 1832], rax
                                                                                        jmp   n196_subscript_α
n195_lit_integer_β:
                                                                                        jmp   n198_var_α
.Lx448_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n196_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 1824]
                        mov              rsi, qword ptr [rsp + 1832]
                        mov              rdx, qword ptr [rsp + 1840]
                        mov              rcx, qword ptr [rsp + 1848]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx449_240
                        add              rsp, 16
                                                                                        jmp   n198_var_α
.Lx449_240:
                        mov              qword ptr [rsp + 1856], rax
                        mov              qword ptr [rsp + 1864], rdx
                        add              rsp, 16
                                                                                        jmp   n197_deref_α
n196_subscript_β:
                        sub              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n198_var_α
#-----------------------------------------------------------------------------------------------------------------------
n197_deref_α:
                        mov              rdi, qword ptr [rsp + 1840]
                        mov              rsi, qword ptr [rsp + 1848]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n198_var_α
                        mov              qword ptr [rsp + 1856], rax
                        mov              qword ptr [rsp + 1864], rdx
                                                                                        jmp   n188_var_α
n197_deref_β:
                                                                                        jmp   n198_var_α
#=======================================================================================================================
#                 ns              =   ns - 1
#-----------------------------------------------------------------------------------------------------------------------
n198_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052640]
                        mov              rdx, qword ptr [1879052648]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n199_lit_integer_α
n198_var_β:
                        add              rsp, 16
                                                                                        jmp   n202_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n199_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx452_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n200_binop_α
n199_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n202_lit_integer_α
.Lx452_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n200_binop_α:
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx453_0
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, 6
                                                                                        jne   .Lx453_0
                        mov              rax, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rsp + 8]
                        sub              rax, rcx
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n201_assign_α
.Lx453_0:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx453_240
                        add              rsp, 32
                                                                                        jmp   n202_lit_integer_α
.Lx453_240:
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n201_assign_α
n200_binop_β:
                        add              rsp, 32
                                                                                        jmp   n202_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n201_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052640], rax
                        mov              qword ptr [1879052648], rdx
                                                                                        jmp   n202_lit_integer_α
n201_assign_β:
                                                                                        jmp   n202_lit_integer_α
#=======================================================================================================================
#                 si              =   0
#-----------------------------------------------------------------------------------------------------------------------
n202_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx455_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n203_assign_α
n202_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n204_var_α
.Lx455_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n203_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n204_var_α
n203_assign_β:
                                                                                        jmp   n204_var_α
#=======================================================================================================================
# pm_sent_loop    si              =   si + 1
#-----------------------------------------------------------------------------------------------------------------------
n204_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n205_lit_integer_α
n204_var_β:
                        add              rsp, 16
                                                                                        jmp   n208_var_α
#-----------------------------------------------------------------------------------------------------------------------
n205_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx458_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n206_binop_α
n205_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n208_var_α
.Lx458_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n206_binop_α:
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx459_0
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, 6
                                                                                        jne   .Lx459_0
                        mov              rax, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rsp + 8]
                        add              rax, rcx
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n207_assign_α
.Lx459_0:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx459_240
                        add              rsp, 32
                                                                                        jmp   n208_var_α
.Lx459_240:
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n207_assign_α
n206_binop_β:
                        add              rsp, 32
                                                                                        jmp   n208_var_α
#-----------------------------------------------------------------------------------------------------------------------
n207_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n208_var_α
n207_assign_β:
                                                                                        jmp   n208_var_α
#=======================================================================================================================
#                 sentno          =   ssk[si,1]                   :F(pm_done)
#-----------------------------------------------------------------------------------------------------------------------
n208_var_α:
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 1984], rax
                        mov              qword ptr [rsp + 1992], rdx
                                                                                        jmp   n209_var_α
n208_var_β:
                                                                                        jmp   n429_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n209_var_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 2000], rax
                        mov              qword ptr [rsp + 2008], rdx
                                                                                        jmp   n210_subscript_α
n209_var_β:
                                                                                        jmp   n429_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n210_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 2000]
                        mov              rsi, qword ptr [rsp + 2008]
                        mov              rdx, qword ptr [rsp + 2016]
                        mov              rcx, qword ptr [rsp + 2024]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx463_240
                        add              rsp, 16
                                                                                        jmp   n429_lit_string_α
.Lx463_240:
                        mov              qword ptr [rsp + 2032], rax
                        mov              qword ptr [rsp + 2040], rdx
                        add              rsp, 16
                                                                                        jmp   n211_lit_integer_α
n210_subscript_β:
                        sub              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n429_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n211_lit_integer_α:
                        mov              qword ptr [rsp + 2032], 6
                        mov              rax, qword ptr [rip + .Lx464_0]
                        mov              qword ptr [rsp + 2040], rax
                                                                                        jmp   n212_subscript_α
n211_lit_integer_β:
                                                                                        jmp   n429_lit_string_α
.Lx464_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n212_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 2032]
                        mov              rsi, qword ptr [rsp + 2040]
                        mov              rdx, qword ptr [rsp + 2048]
                        mov              rcx, qword ptr [rsp + 2056]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx465_240
                        add              rsp, 16
                                                                                        jmp   n429_lit_string_α
.Lx465_240:
                        mov              qword ptr [rsp + 2064], rax
                        mov              qword ptr [rsp + 2072], rdx
                        add              rsp, 16
                                                                                        jmp   n213_deref_α
n212_subscript_β:
                        sub              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n429_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n213_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 2064]
                        mov              rsi, qword ptr [rsp + 2072]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx466_240
                        add              rsp, 16
                                                                                        jmp   n429_lit_string_α
.Lx466_240:
                        mov              qword ptr [rsp + 2080], rax
                        mov              qword ptr [rsp + 2088], rdx
                        add              rsp, 16
                                                                                        jmp   n214_assign_α
n213_deref_β:
                        sub              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n429_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n214_assign_α:
                        mov              rax, qword ptr [rsp + 2064]
                        mov              rdx, qword ptr [rsp + 2072]
                        mov              qword ptr [1879052384], rax
                        mov              qword ptr [1879052392], rdx
                                                                                        jmp   n215_lit_string_α
n214_assign_β:
                                                                                        jmp   n429_lit_string_α
#=======================================================================================================================
#                 last_sent       =   ''
#-----------------------------------------------------------------------------------------------------------------------
n215_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx468_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n216_assign_α
n215_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n217_var_α
.Lx468_0:
                        .quad            .Lx468_0_s
.Lx468_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n216_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052608], rax
                        mov              qword ptr [1879052616], rdx
                                                                                        jmp   n217_var_α
n216_assign_β:
                                                                                        jmp   n217_var_α
#=======================================================================================================================
#                 last_sent       =   IDENT(si, ns) 1
#-----------------------------------------------------------------------------------------------------------------------
n217_var_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 2176], rax
                        mov              qword ptr [rsp + 2184], rdx
                                                                                        jmp   n218_var_α
n217_var_β:
                                                                                        jmp   n223_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n218_var_α:
                        mov              rax, qword ptr [1879052640]
                        mov              rdx, qword ptr [1879052648]
                        mov              qword ptr [rsp + 2192], rax
                        mov              qword ptr [rsp + 2200], rdx
                                                                                        jmp   n219_call_α
n218_var_β:
                                                                                        jmp   n223_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n219_call_α:
                        mov              rax, qword ptr [rsp + 2176]
                        mov              qword ptr [rsp + 2128], rax
                        mov              rax, qword ptr [rsp + 2184]
                        mov              qword ptr [rsp + 2136], rax
                        mov              rax, qword ptr [rsp + 2192]
                        mov              qword ptr [rsp + 2144], rax
                        mov              rax, qword ptr [rsp + 2200]
                        mov              qword ptr [rsp + 2152], rax
                        .section         .rodata
.Lrkfn473:              .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn473]
                        lea              rsi, [rsp + 2128]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2112], rax
                        mov              qword ptr [rsp + 2120], rdx
                        cmp              eax, 99
                                                                                        je    n223_lit_string_α
                                                                                        jmp   n220_lit_integer_α
n219_call_β:
                                                                                        jmp   n223_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n220_lit_integer_α:
                        mov              qword ptr [rsp + 2208], 6
                        mov              rax, qword ptr [rip + .Lx474_0]
                        mov              qword ptr [rsp + 2216], rax
                                                                                        jmp   n221_binop_α
n220_lit_integer_β:
                                                                                        jmp   n223_lit_string_α
.Lx474_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n221_binop_α:
                        mov              rdi, qword ptr [rsp + 2112]
                        mov              rsi, qword ptr [rsp + 2120]
                        mov              rdx, qword ptr [rsp + 2208]
                        mov              rcx, qword ptr [rsp + 2216]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 2096], rax
                        mov              qword ptr [rsp + 2104], rdx
                                                                                        jmp   n222_assign_α
n221_binop_β:
                                                                                        jmp   n223_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n222_assign_α:
                        mov              rax, qword ptr [rsp + 2096]
                        mov              rdx, qword ptr [rsp + 2104]
                        mov              qword ptr [1879052608], rax
                        mov              qword ptr [1879052616], rdx
                                                                                        jmp   n223_lit_string_α
n222_assign_β:
                                                                                        jmp   n223_lit_string_α
#=======================================================================================================================
#                 pad             =   DUPL(' ', SIZE(sentno) + 4)
#-----------------------------------------------------------------------------------------------------------------------
n223_lit_string_α:
                        mov              qword ptr [rsp + 2288], 1
                        mov              dword ptr [rsp + 2292], 1
                        mov              rax, qword ptr [rip + .Lx477_0]
                        mov              qword ptr [rsp + 2296], rax
                                                                                        jmp   n224_var_α
n223_lit_string_β:
                                                                                        jmp   n230_var_α
.Lx477_0:
                        .quad            .Lx477_0_s
.Lx477_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n224_var_α:
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 2368], rax
                        mov              qword ptr [rsp + 2376], rdx
                                                                                        jmp   n225_call_α
n224_var_β:
                                                                                        jmp   n230_var_α
#-----------------------------------------------------------------------------------------------------------------------
n225_call_α:
                        mov              rax, qword ptr [rsp + 2368]
                        mov              qword ptr [rsp + 2336], rax
                        mov              rax, qword ptr [rsp + 2376]
                        mov              qword ptr [rsp + 2344], rax
                        .section         .rodata
.Lrkfn480:              .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn480]
                        lea              rsi, [rsp + 2336]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2320], rax
                        mov              qword ptr [rsp + 2328], rdx
                        cmp              eax, 99
                                                                                        je    n230_var_α
                                                                                        jmp   n226_lit_integer_α
n225_call_β:
                                                                                        jmp   n230_var_α
#-----------------------------------------------------------------------------------------------------------------------
n226_lit_integer_α:
                        mov              qword ptr [rsp + 2384], 6
                        mov              rax, qword ptr [rip + .Lx481_0]
                        mov              qword ptr [rsp + 2392], rax
                                                                                        jmp   n227_binop_α
n226_lit_integer_β:
                                                                                        jmp   n230_var_α
.Lx481_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n227_binop_α:
                        mov              eax, dword ptr [rsp + 2320]
                        cmp              eax, 6
                                                                                        jne   .Lx482_0
                        mov              rax, qword ptr [rsp + 2328]
                        mov              rcx, 4
                        add              rax, rcx
                        mov              qword ptr [rsp + 2304], 6
                        mov              qword ptr [rsp + 2312], rax
                                                                                        jmp   n228_call_α
.Lx482_0:
                        mov              rdi, qword ptr [rsp + 2320]
                        mov              rsi, qword ptr [rsp + 2328]
                        mov              rdx, qword ptr [rsp + 2384]
                        mov              rcx, qword ptr [rsp + 2392]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n230_var_α
                        mov              qword ptr [rsp + 2304], rax
                        mov              qword ptr [rsp + 2312], rdx
                                                                                        jmp   n228_call_α
n227_binop_β:
                                                                                        jmp   n230_var_α
#-----------------------------------------------------------------------------------------------------------------------
n228_call_α:
                        mov              rax, qword ptr [rsp + 2288]
                        mov              qword ptr [rsp + 2240], rax
                        mov              rax, qword ptr [rsp + 2296]
                        mov              qword ptr [rsp + 2248], rax
                        mov              rax, qword ptr [rsp + 2304]
                        mov              qword ptr [rsp + 2256], rax
                        mov              rax, qword ptr [rsp + 2312]
                        mov              qword ptr [rsp + 2264], rax
                        .section         .rodata
.Lrkfn484:              .string          "DUPL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn484]
                        lea              rsi, [rsp + 2240]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2224], rax
                        mov              qword ptr [rsp + 2232], rdx
                        cmp              eax, 99
                                                                                        je    n230_var_α
                                                                                        jmp   n229_assign_α
n228_call_β:
                                                                                        jmp   n230_var_α
#-----------------------------------------------------------------------------------------------------------------------
n229_assign_α:
                        mov              rax, qword ptr [rsp + 2224]
                        mov              rdx, qword ptr [rsp + 2232]
                        mov              qword ptr [1879052576], rax
                        mov              qword ptr [1879052584], rdx
                                                                                        jmp   n230_var_α
n229_assign_β:
                                                                                        jmp   n230_var_α
#=======================================================================================================================
#                 pfx             =   EQ(si, 1) '{' sentno ': {'
#-----------------------------------------------------------------------------------------------------------------------
n230_var_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 2512], rax
                        mov              qword ptr [rsp + 2520], rdx
                                                                                        jmp   n231_lit_integer_α
n230_var_β:
                                                                                        jmp   n242_var_α
#-----------------------------------------------------------------------------------------------------------------------
n231_lit_integer_α:
                        mov              qword ptr [rsp + 2496], 6
                        mov              rax, qword ptr [rip + .Lx487_0]
                        mov              qword ptr [rsp + 2504], rax
                                                                                        jmp   n232_coerce_numeric_α
n231_lit_integer_β:
                                                                                        jmp   n242_var_α
.Lx487_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n232_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 2512]
                        cmp              eax, 7
                                                                                        je    .Lx489_1
                        cmp              eax, 6
                                                                                        jne   .Lx489_0
                        mov              eax, dword ptr [rsp + 2496]
                        cmp              eax, 6
                                                                                        jne   .Lx489_0
.Lx489_1:
                        mov              rax, qword ptr [rsp + 2512]
                        mov              qword ptr [rsp + 2480], rax
                        mov              rax, qword ptr [rsp + 2520]
                        mov              qword ptr [rsp + 2488], rax
                                                                                        jmp   n233_coerce_numeric_α
.Lx489_0:
                        lea              rdi, [rsp + 2512]
                        lea              rsi, [rsp + 2496]
                        lea              rdx, [rsp + 2480]
                        mov              rcx, 101
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n233_coerce_numeric_α
n232_coerce_numeric_β:
                                                                                        jmp   n242_var_α
#-----------------------------------------------------------------------------------------------------------------------
n233_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 2496]
                        cmp              eax, 7
                                                                                        je    .Lx491_1
                        cmp              eax, 6
                                                                                        jne   .Lx491_0
                        mov              eax, dword ptr [rsp + 2512]
                        cmp              eax, 6
                                                                                        jne   .Lx491_0
.Lx491_1:
                        mov              rax, qword ptr [rsp + 2496]
                        mov              qword ptr [rsp + 2464], rax
                        mov              rax, qword ptr [rsp + 2504]
                        mov              qword ptr [rsp + 2472], rax
                                                                                        jmp   n234_cmp_test_α
.Lx491_0:
                        lea              rdi, [rsp + 2496]
                        lea              rsi, [rsp + 2512]
                        lea              rdx, [rsp + 2464]
                        mov              rcx, 102
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n234_cmp_test_α
n233_coerce_numeric_β:
                                                                                        jmp   n242_var_α
#-----------------------------------------------------------------------------------------------------------------------
n234_cmp_test_α:
                        lea              rdi, [rsp + 2480]
                        lea              rsi, [rsp + 2464]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jne   n242_var_α
                        mov              qword ptr [rsp + 2448], 0
                        mov              qword ptr [rsp + 2456], 0
                                                                                        jmp   n235_lit_string_α
n234_cmp_test_β:
                                                                                        jmp   n242_var_α
#-----------------------------------------------------------------------------------------------------------------------
n235_lit_string_α:
                        mov              qword ptr [rsp + 2528], 1
                        mov              dword ptr [rsp + 2532], 1
                        mov              rax, qword ptr [rip + .Lx494_0]
                        mov              qword ptr [rsp + 2536], rax
                                                                                        jmp   n236_binop_α
n235_lit_string_β:
                                                                                        jmp   n242_var_α
.Lx494_0:
                        .quad            .Lx494_0_s
.Lx494_0_s:
                        .string          "{"
#-----------------------------------------------------------------------------------------------------------------------
n236_binop_α:
                        mov              rdi, qword ptr [rsp + 2448]
                        mov              rsi, qword ptr [rsp + 2456]
                        mov              rdx, qword ptr [rsp + 2528]
                        mov              rcx, qword ptr [rsp + 2536]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 2432], rax
                        mov              qword ptr [rsp + 2440], rdx
                                                                                        jmp   n237_var_α
n236_binop_β:
                                                                                        jmp   n242_var_α
#-----------------------------------------------------------------------------------------------------------------------
n237_var_α:
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 2544], rax
                        mov              qword ptr [rsp + 2552], rdx
                                                                                        jmp   n238_binop_α
n237_var_β:
                                                                                        jmp   n242_var_α
#-----------------------------------------------------------------------------------------------------------------------
n238_binop_α:
                        mov              rdi, qword ptr [rsp + 2432]
                        mov              rsi, qword ptr [rsp + 2440]
                        mov              rdx, qword ptr [rsp + 2544]
                        mov              rcx, qword ptr [rsp + 2552]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 2416], rax
                        mov              qword ptr [rsp + 2424], rdx
                                                                                        jmp   n239_lit_string_α
n238_binop_β:
                                                                                        jmp   n242_var_α
#-----------------------------------------------------------------------------------------------------------------------
n239_lit_string_α:
                        mov              qword ptr [rsp + 2560], 1
                        mov              dword ptr [rsp + 2564], 3
                        mov              rax, qword ptr [rip + .Lx498_0]
                        mov              qword ptr [rsp + 2568], rax
                                                                                        jmp   n240_binop_α
n239_lit_string_β:
                                                                                        jmp   n242_var_α
.Lx498_0:
                        .quad            .Lx498_0_s
.Lx498_0_s:
                        .string          ": {"
#-----------------------------------------------------------------------------------------------------------------------
n240_binop_α:
                        mov              rdi, qword ptr [rsp + 2416]
                        mov              rsi, qword ptr [rsp + 2424]
                        mov              rdx, qword ptr [rsp + 2560]
                        mov              rcx, qword ptr [rsp + 2568]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 2400], rax
                        mov              qword ptr [rsp + 2408], rdx
                                                                                        jmp   n241_assign_α
n240_binop_β:
                                                                                        jmp   n242_var_α
#-----------------------------------------------------------------------------------------------------------------------
n241_assign_α:
                        mov              rax, qword ptr [rsp + 2400]
                        mov              rdx, qword ptr [rsp + 2408]
                        mov              qword ptr [1879052560], rax
                        mov              qword ptr [1879052568], rdx
                                                                                        jmp   n242_var_α
n241_assign_β:
                                                                                        jmp   n242_var_α
#=======================================================================================================================
#                 pfx             =   NE(si, 1) ' ' sentno ': {'
#-----------------------------------------------------------------------------------------------------------------------
n242_var_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 2688], rax
                        mov              qword ptr [rsp + 2696], rdx
                                                                                        jmp   n243_lit_integer_α
n242_var_β:
                                                                                        jmp   n254_var_α
#-----------------------------------------------------------------------------------------------------------------------
n243_lit_integer_α:
                        mov              qword ptr [rsp + 2672], 6
                        mov              rax, qword ptr [rip + .Lx502_0]
                        mov              qword ptr [rsp + 2680], rax
                                                                                        jmp   n244_coerce_numeric_α
n243_lit_integer_β:
                                                                                        jmp   n254_var_α
.Lx502_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n244_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 2688]
                        cmp              eax, 7
                                                                                        je    .Lx504_1
                        cmp              eax, 6
                                                                                        jne   .Lx504_0
                        mov              eax, dword ptr [rsp + 2672]
                        cmp              eax, 6
                                                                                        jne   .Lx504_0
.Lx504_1:
                        mov              rax, qword ptr [rsp + 2688]
                        mov              qword ptr [rsp + 2656], rax
                        mov              rax, qword ptr [rsp + 2696]
                        mov              qword ptr [rsp + 2664], rax
                                                                                        jmp   n245_coerce_numeric_α
.Lx504_0:
                        lea              rdi, [rsp + 2688]
                        lea              rsi, [rsp + 2672]
                        lea              rdx, [rsp + 2656]
                        mov              rcx, 149
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n245_coerce_numeric_α
n244_coerce_numeric_β:
                                                                                        jmp   n254_var_α
#-----------------------------------------------------------------------------------------------------------------------
n245_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 2672]
                        cmp              eax, 7
                                                                                        je    .Lx506_1
                        cmp              eax, 6
                                                                                        jne   .Lx506_0
                        mov              eax, dword ptr [rsp + 2688]
                        cmp              eax, 6
                                                                                        jne   .Lx506_0
.Lx506_1:
                        mov              rax, qword ptr [rsp + 2672]
                        mov              qword ptr [rsp + 2640], rax
                        mov              rax, qword ptr [rsp + 2680]
                        mov              qword ptr [rsp + 2648], rax
                                                                                        jmp   n246_cmp_test_α
.Lx506_0:
                        lea              rdi, [rsp + 2672]
                        lea              rsi, [rsp + 2688]
                        lea              rdx, [rsp + 2640]
                        mov              rcx, 150
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n246_cmp_test_α
n245_coerce_numeric_β:
                                                                                        jmp   n254_var_α
#-----------------------------------------------------------------------------------------------------------------------
n246_cmp_test_α:
                        lea              rdi, [rsp + 2656]
                        lea              rsi, [rsp + 2640]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        je    n254_var_α
                        mov              qword ptr [rsp + 2624], 0
                        mov              qword ptr [rsp + 2632], 0
                                                                                        jmp   n247_lit_string_α
n246_cmp_test_β:
                                                                                        jmp   n254_var_α
#-----------------------------------------------------------------------------------------------------------------------
n247_lit_string_α:
                        mov              qword ptr [rsp + 2704], 1
                        mov              dword ptr [rsp + 2708], 1
                        mov              rax, qword ptr [rip + .Lx509_0]
                        mov              qword ptr [rsp + 2712], rax
                                                                                        jmp   n248_binop_α
n247_lit_string_β:
                                                                                        jmp   n254_var_α
.Lx509_0:
                        .quad            .Lx509_0_s
.Lx509_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n248_binop_α:
                        mov              rdi, qword ptr [rsp + 2624]
                        mov              rsi, qword ptr [rsp + 2632]
                        mov              rdx, qword ptr [rsp + 2704]
                        mov              rcx, qword ptr [rsp + 2712]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 2608], rax
                        mov              qword ptr [rsp + 2616], rdx
                                                                                        jmp   n249_var_α
n248_binop_β:
                                                                                        jmp   n254_var_α
#-----------------------------------------------------------------------------------------------------------------------
n249_var_α:
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 2720], rax
                        mov              qword ptr [rsp + 2728], rdx
                                                                                        jmp   n250_binop_α
n249_var_β:
                                                                                        jmp   n254_var_α
#-----------------------------------------------------------------------------------------------------------------------
n250_binop_α:
                        mov              rdi, qword ptr [rsp + 2608]
                        mov              rsi, qword ptr [rsp + 2616]
                        mov              rdx, qword ptr [rsp + 2720]
                        mov              rcx, qword ptr [rsp + 2728]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 2592], rax
                        mov              qword ptr [rsp + 2600], rdx
                                                                                        jmp   n251_lit_string_α
n250_binop_β:
                                                                                        jmp   n254_var_α
#-----------------------------------------------------------------------------------------------------------------------
n251_lit_string_α:
                        mov              qword ptr [rsp + 2736], 1
                        mov              dword ptr [rsp + 2740], 3
                        mov              rax, qword ptr [rip + .Lx513_0]
                        mov              qword ptr [rsp + 2744], rax
                                                                                        jmp   n252_binop_α
n251_lit_string_β:
                                                                                        jmp   n254_var_α
.Lx513_0:
                        .quad            .Lx513_0_s
.Lx513_0_s:
                        .string          ": {"
#-----------------------------------------------------------------------------------------------------------------------
n252_binop_α:
                        mov              rdi, qword ptr [rsp + 2592]
                        mov              rsi, qword ptr [rsp + 2600]
                        mov              rdx, qword ptr [rsp + 2736]
                        mov              rcx, qword ptr [rsp + 2744]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 2576], rax
                        mov              qword ptr [rsp + 2584], rdx
                                                                                        jmp   n253_assign_α
n252_binop_β:
                                                                                        jmp   n254_var_α
#-----------------------------------------------------------------------------------------------------------------------
n253_assign_α:
                        mov              rax, qword ptr [rsp + 2576]
                        mov              rdx, qword ptr [rsp + 2584]
                        mov              qword ptr [1879052560], rax
                        mov              qword ptr [1879052568], rdx
                                                                                        jmp   n254_var_α
n253_assign_β:
                                                                                        jmp   n254_var_α
#=======================================================================================================================
#                 wsk             =   SORT(mem[sentno])
#-----------------------------------------------------------------------------------------------------------------------
n254_var_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 2800], rax
                        mov              qword ptr [rsp + 2808], rdx
                                                                                        jmp   n255_var_α
n254_var_β:
                                                                                        jmp   n260_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n255_var_α:
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 2816], rax
                        mov              qword ptr [rsp + 2824], rdx
                                                                                        jmp   n256_subscript_α
n255_var_β:
                                                                                        jmp   n260_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n256_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 2816]
                        mov              rsi, qword ptr [rsp + 2824]
                        mov              rdx, qword ptr [rsp + 2832]
                        mov              rcx, qword ptr [rsp + 2840]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx518_240
                        add              rsp, 16
                                                                                        jmp   n260_lit_integer_α
.Lx518_240:
                        mov              qword ptr [rsp + 2848], rax
                        mov              qword ptr [rsp + 2856], rdx
                        add              rsp, 16
                                                                                        jmp   n257_deref_α
n256_subscript_β:
                        sub              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n260_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n257_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 2848]
                        mov              rsi, qword ptr [rsp + 2856]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx519_240
                        add              rsp, 16
                                                                                        jmp   n260_lit_integer_α
.Lx519_240:
                        mov              qword ptr [rsp + 2864], rax
                        mov              qword ptr [rsp + 2872], rdx
                        add              rsp, 16
                                                                                        jmp   n258_call_α
n257_deref_β:
                        sub              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n260_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n258_call_α:
                        mov              rax, qword ptr [rsp + 2848]
                        mov              qword ptr [rsp + 2768], rax
                        mov              rax, qword ptr [rsp + 2856]
                        mov              qword ptr [rsp + 2776], rax
                        .section         .rodata
.Lbynamefn159:          .string          "SORT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn159]
                        lea              rsi, [rsp + 2768]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2752], rax
                        mov              qword ptr [rsp + 2760], rdx
                        cmp              eax, 99
                                                                                        je    n260_lit_integer_α
                                                                                        jmp   n259_assign_α
n258_call_β:
                                                                                        jmp   n260_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n259_assign_α:
                        mov              rax, qword ptr [rsp + 2752]
                        mov              rdx, qword ptr [rsp + 2760]
                        mov              qword ptr [1879052400], rax
                        mov              qword ptr [1879052408], rdx
                                                                                        jmp   n260_lit_integer_α
n259_assign_β:
                                                                                        jmp   n260_lit_integer_α
#=======================================================================================================================
#                 wi              =   0
#-----------------------------------------------------------------------------------------------------------------------
n260_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx522_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n261_assign_α
n260_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n262_var_α
.Lx522_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n261_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052416], rax
                        mov              qword ptr [1879052424], rdx
                                                                                        jmp   n262_var_α
n261_assign_β:
                                                                                        jmp   n262_var_α
#=======================================================================================================================
# pm_wrd_loop     wi              =   wi + 1
#-----------------------------------------------------------------------------------------------------------------------
n262_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052416]
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n263_lit_integer_α
n262_var_β:
                        add              rsp, 16
                                                                                        jmp   n266_var_α
#-----------------------------------------------------------------------------------------------------------------------
n263_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx525_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n264_binop_α
n263_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n266_var_α
.Lx525_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n264_binop_α:
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx526_0
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, 6
                                                                                        jne   .Lx526_0
                        mov              rax, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rsp + 8]
                        add              rax, rcx
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n265_assign_α
.Lx526_0:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx526_240
                        add              rsp, 32
                                                                                        jmp   n266_var_α
.Lx526_240:
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n265_assign_α
n264_binop_β:
                        add              rsp, 32
                                                                                        jmp   n266_var_α
#-----------------------------------------------------------------------------------------------------------------------
n265_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052416], rax
                        mov              qword ptr [1879052424], rdx
                                                                                        jmp   n266_var_α
n265_assign_β:
                                                                                        jmp   n266_var_α
#=======================================================================================================================
#                 wkey            =   wsk[wi,1]                   :F(pm_sent_loop)
#-----------------------------------------------------------------------------------------------------------------------
n266_var_α:
                        mov              rax, qword ptr [1879052400]
                        mov              rdx, qword ptr [1879052408]
                        mov              qword ptr [rsp + 2928], rax
                        mov              qword ptr [rsp + 2936], rdx
                                                                                        jmp   n267_var_α
n266_var_β:
                                                                                        jmp   n204_var_α
#-----------------------------------------------------------------------------------------------------------------------
n267_var_α:
                        mov              rax, qword ptr [1879052416]
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rsp + 2944], rax
                        mov              qword ptr [rsp + 2952], rdx
                                                                                        jmp   n268_subscript_α
n267_var_β:
                                                                                        jmp   n204_var_α
#-----------------------------------------------------------------------------------------------------------------------
n268_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 2944]
                        mov              rsi, qword ptr [rsp + 2952]
                        mov              rdx, qword ptr [rsp + 2960]
                        mov              rcx, qword ptr [rsp + 2968]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx530_240
                        add              rsp, 16
                                                                                        jmp   n204_var_α
.Lx530_240:
                        mov              qword ptr [rsp + 2976], rax
                        mov              qword ptr [rsp + 2984], rdx
                        add              rsp, 16
                                                                                        jmp   n269_lit_integer_α
n268_subscript_β:
                        sub              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n204_var_α
#-----------------------------------------------------------------------------------------------------------------------
n269_lit_integer_α:
                        mov              qword ptr [rsp + 2976], 6
                        mov              rax, qword ptr [rip + .Lx531_0]
                        mov              qword ptr [rsp + 2984], rax
                                                                                        jmp   n270_subscript_α
n269_lit_integer_β:
                                                                                        jmp   n204_var_α
.Lx531_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n270_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 2976]
                        mov              rsi, qword ptr [rsp + 2984]
                        mov              rdx, qword ptr [rsp + 2992]
                        mov              rcx, qword ptr [rsp + 3000]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx532_240
                        add              rsp, 16
                                                                                        jmp   n204_var_α
.Lx532_240:
                        mov              qword ptr [rsp + 3008], rax
                        mov              qword ptr [rsp + 3016], rdx
                        add              rsp, 16
                                                                                        jmp   n271_deref_α
n270_subscript_β:
                        sub              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n204_var_α
#-----------------------------------------------------------------------------------------------------------------------
n271_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 3008]
                        mov              rsi, qword ptr [rsp + 3016]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx533_240
                        add              rsp, 16
                                                                                        jmp   n204_var_α
.Lx533_240:
                        mov              qword ptr [rsp + 3024], rax
                        mov              qword ptr [rsp + 3032], rdx
                        add              rsp, 16
                                                                                        jmp   n272_assign_α
n271_deref_β:
                        sub              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n204_var_α
#-----------------------------------------------------------------------------------------------------------------------
n272_assign_α:
                        mov              rax, qword ptr [rsp + 3008]
                        mov              rdx, qword ptr [rsp + 3016]
                        mov              qword ptr [1879052432], rax
                        mov              qword ptr [1879052440], rdx
                                                                                        jmp   n273_lit_string_α
n272_assign_β:
                                                                                        jmp   n204_var_α
#=======================================================================================================================
#                 next_wkey       =   ''
#-----------------------------------------------------------------------------------------------------------------------
n273_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx535_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n274_assign_α
n273_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n275_var_α
.Lx535_0:
                        .quad            .Lx535_0_s
.Lx535_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n274_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052592], rax
                        mov              qword ptr [1879052600], rdx
                                                                                        jmp   n275_var_α
n274_assign_β:
                                                                                        jmp   n275_var_α
#=======================================================================================================================
#                 next_wkey       =   wsk[wi + 1,1]
#-----------------------------------------------------------------------------------------------------------------------
n275_var_α:
                        mov              rax, qword ptr [1879052400]
                        mov              rdx, qword ptr [1879052408]
                        mov              qword ptr [rsp + 3040], rax
                        mov              qword ptr [rsp + 3048], rdx
                                                                                        jmp   n276_var_α
n275_var_β:
                                                                                        jmp   n284_var_α
#-----------------------------------------------------------------------------------------------------------------------
n276_var_α:
                        mov              rax, qword ptr [1879052416]
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rsp + 3072], rax
                        mov              qword ptr [rsp + 3080], rdx
                                                                                        jmp   n277_lit_integer_α
n276_var_β:
                                                                                        jmp   n284_var_α
#-----------------------------------------------------------------------------------------------------------------------
n277_lit_integer_α:
                        mov              qword ptr [rsp + 3088], 6
                        mov              rax, qword ptr [rip + .Lx539_0]
                        mov              qword ptr [rsp + 3096], rax
                                                                                        jmp   n278_binop_α
n277_lit_integer_β:
                                                                                        jmp   n284_var_α
.Lx539_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n278_binop_α:
                        mov              eax, dword ptr [rsp + 3072]
                        cmp              eax, 6
                                                                                        jne   .Lx540_0
                        mov              rax, qword ptr [rsp + 3080]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rsp + 3056], 6
                        mov              qword ptr [rsp + 3064], rax
                                                                                        jmp   n279_subscript_α
.Lx540_0:
                        mov              rdi, qword ptr [rsp + 3072]
                        mov              rsi, qword ptr [rsp + 3080]
                        mov              rdx, qword ptr [rsp + 3088]
                        mov              rcx, qword ptr [rsp + 3096]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n284_var_α
                        mov              qword ptr [rsp + 3056], rax
                        mov              qword ptr [rsp + 3064], rdx
                                                                                        jmp   n279_subscript_α
n278_binop_β:
                                                                                        jmp   n284_var_α
#-----------------------------------------------------------------------------------------------------------------------
n279_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 3056]
                        mov              rsi, qword ptr [rsp + 3064]
                        mov              rdx, qword ptr [rsp + 3072]
                        mov              rcx, qword ptr [rsp + 3080]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx541_240
                        add              rsp, 16
                                                                                        jmp   n284_var_α
.Lx541_240:
                        mov              qword ptr [rsp + 3120], rax
                        mov              qword ptr [rsp + 3128], rdx
                        add              rsp, 16
                                                                                        jmp   n280_lit_integer_α
n279_subscript_β:
                        sub              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n284_var_α
#-----------------------------------------------------------------------------------------------------------------------
n280_lit_integer_α:
                        mov              qword ptr [rsp + 3120], 6
                        mov              rax, qword ptr [rip + .Lx542_0]
                        mov              qword ptr [rsp + 3128], rax
                                                                                        jmp   n281_subscript_α
n280_lit_integer_β:
                                                                                        jmp   n284_var_α
.Lx542_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n281_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 3120]
                        mov              rsi, qword ptr [rsp + 3128]
                        mov              rdx, qword ptr [rsp + 3136]
                        mov              rcx, qword ptr [rsp + 3144]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx543_240
                        add              rsp, 16
                                                                                        jmp   n284_var_α
.Lx543_240:
                        mov              qword ptr [rsp + 3152], rax
                        mov              qword ptr [rsp + 3160], rdx
                        add              rsp, 16
                                                                                        jmp   n282_deref_α
n281_subscript_β:
                        sub              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n284_var_α
#-----------------------------------------------------------------------------------------------------------------------
n282_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 3152]
                        mov              rsi, qword ptr [rsp + 3160]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx544_240
                        add              rsp, 16
                                                                                        jmp   n284_var_α
.Lx544_240:
                        mov              qword ptr [rsp + 3168], rax
                        mov              qword ptr [rsp + 3176], rdx
                        add              rsp, 16
                                                                                        jmp   n283_assign_α
n282_deref_β:
                        sub              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n284_var_α
#-----------------------------------------------------------------------------------------------------------------------
n283_assign_α:
                        mov              rax, qword ptr [rsp + 3152]
                        mov              rdx, qword ptr [rsp + 3160]
                        mov              qword ptr [1879052592], rax
                        mov              qword ptr [1879052600], rdx
                                                                                        jmp   n284_var_α
n283_assign_β:
                                                                                        jmp   n284_var_α
#=======================================================================================================================
#                 wrd             =   wkey
#-----------------------------------------------------------------------------------------------------------------------
n284_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052432]
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n285_assign_α
n284_var_β:
                        add              rsp, 16
                                                                                        jmp   n286_var_α
#-----------------------------------------------------------------------------------------------------------------------
n285_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052464], rax
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n286_var_α
n285_assign_β:
                                                                                        jmp   n286_var_α
#=======================================================================================================================
#                 wrd             ?   ARB "'"  =  ''              :F(pm_sq)
#-----------------------------------------------------------------------------------------------------------------------
n286_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 3344], rax
                        mov              qword ptr [rsp + 3352], rdx
                                                                                        jmp   n287_match_head_α
n286_var_β:
                                                                                        jmp   n300_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n287_match_head_α:
                        mov              qword ptr [rbp + 3248], r13
                        mov              qword ptr [rbp + 3256], r14
                        mov              qword ptr [rbp + 3264], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 3272], rax
                        mov              qword ptr [rbp + 3240], rbp
                        mov              rdi, qword ptr [rbp + 3344]
                        mov              rsi, qword ptr [rbp + 3352]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], 0
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                        mov              rax, rsp
                        sub              rsp, 32
                        mov              qword ptr [rsp + 16], rax
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 8], rax
                        mov              dword ptr [rsp + 0], 0
.Lx550_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n288_match_sequence_α
n287_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx550_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx550_1
                                                                                        jmp   .Lx550_0
.Lx550_1:
                        mov              rax, qword ptr [rsp + 8]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 16]
                        mov              r10, qword ptr [1879048192]
.Lx550_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx550_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 3248]
                        mov              r14, qword ptr [rbp + 3256]
                        mov              r15, qword ptr [rbp + 3264]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 3272]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 3240]
                                                                                        jmp   n300_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n288_match_sequence_α:
                                                                                        jmp   n299_match_arb_α
n288_match_sequence_as:
                                                                                        jmp   n289_match_release_α
n288_match_sequence_β:
                                                                                        jmp   n298_match_lit_β
n288_match_sequence_af:
                                                                                        jmp   n287_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n289_match_release_α:
                        mov              rax, qword ptr [rsp + 24]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              eax, dword ptr [rsp + 16]
                        mov              dword ptr [rsp + 3248], eax
                        mov              qword ptr [rsp + 3272], r14
                        mov              rsp, qword ptr [rsp + 32]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx554_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx554_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx554_1:
                        test             rax, rax
                                                                                        je    .Lx554_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx554_3]
                        lea              rdx, [rip + .Lx554_4]
                                                                                        jmp   rax
.Lx554_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx554_1
.Lx554_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx554_1
.Lx554_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx554_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx554_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 3248]
                        mov              r14, qword ptr [rbp + 3256]
                        mov              r15, qword ptr [rbp + 3264]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 3272]
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n290_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n290_lit_string_α:
                        mov              qword ptr [rsp + 3296], 1
                        mov              dword ptr [rsp + 3300], 0
                        mov              rax, qword ptr [rip + .Lx555_0]
                        mov              qword ptr [rsp + 3304], rax
                                                                                        jmp   n291_match_replace_α
n290_lit_string_β:
                                                                                        jmp   n300_lit_string_α
.Lx555_0:
                        .quad            .Lx555_0_s
.Lx555_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n291_match_replace_α:
                        mov              rdi, qword ptr [rip + .Lx557_0]
                        mov              rsi, qword ptr [rbp + 3344]
                        mov              rdx, qword ptr [rbp + 3352]
                        mov              ecx, dword ptr [rbp + 3200]
                        mov              r8, qword ptr [rbp + 3224]
                        lea              r9, [rbp + 3296]
                        call             rt_match_replace@PLT
                                                                                        jmp   .Lx557_1
.Lx557_0:
                        .quad            .Lx557_0_s
.Lx557_0_s:
                        .string          "wrd"
.Lx557_1:
                        mov              rbp, qword ptr [rbp + 3240]
                                                                                        jmp   n292_lit_string_α
#=======================================================================================================================
#                 wq              =   '"' wkey '"'                :(pm_tdict)
#-----------------------------------------------------------------------------------------------------------------------
n292_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx558_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n293_var_α
n292_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n306_var_α
.Lx558_0:
                        .quad            .Lx558_0_s
.Lx558_0_s:
                        .string          "\""
#-----------------------------------------------------------------------------------------------------------------------
n293_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052432]
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n294_binop_α
n293_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n306_var_α
#-----------------------------------------------------------------------------------------------------------------------
n294_binop_α:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             str_concat_d@PLT
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n295_lit_string_α
n294_binop_β:
                        add              rsp, 32
                                                                                        jmp   n306_var_α
#-----------------------------------------------------------------------------------------------------------------------
n295_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx561_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n296_binop_α
n295_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n306_var_α
.Lx561_0:
                        .quad            .Lx561_0_s
.Lx561_0_s:
                        .string          "\""
#-----------------------------------------------------------------------------------------------------------------------
n296_binop_α:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             str_concat_d@PLT
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n297_assign_α
n296_binop_β:
                        add              rsp, 32
                                                                                        jmp   n306_var_α
#-----------------------------------------------------------------------------------------------------------------------
n297_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052448], rax
                        mov              qword ptr [1879052456], rdx
                                                                                        jmp   n306_var_α
n297_assign_β:
                                                                                        jmp   n306_var_α
#-----------------------------------------------------------------------------------------------------------------------
n298_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n299_match_arb_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 39
                                                                                        jne   n299_match_arb_β
                        add              r14d, 1
                                                                                        jmp   n289_match_release_α
n298_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n299_match_arb_β
#-----------------------------------------------------------------------------------------------------------------------
n299_match_arb_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], 0
                        mov              eax, r14d
                        mov              dword ptr [rsp + 4], eax
                                                                                        jmp   n298_match_lit_α
n299_match_arb_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 4]
                        add              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx567_0
                        mov              r14d, eax
                                                                                        jmp   n298_match_lit_α
.Lx567_0:
                        mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16
                                                                                        jmp   n287_match_head_β
#=======================================================================================================================
# pm_sq           wq              =   "'" wkey "'"
#-----------------------------------------------------------------------------------------------------------------------
n300_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx568_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n301_var_α
n300_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n306_var_α
.Lx568_0:
                        .quad            .Lx568_0_s
.Lx568_0_s:
                        .string          "'"
#-----------------------------------------------------------------------------------------------------------------------
n301_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052432]
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n302_binop_α
n301_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n306_var_α
#-----------------------------------------------------------------------------------------------------------------------
n302_binop_α:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             str_concat_d@PLT
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n303_lit_string_α
n302_binop_β:
                        add              rsp, 32
                                                                                        jmp   n306_var_α
#-----------------------------------------------------------------------------------------------------------------------
n303_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx571_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n304_binop_α
n303_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n306_var_α
.Lx571_0:
                        .quad            .Lx571_0_s
.Lx571_0_s:
                        .string          "'"
#-----------------------------------------------------------------------------------------------------------------------
n304_binop_α:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             str_concat_d@PLT
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n305_assign_α
n304_binop_β:
                        add              rsp, 32
                                                                                        jmp   n306_var_α
#-----------------------------------------------------------------------------------------------------------------------
n305_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052448], rax
                        mov              qword ptr [1879052456], rdx
                                                                                        jmp   n306_var_α
n305_assign_β:
                                                                                        jmp   n306_var_α
#=======================================================================================================================
# pm_tdict        tsk             =   SORT(mem[sentno][wkey])
#-----------------------------------------------------------------------------------------------------------------------
n306_var_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 3568], rax
                        mov              qword ptr [rsp + 3576], rdx
                                                                                        jmp   n307_var_α
n306_var_β:
                                                                                        jmp   n315_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n307_var_α:
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 3584], rax
                        mov              qword ptr [rsp + 3592], rdx
                                                                                        jmp   n308_subscript_α
n307_var_β:
                                                                                        jmp   n315_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n308_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 3584]
                        mov              rsi, qword ptr [rsp + 3592]
                        mov              rdx, qword ptr [rsp + 3600]
                        mov              rcx, qword ptr [rsp + 3608]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx576_240
                        add              rsp, 16
                                                                                        jmp   n315_lit_integer_α
.Lx576_240:
                        mov              qword ptr [rsp + 3616], rax
                        mov              qword ptr [rsp + 3624], rdx
                        add              rsp, 16
                                                                                        jmp   n309_deref_α
n308_subscript_β:
                        sub              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n315_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n309_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 3616]
                        mov              rsi, qword ptr [rsp + 3624]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx577_240
                        add              rsp, 16
                                                                                        jmp   n315_lit_integer_α
.Lx577_240:
                        mov              qword ptr [rsp + 3632], rax
                        mov              qword ptr [rsp + 3640], rdx
                        add              rsp, 16
                                                                                        jmp   n310_var_α
n309_deref_β:
                        sub              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n315_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n310_var_α:
                        mov              rax, qword ptr [1879052432]
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 3632], rax
                        mov              qword ptr [rsp + 3640], rdx
                                                                                        jmp   n311_subscript_α
n310_var_β:
                                                                                        jmp   n315_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n311_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 3632]
                        mov              rsi, qword ptr [rsp + 3640]
                        mov              rdx, qword ptr [rsp + 3648]
                        mov              rcx, qword ptr [rsp + 3656]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx579_240
                        add              rsp, 16
                                                                                        jmp   n315_lit_integer_α
.Lx579_240:
                        mov              qword ptr [rsp + 3664], rax
                        mov              qword ptr [rsp + 3672], rdx
                        add              rsp, 16
                                                                                        jmp   n312_deref_α
n311_subscript_β:
                        sub              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n315_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n312_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 3664]
                        mov              rsi, qword ptr [rsp + 3672]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx580_240
                        add              rsp, 16
                                                                                        jmp   n315_lit_integer_α
.Lx580_240:
                        mov              qword ptr [rsp + 3680], rax
                        mov              qword ptr [rsp + 3688], rdx
                        add              rsp, 16
                                                                                        jmp   n313_call_α
n312_deref_β:
                        sub              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n315_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n313_call_α:
                        mov              rax, qword ptr [rsp + 3664]
                        mov              qword ptr [rsp + 3536], rax
                        mov              rax, qword ptr [rsp + 3672]
                        mov              qword ptr [rsp + 3544], rax
                        .section         .rodata
.Lbynamefn214:          .string          "SORT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn214]
                        lea              rsi, [rsp + 3536]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3520], rax
                        mov              qword ptr [rsp + 3528], rdx
                        cmp              eax, 99
                                                                                        je    n315_lit_integer_α
                                                                                        jmp   n314_assign_α
n313_call_β:
                                                                                        jmp   n315_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n314_assign_α:
                        mov              rax, qword ptr [rsp + 3520]
                        mov              rdx, qword ptr [rsp + 3528]
                        mov              qword ptr [1879052480], rax
                        mov              qword ptr [1879052488], rdx
                                                                                        jmp   n315_lit_integer_α
n314_assign_β:
                                                                                        jmp   n315_lit_integer_α
#=======================================================================================================================
#                 ti              =   0
#-----------------------------------------------------------------------------------------------------------------------
n315_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx583_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n316_assign_α
n315_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n317_lit_string_α
.Lx583_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n316_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052496], rax
                        mov              qword ptr [1879052504], rdx
                                                                                        jmp   n317_lit_string_α
n316_assign_β:
                                                                                        jmp   n317_lit_string_α
#=======================================================================================================================
#                 tline           =   '{'
#-----------------------------------------------------------------------------------------------------------------------
n317_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx585_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n318_assign_α
n317_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n319_var_α
.Lx585_0:
                        .quad            .Lx585_0_s
.Lx585_0_s:
                        .string          "{"
#-----------------------------------------------------------------------------------------------------------------------
n318_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052544], rax
                        mov              qword ptr [1879052552], rdx
                                                                                        jmp   n319_var_α
n318_assign_β:
                                                                                        jmp   n319_var_α
#=======================================================================================================================
# pm_tag_loop     ti              =   ti + 1
#-----------------------------------------------------------------------------------------------------------------------
n319_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052496]
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n320_lit_integer_α
n319_var_β:
                        add              rsp, 16
                                                                                        jmp   n323_var_α
#-----------------------------------------------------------------------------------------------------------------------
n320_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx588_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n321_binop_α
n320_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n323_var_α
.Lx588_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n321_binop_α:
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx589_0
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, 6
                                                                                        jne   .Lx589_0
                        mov              rax, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rsp + 8]
                        add              rax, rcx
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n322_assign_α
.Lx589_0:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx589_240
                        add              rsp, 32
                                                                                        jmp   n323_var_α
.Lx589_240:
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n322_assign_α
n321_binop_β:
                        add              rsp, 32
                                                                                        jmp   n323_var_α
#-----------------------------------------------------------------------------------------------------------------------
n322_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052496], rax
                        mov              qword ptr [1879052504], rdx
                                                                                        jmp   n323_var_α
n322_assign_β:
                                                                                        jmp   n323_var_α
#=======================================================================================================================
#                 tag             =   tsk[ti,1]                   :F(pm_tag_close)
#-----------------------------------------------------------------------------------------------------------------------
n323_var_α:
                        mov              rax, qword ptr [1879052480]
                        mov              rdx, qword ptr [1879052488]
                        mov              qword ptr [rsp + 3760], rax
                        mov              qword ptr [rsp + 3768], rdx
                                                                                        jmp   n324_var_α
n323_var_β:
                                                                                        jmp   n366_var_α
#-----------------------------------------------------------------------------------------------------------------------
n324_var_α:
                        mov              rax, qword ptr [1879052496]
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rsp + 3776], rax
                        mov              qword ptr [rsp + 3784], rdx
                                                                                        jmp   n325_subscript_α
n324_var_β:
                                                                                        jmp   n366_var_α
#-----------------------------------------------------------------------------------------------------------------------
n325_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 3776]
                        mov              rsi, qword ptr [rsp + 3784]
                        mov              rdx, qword ptr [rsp + 3792]
                        mov              rcx, qword ptr [rsp + 3800]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx593_240
                        add              rsp, 16
                                                                                        jmp   n366_var_α
.Lx593_240:
                        mov              qword ptr [rsp + 3808], rax
                        mov              qword ptr [rsp + 3816], rdx
                        add              rsp, 16
                                                                                        jmp   n326_lit_integer_α
n325_subscript_β:
                        sub              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n366_var_α
#-----------------------------------------------------------------------------------------------------------------------
n326_lit_integer_α:
                        mov              qword ptr [rsp + 3808], 6
                        mov              rax, qword ptr [rip + .Lx594_0]
                        mov              qword ptr [rsp + 3816], rax
                                                                                        jmp   n327_subscript_α
n326_lit_integer_β:
                                                                                        jmp   n366_var_α
.Lx594_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n327_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 3808]
                        mov              rsi, qword ptr [rsp + 3816]
                        mov              rdx, qword ptr [rsp + 3824]
                        mov              rcx, qword ptr [rsp + 3832]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx595_240
                        add              rsp, 16
                                                                                        jmp   n366_var_α
.Lx595_240:
                        mov              qword ptr [rsp + 3840], rax
                        mov              qword ptr [rsp + 3848], rdx
                        add              rsp, 16
                                                                                        jmp   n328_deref_α
n327_subscript_β:
                        sub              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n366_var_α
#-----------------------------------------------------------------------------------------------------------------------
n328_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 3840]
                        mov              rsi, qword ptr [rsp + 3848]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx596_240
                        add              rsp, 16
                                                                                        jmp   n366_var_α
.Lx596_240:
                        mov              qword ptr [rsp + 3856], rax
                        mov              qword ptr [rsp + 3864], rdx
                        add              rsp, 16
                                                                                        jmp   n329_assign_α
n328_deref_β:
                        sub              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n366_var_α
#-----------------------------------------------------------------------------------------------------------------------
n329_assign_α:
                        mov              rax, qword ptr [rsp + 3840]
                        mov              rdx, qword ptr [rsp + 3848]
                        mov              qword ptr [1879052512], rax
                        mov              qword ptr [1879052520], rdx
                                                                                        jmp   n330_var_α
n329_assign_β:
                                                                                        jmp   n366_var_α
#=======================================================================================================================
#                 tv              =   mem[sentno][wkey][tag]
#-----------------------------------------------------------------------------------------------------------------------
n330_var_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 3856], rax
                        mov              qword ptr [rsp + 3864], rdx
                                                                                        jmp   n331_var_α
n330_var_β:
                                                                                        jmp   n341_var_α
#-----------------------------------------------------------------------------------------------------------------------
n331_var_α:
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 3872], rax
                        mov              qword ptr [rsp + 3880], rdx
                                                                                        jmp   n332_subscript_α
n331_var_β:
                                                                                        jmp   n341_var_α
#-----------------------------------------------------------------------------------------------------------------------
n332_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 3872]
                        mov              rsi, qword ptr [rsp + 3880]
                        mov              rdx, qword ptr [rsp + 3888]
                        mov              rcx, qword ptr [rsp + 3896]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx600_240
                        add              rsp, 16
                                                                                        jmp   n341_var_α
.Lx600_240:
                        mov              qword ptr [rsp + 3904], rax
                        mov              qword ptr [rsp + 3912], rdx
                        add              rsp, 16
                                                                                        jmp   n333_deref_α
n332_subscript_β:
                        sub              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n341_var_α
#-----------------------------------------------------------------------------------------------------------------------
n333_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 3904]
                        mov              rsi, qword ptr [rsp + 3912]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx601_240
                        add              rsp, 16
                                                                                        jmp   n341_var_α
.Lx601_240:
                        mov              qword ptr [rsp + 3920], rax
                        mov              qword ptr [rsp + 3928], rdx
                        add              rsp, 16
                                                                                        jmp   n334_var_α
n333_deref_β:
                        sub              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n341_var_α
#-----------------------------------------------------------------------------------------------------------------------
n334_var_α:
                        mov              rax, qword ptr [1879052432]
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 3920], rax
                        mov              qword ptr [rsp + 3928], rdx
                                                                                        jmp   n335_subscript_α
n334_var_β:
                                                                                        jmp   n341_var_α
#-----------------------------------------------------------------------------------------------------------------------
n335_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 3920]
                        mov              rsi, qword ptr [rsp + 3928]
                        mov              rdx, qword ptr [rsp + 3936]
                        mov              rcx, qword ptr [rsp + 3944]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx603_240
                        add              rsp, 16
                                                                                        jmp   n341_var_α
.Lx603_240:
                        mov              qword ptr [rsp + 3952], rax
                        mov              qword ptr [rsp + 3960], rdx
                        add              rsp, 16
                                                                                        jmp   n336_deref_α
n335_subscript_β:
                        sub              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n341_var_α
#-----------------------------------------------------------------------------------------------------------------------
n336_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 3952]
                        mov              rsi, qword ptr [rsp + 3960]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx604_240
                        add              rsp, 16
                                                                                        jmp   n341_var_α
.Lx604_240:
                        mov              qword ptr [rsp + 3968], rax
                        mov              qword ptr [rsp + 3976], rdx
                        add              rsp, 16
                                                                                        jmp   n337_var_α
n336_deref_β:
                        sub              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n341_var_α
#-----------------------------------------------------------------------------------------------------------------------
n337_var_α:
                        mov              rax, qword ptr [1879052512]
                        mov              rdx, qword ptr [1879052520]
                        mov              qword ptr [rsp + 3968], rax
                        mov              qword ptr [rsp + 3976], rdx
                                                                                        jmp   n338_subscript_α
n337_var_β:
                                                                                        jmp   n341_var_α
#-----------------------------------------------------------------------------------------------------------------------
n338_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 3968]
                        mov              rsi, qword ptr [rsp + 3976]
                        mov              rdx, qword ptr [rsp + 3984]
                        mov              rcx, qword ptr [rsp + 3992]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx606_240
                        add              rsp, 16
                                                                                        jmp   n341_var_α
.Lx606_240:
                        mov              qword ptr [rsp + 4000], rax
                        mov              qword ptr [rsp + 4008], rdx
                        add              rsp, 16
                                                                                        jmp   n339_deref_α
n338_subscript_β:
                        sub              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n341_var_α
#-----------------------------------------------------------------------------------------------------------------------
n339_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 4000]
                        mov              rsi, qword ptr [rsp + 4008]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx607_240
                        add              rsp, 16
                                                                                        jmp   n341_var_α
.Lx607_240:
                        mov              qword ptr [rsp + 4016], rax
                        mov              qword ptr [rsp + 4024], rdx
                        add              rsp, 16
                                                                                        jmp   n340_assign_α
n339_deref_β:
                        sub              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n341_var_α
#-----------------------------------------------------------------------------------------------------------------------
n340_assign_α:
                        mov              rax, qword ptr [rsp + 4000]
                        mov              rdx, qword ptr [rsp + 4008]
                        mov              qword ptr [1879052528], rax
                        mov              qword ptr [1879052536], rdx
                                                                                        jmp   n341_var_α
n340_assign_β:
                                                                                        jmp   n341_var_α
#=======================================================================================================================
#                 IDENT(tline, '{')                               :F(pm_tag_sep)
#-----------------------------------------------------------------------------------------------------------------------
n341_var_α:
                        mov              rax, qword ptr [1879052544]
                        mov              rdx, qword ptr [1879052552]
                        mov              qword ptr [rsp + 4080], rax
                        mov              qword ptr [rsp + 4088], rdx
                                                                                        jmp   n342_lit_string_α
n341_var_β:
                                                                                        jmp   n354_var_α
#-----------------------------------------------------------------------------------------------------------------------
n342_lit_string_α:
                        mov              qword ptr [rsp + 4096], 1
                        mov              dword ptr [rsp + 4100], 1
                        mov              rax, qword ptr [rip + .Lx610_0]
                        mov              qword ptr [rsp + 4104], rax
                                                                                        jmp   n343_call_α
n342_lit_string_β:
                                                                                        jmp   n354_var_α
.Lx610_0:
                        .quad            .Lx610_0_s
.Lx610_0_s:
                        .string          "{"
#-----------------------------------------------------------------------------------------------------------------------
n343_call_α:
                        mov              rax, qword ptr [rsp + 4080]
                        mov              qword ptr [rsp + 4032], rax
                        mov              rax, qword ptr [rsp + 4088]
                        mov              qword ptr [rsp + 4040], rax
                        mov              rax, qword ptr [rsp + 4096]
                        mov              qword ptr [rsp + 4048], rax
                        mov              rax, qword ptr [rsp + 4104]
                        mov              qword ptr [rsp + 4056], rax
                        .section         .rodata
.Lrkfn612:              .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn612]
                        lea              rsi, [rsp + 4032]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4016], rax
                        mov              qword ptr [rsp + 4024], rdx
                        cmp              eax, 99
                                                                                        je    n354_var_α
                                                                                        jmp   n344_var_α
n343_call_β:
                                                                                        jmp   n354_var_α
#=======================================================================================================================
#                 tline           =   tline "'" tag "': " tv      :(pm_tag_loop)
#-----------------------------------------------------------------------------------------------------------------------
n344_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052544]
                        mov              rdx, qword ptr [1879052552]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n345_lit_string_α
n344_var_β:
                        add              rsp, 16
                                                                                        jmp   n319_var_α
#-----------------------------------------------------------------------------------------------------------------------
n345_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx614_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n346_binop_α
n345_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n319_var_α
.Lx614_0:
                        .quad            .Lx614_0_s
.Lx614_0_s:
                        .string          "'"
#-----------------------------------------------------------------------------------------------------------------------
n346_binop_α:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             str_concat_d@PLT
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n347_var_α
n346_binop_β:
                        add              rsp, 32
                                                                                        jmp   n319_var_α
#-----------------------------------------------------------------------------------------------------------------------
n347_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052512]
                        mov              rdx, qword ptr [1879052520]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n348_binop_α
n347_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n319_var_α
#-----------------------------------------------------------------------------------------------------------------------
n348_binop_α:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             str_concat_d@PLT
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n349_lit_string_α
n348_binop_β:
                        add              rsp, 32
                                                                                        jmp   n319_var_α
#-----------------------------------------------------------------------------------------------------------------------
n349_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx618_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n350_binop_α
n349_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n319_var_α
.Lx618_0:
                        .quad            .Lx618_0_s
.Lx618_0_s:
                        .string          "': "
#-----------------------------------------------------------------------------------------------------------------------
n350_binop_α:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             str_concat_d@PLT
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n351_var_α
n350_binop_β:
                        add              rsp, 32
                                                                                        jmp   n319_var_α
#-----------------------------------------------------------------------------------------------------------------------
n351_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052528]
                        mov              rdx, qword ptr [1879052536]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n352_binop_α
n351_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n319_var_α
#-----------------------------------------------------------------------------------------------------------------------
n352_binop_α:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             str_concat_d@PLT
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n353_assign_α
n352_binop_β:
                        add              rsp, 32
                                                                                        jmp   n319_var_α
#-----------------------------------------------------------------------------------------------------------------------
n353_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052544], rax
                        mov              qword ptr [1879052552], rdx
                                                                                        jmp   n319_var_α
n353_assign_β:
                                                                                        jmp   n319_var_α
#=======================================================================================================================
# pm_tag_sep      tline           =   tline ', ' "'" tag "': " tv :(pm_tag_loop)
#-----------------------------------------------------------------------------------------------------------------------
n354_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052544]
                        mov              rdx, qword ptr [1879052552]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n355_lit_string_α
n354_var_β:
                        add              rsp, 16
                                                                                        jmp   n319_var_α
#-----------------------------------------------------------------------------------------------------------------------
n355_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx624_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n356_binop_α
n355_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n319_var_α
.Lx624_0:
                        .quad            .Lx624_0_s
.Lx624_0_s:
                        .string          ", "
#-----------------------------------------------------------------------------------------------------------------------
n356_binop_α:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             str_concat_d@PLT
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n357_lit_string_α
n356_binop_β:
                        add              rsp, 32
                                                                                        jmp   n319_var_α
#-----------------------------------------------------------------------------------------------------------------------
n357_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx626_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n358_binop_α
n357_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n319_var_α
.Lx626_0:
                        .quad            .Lx626_0_s
.Lx626_0_s:
                        .string          "'"
#-----------------------------------------------------------------------------------------------------------------------
n358_binop_α:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             str_concat_d@PLT
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n359_var_α
n358_binop_β:
                        add              rsp, 32
                                                                                        jmp   n319_var_α
#-----------------------------------------------------------------------------------------------------------------------
n359_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052512]
                        mov              rdx, qword ptr [1879052520]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n360_binop_α
n359_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n319_var_α
#-----------------------------------------------------------------------------------------------------------------------
n360_binop_α:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             str_concat_d@PLT
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n361_lit_string_α
n360_binop_β:
                        add              rsp, 32
                                                                                        jmp   n319_var_α
#-----------------------------------------------------------------------------------------------------------------------
n361_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx630_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n362_binop_α
n361_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n319_var_α
.Lx630_0:
                        .quad            .Lx630_0_s
.Lx630_0_s:
                        .string          "': "
#-----------------------------------------------------------------------------------------------------------------------
n362_binop_α:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             str_concat_d@PLT
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n363_var_α
n362_binop_β:
                        add              rsp, 32
                                                                                        jmp   n319_var_α
#-----------------------------------------------------------------------------------------------------------------------
n363_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052528]
                        mov              rdx, qword ptr [1879052536]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n364_binop_α
n363_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n319_var_α
#-----------------------------------------------------------------------------------------------------------------------
n364_binop_α:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             str_concat_d@PLT
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n365_assign_α
n364_binop_β:
                        add              rsp, 32
                                                                                        jmp   n319_var_α
#-----------------------------------------------------------------------------------------------------------------------
n365_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052544], rax
                        mov              qword ptr [1879052552], rdx
                                                                                        jmp   n319_var_α
n365_assign_β:
                                                                                        jmp   n319_var_α
#=======================================================================================================================
# pm_tag_close    tline           =   tline '}'
#-----------------------------------------------------------------------------------------------------------------------
n366_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052544]
                        mov              rdx, qword ptr [1879052552]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n367_lit_string_α
n366_var_β:
                        add              rsp, 16
                                                                                        jmp   n370_var_α
#-----------------------------------------------------------------------------------------------------------------------
n367_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx636_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n368_binop_α
n367_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n370_var_α
.Lx636_0:
                        .quad            .Lx636_0_s
.Lx636_0_s:
                        .string          "}"
#-----------------------------------------------------------------------------------------------------------------------
n368_binop_α:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             str_concat_d@PLT
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n369_assign_α
n368_binop_β:
                        add              rsp, 32
                                                                                        jmp   n370_var_α
#-----------------------------------------------------------------------------------------------------------------------
n369_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052544], rax
                        mov              qword ptr [1879052552], rdx
                                                                                        jmp   n370_var_α
n369_assign_β:
                                                                                        jmp   n370_var_α
#=======================================================================================================================
#                 GT(SIZE(next_wkey), 0)                          :F(pm_last_wrd)
#-----------------------------------------------------------------------------------------------------------------------
n370_var_α:
                        mov              rax, qword ptr [1879052592]
                        mov              rdx, qword ptr [1879052600]
                        mov              qword ptr [rsp + 4576], rax
                        mov              qword ptr [rsp + 4584], rdx
                                                                                        jmp   n371_call_α
n370_var_β:
                                                                                        jmp   n399_var_α
#-----------------------------------------------------------------------------------------------------------------------
n371_call_α:
                        mov              rax, qword ptr [rsp + 4576]
                        mov              qword ptr [rsp + 4544], rax
                        mov              rax, qword ptr [rsp + 4584]
                        mov              qword ptr [rsp + 4552], rax
                        .section         .rodata
.Lrkfn641:              .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn641]
                        lea              rsi, [rsp + 4544]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4528], rax
                        mov              qword ptr [rsp + 4536], rdx
                        cmp              eax, 99
                                                                                        je    n399_var_α
                                                                                        jmp   n372_lit_integer_α
n371_call_β:
                                                                                        jmp   n399_var_α
#-----------------------------------------------------------------------------------------------------------------------
n372_lit_integer_α:
                        mov              qword ptr [rsp + 4512], 6
                        mov              rax, qword ptr [rip + .Lx642_0]
                        mov              qword ptr [rsp + 4520], rax
                                                                                        jmp   n373_coerce_numeric_α
n372_lit_integer_β:
                                                                                        jmp   n399_var_α
.Lx642_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n373_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 4528]
                        cmp              eax, 7
                                                                                        je    .Lx644_1
                        cmp              eax, 6
                                                                                        jne   .Lx644_0
                        mov              eax, dword ptr [rsp + 4512]
                        cmp              eax, 6
                                                                                        jne   .Lx644_0
.Lx644_1:
                        mov              rax, qword ptr [rsp + 4528]
                        mov              qword ptr [rsp + 4496], rax
                        mov              rax, qword ptr [rsp + 4536]
                        mov              qword ptr [rsp + 4504], rax
                                                                                        jmp   n374_coerce_numeric_α
.Lx644_0:
                        lea              rdi, [rsp + 4528]
                        lea              rsi, [rsp + 4512]
                        lea              rdx, [rsp + 4496]
                        mov              rcx, 111
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n374_coerce_numeric_α
n373_coerce_numeric_β:
                                                                                        jmp   n399_var_α
#-----------------------------------------------------------------------------------------------------------------------
n374_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 4512]
                        cmp              eax, 7
                                                                                        je    .Lx646_1
                        cmp              eax, 6
                                                                                        jne   .Lx646_0
                        mov              eax, dword ptr [rsp + 4528]
                        cmp              eax, 6
                                                                                        jne   .Lx646_0
.Lx646_1:
                        mov              rax, qword ptr [rsp + 4512]
                        mov              qword ptr [rsp + 4480], rax
                        mov              rax, qword ptr [rsp + 4520]
                        mov              qword ptr [rsp + 4488], rax
                                                                                        jmp   n375_cmp_test_α
.Lx646_0:
                        lea              rdi, [rsp + 4512]
                        lea              rsi, [rsp + 4528]
                        lea              rdx, [rsp + 4480]
                        mov              rcx, 112
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n375_cmp_test_α
n374_coerce_numeric_β:
                                                                                        jmp   n399_var_α
#-----------------------------------------------------------------------------------------------------------------------
n375_cmp_test_α:
                        lea              rdi, [rsp + 4496]
                        lea              rsi, [rsp + 4480]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jle   n399_var_α
                                                                                        jmp   n376_var_α
n375_cmp_test_β:
                                                                                        jmp   n399_var_α
#=======================================================================================================================
#                 IDENT(wi, 1)                                    :F(pm_mid_wrd)
#-----------------------------------------------------------------------------------------------------------------------
n376_var_α:
                        mov              rax, qword ptr [1879052416]
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rsp + 4656], rax
                        mov              qword ptr [rsp + 4664], rdx
                                                                                        jmp   n377_lit_integer_α
n376_var_β:
                                                                                        jmp   n389_var_α
#-----------------------------------------------------------------------------------------------------------------------
n377_lit_integer_α:
                        mov              qword ptr [rsp + 4672], 6
                        mov              rax, qword ptr [rip + .Lx650_0]
                        mov              qword ptr [rsp + 4680], rax
                                                                                        jmp   n378_call_α
n377_lit_integer_β:
                                                                                        jmp   n389_var_α
.Lx650_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n378_call_α:
                        mov              rax, qword ptr [rsp + 4656]
                        mov              qword ptr [rsp + 4608], rax
                        mov              rax, qword ptr [rsp + 4664]
                        mov              qword ptr [rsp + 4616], rax
                        mov              rax, qword ptr [rsp + 4672]
                        mov              qword ptr [rsp + 4624], rax
                        mov              rax, qword ptr [rsp + 4680]
                        mov              qword ptr [rsp + 4632], rax
                        .section         .rodata
.Lrkfn652:              .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn652]
                        lea              rsi, [rsp + 4608]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4592], rax
                        mov              qword ptr [rsp + 4600], rdx
                        cmp              eax, 99
                                                                                        je    n389_var_α
                                                                                        jmp   n379_var_α
n378_call_β:
                                                                                        jmp   n389_var_α
#=======================================================================================================================
#                 OUTPUT          =   pfx wq ': ' tline ','       :(pm_wrd_loop)
#-----------------------------------------------------------------------------------------------------------------------
n379_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052560]
                        mov              rdx, qword ptr [1879052568]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n380_var_α
n379_var_β:
                        add              rsp, 16
                                                                                        jmp   n262_var_α
#-----------------------------------------------------------------------------------------------------------------------
n380_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n381_binop_α
n380_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n262_var_α
#-----------------------------------------------------------------------------------------------------------------------
n381_binop_α:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             str_concat_d@PLT
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n382_lit_string_α
n381_binop_β:
                        add              rsp, 32
                                                                                        jmp   n262_var_α
#-----------------------------------------------------------------------------------------------------------------------
n382_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx656_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n383_binop_α
n382_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n262_var_α
.Lx656_0:
                        .quad            .Lx656_0_s
.Lx656_0_s:
                        .string          ": "
#-----------------------------------------------------------------------------------------------------------------------
n383_binop_α:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             str_concat_d@PLT
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n384_var_α
n383_binop_β:
                        add              rsp, 32
                                                                                        jmp   n262_var_α
#-----------------------------------------------------------------------------------------------------------------------
n384_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052544]
                        mov              rdx, qword ptr [1879052552]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n385_binop_α
n384_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n262_var_α
#-----------------------------------------------------------------------------------------------------------------------
n385_binop_α:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             str_concat_d@PLT
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n386_lit_string_α
n385_binop_β:
                        add              rsp, 32
                                                                                        jmp   n262_var_α
#-----------------------------------------------------------------------------------------------------------------------
n386_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx660_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n387_binop_α
n386_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n262_var_α
.Lx660_0:
                        .quad            .Lx660_0_s
.Lx660_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n387_binop_α:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             str_concat_d@PLT
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n388_assign_α
n387_binop_β:
                        add              rsp, 32
                                                                                        jmp   n262_var_α
#-----------------------------------------------------------------------------------------------------------------------
n388_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx662_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n262_var_α
n388_assign_β:
                                                                                        jmp   n262_var_α
.Lx662_0:
                        .quad            .Lx662_0_s
.Lx662_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# pm_mid_wrd      OUTPUT          =   pad wq ': ' tline ','       :(pm_wrd_loop)
#-----------------------------------------------------------------------------------------------------------------------
n389_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052576]
                        mov              rdx, qword ptr [1879052584]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n390_var_α
n389_var_β:
                        add              rsp, 16
                                                                                        jmp   n262_var_α
#-----------------------------------------------------------------------------------------------------------------------
n390_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n391_binop_α
n390_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n262_var_α
#-----------------------------------------------------------------------------------------------------------------------
n391_binop_α:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             str_concat_d@PLT
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n392_lit_string_α
n391_binop_β:
                        add              rsp, 32
                                                                                        jmp   n262_var_α
#-----------------------------------------------------------------------------------------------------------------------
n392_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx666_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n393_binop_α
n392_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n262_var_α
.Lx666_0:
                        .quad            .Lx666_0_s
.Lx666_0_s:
                        .string          ": "
#-----------------------------------------------------------------------------------------------------------------------
n393_binop_α:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             str_concat_d@PLT
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n394_var_α
n393_binop_β:
                        add              rsp, 32
                                                                                        jmp   n262_var_α
#-----------------------------------------------------------------------------------------------------------------------
n394_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052544]
                        mov              rdx, qword ptr [1879052552]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n395_binop_α
n394_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n262_var_α
#-----------------------------------------------------------------------------------------------------------------------
n395_binop_α:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             str_concat_d@PLT
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n396_lit_string_α
n395_binop_β:
                        add              rsp, 32
                                                                                        jmp   n262_var_α
#-----------------------------------------------------------------------------------------------------------------------
n396_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx670_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n397_binop_α
n396_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n262_var_α
.Lx670_0:
                        .quad            .Lx670_0_s
.Lx670_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n397_binop_α:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             str_concat_d@PLT
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n398_assign_α
n397_binop_β:
                        add              rsp, 32
                                                                                        jmp   n262_var_α
#-----------------------------------------------------------------------------------------------------------------------
n398_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx672_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n262_var_α
n398_assign_β:
                                                                                        jmp   n262_var_α
.Lx672_0:
                        .quad            .Lx672_0_s
.Lx672_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# pm_last_wrd     IDENT(wi, 1)                                    :F(pm_last_mid)
#-----------------------------------------------------------------------------------------------------------------------
n399_var_α:
                        mov              rax, qword ptr [1879052416]
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rsp + 5040], rax
                        mov              qword ptr [rsp + 5048], rdx
                                                                                        jmp   n400_lit_integer_α
n399_var_β:
                                                                                        jmp   n410_var_α
#-----------------------------------------------------------------------------------------------------------------------
n400_lit_integer_α:
                        mov              qword ptr [rsp + 5056], 6
                        mov              rax, qword ptr [rip + .Lx674_0]
                        mov              qword ptr [rsp + 5064], rax
                                                                                        jmp   n401_call_α
n400_lit_integer_β:
                                                                                        jmp   n410_var_α
.Lx674_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n401_call_α:
                        mov              rax, qword ptr [rsp + 5040]
                        mov              qword ptr [rsp + 4992], rax
                        mov              rax, qword ptr [rsp + 5048]
                        mov              qword ptr [rsp + 5000], rax
                        mov              rax, qword ptr [rsp + 5056]
                        mov              qword ptr [rsp + 5008], rax
                        mov              rax, qword ptr [rsp + 5064]
                        mov              qword ptr [rsp + 5016], rax
                        .section         .rodata
.Lrkfn676:              .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn676]
                        lea              rsi, [rsp + 4992]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4976], rax
                        mov              qword ptr [rsp + 4984], rdx
                        cmp              eax, 99
                                                                                        je    n410_var_α
                                                                                        jmp   n402_var_α
n401_call_β:
                                                                                        jmp   n410_var_α
#=======================================================================================================================
#                 lline           =   pfx wq ': ' tline           :(pm_last_emit)
#-----------------------------------------------------------------------------------------------------------------------
n402_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052560]
                        mov              rdx, qword ptr [1879052568]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n403_var_α
n402_var_β:
                        add              rsp, 16
                                                                                        jmp   n418_var_α
#-----------------------------------------------------------------------------------------------------------------------
n403_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n404_binop_α
n403_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n418_var_α
#-----------------------------------------------------------------------------------------------------------------------
n404_binop_α:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             str_concat_d@PLT
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n405_lit_string_α
n404_binop_β:
                        add              rsp, 32
                                                                                        jmp   n418_var_α
#-----------------------------------------------------------------------------------------------------------------------
n405_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx680_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n406_binop_α
n405_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n418_var_α
.Lx680_0:
                        .quad            .Lx680_0_s
.Lx680_0_s:
                        .string          ": "
#-----------------------------------------------------------------------------------------------------------------------
n406_binop_α:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             str_concat_d@PLT
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n407_var_α
n406_binop_β:
                        add              rsp, 32
                                                                                        jmp   n418_var_α
#-----------------------------------------------------------------------------------------------------------------------
n407_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052544]
                        mov              rdx, qword ptr [1879052552]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n408_binop_α
n407_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n418_var_α
#-----------------------------------------------------------------------------------------------------------------------
n408_binop_α:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             str_concat_d@PLT
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n409_assign_α
n408_binop_β:
                        add              rsp, 32
                                                                                        jmp   n418_var_α
#-----------------------------------------------------------------------------------------------------------------------
n409_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052624], rax
                        mov              qword ptr [1879052632], rdx
                                                                                        jmp   n418_var_α
n409_assign_β:
                                                                                        jmp   n418_var_α
#=======================================================================================================================
# pm_last_mid     lline           =   pad wq ': ' tline
#-----------------------------------------------------------------------------------------------------------------------
n410_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052576]
                        mov              rdx, qword ptr [1879052584]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n411_var_α
n410_var_β:
                        add              rsp, 16
                                                                                        jmp   n418_var_α
#-----------------------------------------------------------------------------------------------------------------------
n411_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n412_binop_α
n411_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n418_var_α
#-----------------------------------------------------------------------------------------------------------------------
n412_binop_α:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             str_concat_d@PLT
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n413_lit_string_α
n412_binop_β:
                        add              rsp, 32
                                                                                        jmp   n418_var_α
#-----------------------------------------------------------------------------------------------------------------------
n413_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx688_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n414_binop_α
n413_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n418_var_α
.Lx688_0:
                        .quad            .Lx688_0_s
.Lx688_0_s:
                        .string          ": "
#-----------------------------------------------------------------------------------------------------------------------
n414_binop_α:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             str_concat_d@PLT
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n415_var_α
n414_binop_β:
                        add              rsp, 32
                                                                                        jmp   n418_var_α
#-----------------------------------------------------------------------------------------------------------------------
n415_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052544]
                        mov              rdx, qword ptr [1879052552]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n416_binop_α
n415_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n418_var_α
#-----------------------------------------------------------------------------------------------------------------------
n416_binop_α:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             str_concat_d@PLT
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n417_assign_α
n416_binop_β:
                        add              rsp, 32
                                                                                        jmp   n418_var_α
#-----------------------------------------------------------------------------------------------------------------------
n417_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052624], rax
                        mov              qword ptr [1879052632], rdx
                                                                                        jmp   n418_var_α
n417_assign_β:
                                                                                        jmp   n418_var_α
#=======================================================================================================================
# pm_last_emit    IDENT(last_sent, 1)                             :F(pm_last_mid2)
#-----------------------------------------------------------------------------------------------------------------------
n418_var_α:
                        mov              rax, qword ptr [1879052608]
                        mov              rdx, qword ptr [1879052616]
                        mov              qword ptr [rsp + 5360], rax
                        mov              qword ptr [rsp + 5368], rdx
                                                                                        jmp   n419_lit_integer_α
n418_var_β:
                                                                                        jmp   n425_var_α
#-----------------------------------------------------------------------------------------------------------------------
n419_lit_integer_α:
                        mov              qword ptr [rsp + 5376], 6
                        mov              rax, qword ptr [rip + .Lx694_0]
                        mov              qword ptr [rsp + 5384], rax
                                                                                        jmp   n420_call_α
n419_lit_integer_β:
                                                                                        jmp   n425_var_α
.Lx694_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n420_call_α:
                        mov              rax, qword ptr [rsp + 5360]
                        mov              qword ptr [rsp + 5312], rax
                        mov              rax, qword ptr [rsp + 5368]
                        mov              qword ptr [rsp + 5320], rax
                        mov              rax, qword ptr [rsp + 5376]
                        mov              qword ptr [rsp + 5328], rax
                        mov              rax, qword ptr [rsp + 5384]
                        mov              qword ptr [rsp + 5336], rax
                        .section         .rodata
.Lrkfn696:              .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn696]
                        lea              rsi, [rsp + 5312]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 5296], rax
                        mov              qword ptr [rsp + 5304], rdx
                        cmp              eax, 99
                                                                                        je    n425_var_α
                                                                                        jmp   n421_var_α
n420_call_β:
                                                                                        jmp   n425_var_α
#=======================================================================================================================
#                 OUTPUT          =   lline '}}'                  :(pm_sent_loop)
#-----------------------------------------------------------------------------------------------------------------------
n421_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052624]
                        mov              rdx, qword ptr [1879052632]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n422_lit_string_α
n421_var_β:
                        add              rsp, 16
                                                                                        jmp   n204_var_α
#-----------------------------------------------------------------------------------------------------------------------
n422_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx698_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n423_binop_α
n422_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n204_var_α
.Lx698_0:
                        .quad            .Lx698_0_s
.Lx698_0_s:
                        .string          "}}"
#-----------------------------------------------------------------------------------------------------------------------
n423_binop_α:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             str_concat_d@PLT
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n424_assign_α
n423_binop_β:
                        add              rsp, 32
                                                                                        jmp   n204_var_α
#-----------------------------------------------------------------------------------------------------------------------
n424_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx700_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n204_var_α
n424_assign_β:
                                                                                        jmp   n204_var_α
.Lx700_0:
                        .quad            .Lx700_0_s
.Lx700_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# pm_last_mid2    OUTPUT          =   lline '},'                  :(pm_sent_loop)
#-----------------------------------------------------------------------------------------------------------------------
n425_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052624]
                        mov              rdx, qword ptr [1879052632]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n426_lit_string_α
n425_var_β:
                        add              rsp, 16
                                                                                        jmp   n204_var_α
#-----------------------------------------------------------------------------------------------------------------------
n426_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx702_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n427_binop_α
n426_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n204_var_α
.Lx702_0:
                        .quad            .Lx702_0_s
.Lx702_0_s:
                        .string          "},"
#-----------------------------------------------------------------------------------------------------------------------
n427_binop_α:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             str_concat_d@PLT
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n428_assign_α
n427_binop_β:
                        add              rsp, 32
                                                                                        jmp   n204_var_α
#-----------------------------------------------------------------------------------------------------------------------
n428_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx704_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n204_var_α
n428_assign_β:
                                                                                        jmp   n204_var_α
.Lx704_0:
                        .quad            .Lx704_0_s
.Lx704_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# pm_done         pp_mem          =   .dummy                      :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n429_lit_string_α:
                        mov              qword ptr [rsp + 5536], 1
                        mov              dword ptr [rsp + 5540], 5
                        mov              rax, qword ptr [rip + .Lx705_0]
                        mov              qword ptr [rsp + 5544], rax
                                                                                        jmp   n430_call_α
n429_lit_string_β:
                                                                                        jmp   n432_save_restore_α
.Lx705_0:
                        .quad            .Lx705_0_s
.Lx705_0_s:
                        .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n430_call_α:
                        mov              rax, qword ptr [rsp + 5536]
                        mov              qword ptr [rsp + 5504], rax
                        mov              rax, qword ptr [rsp + 5544]
                        mov              qword ptr [rsp + 5512], rax
                        .section         .rodata
.Lrkfn707:              .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn707]
                        lea              rsi, [rsp + 5504]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 5488], rax
                        mov              qword ptr [rsp + 5496], rdx
                        cmp              eax, 99
                                                                                        je    n432_save_restore_α
                                                                                        jmp   n431_assign_α
n430_call_β:
                                                                                        jmp   n432_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n431_assign_α:
                        mov              rax, qword ptr [rsp + 5488]
                        mov              rdx, qword ptr [rsp + 5496]
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n432_save_restore_α
n431_assign_β:
                                                                                        jmp   n432_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n432_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__pp_mem_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__pp_mem_β:
                                                                                        jmp   proc_LBL__pp_mem_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__pp_mem_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 6712]
                        lea              rsp, [rbp + 6736]
                        mov              rbp, [rbp + 6728]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__pp_mem_ω:
                        mov              rax, [rbp + 6720]
                        lea              rsp, [rbp + 6736]
                        mov              rbp, [rbp + 6728]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_new_sent_α
proc_new_sent_α:
                        .global          proc_new_sent_α
                        .global          proc_new_sent_β
                        .global          proc_new_sent_γ
                        .global          proc_new_sent_ω
                        sub              rsp, 64
                        mov              [rsp + 40], rcx
                        mov              [rsp + 48], rdx
                        mov              rdi, rsp
                        mov              ecx, 32
                        xor              eax, eax
                        rep stosb
proc_new_sent_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n711_save_restore_α:
                        mov              rdi, qword ptr [rsp + 40]
                        mov              rsi, qword ptr [rsp + 48]
                        lea              rdx, [rsp + 64]
                        mov              rcx, rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n712_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n712_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx716_0]
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx716_1
.Lx716_0:
                        .quad            .Lx716_0_s
.Lx716_0_s:
                        .string          "new_sent"
.Lx716_1:
                                                                                        jmp   proc_new_sent_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_new_sent_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_new_sent_β:
                                                                                        jmp   proc_new_sent_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_new_sent_γ:
                        mov              rdi, [rsp]
                        mov              rsi, [rsp + 8]
                        mov              rax, [rsp + 40]
                        add              rsp, 64
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_new_sent_ω:
                        mov              rax, [rsp + 48]
                        add              rsp, 64
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_add_tok_α
proc_add_tok_α:
                        .global          proc_add_tok_α
                        .global          proc_add_tok_β
                        .global          proc_add_tok_γ
                        .global          proc_add_tok_ω
                        sub              rsp, 64
                        mov              [rsp + 40], rcx
                        mov              [rsp + 48], rdx
                        mov              rdi, rsp
                        mov              ecx, 32
                        xor              eax, eax
                        rep stosb
proc_add_tok_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n717_save_restore_α:
                        mov              rdi, qword ptr [rsp + 40]
                        mov              rsi, qword ptr [rsp + 48]
                        lea              rdx, [rsp + 64]
                        mov              rcx, rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n718_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n718_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx722_0]
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx722_1
.Lx722_0:
                        .quad            .Lx722_0_s
.Lx722_0_s:
                        .string          "add_tok"
.Lx722_1:
                                                                                        jmp   proc_add_tok_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_add_tok_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_add_tok_β:
                                                                                        jmp   proc_add_tok_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_add_tok_γ:
                        mov              rdi, [rsp]
                        mov              rsi, [rsp + 8]
                        mov              rax, [rsp + 40]
                        add              rsp, 64
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_add_tok_ω:
                        mov              rax, [rsp + 48]
                        add              rsp, 64
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pp_mem_α
proc_pp_mem_α:
                        .global          proc_pp_mem_α
                        .global          proc_pp_mem_β
                        .global          proc_pp_mem_γ
                        .global          proc_pp_mem_ω
                        sub              rsp, 64
                        mov              [rsp + 40], rcx
                        mov              [rsp + 48], rdx
                        mov              rdi, rsp
                        mov              ecx, 32
                        xor              eax, eax
                        rep stosb
proc_pp_mem_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n723_save_restore_α:
                        mov              rdi, qword ptr [rsp + 40]
                        mov              rsi, qword ptr [rsp + 48]
                        lea              rdx, [rsp + 64]
                        mov              rcx, rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n724_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n724_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx728_0]
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx728_1
.Lx728_0:
                        .quad            .Lx728_0_s
.Lx728_0_s:
                        .string          "pp_mem"
.Lx728_1:
                                                                                        jmp   proc_pp_mem_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_pp_mem_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_pp_mem_β:
                                                                                        jmp   proc_pp_mem_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_pp_mem_γ:
                        mov              rdi, [rsp]
                        mov              rsi, [rsp + 8]
                        mov              rax, [rsp + 40]
                        add              rsp, 64
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pp_mem_ω:
                        mov              rax, [rsp + 48]
                        add              rsp, 64
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$0_α
proc_PAT$0_α:
                        .global          proc_PAT$0_α
                        .global          proc_PAT$0_β
                        .global          proc_PAT$0_γ
                        .global          proc_PAT$0_ω
                        sub              rsp, 608
                        mov              [rsp + 584], rcx
                        mov              [rsp + 592], rdx
                        mov              [rsp + 600], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 224], 0
                        mov              qword ptr [rsp + 232], 0
                        mov              qword ptr [rsp + 272], 0
                        mov              qword ptr [rsp + 280], 0
                        mov              qword ptr [rsp + 352], 0
                        mov              qword ptr [rsp + 360], 0
                        mov              qword ptr [rsp + 416], 0
                        mov              qword ptr [rsp + 424], 0
                        mov              qword ptr [rsp + 480], 0
                        mov              qword ptr [rsp + 488], 0
                        mov              qword ptr [rsp + 544], 0
                        mov              qword ptr [rsp + 552], 0
                        mov              qword ptr [rsp + 560], 0
                        mov              qword ptr [rsp + 568], 0
                        mov              qword ptr [rsp + 576], r8
                        mov              dword ptr [rsp + 568], r14d
proc_PAT$0_attempt:
proc_PAT$0_α_body:
                        lea              rax, [rip + n729_match_sequence_β]
                        mov              qword ptr [rbp + 544], rax
#-----------------------------------------------------------------------------------------------------------------------
n729_match_sequence_α:
                        mov              dword ptr [rbp + 16], r14d
                                                                                        jmp   n759_lit_integer_α
n729_match_sequence_as:
                                                                                        jmp   proc_PAT$0_γ
n729_match_sequence_β:
                                                                                        jmp   n731_match_rpos_β
n729_match_sequence_af:
                                                                                        jmp   proc_PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
n730_lit_integer_α:
                        mov              qword ptr [rbp + 528], 6
                        mov              rax, qword ptr [rip + .Lx763_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n731_match_rpos_α
n730_lit_integer_β:
                                                                                        jmp   n732_match_arbno_β
.Lx763_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n731_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n732_match_arbno_β
                                                                                        jmp   proc_PAT$0_γ
n731_match_rpos_β:
                                                                                        jmp   n732_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n732_match_arbno_α:
                        sub              rsp, 48
                        mov              dword ptr [rbp + 80], r14d
                        mov              dword ptr [rbp + 84], r14d
                        mov              dword ptr [rbp + 88], 0
                        mov              qword ptr [rbp + 104], rsp
                        mov              qword ptr [rbp + 96], 0
                        add              rsp, 48
                                                                                        jmp   n730_lit_integer_α
n732_match_arbno_β:
                        sub              rsp, 48
                        mov              r14d, dword ptr [rbp + 84]
                        mov              rax, qword ptr [rbp + 96]
                        sub              rsp, 528
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              eax, 0
                        mov              qword ptr [rsp + 216], rax
                        mov              qword ptr [rsp + 264], rax
                        mov              qword ptr [rsp + 344], rax
                        mov              qword ptr [rsp + 408], rax
                        mov              qword ptr [rsp + 472], rax
                        mov              qword ptr [rbp + 96], rsp
                        mov              rbp, rsp
                        add              rbp, -8
                                                                                        jmp   n733_match_sequence_α
n732_match_arbno_as:
                        sub              rsp, 48
                        mov              eax, dword ptr [rbp + 16]
                        cmp              r14d, eax
                                                                                        je    n733_match_sequence_β
                        mov              rbp, qword ptr [rbp + 8]
                        mov              eax, dword ptr [rbp + 88]
                        add              eax, 1
                        mov              dword ptr [rbp + 88], eax
                        mov              dword ptr [rbp + 84], r14d
                        add              rsp, 48
                                                                                        jmp   n730_lit_integer_α
n732_match_arbno_af:
                        sub              rsp, 48
                        mov              rax, qword ptr [rbp + 24]
                        mov              rdx, qword ptr [rbp + 8]
                        lea              rsp, [rbp + 536]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 88]
                        test             ecx, ecx
                                                                                        jz    .Lx766_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 88], ecx
                        mov              qword ptr [rbp + 96], rax
                        lea              rbp, [rax + -8]
                                                                                        jmp   n733_match_sequence_β
.Lx766_2:
                        mov              r14d, dword ptr [rbp + 80]
                        mov              rsp, qword ptr [rbp + 104]
                        add              rsp, 48
                                                                                        jmp   n760_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n733_match_sequence_α:
                        sub              rsp, 32
                        mov              dword ptr [rbp + 128], r14d
                                                                                        jmp   n735_match_alternate_α
n733_match_sequence_as:
                        sub              rsp, 32
                        add              rsp, 32
                                                                                        jmp   n732_match_arbno_as
n733_match_sequence_β:
                        sub              rsp, 32
                                                                                        jmp   n734_match_span_β
n733_match_sequence_af:
                        sub              rsp, 32
                        add              rsp, 32
                                                                                        jmp   n732_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n734_match_span_α:
                        sub              rsp, 16
                        movsxd           rcx, r14d
.Lx770_0:
                        cmp              ecx, r15d
                                                                                        jge   .Lx770_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32
                                                                                        je    .Lx770_10
                        cmp              esi, 10
                                                                                        je    .Lx770_10
                                                                                        jmp   .Lx770_1
.Lx770_10:
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx770_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32
                                                                                        je    .Lx770_11
                        cmp              esi, 10
                                                                                        je    .Lx770_11
                                                                                        jmp   .Lx770_1
.Lx770_11:
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx770_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32
                                                                                        je    .Lx770_12
                        cmp              esi, 10
                                                                                        je    .Lx770_12
                                                                                        jmp   .Lx770_1
.Lx770_12:
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx770_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32
                                                                                        je    .Lx770_13
                        cmp              esi, 10
                                                                                        je    .Lx770_13
                                                                                        jmp   .Lx770_1
.Lx770_13:
                        add              ecx, 1
                                                                                        jmp   .Lx770_0
.Lx770_1:
                        cmp              ecx, r14d
                                                                                        jg    .Lx770_240
                        add              rsp, 16
                                                                                        jmp   n735_match_alternate_β
.Lx770_240:
                        mov              dword ptr [rsp + 4], r14d
                        mov              r14d, ecx
                                                                                        jmp   n732_match_arbno_as
n734_match_span_β:
                        mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16
                                                                                        jmp   n735_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
n735_match_alternate_α:
                        sub              rsp, 32
                        mov              dword ptr [rbp + 144], r14d
                        lea              rax, [rip + .Lx772_21]
                        mov              qword ptr [rbp + 160], rax
                                                                                        jmp   n751_match_sequence_α
.Lx772_21:
                        lea              rax, [rip + .Lx772_19]
                        mov              qword ptr [rbp + 160], rax
                                                                                        jmp   n736_match_sequence_α
n735_match_alternate_s0:
                        lea              rax, [rip + .Lx772_40]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n735_match_alternate_as
n735_match_alternate_s1:
                        lea              rax, [rip + .Lx772_41]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n735_match_alternate_as
.Lx772_40:
                                                                                        jmp   n751_match_sequence_β
.Lx772_41:
                                                                                        jmp   n736_match_sequence_β
n735_match_alternate_as:
                        add              rsp, 32
                                                                                        jmp   n734_match_span_α
n735_match_alternate_β:
                        sub              rsp, 32
                        mov              rax, qword ptr [rbp + 152]
                                                                                        jmp   rax
n735_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 144]
                        mov              rax, qword ptr [rbp + 160]
                                                                                        jmp   rax
.Lx772_19:
                        add              rsp, 32
                                                                                        jmp   n732_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n736_match_sequence_α:
                        mov              dword ptr [rbp + 304], r14d
                                                                                        jmp   n746_match_assign_save_α
n736_match_sequence_as:
                                                                                        jmp   n735_match_alternate_s1
n736_match_sequence_β:
                                                                                        jmp   n739_match_assign_cond_β
n736_match_sequence_af:
                                                                                        jmp   n735_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n737_match_assign_save_α:
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        add              rsp, 32
                                                                                        jmp   n738_match_patref_α
n737_match_assign_save_β:
                        sub              rsp, 32
                        add              rsp, 32
                                                                                        jmp   n742_match_assign_cond_β
#-----------------------------------------------------------------------------------------------------------------------
n738_match_patref_α:
                        lea              rdi, [rip + .S0]
                        xor              esi, esi
                        call             rt_defer_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx777_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx777_4]
                        lea              rdx, [rip + .Lx777_5]
                                                                                        jmp   rax
.Lx777_4:
                                                                                        jmp   n739_match_assign_cond_α
.Lx777_5:
                                                                                        jmp   n737_match_assign_save_β
.Lx777_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx777_2:
                        test             rax, rax
                                                                                        je    .Lx777_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx777_7]
                        lea              rdx, [rip + .Lx777_8]
                                                                                        jmp   rax
.Lx777_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx777_2
.Lx777_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx777_2
.Lx777_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n737_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx777_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n739_match_assign_cond_α
.Lx777_6:
                        add              rsp, 16
                                                                                        jmp   n737_match_assign_save_β
n738_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n739_match_assign_cond_α:
                        lea              rdi, [rbp + 480]
                        call             rt_cap_top@PLT
                        lea              rcx, [rip + .S1]
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r10 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r10 + 16], rdx
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                                                                                        jmp   n735_match_alternate_s1
n739_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n738_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n740_match_assign_save_α:
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        add              rsp, 32
                                                                                        jmp   n741_match_sequence_α
n740_match_assign_save_β:
                        sub              rsp, 32
                        add              rsp, 32
                                                                                        jmp   n745_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n741_match_sequence_α:
                        mov              dword ptr [rbp + 432], r14d
                                                                                        jmp   n744_match_any_α
n741_match_sequence_as:
                                                                                        jmp   n742_match_assign_cond_α
n741_match_sequence_β:
                                                                                        jmp   n743_match_span_β
n741_match_sequence_af:
                                                                                        jmp   n740_match_assign_save_β
#-----------------------------------------------------------------------------------------------------------------------
n742_match_assign_cond_α:
                        lea              rdi, [rbp + 416]
                        call             rt_cap_top@PLT
                        lea              rcx, [rip + .S2]
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r10 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r10 + 16], rdx
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                                                                                        jmp   n737_match_assign_save_α
n742_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n741_match_sequence_β
#-----------------------------------------------------------------------------------------------------------------------
n743_match_span_α:
                        sub              rsp, 16
                        lea              rdi, [rip + .C0]
                        movsxd           rcx, r14d
.Lx787_0:
                        cmp              ecx, r15d
                                                                                        jge   .Lx787_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx787_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx787_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx787_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx787_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx787_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx787_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx787_1
                        add              ecx, 1
                                                                                        jmp   .Lx787_0
.Lx787_1:
                        cmp              ecx, r14d
                                                                                        jg    .Lx787_240
                        add              rsp, 16
                                                                                        jmp   n744_match_any_β
.Lx787_240:
                        mov              dword ptr [rsp + 4], r14d
                        mov              r14d, ecx
                                                                                        jmp   n742_match_assign_cond_α
n743_match_span_β:
                        mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16
                                                                                        jmp   n744_match_any_β
#-----------------------------------------------------------------------------------------------------------------------
n744_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   n740_match_assign_save_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C1]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    n740_match_assign_save_β
                        add              r14d, 1
                                                                                        jmp   n743_match_span_α
n744_match_any_β:
                        sub              r14d, 1
                                                                                        jmp   n740_match_assign_save_β
#-----------------------------------------------------------------------------------------------------------------------
n745_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n748_match_assign_cond_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 95
                                                                                        jne   n748_match_assign_cond_β
                        add              r14d, 1
                                                                                        jmp   n740_match_assign_save_α
n745_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n748_match_assign_cond_β
#-----------------------------------------------------------------------------------------------------------------------
n746_match_assign_save_α:
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        add              rsp, 32
                                                                                        jmp   n747_match_sequence_α
n746_match_assign_save_β:
                        sub              rsp, 32
                        add              rsp, 32
                                                                                        jmp   n735_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n747_match_sequence_α:
                        mov              dword ptr [rbp + 368], r14d
                                                                                        jmp   n750_match_notany_α
n747_match_sequence_as:
                                                                                        jmp   n748_match_assign_cond_α
n747_match_sequence_β:
                                                                                        jmp   n749_match_break_β
n747_match_sequence_af:
                                                                                        jmp   n746_match_assign_save_β
#-----------------------------------------------------------------------------------------------------------------------
n748_match_assign_cond_α:
                        lea              rdi, [rbp + 352]
                        call             rt_cap_top@PLT
                        lea              rcx, [rip + .S3]
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r10 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r10 + 16], rdx
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                                                                                        jmp   n745_match_lit_α
n748_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n747_match_sequence_β
#-----------------------------------------------------------------------------------------------------------------------
n749_match_break_α:
                        sub              rsp, 16
                        movsxd           rcx, r14d
.Lx799_0:
                        cmp              ecx, r15d
                                                                                        jl    .Lx799_237
                        add              rsp, 16
                                                                                        jmp   n750_match_notany_β
.Lx799_237:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 95
                                                                                        je    .Lx799_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx799_238
                        add              rsp, 16
                                                                                        jmp   n750_match_notany_β
.Lx799_238:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 95
                                                                                        je    .Lx799_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx799_239
                        add              rsp, 16
                                                                                        jmp   n750_match_notany_β
.Lx799_239:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 95
                                                                                        je    .Lx799_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx799_240
                        add              rsp, 16
                                                                                        jmp   n750_match_notany_β
.Lx799_240:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 95
                                                                                        je    .Lx799_1
                        add              ecx, 1
                                                                                        jmp   .Lx799_0
.Lx799_1:
                        mov              dword ptr [rsp + 0], r14d
                        mov              r14d, ecx
                                                                                        jmp   n748_match_assign_cond_α
n749_match_break_β:
                        mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n750_match_notany_β
#-----------------------------------------------------------------------------------------------------------------------
n750_match_notany_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   n746_match_assign_save_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 95
                                                                                        je    n746_match_assign_save_β
                        add              r14d, 1
                                                                                        jmp   n749_match_break_α
n750_match_notany_β:
                        sub              r14d, 1
                                                                                        jmp   n746_match_assign_save_β
#-----------------------------------------------------------------------------------------------------------------------
n751_match_sequence_α:
                        mov              dword ptr [rbp + 176], r14d
                                                                                        jmp   n756_match_assign_save_α
n751_match_sequence_as:
                                                                                        jmp   n735_match_alternate_s0
n751_match_sequence_β:
                                                                                        jmp   n754_match_assign_cond_β
n751_match_sequence_af:
                                                                                        jmp   n735_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n752_match_assign_save_α:
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        add              rsp, 32
                                                                                        jmp   n753_match_patref_α
n752_match_assign_save_β:
                        sub              rsp, 32
                        add              rsp, 32
                                                                                        jmp   n755_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n753_match_patref_α:
                        lea              rdi, [rip + .S0]
                        xor              esi, esi
                        call             rt_defer_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx805_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx805_4]
                        lea              rdx, [rip + .Lx805_5]
                                                                                        jmp   rax
.Lx805_4:
                                                                                        jmp   n754_match_assign_cond_α
.Lx805_5:
                                                                                        jmp   n752_match_assign_save_β
.Lx805_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx805_2:
                        test             rax, rax
                                                                                        je    .Lx805_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx805_7]
                        lea              rdx, [rip + .Lx805_8]
                                                                                        jmp   rax
.Lx805_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx805_2
.Lx805_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx805_2
.Lx805_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n752_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx805_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n754_match_assign_cond_α
.Lx805_6:
                        add              rsp, 16
                                                                                        jmp   n752_match_assign_save_β
n753_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n754_match_assign_cond_α:
                        lea              rdi, [rbp + 272]
                        call             rt_cap_top@PLT
                        lea              rcx, [rip + .S4]
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r10 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r10 + 16], rdx
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                                                                                        jmp   n735_match_alternate_s0
n754_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n753_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n755_match_lit_α:
                        mov              eax, r14d
                        add              eax, 10
                        cmp              eax, r15d
                                                                                        jg    n758_match_assign_cond_β
                        movsxd           rcx, r14d
                        mov              rdx, qword ptr [r13+rcx]
                        movabs           rax, 5791411556081353567
                        cmp              rdx, rax
                                                                                        jne   n758_match_assign_cond_β
                        movzx            eax, byte ptr [r13+rcx+8]
                        cmp              eax, 85
                                                                                        jne   n758_match_assign_cond_β
                        movzx            eax, byte ptr [r13+rcx+9]
                        cmp              eax, 78
                                                                                        jne   n758_match_assign_cond_β
                        add              r14d, 10
                                                                                        jmp   n752_match_assign_save_α
n755_match_lit_β:
                        sub              r14d, 10
                                                                                        jmp   n758_match_assign_cond_β
#-----------------------------------------------------------------------------------------------------------------------
n756_match_assign_save_α:
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        add              rsp, 32
                                                                                        jmp   n757_match_span_α
n756_match_assign_save_β:
                        sub              rsp, 32
                        add              rsp, 32
                                                                                        jmp   n735_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n757_match_span_α:
                        sub              rsp, 16
                        lea              rdi, [rip + .C2]
                        movsxd           rcx, r14d
.Lx813_0:
                        cmp              ecx, r15d
                                                                                        jge   .Lx813_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx813_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx813_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx813_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx813_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx813_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx813_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx813_1
                        add              ecx, 1
                                                                                        jmp   .Lx813_0
.Lx813_1:
                        cmp              ecx, r14d
                                                                                        jg    .Lx813_240
                        add              rsp, 16
                                                                                        jmp   n756_match_assign_save_β
.Lx813_240:
                        mov              dword ptr [rsp + 4], r14d
                        mov              r14d, ecx
                                                                                        jmp   n758_match_assign_cond_α
n757_match_span_β:
                        mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16
                                                                                        jmp   n756_match_assign_save_β
#-----------------------------------------------------------------------------------------------------------------------
n758_match_assign_cond_α:
                        lea              rdi, [rbp + 224]
                        call             rt_cap_top@PLT
                        lea              rcx, [rip + .S5]
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r10 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r10 + 16], rdx
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                                                                                        jmp   n755_match_lit_α
n758_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n757_match_span_β
#-----------------------------------------------------------------------------------------------------------------------
n759_lit_integer_α:
                        mov              qword ptr [rbp + 48], 6
                        mov              rax, qword ptr [rip + .Lx816_0]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n760_match_pos_α
n759_lit_integer_β:
                                                                                        jmp   proc_PAT$0_ω
.Lx816_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n760_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   proc_PAT$0_ω
                                                                                        jmp   n732_match_arbno_α
n760_match_pos_β:
                                                                                        jmp   proc_PAT$0_ω
proc_PAT$0_scanhit:
                        cmp              qword ptr [rbp + 576], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 568]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$0_γ
proc_PAT$0_scanfail:
                        cmp              qword ptr [rbp + 576], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 568]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 568], eax
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
                                                                                        jmp   qword ptr [rbp + 544]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$0_res]
                        push             rax
                        mov              rax, [rbp + 584]
                        mov              rbp, [rbp + 600]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_ω:
                        mov              rax, [rbp + 592]
                        lea              rsp, [rbp + 608]
                        mov              rbp, [rbp + 600]
                                                                                        jmp   rax
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "LBL__new_sent"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_LBL__new_sent_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 6688
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "LBL__add_tok"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_LBL__add_tok_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 6688
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "LBL__pp_mem"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_LBL__pp_mem_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 6688
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "new_sent"
                        .align           8
.Lstartup_pnames3:
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + .Lstartup_pnames3]
                        mov              edx, 0
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_new_sent_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 16
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "add_tok"
                        .align           8
.Lstartup_pnames4:
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + .Lstartup_pnames4]
                        mov              edx, 0
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_add_tok_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 16
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "pp_mem"
.Lstartup_pp5_0:        .string          "mem"
.Lstartup_pp5_1:        .string          "ssk"
.Lstartup_pp5_2:        .string          "si"
.Lstartup_pp5_3:        .string          "sentno"
.Lstartup_pp5_4:        .string          "wsk"
.Lstartup_pp5_5:        .string          "wi"
.Lstartup_pp5_6:        .string          "wkey"
.Lstartup_pp5_7:        .string          "wq"
.Lstartup_pp5_8:        .string          "wrd"
.Lstartup_pp5_9:        .string          "tsk"
.Lstartup_pp5_10:       .string          "ti"
.Lstartup_pp5_11:       .string          "tag"
.Lstartup_pp5_12:       .string          "tv"
.Lstartup_pp5_13:       .string          "tline"
.Lstartup_pp5_14:       .string          "pfx"
.Lstartup_pp5_15:       .string          "pad"
.Lstartup_pp5_16:       .string          "next_wkey"
.Lstartup_pp5_17:       .string          "last_sent"
.Lstartup_pp5_18:       .string          "lline"
.Lstartup_pp5_19:       .string          "ns"
                        .align           8
.Lstartup_pnames5:
                        .quad            .Lstartup_pp5_0
                        .quad            .Lstartup_pp5_1
                        .quad            .Lstartup_pp5_2
                        .quad            .Lstartup_pp5_3
                        .quad            .Lstartup_pp5_4
                        .quad            .Lstartup_pp5_5
                        .quad            .Lstartup_pp5_6
                        .quad            .Lstartup_pp5_7
                        .quad            .Lstartup_pp5_8
                        .quad            .Lstartup_pp5_9
                        .quad            .Lstartup_pp5_10
                        .quad            .Lstartup_pp5_11
                        .quad            .Lstartup_pp5_12
                        .quad            .Lstartup_pp5_13
                        .quad            .Lstartup_pp5_14
                        .quad            .Lstartup_pp5_15
                        .quad            .Lstartup_pp5_16
                        .quad            .Lstartup_pp5_17
                        .quad            .Lstartup_pp5_18
                        .quad            .Lstartup_pp5_19
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + .Lstartup_pnames5]
                        mov              edx, 20
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_pp_mem_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 20
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 16
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "PAT$0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_PAT$0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 560
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
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
                        sub              rsp, 6696
                        mov              rdi, rsp
                        mov              ecx, 6696
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 6688], rbp
                        mov              rbp, rsp
main_α_body:
#=======================================================================================================================
#                 &ALPHABET       POS(10) LEN(1) . nl
#-----------------------------------------------------------------------------------------------------------------------
n818_keyword_snobol4_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx1254_0]
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        add              rsp, 16
                                                                                        jmp   n819_match_head_α
n818_keyword_snobol4_β:
                        sub              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n822_lit_string_α
.Lx1254_0:
                        .quad            .Lx1254_0_s
.Lx1254_0_s:
                        .string          "ALPHABET"
#-----------------------------------------------------------------------------------------------------------------------
n819_match_head_α:
                        mov              qword ptr [rbp + 160], r13
                        mov              qword ptr [rbp + 168], r14
                        mov              qword ptr [rbp + 176], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 184], rax
                        mov              qword ptr [rbp + 152], rbp
                        mov              rdi, qword ptr [rbp + 288]
                        mov              rsi, qword ptr [rbp + 296]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], 0
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                        mov              rax, rsp
                        sub              rsp, 32
                        mov              qword ptr [rsp + 16], rax
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 8], rax
                        mov              dword ptr [rsp + 0], 0
.Lx1256_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n820_match_sequence_α
n819_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx1256_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx1256_1
                                                                                        jmp   .Lx1256_0
.Lx1256_1:
                        mov              rax, qword ptr [rsp + 8]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 16]
                        mov              r10, qword ptr [1879048192]
.Lx1256_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1256_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 160]
                        mov              r14, qword ptr [rbp + 168]
                        mov              r15, qword ptr [rbp + 176]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 184]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 152]
                                                                                        jmp   n822_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n820_match_sequence_α:
                                                                                        jmp   n896_lit_integer_α
n820_match_sequence_as:
                                                                                        jmp   n821_match_release_α
n820_match_sequence_β:
                                                                                        jmp   n895_match_assign_cond_β
n820_match_sequence_af:
                                                                                        jmp   n819_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n821_match_release_α:
                        mov              rax, qword ptr [rsp + 24]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 32]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx1260_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1260_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx1260_1:
                        test             rax, rax
                                                                                        je    .Lx1260_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1260_3]
                        lea              rdx, [rip + .Lx1260_4]
                                                                                        jmp   rax
.Lx1260_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx1260_1
.Lx1260_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx1260_1
.Lx1260_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx1260_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1260_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 160]
                        mov              r14, qword ptr [rbp + 168]
                        mov              r15, qword ptr [rbp + 176]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 184]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 152]
                                                                                        jmp   n822_lit_string_α
#=======================================================================================================================
#                 DIGITS          =  '0123456789'
#-----------------------------------------------------------------------------------------------------------------------
n822_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx1261_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n823_assign_α
n822_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n824_lit_string_α
.Lx1261_0:
                        .quad            .Lx1261_0_s
.Lx1261_0_s:
                        .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n823_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052672], rax
                        mov              qword ptr [1879052680], rdx
                        add              rsp, 16
                                                                                        jmp   n824_lit_string_α
n823_assign_β:
                        add              rsp, 16
                                                                                        jmp   n824_lit_string_α
#=======================================================================================================================
#                 UCASE           =  'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
#-----------------------------------------------------------------------------------------------------------------------
n824_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 26
                        mov              rax, qword ptr [rip + .Lx1263_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n825_assign_α
n824_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n826_lit_string_α
.Lx1263_0:
                        .quad            .Lx1263_0_s
.Lx1263_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
#-----------------------------------------------------------------------------------------------------------------------
n825_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052688], rax
                        mov              qword ptr [1879052696], rdx
                        add              rsp, 16
                                                                                        jmp   n826_lit_string_α
n825_assign_β:
                        add              rsp, 16
                                                                                        jmp   n826_lit_string_α
#=======================================================================================================================
#                 DEFINE('new_sent()')                            :(new_sent_end)
#                 DEFINE('add_tok()')                             :(add_tok_end)
#                 DEFINE('pp_mem(mem)ssk,si,sentno,wsk,wi,wkey,wq,wrd,tsk,ti,tag,tv,tline,pfx,pad,next_wkey,last_sent,lline,ns') :(pp_mem_end)
#                 &TRIM           =   0
#-----------------------------------------------------------------------------------------------------------------------
n826_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx1265_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n827_lit_integer_α
n826_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n829_lit_integer_α
.Lx1265_0:
                        .quad            .Lx1265_0_s
.Lx1265_0_s:
                        .string          "TRIM"
#-----------------------------------------------------------------------------------------------------------------------
n827_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx1266_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n828_call_α
n827_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n829_lit_integer_α
.Lx1266_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n828_call_α:
                        sub              rsp, 16
                        sub              rsp, 32
                        mov              r10, qword ptr [rsp + 64]
                        mov              r11, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        mov              r10, qword ptr [rsp + 48]
                        mov              r11, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        .section         .rodata
.Lrkfnzd1268:           .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1268]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 99
                                                                                        jne   .Lx1267_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n829_lit_integer_α
.Lx1267_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 48
                                                                                        jmp   n829_lit_integer_α
n828_call_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n829_lit_integer_α
#=======================================================================================================================
#                 nl              =   CHAR(10)
#-----------------------------------------------------------------------------------------------------------------------
n829_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx1269_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n830_call_α
n829_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n832_var_α
.Lx1269_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n830_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lbynamefnzd383:        .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd383]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx1270_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n832_var_α
.Lx1270_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n831_assign_α
n830_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n832_var_α
#-----------------------------------------------------------------------------------------------------------------------
n831_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052656], rax
                        mov              qword ptr [1879052664], rdx
                        add              rsp, 32
                                                                                        jmp   n832_var_α
n831_assign_β:
                        add              rsp, 32
                                                                                        jmp   n832_var_α
#=======================================================================================================================
# slurp           line            =   INPUT                       :F(slurp_f)
#-----------------------------------------------------------------------------------------------------------------------
n832_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx1272_0]
                        call             NV_GET_fn@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1272_240
                        add              rsp, 16
                                                                                        jmp   n864_var_α
.Lx1272_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n833_assign_α
n832_var_β:
                        add              rsp, 16
                                                                                        jmp   n864_var_α
.Lx1272_0:
                        .quad            .Lx1272_0_s
.Lx1272_0_s:
                        .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n833_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052736], rax
                        mov              qword ptr [1879052744], rdx
                        add              rsp, 16
                                                                                        jmp   n834_var_α
n833_assign_β:
                        add              rsp, 16
                                                                                        jmp   n864_var_α
#=======================================================================================================================
#                 b1              =   b1 line nl
#-----------------------------------------------------------------------------------------------------------------------
n834_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052752]
                        mov              rdx, qword ptr [1879052760]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n835_var_α
n834_var_β:
                        add              rsp, 16
                                                                                        jmp   n840_var_α
#-----------------------------------------------------------------------------------------------------------------------
n835_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052736]
                        mov              rdx, qword ptr [1879052744]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n836_binop_α
n835_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n840_var_α
#-----------------------------------------------------------------------------------------------------------------------
n836_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n837_var_α
n836_binop_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n840_var_α
#-----------------------------------------------------------------------------------------------------------------------
n837_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052656]
                        mov              rdx, qword ptr [1879052664]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n838_binop_α
n837_var_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n840_var_α
#-----------------------------------------------------------------------------------------------------------------------
n838_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n839_assign_α
n838_binop_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n840_var_α
#-----------------------------------------------------------------------------------------------------------------------
n839_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052752], rax
                        mov              qword ptr [1879052760], rdx
                        add              rsp, 80
                                                                                        jmp   n840_var_α
n839_assign_β:
                        add              rsp, 80
                                                                                        jmp   n840_var_α
#=======================================================================================================================
#                 GT(SIZE(b1), 8192)                              :F(slurp)
#-----------------------------------------------------------------------------------------------------------------------
n840_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052752]
                        mov              rdx, qword ptr [1879052760]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n841_call_α
n840_var_β:
                        add              rsp, 16
                                                                                        jmp   n832_var_α
#-----------------------------------------------------------------------------------------------------------------------
n841_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1282:           .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1282]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx1281_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n832_var_α
.Lx1281_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n842_lit_integer_α
n841_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n832_var_α
#-----------------------------------------------------------------------------------------------------------------------
n842_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx1283_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n843_coerce_numeric_α
n842_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n832_var_α
.Lx1283_0:
                        .quad            8192
#-----------------------------------------------------------------------------------------------------------------------
n843_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 7
                                                                                        je    .Lx1285_1
                        cmp              eax, 6
                                                                                        jne   .Lx1285_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx1285_0
.Lx1285_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n844_coerce_numeric_α
.Lx1285_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 0]
                        mov              rcx, 111
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n844_coerce_numeric_α
n843_coerce_numeric_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n832_var_α
#-----------------------------------------------------------------------------------------------------------------------
n844_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 7
                                                                                        je    .Lx1287_1
                        cmp              eax, 6
                                                                                        jne   .Lx1287_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 6
                                                                                        jne   .Lx1287_0
.Lx1287_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n845_cmp_test_α
.Lx1287_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
                        lea              rdx, [rsp + 0]
                        mov              rcx, 112
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n845_cmp_test_α
n844_coerce_numeric_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n832_var_α
#-----------------------------------------------------------------------------------------------------------------------
n845_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jg    .Lx1289_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n832_var_α
.Lx1289_240:
                        add              rsp, 96
                                                                                        jmp   n846_var_α
n845_cmp_test_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n832_var_α
#=======================================================================================================================
#                 b2              =   b2 b1
#-----------------------------------------------------------------------------------------------------------------------
n846_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052768]
                        mov              rdx, qword ptr [1879052776]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n847_var_α
n846_var_β:
                        add              rsp, 16
                                                                                        jmp   n850_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n847_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052752]
                        mov              rdx, qword ptr [1879052760]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n848_binop_α
n847_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n850_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n848_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n849_assign_α
n848_binop_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n850_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n849_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052768], rax
                        mov              qword ptr [1879052776], rdx
                        add              rsp, 48
                                                                                        jmp   n850_lit_string_α
n849_assign_β:
                        add              rsp, 48
                                                                                        jmp   n850_lit_string_α
#=======================================================================================================================
#                 b1              =
#-----------------------------------------------------------------------------------------------------------------------
n850_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx1294_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n851_assign_α
n850_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n852_var_α
.Lx1294_0:
                        .quad            .Lx1294_0_s
.Lx1294_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n851_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052752], rax
                        mov              qword ptr [1879052760], rdx
                        add              rsp, 16
                                                                                        jmp   n852_var_α
n851_assign_β:
                        add              rsp, 16
                                                                                        jmp   n852_var_α
#=======================================================================================================================
#                 GT(SIZE(b2), 262144)                            :F(slurp)
#-----------------------------------------------------------------------------------------------------------------------
n852_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052768]
                        mov              rdx, qword ptr [1879052776]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n853_call_α
n852_var_β:
                        add              rsp, 16
                                                                                        jmp   n832_var_α
#-----------------------------------------------------------------------------------------------------------------------
n853_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1298:           .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1298]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx1297_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n832_var_α
.Lx1297_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n854_lit_integer_α
n853_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n832_var_α
#-----------------------------------------------------------------------------------------------------------------------
n854_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx1299_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n855_coerce_numeric_α
n854_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n832_var_α
.Lx1299_0:
                        .quad            262144
#-----------------------------------------------------------------------------------------------------------------------
n855_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 7
                                                                                        je    .Lx1301_1
                        cmp              eax, 6
                                                                                        jne   .Lx1301_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx1301_0
.Lx1301_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n856_coerce_numeric_α
.Lx1301_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 0]
                        mov              rcx, 111
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n856_coerce_numeric_α
n855_coerce_numeric_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n832_var_α
#-----------------------------------------------------------------------------------------------------------------------
n856_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 7
                                                                                        je    .Lx1303_1
                        cmp              eax, 6
                                                                                        jne   .Lx1303_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 6
                                                                                        jne   .Lx1303_0
.Lx1303_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n857_cmp_test_α
.Lx1303_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
                        lea              rdx, [rsp + 0]
                        mov              rcx, 112
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n857_cmp_test_α
n856_coerce_numeric_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n832_var_α
#-----------------------------------------------------------------------------------------------------------------------
n857_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jg    .Lx1305_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n832_var_α
.Lx1305_240:
                        add              rsp, 96
                                                                                        jmp   n858_var_α
n857_cmp_test_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n832_var_α
#=======================================================================================================================
#                 src             =   src b2
#-----------------------------------------------------------------------------------------------------------------------
n858_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052784]
                        mov              rdx, qword ptr [1879052792]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n859_var_α
n858_var_β:
                        add              rsp, 16
                                                                                        jmp   n862_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n859_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052768]
                        mov              rdx, qword ptr [1879052776]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n860_binop_α
n859_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n862_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n860_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n861_assign_α
n860_binop_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n862_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n861_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052784], rax
                        mov              qword ptr [1879052792], rdx
                        add              rsp, 48
                                                                                        jmp   n862_lit_string_α
n861_assign_β:
                        add              rsp, 48
                                                                                        jmp   n862_lit_string_α
#=======================================================================================================================
#                 b2              =                               :(slurp)
#-----------------------------------------------------------------------------------------------------------------------
n862_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx1310_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n863_assign_α
n862_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n832_var_α
.Lx1310_0:
                        .quad            .Lx1310_0_s
.Lx1310_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n863_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052768], rax
                        mov              qword ptr [1879052776], rdx
                        add              rsp, 16
                                                                                        jmp   n832_var_α
n863_assign_β:
                        add              rsp, 16
                                                                                        jmp   n832_var_α
#=======================================================================================================================
# slurp_f         src             =   src b2 b1
#-----------------------------------------------------------------------------------------------------------------------
n864_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052784]
                        mov              rdx, qword ptr [1879052792]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n865_var_α
n864_var_β:
                        add              rsp, 16
                                                                                        jmp   n870_call_α
#-----------------------------------------------------------------------------------------------------------------------
n865_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052768]
                        mov              rdx, qword ptr [1879052776]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n866_binop_α
n865_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n870_call_α
#-----------------------------------------------------------------------------------------------------------------------
n866_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n867_var_α
n866_binop_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n870_call_α
#-----------------------------------------------------------------------------------------------------------------------
n867_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052752]
                        mov              rdx, qword ptr [1879052760]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n868_binop_α
n867_var_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n870_call_α
#-----------------------------------------------------------------------------------------------------------------------
n868_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n869_assign_α
n868_binop_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n870_call_α
#-----------------------------------------------------------------------------------------------------------------------
n869_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052784], rax
                        mov              qword ptr [1879052792], rdx
                        add              rsp, 80
                                                                                        jmp   n870_call_α
n869_assign_β:
                        add              rsp, 80
                                                                                        jmp   n870_call_α
#=======================================================================================================================
#                 mem             =   TABLE()
#-----------------------------------------------------------------------------------------------------------------------
n870_call_α:
                        sub              rsp, 16
                        .section         .rodata
.Lrkfnzd1319:           .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1319]
                        xor              esi, esi
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1318_240
                        add              rsp, 16
                                                                                        jmp   n872_lit_string_α
.Lx1318_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n871_assign_α
n870_call_β:
                        add              rsp, 16
                                                                                        jmp   n872_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n871_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052336], rax
                        mov              qword ptr [1879052344], rdx
                        add              rsp, 16
                                                                                        jmp   n872_lit_string_α
n871_assign_β:
                        add              rsp, 16
                                                                                        jmp   n872_lit_string_α
#=======================================================================================================================
#                 claws           =
#-----------------------------------------------------------------------------------------------------------------------
n872_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1321_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n873_call_α
n872_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n875_call_α
.Lx1321_0:
                        .quad            .Lx1321_0_s
.Lx1321_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n873_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1323:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1323]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx1322_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n875_call_α
.Lx1322_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n874_assign_α
n873_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n875_call_α
#-----------------------------------------------------------------------------------------------------------------------
n874_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052800], rax
                        mov              qword ptr [1879052808], rdx
                        add              rsp, 32
                                                                                        jmp   n875_call_α
n874_assign_β:
                        add              rsp, 32
                                                                                        jmp   n875_call_α
#=======================================================================================================================
#                 t0              =   TIME()
#-----------------------------------------------------------------------------------------------------------------------
n875_call_α:
                        sub              rsp, 16
                        .section         .rodata
.Lrkfnzd1326:           .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1326]
                        xor              esi, esi
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1325_240
                        add              rsp, 16
                                                                                        jmp   n877_var_α
.Lx1325_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n876_assign_α
n875_call_β:
                        add              rsp, 16
                                                                                        jmp   n877_var_α
#-----------------------------------------------------------------------------------------------------------------------
n876_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052816], rax
                        mov              qword ptr [1879052824], rdx
                        add              rsp, 16
                                                                                        jmp   n877_var_α
n876_assign_β:
                        add              rsp, 16
                                                                                        jmp   n877_var_α
#=======================================================================================================================
#                 src             claws                           :F(fail)
#-----------------------------------------------------------------------------------------------------------------------
n877_var_α:
                        mov              rax, qword ptr [1879052784]
                        mov              rdx, qword ptr [1879052792]
                        mov              qword ptr [rsp + 6480], rax
                        mov              qword ptr [rsp + 6488], rdx
                                                                                        jmp   n878_match_head_α
n877_var_β:
                                                                                        jmp   n891_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n878_match_head_α:
                        mov              qword ptr [rbp + 6432], r13
                        mov              qword ptr [rbp + 6440], r14
                        mov              qword ptr [rbp + 6448], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 6456], rax
                        mov              qword ptr [rbp + 6424], rbp
                        mov              rdi, qword ptr [rbp + 6480]
                        mov              rsi, qword ptr [rbp + 6488]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], 0
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                        mov              qword ptr [rbp + 6400], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 6392], rax
                        mov              dword ptr [rbp + 6384], 0
.Lx1330_0:
                        mov              r14d, dword ptr [rbp + 6384]
                                                                                        jmp   n879_match_patref_α
n878_match_head_β:
                        add              dword ptr [rbp + 6384], 1
                        mov              eax, dword ptr [rbp + 6384]
                        cmp              eax, r15d
                                                                                        jg    .Lx1330_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx1330_1
                                                                                        jmp   .Lx1330_0
.Lx1330_1:
                        mov              rax, qword ptr [rbp + 6392]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 6400]
                        mov              r10, qword ptr [1879048192]
.Lx1330_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1330_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 6432]
                        mov              r14, qword ptr [rbp + 6440]
                        mov              r15, qword ptr [rbp + 6448]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 6456]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 6424]
                                                                                        jmp   n891_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n879_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx1331_11
                        mov              rax, qword ptr [1879052800]
                        mov              rdx, qword ptr [1879052808]
                        cmp              eax, 3
                                                                                        jne   .Lx1331_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx1331_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx1331_10
.Lx1331_9:
                        xor              eax, eax
.Lx1331_10:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              qword ptr [rsi + 0], rax
.Lx1331_11:
                        test             rax, rax
                                                                                        jz    .Lx1331_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx1331_4]
                        lea              rdx, [rip + .Lx1331_5]
                                                                                        jmp   rax
.Lx1331_4:
                                                                                        jmp   n880_match_release_α
.Lx1331_5:
                                                                                        jmp   n878_match_head_β
.Lx1331_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S6]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx1331_2:
                        test             rax, rax
                                                                                        je    .Lx1331_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1331_7]
                        lea              rdx, [rip + .Lx1331_8]
                                                                                        jmp   rax
.Lx1331_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx1331_2
.Lx1331_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx1331_2
.Lx1331_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n878_match_head_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx1331_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n880_match_release_α
.Lx1331_6:
                        add              rsp, 16
                                                                                        jmp   n878_match_head_β
n879_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n880_match_release_α:
                        mov              rax, qword ptr [rbp + 6392]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 6400]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx1333_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1333_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx1333_1:
                        test             rax, rax
                                                                                        je    .Lx1333_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1333_3]
                        lea              rdx, [rip + .Lx1333_4]
                                                                                        jmp   rax
.Lx1333_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx1333_1
.Lx1333_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx1333_1
.Lx1333_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx1333_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1333_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 6432]
                        mov              r14, qword ptr [rbp + 6440]
                        mov              r15, qword ptr [rbp + 6448]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 6456]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 6424]
                                                                                        jmp   n881_call_α
#=======================================================================================================================
#                 t1              =   TIME()
#-----------------------------------------------------------------------------------------------------------------------
n881_call_α:
                        sub              rsp, 16
                        .section         .rodata
.Lrkfnzd1335:           .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1335]
                        xor              esi, esi
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1334_240
                        add              rsp, 16
                                                                                        jmp   n883_lit_string_α
.Lx1334_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n882_assign_α
n881_call_β:
                        add              rsp, 16
                                                                                        jmp   n883_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n882_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052832], rax
                        mov              qword ptr [1879052840], rdx
                        add              rsp, 16
                                                                                        jmp   n883_lit_string_α
n882_assign_β:
                        add              rsp, 16
                                                                                        jmp   n883_lit_string_α
#=======================================================================================================================
#                 TERMINAL        =   'match_ms=' (t1 - t0)
#-----------------------------------------------------------------------------------------------------------------------
n883_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Lx1337_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n884_var_α
n883_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n889_var_α
.Lx1337_0:
                        .quad            .Lx1337_0_s
.Lx1337_0_s:
                        .string          "match_ms="
#-----------------------------------------------------------------------------------------------------------------------
n884_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052832]
                        mov              rdx, qword ptr [1879052840]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n885_var_α
n884_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n889_var_α
#-----------------------------------------------------------------------------------------------------------------------
n885_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052816]
                        mov              rdx, qword ptr [1879052824]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n886_binop_α
n885_var_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n889_var_α
#-----------------------------------------------------------------------------------------------------------------------
n886_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1340_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n889_var_α
.Lx1340_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n887_binop_α
n886_binop_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n889_var_α
#-----------------------------------------------------------------------------------------------------------------------
n887_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n888_assign_α
n887_binop_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n889_var_α
#-----------------------------------------------------------------------------------------------------------------------
n888_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1342_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 80
                                                                                        jmp   n889_var_α
n888_assign_β:
                        add              rsp, 80
                                                                                        jmp   n889_var_α
.Lx1342_0:
                        .quad            .Lx1342_0_s
.Lx1342_0_s:
                        .string          "TERMINAL"
#=======================================================================================================================
#                 pp_mem(mem)                                     :(END)
#-----------------------------------------------------------------------------------------------------------------------
n889_var_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 6656], rax
                        mov              qword ptr [rsp + 6664], rdx
                                                                                        jmp   n890_call_α
n889_var_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n890_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx1345_0]
                        mov              esi, 20
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1345_5
                        mov              rax, qword ptr [rsp + 6992]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 7000]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1345_6]
                        lea              rdx, [rip + .Lx1345_7]
                                                                                        jmp   rax
.Lx1345_6:
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
                                                                                        jmp   .Lx1345_2
.Lx1345_7:
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
                                                                                        jmp   .Lx1345_2
.Lx1345_5:
                        add              rsp, 336
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1345_20
                        mov              rax, qword ptr [rsp + 6656]
                        mov              rdx, qword ptr [rsp + 6664]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1345_21
.Lx1345_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 6656]
                        mov              rdx, qword ptr [rsp + 6664]
                        call             rt_arg_stage@PLT
.Lx1345_21:
                        mov              rdi, qword ptr [rip + .Lx1345_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1345_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1345_3]
                        lea              rdx, [rip + .Lx1345_4]
                                                                                        jmp   rax
.Lx1345_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1345_2
.Lx1345_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1345_2
.Lx1345_1:
                        call             rt_faildescr@PLT
.Lx1345_2:
                        mov              qword ptr [rsp + 6608], rax
                        mov              qword ptr [rsp + 6616], rdx
                        cmp              eax, 99
                                                                                        je    main_γ
                                                                                        jmp   main_γ
n890_call_β:
                                                                                        jmp   main_γ
.Lx1345_0:
                        .quad            .Lx1345_0_s
.Lx1345_0_s:
                        .string          "pp_mem"
#=======================================================================================================================
# fail            OUTPUT          =  'Pattern match failed'
#-----------------------------------------------------------------------------------------------------------------------
n891_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 20
                        mov              rax, qword ptr [rip + .Lx1346_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n892_assign_α
n891_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx1346_0:
                        .quad            .Lx1346_0_s
.Lx1346_0_s:
                        .string          "Pattern match failed"
#-----------------------------------------------------------------------------------------------------------------------
n892_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1347_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
n892_assign_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx1347_0:
                        .quad            .Lx1347_0_s
.Lx1347_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n893_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n894_match_len_α
n893_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n819_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n894_match_len_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jle   .Lx1350_240
                        add              rsp, 16
                                                                                        jmp   n819_match_head_β
.Lx1350_240:
                        add              r14d, 1
                                                                                        jmp   n895_match_assign_cond_α
n894_match_len_β:
                        sub              r14d, 1
                        add              rsp, 16
                                                                                        jmp   n819_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n895_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 0]
                        lea              rcx, [rip + .S7]
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r10 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r10 + 16], rdx
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                                                                                        jmp   n821_match_release_α
n895_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n894_match_len_β
#-----------------------------------------------------------------------------------------------------------------------
n896_lit_integer_α:
                        mov              qword ptr [rsp + 256], 6
                        mov              rax, qword ptr [rip + .Lx1353_0]
                        mov              qword ptr [rsp + 264], rax
                                                                                        jmp   n897_match_pos_α
n896_lit_integer_β:
                                                                                        jmp   n819_match_head_β
.Lx1353_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n897_match_pos_α:
                        mov              rax, 10
                        cmp              r14d, eax
                                                                                        jne   n819_match_head_β
                                                                                        jmp   n893_match_assign_save_α
n897_match_pos_β:
                                                                                        jmp   n819_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n898_goto_α:
                                                                                        jmp   n899_var_α
n898_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# new_sent        sentno          =  +num
#-----------------------------------------------------------------------------------------------------------------------
n899_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052704]
                        mov              rdx, qword ptr [1879052712]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n900_unop_α
n899_var_β:
                        add              rsp, 16
                                                                                        jmp   n902_var_α
#-----------------------------------------------------------------------------------------------------------------------
n900_unop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        call             rt_num_pos@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n901_assign_α
n900_unop_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n902_var_α
#-----------------------------------------------------------------------------------------------------------------------
n901_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052384], rax
                        mov              qword ptr [1879052392], rdx
                        add              rsp, 32
                                                                                        jmp   n902_var_α
n901_assign_β:
                        add              rsp, 32
                                                                                        jmp   n902_var_α
#=======================================================================================================================
#                 mem[sentno]     =  TABLE()
#-----------------------------------------------------------------------------------------------------------------------
n902_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n903_var_α
n902_var_β:
                        add              rsp, 16
                                                                                        jmp   n907_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n903_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n904_subscript_α
n903_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n907_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n904_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1361_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n907_lit_string_α
.Lx1361_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n905_call_α
n904_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n907_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n905_call_α:
                        sub              rsp, 16
                        .section         .rodata
.Lrkfnzd1363:           .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1363]
                        xor              esi, esi
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1362_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n907_lit_string_α
.Lx1362_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n906_assign_var_α
n905_call_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n907_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n906_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1364_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n907_lit_string_α
.Lx1364_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 80
                                                                                        jmp   n907_lit_string_α
n906_assign_var_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n907_lit_string_α
#=======================================================================================================================
#                 new_sent        =  .dummy                       :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n907_lit_string_α:
                        mov              qword ptr [rsp + 512], 1
                        mov              dword ptr [rsp + 516], 5
                        mov              rax, qword ptr [rip + .Lx1365_0]
                        mov              qword ptr [rsp + 520], rax
                                                                                        jmp   n908_call_α
n907_lit_string_β:
                                                                                        jmp   n910_lit_string_α
.Lx1365_0:
                        .quad            .Lx1365_0_s
.Lx1365_0_s:
                        .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n908_call_α:
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 488], rax
                        .section         .rodata
.Lrkfn1367:             .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1367]
                        lea              rsi, [rsp + 480]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                        cmp              eax, 99
                                                                                        je    n910_lit_string_α
                                                                                        jmp   n909_assign_α
n908_call_β:
                                                                                        jmp   n910_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n909_assign_α:
                        mov              rax, qword ptr [rsp + 464]
                        mov              rdx, qword ptr [rsp + 472]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n910_lit_string_α
n909_assign_β:
                                                                                        jmp   n910_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n910_lit_string_α:
                        mov              qword ptr [rsp + 32], 1
                        mov              dword ptr [rsp + 36], 0
                        mov              rax, qword ptr [rip + .Lx1369_0]
                        mov              qword ptr [rsp + 40], rax
                                                                                        jmp   n911_call_α
n910_lit_string_β:
                                                                                        jmp   n913_save_restore_α
.Lx1369_0:
                        .quad            .Lx1369_0_s
.Lx1369_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n911_call_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 72], rax
                        .section         .rodata
.Lrkfn1371:             .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1371]
                        lea              rsi, [rsp + 64]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              eax, 99
                                                                                        je    n913_save_restore_α
                                                                                        jmp   n912_save_restore_α
n911_call_β:
                                                                                        jmp   n913_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n912_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n913_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n914_goto_α:
                                                                                        jmp   n826_lit_string_α
n914_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n915_goto_α:
                                                                                        jmp   n916_var_α
n915_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# add_tok         DIFFER(mem[sentno][wrd])                        :F(new_wrd)
#-----------------------------------------------------------------------------------------------------------------------
n916_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n917_var_α
n916_var_β:
                        add              rsp, 16
                                                                                        jmp   n957_var_α
#-----------------------------------------------------------------------------------------------------------------------
n917_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n918_subscript_α
n917_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n957_var_α
#-----------------------------------------------------------------------------------------------------------------------
n918_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1380_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n957_var_α
.Lx1380_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n919_deref_α
n918_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n957_var_α
#-----------------------------------------------------------------------------------------------------------------------
n919_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1381_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n957_var_α
.Lx1381_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n920_var_α
n919_deref_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n957_var_α
#-----------------------------------------------------------------------------------------------------------------------
n920_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n921_subscript_α
n920_var_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n957_var_α
#-----------------------------------------------------------------------------------------------------------------------
n921_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1383_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n957_var_α
.Lx1383_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n922_deref_α
n921_subscript_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n957_var_α
#-----------------------------------------------------------------------------------------------------------------------
n922_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1384_240
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n957_var_α
.Lx1384_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n923_call_α
n922_deref_β:
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n957_var_α
#-----------------------------------------------------------------------------------------------------------------------
n923_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1386:           .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1386]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx1385_240
                        add              rsp, 16
                        add              rsp, 112
                                                                                        jmp   n957_var_α
.Lx1385_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 128
                                                                                        jmp   n924_var_α
n923_call_β:
                        add              rsp, 16
                        add              rsp, 112
                                                                                        jmp   n957_var_α
#=======================================================================================================================
#                 DIFFER(mem[sentno][wrd][tag])                   :F(new_tag)
#-----------------------------------------------------------------------------------------------------------------------
n924_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n925_var_α
n924_var_β:
                        add              rsp, 16
                                                                                        jmp   n965_var_α
#-----------------------------------------------------------------------------------------------------------------------
n925_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n926_subscript_α
n925_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n965_var_α
#-----------------------------------------------------------------------------------------------------------------------
n926_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1389_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n965_var_α
.Lx1389_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n927_deref_α
n926_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n965_var_α
#-----------------------------------------------------------------------------------------------------------------------
n927_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1390_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n965_var_α
.Lx1390_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n928_var_α
n927_deref_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n965_var_α
#-----------------------------------------------------------------------------------------------------------------------
n928_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n929_subscript_α
n928_var_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n965_var_α
#-----------------------------------------------------------------------------------------------------------------------
n929_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1392_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n965_var_α
.Lx1392_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n930_deref_α
n929_subscript_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n965_var_α
#-----------------------------------------------------------------------------------------------------------------------
n930_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1393_240
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n965_var_α
.Lx1393_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n931_var_α
n930_deref_β:
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n965_var_α
#-----------------------------------------------------------------------------------------------------------------------
n931_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052512]
                        mov              rdx, qword ptr [1879052520]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n932_subscript_α
n931_var_β:
                        add              rsp, 16
                        add              rsp, 112
                                                                                        jmp   n965_var_α
#-----------------------------------------------------------------------------------------------------------------------
n932_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1395_240
                        add              rsp, 16
                        add              rsp, 128
                                                                                        jmp   n965_var_α
.Lx1395_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n933_deref_α
n932_subscript_β:
                        add              rsp, 16
                        add              rsp, 128
                                                                                        jmp   n965_var_α
#-----------------------------------------------------------------------------------------------------------------------
n933_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1396_240
                        add              rsp, 16
                        add              rsp, 144
                                                                                        jmp   n965_var_α
.Lx1396_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n934_call_α
n933_deref_β:
                        add              rsp, 16
                        add              rsp, 144
                                                                                        jmp   n965_var_α
#-----------------------------------------------------------------------------------------------------------------------
n934_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1398:           .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1398]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx1397_240
                        add              rsp, 16
                        add              rsp, 160
                                                                                        jmp   n965_var_α
.Lx1397_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 176
                                                                                        jmp   n935_var_α
n934_call_β:
                        add              rsp, 16
                        add              rsp, 160
                                                                                        jmp   n965_var_α
#=======================================================================================================================
#                 mem[sentno][wrd][tag]  =  mem[sentno][wrd][tag] + 1  :(done)
#-----------------------------------------------------------------------------------------------------------------------
n935_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n936_var_α
n935_var_β:
                        add              rsp, 16
                                                                                        jmp   n976_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n936_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n937_subscript_α
n936_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n976_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n937_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1401_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n976_lit_string_α
.Lx1401_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n938_deref_α
n937_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n976_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n938_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1402_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n976_lit_string_α
.Lx1402_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n939_var_α
n938_deref_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n976_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n939_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n940_subscript_α
n939_var_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n976_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n940_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1404_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n976_lit_string_α
.Lx1404_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n941_deref_α
n940_subscript_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n976_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n941_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1405_240
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n976_lit_string_α
.Lx1405_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n942_var_α
n941_deref_β:
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n976_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n942_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052512]
                        mov              rdx, qword ptr [1879052520]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n943_subscript_α
n942_var_β:
                        add              rsp, 16
                        add              rsp, 112
                                                                                        jmp   n976_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n943_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1407_240
                        add              rsp, 16
                        add              rsp, 128
                                                                                        jmp   n976_lit_string_α
.Lx1407_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n944_var_α
n943_subscript_β:
                        add              rsp, 16
                        add              rsp, 128
                                                                                        jmp   n976_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n944_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n945_var_α
n944_var_β:
                        add              rsp, 16
                        add              rsp, 144
                                                                                        jmp   n976_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n945_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n946_subscript_α
n945_var_β:
                        add              rsp, 16
                        add              rsp, 160
                                                                                        jmp   n976_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n946_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1410_240
                        add              rsp, 16
                        add              rsp, 176
                                                                                        jmp   n976_lit_string_α
.Lx1410_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n947_deref_α
n946_subscript_β:
                        add              rsp, 16
                        add              rsp, 176
                                                                                        jmp   n976_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n947_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1411_240
                        add              rsp, 16
                        add              rsp, 192
                                                                                        jmp   n976_lit_string_α
.Lx1411_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n948_var_α
n947_deref_β:
                        add              rsp, 16
                        add              rsp, 192
                                                                                        jmp   n976_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n948_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n949_subscript_α
n948_var_β:
                        add              rsp, 16
                        add              rsp, 208
                                                                                        jmp   n976_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n949_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1413_240
                        add              rsp, 16
                        add              rsp, 224
                                                                                        jmp   n976_lit_string_α
.Lx1413_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n950_deref_α
n949_subscript_β:
                        add              rsp, 16
                        add              rsp, 224
                                                                                        jmp   n976_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n950_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1414_240
                        add              rsp, 16
                        add              rsp, 240
                                                                                        jmp   n976_lit_string_α
.Lx1414_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n951_var_α
n950_deref_β:
                        add              rsp, 16
                        add              rsp, 240
                                                                                        jmp   n976_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n951_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052512]
                        mov              rdx, qword ptr [1879052520]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n952_subscript_α
n951_var_β:
                        add              rsp, 16
                        add              rsp, 256
                                                                                        jmp   n976_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n952_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1416_240
                        add              rsp, 16
                        add              rsp, 272
                                                                                        jmp   n976_lit_string_α
.Lx1416_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n953_deref_α
n952_subscript_β:
                        add              rsp, 16
                        add              rsp, 272
                                                                                        jmp   n976_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n953_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1417_240
                        add              rsp, 16
                        add              rsp, 288
                                                                                        jmp   n976_lit_string_α
.Lx1417_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n954_lit_integer_α
n953_deref_β:
                        add              rsp, 16
                        add              rsp, 288
                                                                                        jmp   n976_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n954_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx1418_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n955_binop_α
n954_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 304
                                                                                        jmp   n976_lit_string_α
.Lx1418_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n955_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1419_240
                        add              rsp, 16
                        add              rsp, 320
                                                                                        jmp   n976_lit_string_α
.Lx1419_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n956_assign_var_α
n955_binop_β:
                        add              rsp, 16
                        add              rsp, 320
                                                                                        jmp   n976_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n956_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 208]
                        mov              rsi, qword ptr [rsp + 216]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1420_240
                        add              rsp, 16
                        add              rsp, 336
                                                                                        jmp   n976_lit_string_α
.Lx1420_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 352
                                                                                        jmp   n976_lit_string_α
n956_assign_var_β:
                        add              rsp, 16
                        add              rsp, 336
                                                                                        jmp   n976_lit_string_α
#=======================================================================================================================
# new_wrd         mem[sentno][wrd]       =  TABLE()
#-----------------------------------------------------------------------------------------------------------------------
n957_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n958_var_α
n957_var_β:
                        add              rsp, 16
                                                                                        jmp   n965_var_α
#-----------------------------------------------------------------------------------------------------------------------
n958_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n959_subscript_α
n958_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n965_var_α
#-----------------------------------------------------------------------------------------------------------------------
n959_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1423_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n965_var_α
.Lx1423_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n960_deref_α
n959_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n965_var_α
#-----------------------------------------------------------------------------------------------------------------------
n960_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1424_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n965_var_α
.Lx1424_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n961_var_α
n960_deref_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n965_var_α
#-----------------------------------------------------------------------------------------------------------------------
n961_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n962_subscript_α
n961_var_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n965_var_α
#-----------------------------------------------------------------------------------------------------------------------
n962_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1426_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n965_var_α
.Lx1426_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n963_call_α
n962_subscript_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n965_var_α
#-----------------------------------------------------------------------------------------------------------------------
n963_call_α:
                        sub              rsp, 16
                        .section         .rodata
.Lrkfnzd1428:           .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1428]
                        xor              esi, esi
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1427_240
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n965_var_α
.Lx1427_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n964_assign_var_α
n963_call_β:
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n965_var_α
#-----------------------------------------------------------------------------------------------------------------------
n964_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1429_240
                        add              rsp, 16
                        add              rsp, 112
                                                                                        jmp   n965_var_α
.Lx1429_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 128
                                                                                        jmp   n965_var_α
n964_assign_var_β:
                        add              rsp, 16
                        add              rsp, 112
                                                                                        jmp   n965_var_α
#=======================================================================================================================
# new_tag         mem[sentno][wrd][tag]  =  1
#-----------------------------------------------------------------------------------------------------------------------
n965_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n966_var_α
n965_var_β:
                        add              rsp, 16
                                                                                        jmp   n976_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n966_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n967_subscript_α
n966_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n976_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n967_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1432_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n976_lit_string_α
.Lx1432_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n968_deref_α
n967_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n976_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n968_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1433_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n976_lit_string_α
.Lx1433_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n969_var_α
n968_deref_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n976_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n969_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n970_subscript_α
n969_var_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n976_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n970_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1435_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n976_lit_string_α
.Lx1435_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n971_deref_α
n970_subscript_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n976_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n971_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1436_240
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n976_lit_string_α
.Lx1436_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n972_var_α
n971_deref_β:
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n976_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n972_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052512]
                        mov              rdx, qword ptr [1879052520]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n973_subscript_α
n972_var_β:
                        add              rsp, 16
                        add              rsp, 112
                                                                                        jmp   n976_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n973_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1438_240
                        add              rsp, 16
                        add              rsp, 128
                                                                                        jmp   n976_lit_string_α
.Lx1438_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n974_lit_integer_α
n973_subscript_β:
                        add              rsp, 16
                        add              rsp, 128
                                                                                        jmp   n976_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n974_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx1439_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n975_assign_var_α
n974_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 144
                                                                                        jmp   n976_lit_string_α
.Lx1439_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n975_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1440_240
                        add              rsp, 16
                        add              rsp, 160
                                                                                        jmp   n976_lit_string_α
.Lx1440_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 176
                                                                                        jmp   n976_lit_string_α
n975_assign_var_β:
                        add              rsp, 16
                        add              rsp, 160
                                                                                        jmp   n976_lit_string_α
#=======================================================================================================================
# done            add_tok         =  .dummy                       :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n976_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1441_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n977_call_α
n976_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n910_lit_string_α
.Lx1441_0:
                        .quad            .Lx1441_0_s
.Lx1441_0_s:
                        .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n977_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1443:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1443]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx1442_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n910_lit_string_α
.Lx1442_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n978_assign_α
n977_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n910_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n978_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                        add              rsp, 32
                                                                                        jmp   n910_lit_string_α
n978_assign_β:
                        add              rsp, 32
                                                                                        jmp   n910_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n979_goto_α:
                                                                                        jmp   n957_var_α
n979_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n980_goto_α:
                                                                                        jmp   n965_var_α
n980_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n981_goto_α:
                                                                                        jmp   n976_lit_string_α
n981_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n982_goto_α:
                                                                                        jmp   n826_lit_string_α
n982_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n983_goto_α:
                                                                                        jmp   n984_var_α
n983_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# pp_mem          ssk             =   SORT(mem)
#-----------------------------------------------------------------------------------------------------------------------
n984_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n985_call_α
n984_var_β:
                        add              rsp, 16
                                                                                        jmp   n987_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n985_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lbynamefnzd83:         .string          "SORT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd83]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx1451_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n987_lit_integer_α
.Lx1451_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n986_assign_α
n985_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n987_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n986_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052352], rax
                        mov              qword ptr [1879052360], rdx
                        add              rsp, 32
                                                                                        jmp   n987_lit_integer_α
n986_assign_β:
                        add              rsp, 32
                                                                                        jmp   n987_lit_integer_α
#=======================================================================================================================
#                 si              =   0
#-----------------------------------------------------------------------------------------------------------------------
n987_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx1453_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n988_assign_α
n987_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n989_lit_integer_α
.Lx1453_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n988_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                        add              rsp, 16
                                                                                        jmp   n989_lit_integer_α
n988_assign_β:
                        add              rsp, 16
                                                                                        jmp   n989_lit_integer_α
#=======================================================================================================================
#                 ns              =   0
#-----------------------------------------------------------------------------------------------------------------------
n989_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx1455_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n990_assign_α
n989_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n991_var_α
.Lx1455_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n990_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052640], rax
                        mov              qword ptr [1879052648], rdx
                        add              rsp, 16
                                                                                        jmp   n991_var_α
n990_assign_β:
                        add              rsp, 16
                                                                                        jmp   n991_var_α
#=======================================================================================================================
# pm_cnt_loop     ns              =   ns + 1
#-----------------------------------------------------------------------------------------------------------------------
n991_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052640]
                        mov              rdx, qword ptr [1879052648]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n992_lit_integer_α
n991_var_β:
                        add              rsp, 16
                                                                                        jmp   n995_var_α
#-----------------------------------------------------------------------------------------------------------------------
n992_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx1458_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n993_binop_α
n992_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n995_var_α
.Lx1458_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n993_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1459_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n995_var_α
.Lx1459_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n994_assign_α
n993_binop_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n995_var_α
#-----------------------------------------------------------------------------------------------------------------------
n994_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052640], rax
                        mov              qword ptr [1879052648], rdx
                        add              rsp, 48
                                                                                        jmp   n995_var_α
n994_assign_β:
                        add              rsp, 48
                                                                                        jmp   n995_var_α
#=======================================================================================================================
#                 ssk[ns,1]                                       :S(pm_cnt_loop)
#-----------------------------------------------------------------------------------------------------------------------
n995_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n996_var_α
n995_var_β:
                        add              rsp, 16
                                                                                        jmp   n1001_var_α
#-----------------------------------------------------------------------------------------------------------------------
n996_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052640]
                        mov              rdx, qword ptr [1879052648]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n997_subscript_α
n996_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1001_var_α
#-----------------------------------------------------------------------------------------------------------------------
n997_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1463_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n1001_var_α
.Lx1463_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n998_lit_integer_α
n997_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n1001_var_α
#-----------------------------------------------------------------------------------------------------------------------
n998_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx1464_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n999_subscript_α
n998_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n1001_var_α
.Lx1464_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n999_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1465_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n1001_var_α
.Lx1465_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1000_deref_α
n999_subscript_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n1001_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1000_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1466_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n1001_var_α
.Lx1466_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 96
                                                                                        jmp   n991_var_α
n1000_deref_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n1001_var_α
#=======================================================================================================================
#                 ns              =   ns - 1
#-----------------------------------------------------------------------------------------------------------------------
n1001_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052640]
                        mov              rdx, qword ptr [1879052648]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1002_lit_integer_α
n1001_var_β:
                        add              rsp, 16
                                                                                        jmp   n1005_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1002_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx1468_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1003_binop_α
n1002_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1005_lit_integer_α
.Lx1468_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1003_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1469_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n1005_lit_integer_α
.Lx1469_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1004_assign_α
n1003_binop_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n1005_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1004_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052640], rax
                        mov              qword ptr [1879052648], rdx
                        add              rsp, 48
                                                                                        jmp   n1005_lit_integer_α
n1004_assign_β:
                        add              rsp, 48
                                                                                        jmp   n1005_lit_integer_α
#=======================================================================================================================
#                 si              =   0
#-----------------------------------------------------------------------------------------------------------------------
n1005_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx1471_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1006_assign_α
n1005_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n1007_var_α
.Lx1471_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n1006_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                        add              rsp, 16
                                                                                        jmp   n1007_var_α
n1006_assign_β:
                        add              rsp, 16
                                                                                        jmp   n1007_var_α
#=======================================================================================================================
# pm_sent_loop    si              =   si + 1
#-----------------------------------------------------------------------------------------------------------------------
n1007_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1008_lit_integer_α
n1007_var_β:
                        add              rsp, 16
                                                                                        jmp   n1011_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1008_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx1474_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1009_binop_α
n1008_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1011_var_α
.Lx1474_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1009_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1475_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n1011_var_α
.Lx1475_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1010_assign_α
n1009_binop_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n1011_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1010_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                        add              rsp, 48
                                                                                        jmp   n1011_var_α
n1010_assign_β:
                        add              rsp, 48
                                                                                        jmp   n1011_var_α
#=======================================================================================================================
#                 sentno          =   ssk[si,1]                   :F(pm_done)
#-----------------------------------------------------------------------------------------------------------------------
n1011_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1012_var_α
n1011_var_β:
                        add              rsp, 16
                                                                                        jmp   n1232_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1012_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1013_subscript_α
n1012_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1232_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1013_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1479_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n1232_lit_string_α
.Lx1479_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1014_lit_integer_α
n1013_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n1232_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1014_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx1480_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1015_subscript_α
n1014_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n1232_lit_string_α
.Lx1480_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1015_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1481_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n1232_lit_string_α
.Lx1481_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1016_deref_α
n1015_subscript_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n1232_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1016_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1482_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n1232_lit_string_α
.Lx1482_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1017_assign_α
n1016_deref_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n1232_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1017_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052384], rax
                        mov              qword ptr [1879052392], rdx
                        add              rsp, 96
                                                                                        jmp   n1018_lit_string_α
n1017_assign_β:
                        add              rsp, 96
                                                                                        jmp   n1232_lit_string_α
#=======================================================================================================================
#                 last_sent       =   ''
#-----------------------------------------------------------------------------------------------------------------------
n1018_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx1484_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1019_assign_α
n1018_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n1020_var_α
.Lx1484_0:
                        .quad            .Lx1484_0_s
.Lx1484_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n1019_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052608], rax
                        mov              qword ptr [1879052616], rdx
                        add              rsp, 16
                                                                                        jmp   n1020_var_α
n1019_assign_β:
                        add              rsp, 16
                                                                                        jmp   n1020_var_α
#=======================================================================================================================
#                 last_sent       =   IDENT(si, ns) 1
#-----------------------------------------------------------------------------------------------------------------------
n1020_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1021_var_α
n1020_var_β:
                        add              rsp, 16
                                                                                        jmp   n1026_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1021_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052640]
                        mov              rdx, qword ptr [1879052648]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1022_call_α
n1021_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1026_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1022_call_α:
                        sub              rsp, 16
                        sub              rsp, 32
                        mov              r10, qword ptr [rsp + 64]
                        mov              r11, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        mov              r10, qword ptr [rsp + 48]
                        mov              r11, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        .section         .rodata
.Lrkfnzd1489:           .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1489]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 99
                                                                                        jne   .Lx1488_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n1026_lit_string_α
.Lx1488_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1023_lit_integer_α
n1022_call_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n1026_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1023_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx1490_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1024_binop_α
n1023_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n1026_lit_string_α
.Lx1490_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1024_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1025_assign_α
n1024_binop_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n1026_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1025_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052608], rax
                        mov              qword ptr [1879052616], rdx
                        add              rsp, 80
                                                                                        jmp   n1026_lit_string_α
n1025_assign_β:
                        add              rsp, 80
                                                                                        jmp   n1026_lit_string_α
#=======================================================================================================================
#                 pad             =   DUPL(' ', SIZE(sentno) + 4)
#-----------------------------------------------------------------------------------------------------------------------
n1026_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1493_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1027_var_α
n1026_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n1033_var_α
.Lx1493_0:
                        .quad            .Lx1493_0_s
.Lx1493_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n1027_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1028_call_α
n1027_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1033_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1028_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1496:           .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1496]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx1495_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n1033_var_α
.Lx1495_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1029_lit_integer_α
n1028_call_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n1033_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1029_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx1497_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1030_binop_α
n1029_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n1033_var_α
.Lx1497_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n1030_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1498_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n1033_var_α
.Lx1498_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1031_call_α
n1030_binop_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n1033_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1031_call_α:
                        sub              rsp, 16
                        sub              rsp, 32
                        mov              r10, qword ptr [rsp + 112]
                        mov              r11, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        mov              r10, qword ptr [rsp + 48]
                        mov              r11, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        .section         .rodata
.Lrkfnzd1500:           .string          "DUPL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1500]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 99
                                                                                        jne   .Lx1499_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n1033_var_α
.Lx1499_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1032_assign_α
n1031_call_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n1033_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1032_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052576], rax
                        mov              qword ptr [1879052584], rdx
                        add              rsp, 96
                                                                                        jmp   n1033_var_α
n1032_assign_β:
                        add              rsp, 96
                                                                                        jmp   n1033_var_α
#=======================================================================================================================
#                 pfx             =   EQ(si, 1) '{' sentno ': {'
#-----------------------------------------------------------------------------------------------------------------------
n1033_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1034_lit_integer_α
n1033_var_β:
                        add              rsp, 16
                                                                                        jmp   n1045_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1034_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx1503_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1035_coerce_numeric_α
n1034_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1045_var_α
.Lx1503_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1035_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 7
                                                                                        je    .Lx1505_1
                        cmp              eax, 6
                                                                                        jne   .Lx1505_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx1505_0
.Lx1505_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1036_coerce_numeric_α
.Lx1505_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 0]
                        mov              rcx, 101
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n1036_coerce_numeric_α
n1035_coerce_numeric_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n1045_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1036_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 7
                                                                                        je    .Lx1507_1
                        cmp              eax, 6
                                                                                        jne   .Lx1507_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 6
                                                                                        jne   .Lx1507_0
.Lx1507_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1037_cmp_test_α
.Lx1507_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
                        lea              rdx, [rsp + 0]
                        mov              rcx, 102
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n1037_cmp_test_α
n1036_coerce_numeric_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n1045_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1037_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        je    .Lx1509_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n1045_var_α
.Lx1509_240:
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                                                                                        jmp   n1038_lit_string_α
n1037_cmp_test_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n1045_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1038_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1510_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1039_binop_α
n1038_lit_string_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n1045_var_α
.Lx1510_0:
                        .quad            .Lx1510_0_s
.Lx1510_0_s:
                        .string          "{"
#-----------------------------------------------------------------------------------------------------------------------
n1039_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1040_var_α
n1039_binop_β:
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n1045_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1040_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1041_binop_α
n1040_var_β:
                        add              rsp, 16
                        add              rsp, 112
                                                                                        jmp   n1045_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1041_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1042_lit_string_α
n1041_binop_β:
                        add              rsp, 16
                        add              rsp, 128
                                                                                        jmp   n1045_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1042_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx1514_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1043_binop_α
n1042_lit_string_β:
                        add              rsp, 16
                        add              rsp, 144
                                                                                        jmp   n1045_var_α
.Lx1514_0:
                        .quad            .Lx1514_0_s
.Lx1514_0_s:
                        .string          ": {"
#-----------------------------------------------------------------------------------------------------------------------
n1043_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1044_assign_α
n1043_binop_β:
                        add              rsp, 16
                        add              rsp, 160
                                                                                        jmp   n1045_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1044_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052560], rax
                        mov              qword ptr [1879052568], rdx
                        add              rsp, 176
                                                                                        jmp   n1045_var_α
n1044_assign_β:
                        add              rsp, 176
                                                                                        jmp   n1045_var_α
#=======================================================================================================================
#                 pfx             =   NE(si, 1) ' ' sentno ': {'
#-----------------------------------------------------------------------------------------------------------------------
n1045_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1046_lit_integer_α
n1045_var_β:
                        add              rsp, 16
                                                                                        jmp   n1057_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1046_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx1518_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1047_coerce_numeric_α
n1046_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1057_var_α
.Lx1518_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1047_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 7
                                                                                        je    .Lx1520_1
                        cmp              eax, 6
                                                                                        jne   .Lx1520_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx1520_0
.Lx1520_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1048_coerce_numeric_α
.Lx1520_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 0]
                        mov              rcx, 149
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n1048_coerce_numeric_α
n1047_coerce_numeric_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n1057_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1048_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 7
                                                                                        je    .Lx1522_1
                        cmp              eax, 6
                                                                                        jne   .Lx1522_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 6
                                                                                        jne   .Lx1522_0
.Lx1522_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1049_cmp_test_α
.Lx1522_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
                        lea              rdx, [rsp + 0]
                        mov              rcx, 150
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n1049_cmp_test_α
n1048_coerce_numeric_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n1057_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1049_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jne   .Lx1524_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n1057_var_α
.Lx1524_240:
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                                                                                        jmp   n1050_lit_string_α
n1049_cmp_test_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n1057_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1050_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1525_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1051_binop_α
n1050_lit_string_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n1057_var_α
.Lx1525_0:
                        .quad            .Lx1525_0_s
.Lx1525_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n1051_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1052_var_α
n1051_binop_β:
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n1057_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1052_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1053_binop_α
n1052_var_β:
                        add              rsp, 16
                        add              rsp, 112
                                                                                        jmp   n1057_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1053_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1054_lit_string_α
n1053_binop_β:
                        add              rsp, 16
                        add              rsp, 128
                                                                                        jmp   n1057_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1054_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx1529_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1055_binop_α
n1054_lit_string_β:
                        add              rsp, 16
                        add              rsp, 144
                                                                                        jmp   n1057_var_α
.Lx1529_0:
                        .quad            .Lx1529_0_s
.Lx1529_0_s:
                        .string          ": {"
#-----------------------------------------------------------------------------------------------------------------------
n1055_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1056_assign_α
n1055_binop_β:
                        add              rsp, 16
                        add              rsp, 160
                                                                                        jmp   n1057_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1056_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052560], rax
                        mov              qword ptr [1879052568], rdx
                        add              rsp, 176
                                                                                        jmp   n1057_var_α
n1056_assign_β:
                        add              rsp, 176
                                                                                        jmp   n1057_var_α
#=======================================================================================================================
#                 wsk             =   SORT(mem[sentno])
#-----------------------------------------------------------------------------------------------------------------------
n1057_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1058_var_α
n1057_var_β:
                        add              rsp, 16
                                                                                        jmp   n1063_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1058_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1059_subscript_α
n1058_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1063_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1059_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1534_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n1063_lit_integer_α
.Lx1534_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1060_deref_α
n1059_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n1063_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1060_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1535_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n1063_lit_integer_α
.Lx1535_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1061_call_α
n1060_deref_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n1063_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1061_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lbynamefnzd159:        .string          "SORT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd159]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx1536_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n1063_lit_integer_α
.Lx1536_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1062_assign_α
n1061_call_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n1063_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1062_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052400], rax
                        mov              qword ptr [1879052408], rdx
                        add              rsp, 80
                                                                                        jmp   n1063_lit_integer_α
n1062_assign_β:
                        add              rsp, 80
                                                                                        jmp   n1063_lit_integer_α
#=======================================================================================================================
#                 wi              =   0
#-----------------------------------------------------------------------------------------------------------------------
n1063_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx1538_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1064_assign_α
n1063_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n1065_var_α
.Lx1538_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n1064_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052416], rax
                        mov              qword ptr [1879052424], rdx
                        add              rsp, 16
                                                                                        jmp   n1065_var_α
n1064_assign_β:
                        add              rsp, 16
                                                                                        jmp   n1065_var_α
#=======================================================================================================================
# pm_wrd_loop     wi              =   wi + 1
#-----------------------------------------------------------------------------------------------------------------------
n1065_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052416]
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1066_lit_integer_α
n1065_var_β:
                        add              rsp, 16
                                                                                        jmp   n1069_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1066_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx1541_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1067_binop_α
n1066_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1069_var_α
.Lx1541_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1067_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1542_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n1069_var_α
.Lx1542_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1068_assign_α
n1067_binop_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n1069_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1068_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052416], rax
                        mov              qword ptr [1879052424], rdx
                        add              rsp, 48
                                                                                        jmp   n1069_var_α
n1068_assign_β:
                        add              rsp, 48
                                                                                        jmp   n1069_var_α
#=======================================================================================================================
#                 wkey            =   wsk[wi,1]                   :F(pm_sent_loop)
#-----------------------------------------------------------------------------------------------------------------------
n1069_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052400]
                        mov              rdx, qword ptr [1879052408]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1070_var_α
n1069_var_β:
                        add              rsp, 16
                                                                                        jmp   n1007_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1070_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052416]
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1071_subscript_α
n1070_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1007_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1071_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1546_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n1007_var_α
.Lx1546_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1072_lit_integer_α
n1071_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n1007_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1072_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx1547_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1073_subscript_α
n1072_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n1007_var_α
.Lx1547_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1073_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1548_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n1007_var_α
.Lx1548_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1074_deref_α
n1073_subscript_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n1007_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1074_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1549_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n1007_var_α
.Lx1549_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1075_assign_α
n1074_deref_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n1007_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1075_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052432], rax
                        mov              qword ptr [1879052440], rdx
                        add              rsp, 96
                                                                                        jmp   n1076_lit_string_α
n1075_assign_β:
                        add              rsp, 96
                                                                                        jmp   n1007_var_α
#=======================================================================================================================
#                 next_wkey       =   ''
#-----------------------------------------------------------------------------------------------------------------------
n1076_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx1551_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1077_assign_α
n1076_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n1078_var_α
.Lx1551_0:
                        .quad            .Lx1551_0_s
.Lx1551_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n1077_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052592], rax
                        mov              qword ptr [1879052600], rdx
                        add              rsp, 16
                                                                                        jmp   n1078_var_α
n1077_assign_β:
                        add              rsp, 16
                                                                                        jmp   n1078_var_α
#=======================================================================================================================
#                 next_wkey       =   wsk[wi + 1,1]
#-----------------------------------------------------------------------------------------------------------------------
n1078_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052400]
                        mov              rdx, qword ptr [1879052408]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1079_var_α
n1078_var_β:
                        add              rsp, 16
                                                                                        jmp   n1087_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1079_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052416]
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1080_lit_integer_α
n1079_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1087_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1080_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx1555_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1081_binop_α
n1080_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n1087_var_α
.Lx1555_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1081_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1556_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n1087_var_α
.Lx1556_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1082_subscript_α
n1081_binop_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n1087_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1082_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1557_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n1087_var_α
.Lx1557_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1083_lit_integer_α
n1082_subscript_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n1087_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1083_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx1558_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1084_subscript_α
n1083_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n1087_var_α
.Lx1558_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1084_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1559_240
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n1087_var_α
.Lx1559_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1085_deref_α
n1084_subscript_β:
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n1087_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1085_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1560_240
                        add              rsp, 16
                        add              rsp, 112
                                                                                        jmp   n1087_var_α
.Lx1560_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1086_assign_α
n1085_deref_β:
                        add              rsp, 16
                        add              rsp, 112
                                                                                        jmp   n1087_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1086_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052592], rax
                        mov              qword ptr [1879052600], rdx
                        add              rsp, 128
                                                                                        jmp   n1087_var_α
n1086_assign_β:
                        add              rsp, 128
                                                                                        jmp   n1087_var_α
#=======================================================================================================================
#                 wrd             =   wkey
#-----------------------------------------------------------------------------------------------------------------------
n1087_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052432]
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1088_assign_α
n1087_var_β:
                        add              rsp, 16
                                                                                        jmp   n1089_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1088_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax
                        mov              qword ptr [1879052472], rdx
                        add              rsp, 16
                                                                                        jmp   n1089_var_α
n1088_assign_β:
                        add              rsp, 16
                                                                                        jmp   n1089_var_α
#=======================================================================================================================
#                 wrd             ?   ARB "'"  =  ''              :F(pm_sq)
#-----------------------------------------------------------------------------------------------------------------------
n1089_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 3344], rax
                        mov              qword ptr [rsp + 3352], rdx
                                                                                        jmp   n1090_match_head_α
n1089_var_β:
                                                                                        jmp   n1103_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1090_match_head_α:
                        mov              qword ptr [rbp + 3248], r13
                        mov              qword ptr [rbp + 3256], r14
                        mov              qword ptr [rbp + 3264], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 3272], rax
                        mov              qword ptr [rbp + 3240], rbp
                        mov              rdi, qword ptr [rbp + 3344]
                        mov              rsi, qword ptr [rbp + 3352]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], 0
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                        mov              rax, rsp
                        sub              rsp, 32
                        mov              qword ptr [rsp + 16], rax
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 8], rax
                        mov              dword ptr [rsp + 0], 0
.Lx1566_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n1091_match_sequence_α
n1090_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx1566_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx1566_1
                                                                                        jmp   .Lx1566_0
.Lx1566_1:
                        mov              rax, qword ptr [rsp + 8]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 16]
                        mov              r10, qword ptr [1879048192]
.Lx1566_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1566_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 3248]
                        mov              r14, qword ptr [rbp + 3256]
                        mov              r15, qword ptr [rbp + 3264]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 3272]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 3240]
                                                                                        jmp   n1103_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1091_match_sequence_α:
                                                                                        jmp   n1102_match_arb_α
n1091_match_sequence_as:
                                                                                        jmp   n1092_match_release_α
n1091_match_sequence_β:
                                                                                        jmp   n1101_match_lit_β
n1091_match_sequence_af:
                                                                                        jmp   n1090_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n1092_match_release_α:
                        mov              rax, qword ptr [rsp + 24]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              eax, dword ptr [rsp + 16]
                        mov              dword ptr [rsp + 3248], eax
                        mov              qword ptr [rsp + 3272], r14
                        mov              rsp, qword ptr [rsp + 32]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx1570_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1570_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx1570_1:
                        test             rax, rax
                                                                                        je    .Lx1570_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1570_3]
                        lea              rdx, [rip + .Lx1570_4]
                                                                                        jmp   rax
.Lx1570_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx1570_1
.Lx1570_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx1570_1
.Lx1570_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx1570_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1570_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 3248]
                        mov              r14, qword ptr [rbp + 3256]
                        mov              r15, qword ptr [rbp + 3264]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 3272]
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n1093_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1093_lit_string_α:
                        mov              qword ptr [rsp + 3296], 1
                        mov              dword ptr [rsp + 3300], 0
                        mov              rax, qword ptr [rip + .Lx1571_0]
                        mov              qword ptr [rsp + 3304], rax
                                                                                        jmp   n1094_match_replace_α
n1093_lit_string_β:
                                                                                        jmp   n1103_lit_string_α
.Lx1571_0:
                        .quad            .Lx1571_0_s
.Lx1571_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n1094_match_replace_α:
                        mov              rdi, qword ptr [rip + .Lx1573_0]
                        mov              rsi, qword ptr [rbp + 3344]
                        mov              rdx, qword ptr [rbp + 3352]
                        mov              ecx, dword ptr [rbp + 3200]
                        mov              r8, qword ptr [rbp + 3224]
                        lea              r9, [rbp + 3296]
                        call             rt_match_replace@PLT
                                                                                        jmp   .Lx1573_1
.Lx1573_0:
                        .quad            .Lx1573_0_s
.Lx1573_0_s:
                        .string          "wrd"
.Lx1573_1:
                        mov              rbp, qword ptr [rbp + 3240]
                                                                                        jmp   n1095_lit_string_α
#=======================================================================================================================
#                 wq              =   '"' wkey '"'                :(pm_tdict)
#-----------------------------------------------------------------------------------------------------------------------
n1095_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1574_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1096_var_α
n1095_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n1109_var_α
.Lx1574_0:
                        .quad            .Lx1574_0_s
.Lx1574_0_s:
                        .string          "\""
#-----------------------------------------------------------------------------------------------------------------------
n1096_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052432]
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1097_binop_α
n1096_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1109_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1097_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1098_lit_string_α
n1097_binop_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n1109_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1098_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1577_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1099_binop_α
n1098_lit_string_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n1109_var_α
.Lx1577_0:
                        .quad            .Lx1577_0_s
.Lx1577_0_s:
                        .string          "\""
#-----------------------------------------------------------------------------------------------------------------------
n1099_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1100_assign_α
n1099_binop_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n1109_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1100_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052448], rax
                        mov              qword ptr [1879052456], rdx
                        add              rsp, 80
                                                                                        jmp   n1109_var_α
n1100_assign_β:
                        add              rsp, 80
                                                                                        jmp   n1109_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1101_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n1102_match_arb_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 39
                                                                                        jne   n1102_match_arb_β
                        add              r14d, 1
                                                                                        jmp   n1092_match_release_α
n1101_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n1102_match_arb_β
#-----------------------------------------------------------------------------------------------------------------------
n1102_match_arb_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], 0
                        mov              eax, r14d
                        mov              dword ptr [rsp + 4], eax
                                                                                        jmp   n1101_match_lit_α
n1102_match_arb_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 4]
                        add              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx1583_0
                        mov              r14d, eax
                                                                                        jmp   n1101_match_lit_α
.Lx1583_0:
                        mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16
                                                                                        jmp   n1090_match_head_β
#=======================================================================================================================
# pm_sq           wq              =   "'" wkey "'"
#-----------------------------------------------------------------------------------------------------------------------
n1103_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1584_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1104_var_α
n1103_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n1109_var_α
.Lx1584_0:
                        .quad            .Lx1584_0_s
.Lx1584_0_s:
                        .string          "'"
#-----------------------------------------------------------------------------------------------------------------------
n1104_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052432]
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1105_binop_α
n1104_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1109_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1105_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1106_lit_string_α
n1105_binop_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n1109_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1106_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1587_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1107_binop_α
n1106_lit_string_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n1109_var_α
.Lx1587_0:
                        .quad            .Lx1587_0_s
.Lx1587_0_s:
                        .string          "'"
#-----------------------------------------------------------------------------------------------------------------------
n1107_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1108_assign_α
n1107_binop_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n1109_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1108_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052448], rax
                        mov              qword ptr [1879052456], rdx
                        add              rsp, 80
                                                                                        jmp   n1109_var_α
n1108_assign_β:
                        add              rsp, 80
                                                                                        jmp   n1109_var_α
#=======================================================================================================================
# pm_tdict        tsk             =   SORT(mem[sentno][wkey])
#-----------------------------------------------------------------------------------------------------------------------
n1109_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1110_var_α
n1109_var_β:
                        add              rsp, 16
                                                                                        jmp   n1118_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1110_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1111_subscript_α
n1110_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1118_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1111_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1592_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n1118_lit_integer_α
.Lx1592_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1112_deref_α
n1111_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n1118_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1112_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1593_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n1118_lit_integer_α
.Lx1593_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1113_var_α
n1112_deref_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n1118_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1113_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052432]
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1114_subscript_α
n1113_var_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n1118_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1114_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1595_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n1118_lit_integer_α
.Lx1595_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1115_deref_α
n1114_subscript_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n1118_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1115_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1596_240
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n1118_lit_integer_α
.Lx1596_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1116_call_α
n1115_deref_β:
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n1118_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1116_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lbynamefnzd214:        .string          "SORT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd214]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx1597_240
                        add              rsp, 16
                        add              rsp, 112
                                                                                        jmp   n1118_lit_integer_α
.Lx1597_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1117_assign_α
n1116_call_β:
                        add              rsp, 16
                        add              rsp, 112
                                                                                        jmp   n1118_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1117_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052480], rax
                        mov              qword ptr [1879052488], rdx
                        add              rsp, 128
                                                                                        jmp   n1118_lit_integer_α
n1117_assign_β:
                        add              rsp, 128
                                                                                        jmp   n1118_lit_integer_α
#=======================================================================================================================
#                 ti              =   0
#-----------------------------------------------------------------------------------------------------------------------
n1118_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx1599_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1119_assign_α
n1118_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n1120_lit_string_α
.Lx1599_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n1119_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052496], rax
                        mov              qword ptr [1879052504], rdx
                        add              rsp, 16
                                                                                        jmp   n1120_lit_string_α
n1119_assign_β:
                        add              rsp, 16
                                                                                        jmp   n1120_lit_string_α
#=======================================================================================================================
#                 tline           =   '{'
#-----------------------------------------------------------------------------------------------------------------------
n1120_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1601_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1121_assign_α
n1120_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n1122_var_α
.Lx1601_0:
                        .quad            .Lx1601_0_s
.Lx1601_0_s:
                        .string          "{"
#-----------------------------------------------------------------------------------------------------------------------
n1121_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052544], rax
                        mov              qword ptr [1879052552], rdx
                        add              rsp, 16
                                                                                        jmp   n1122_var_α
n1121_assign_β:
                        add              rsp, 16
                                                                                        jmp   n1122_var_α
#=======================================================================================================================
# pm_tag_loop     ti              =   ti + 1
#-----------------------------------------------------------------------------------------------------------------------
n1122_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052496]
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1123_lit_integer_α
n1122_var_β:
                        add              rsp, 16
                                                                                        jmp   n1126_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1123_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx1604_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1124_binop_α
n1123_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1126_var_α
.Lx1604_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1124_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1605_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n1126_var_α
.Lx1605_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1125_assign_α
n1124_binop_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n1126_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1125_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052496], rax
                        mov              qword ptr [1879052504], rdx
                        add              rsp, 48
                                                                                        jmp   n1126_var_α
n1125_assign_β:
                        add              rsp, 48
                                                                                        jmp   n1126_var_α
#=======================================================================================================================
#                 tag             =   tsk[ti,1]                   :F(pm_tag_close)
#-----------------------------------------------------------------------------------------------------------------------
n1126_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052480]
                        mov              rdx, qword ptr [1879052488]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1127_var_α
n1126_var_β:
                        add              rsp, 16
                                                                                        jmp   n1169_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1127_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052496]
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1128_subscript_α
n1127_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1169_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1128_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1609_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n1169_var_α
.Lx1609_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1129_lit_integer_α
n1128_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n1169_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1129_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx1610_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1130_subscript_α
n1129_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n1169_var_α
.Lx1610_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1130_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1611_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n1169_var_α
.Lx1611_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1131_deref_α
n1130_subscript_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n1169_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1131_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1612_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n1169_var_α
.Lx1612_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1132_assign_α
n1131_deref_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n1169_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1132_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052512], rax
                        mov              qword ptr [1879052520], rdx
                        add              rsp, 96
                                                                                        jmp   n1133_var_α
n1132_assign_β:
                        add              rsp, 96
                                                                                        jmp   n1169_var_α
#=======================================================================================================================
#                 tv              =   mem[sentno][wkey][tag]
#-----------------------------------------------------------------------------------------------------------------------
n1133_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1134_var_α
n1133_var_β:
                        add              rsp, 16
                                                                                        jmp   n1144_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1134_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1135_subscript_α
n1134_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1144_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1135_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1616_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n1144_var_α
.Lx1616_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1136_deref_α
n1135_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n1144_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1136_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1617_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n1144_var_α
.Lx1617_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1137_var_α
n1136_deref_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n1144_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1137_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052432]
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1138_subscript_α
n1137_var_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n1144_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1138_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1619_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n1144_var_α
.Lx1619_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1139_deref_α
n1138_subscript_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n1144_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1139_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1620_240
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n1144_var_α
.Lx1620_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1140_var_α
n1139_deref_β:
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n1144_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1140_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052512]
                        mov              rdx, qword ptr [1879052520]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1141_subscript_α
n1140_var_β:
                        add              rsp, 16
                        add              rsp, 112
                                                                                        jmp   n1144_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1141_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1622_240
                        add              rsp, 16
                        add              rsp, 128
                                                                                        jmp   n1144_var_α
.Lx1622_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1142_deref_α
n1141_subscript_β:
                        add              rsp, 16
                        add              rsp, 128
                                                                                        jmp   n1144_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1142_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1623_240
                        add              rsp, 16
                        add              rsp, 144
                                                                                        jmp   n1144_var_α
.Lx1623_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1143_assign_α
n1142_deref_β:
                        add              rsp, 16
                        add              rsp, 144
                                                                                        jmp   n1144_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1143_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052528], rax
                        mov              qword ptr [1879052536], rdx
                        add              rsp, 160
                                                                                        jmp   n1144_var_α
n1143_assign_β:
                        add              rsp, 160
                                                                                        jmp   n1144_var_α
#=======================================================================================================================
#                 IDENT(tline, '{')                               :F(pm_tag_sep)
#-----------------------------------------------------------------------------------------------------------------------
n1144_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052544]
                        mov              rdx, qword ptr [1879052552]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1145_lit_string_α
n1144_var_β:
                        add              rsp, 16
                                                                                        jmp   n1157_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1145_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1626_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1146_call_α
n1145_lit_string_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1157_var_α
.Lx1626_0:
                        .quad            .Lx1626_0_s
.Lx1626_0_s:
                        .string          "{"
#-----------------------------------------------------------------------------------------------------------------------
n1146_call_α:
                        sub              rsp, 16
                        sub              rsp, 32
                        mov              r10, qword ptr [rsp + 64]
                        mov              r11, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        mov              r10, qword ptr [rsp + 48]
                        mov              r11, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        .section         .rodata
.Lrkfnzd1628:           .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1628]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 99
                                                                                        jne   .Lx1627_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n1157_var_α
.Lx1627_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 48
                                                                                        jmp   n1147_var_α
n1146_call_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n1157_var_α
#=======================================================================================================================
#                 tline           =   tline "'" tag "': " tv      :(pm_tag_loop)
#-----------------------------------------------------------------------------------------------------------------------
n1147_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052544]
                        mov              rdx, qword ptr [1879052552]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1148_lit_string_α
n1147_var_β:
                        add              rsp, 16
                                                                                        jmp   n1122_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1148_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1630_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1149_binop_α
n1148_lit_string_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1122_var_α
.Lx1630_0:
                        .quad            .Lx1630_0_s
.Lx1630_0_s:
                        .string          "'"
#-----------------------------------------------------------------------------------------------------------------------
n1149_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1150_var_α
n1149_binop_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n1122_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1150_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052512]
                        mov              rdx, qword ptr [1879052520]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1151_binop_α
n1150_var_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n1122_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1151_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1152_lit_string_α
n1151_binop_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n1122_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1152_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx1634_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1153_binop_α
n1152_lit_string_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n1122_var_α
.Lx1634_0:
                        .quad            .Lx1634_0_s
.Lx1634_0_s:
                        .string          "': "
#-----------------------------------------------------------------------------------------------------------------------
n1153_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1154_var_α
n1153_binop_β:
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n1122_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1154_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052528]
                        mov              rdx, qword ptr [1879052536]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1155_binop_α
n1154_var_β:
                        add              rsp, 16
                        add              rsp, 112
                                                                                        jmp   n1122_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1155_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1156_assign_α
n1155_binop_β:
                        add              rsp, 16
                        add              rsp, 128
                                                                                        jmp   n1122_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1156_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052544], rax
                        mov              qword ptr [1879052552], rdx
                        add              rsp, 144
                                                                                        jmp   n1122_var_α
n1156_assign_β:
                        add              rsp, 144
                                                                                        jmp   n1122_var_α
#=======================================================================================================================
# pm_tag_sep      tline           =   tline ', ' "'" tag "': " tv :(pm_tag_loop)
#-----------------------------------------------------------------------------------------------------------------------
n1157_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052544]
                        mov              rdx, qword ptr [1879052552]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1158_lit_string_α
n1157_var_β:
                        add              rsp, 16
                                                                                        jmp   n1122_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1158_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx1640_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1159_binop_α
n1158_lit_string_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1122_var_α
.Lx1640_0:
                        .quad            .Lx1640_0_s
.Lx1640_0_s:
                        .string          ", "
#-----------------------------------------------------------------------------------------------------------------------
n1159_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1160_lit_string_α
n1159_binop_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n1122_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1160_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1642_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1161_binop_α
n1160_lit_string_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n1122_var_α
.Lx1642_0:
                        .quad            .Lx1642_0_s
.Lx1642_0_s:
                        .string          "'"
#-----------------------------------------------------------------------------------------------------------------------
n1161_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1162_var_α
n1161_binop_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n1122_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1162_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052512]
                        mov              rdx, qword ptr [1879052520]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1163_binop_α
n1162_var_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n1122_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1163_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1164_lit_string_α
n1163_binop_β:
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n1122_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1164_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx1646_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1165_binop_α
n1164_lit_string_β:
                        add              rsp, 16
                        add              rsp, 112
                                                                                        jmp   n1122_var_α
.Lx1646_0:
                        .quad            .Lx1646_0_s
.Lx1646_0_s:
                        .string          "': "
#-----------------------------------------------------------------------------------------------------------------------
n1165_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1166_var_α
n1165_binop_β:
                        add              rsp, 16
                        add              rsp, 128
                                                                                        jmp   n1122_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1166_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052528]
                        mov              rdx, qword ptr [1879052536]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1167_binop_α
n1166_var_β:
                        add              rsp, 16
                        add              rsp, 144
                                                                                        jmp   n1122_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1167_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1168_assign_α
n1167_binop_β:
                        add              rsp, 16
                        add              rsp, 160
                                                                                        jmp   n1122_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1168_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052544], rax
                        mov              qword ptr [1879052552], rdx
                        add              rsp, 176
                                                                                        jmp   n1122_var_α
n1168_assign_β:
                        add              rsp, 176
                                                                                        jmp   n1122_var_α
#=======================================================================================================================
# pm_tag_close    tline           =   tline '}'
#-----------------------------------------------------------------------------------------------------------------------
n1169_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052544]
                        mov              rdx, qword ptr [1879052552]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1170_lit_string_α
n1169_var_β:
                        add              rsp, 16
                                                                                        jmp   n1173_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1170_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1652_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1171_binop_α
n1170_lit_string_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1173_var_α
.Lx1652_0:
                        .quad            .Lx1652_0_s
.Lx1652_0_s:
                        .string          "}"
#-----------------------------------------------------------------------------------------------------------------------
n1171_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1172_assign_α
n1171_binop_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n1173_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1172_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052544], rax
                        mov              qword ptr [1879052552], rdx
                        add              rsp, 48
                                                                                        jmp   n1173_var_α
n1172_assign_β:
                        add              rsp, 48
                                                                                        jmp   n1173_var_α
#=======================================================================================================================
#                 GT(SIZE(next_wkey), 0)                          :F(pm_last_wrd)
#-----------------------------------------------------------------------------------------------------------------------
n1173_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052592]
                        mov              rdx, qword ptr [1879052600]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1174_call_α
n1173_var_β:
                        add              rsp, 16
                                                                                        jmp   n1202_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1174_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1657:           .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1657]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx1656_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1202_var_α
.Lx1656_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1175_lit_integer_α
n1174_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1202_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1175_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx1658_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1176_coerce_numeric_α
n1175_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n1202_var_α
.Lx1658_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n1176_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 7
                                                                                        je    .Lx1660_1
                        cmp              eax, 6
                                                                                        jne   .Lx1660_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx1660_0
.Lx1660_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1177_coerce_numeric_α
.Lx1660_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 0]
                        mov              rcx, 111
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n1177_coerce_numeric_α
n1176_coerce_numeric_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n1202_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1177_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 7
                                                                                        je    .Lx1662_1
                        cmp              eax, 6
                                                                                        jne   .Lx1662_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 6
                                                                                        jne   .Lx1662_0
.Lx1662_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1178_cmp_test_α
.Lx1662_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
                        lea              rdx, [rsp + 0]
                        mov              rcx, 112
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n1178_cmp_test_α
n1177_coerce_numeric_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n1202_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1178_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jg    .Lx1664_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n1202_var_α
.Lx1664_240:
                        add              rsp, 96
                                                                                        jmp   n1179_var_α
n1178_cmp_test_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n1202_var_α
#=======================================================================================================================
#                 IDENT(wi, 1)                                    :F(pm_mid_wrd)
#-----------------------------------------------------------------------------------------------------------------------
n1179_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052416]
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1180_lit_integer_α
n1179_var_β:
                        add              rsp, 16
                                                                                        jmp   n1192_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1180_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx1666_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1181_call_α
n1180_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1192_var_α
.Lx1666_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1181_call_α:
                        sub              rsp, 16
                        sub              rsp, 32
                        mov              r10, qword ptr [rsp + 64]
                        mov              r11, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        mov              r10, qword ptr [rsp + 48]
                        mov              r11, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        .section         .rodata
.Lrkfnzd1668:           .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1668]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 99
                                                                                        jne   .Lx1667_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n1192_var_α
.Lx1667_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 48
                                                                                        jmp   n1182_var_α
n1181_call_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n1192_var_α
#=======================================================================================================================
#                 OUTPUT          =   pfx wq ': ' tline ','       :(pm_wrd_loop)
#-----------------------------------------------------------------------------------------------------------------------
n1182_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052560]
                        mov              rdx, qword ptr [1879052568]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1183_var_α
n1182_var_β:
                        add              rsp, 16
                                                                                        jmp   n1065_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1183_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1184_binop_α
n1183_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1065_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1184_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1185_lit_string_α
n1184_binop_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n1065_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1185_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx1672_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1186_binop_α
n1185_lit_string_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n1065_var_α
.Lx1672_0:
                        .quad            .Lx1672_0_s
.Lx1672_0_s:
                        .string          ": "
#-----------------------------------------------------------------------------------------------------------------------
n1186_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1187_var_α
n1186_binop_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n1065_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1187_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052544]
                        mov              rdx, qword ptr [1879052552]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1188_binop_α
n1187_var_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n1065_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1188_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1189_lit_string_α
n1188_binop_β:
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n1065_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1189_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1676_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1190_binop_α
n1189_lit_string_β:
                        add              rsp, 16
                        add              rsp, 112
                                                                                        jmp   n1065_var_α
.Lx1676_0:
                        .quad            .Lx1676_0_s
.Lx1676_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n1190_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1191_assign_α
n1190_binop_β:
                        add              rsp, 16
                        add              rsp, 128
                                                                                        jmp   n1065_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1191_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1678_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 144
                                                                                        jmp   n1065_var_α
n1191_assign_β:
                        add              rsp, 144
                                                                                        jmp   n1065_var_α
.Lx1678_0:
                        .quad            .Lx1678_0_s
.Lx1678_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# pm_mid_wrd      OUTPUT          =   pad wq ': ' tline ','       :(pm_wrd_loop)
#-----------------------------------------------------------------------------------------------------------------------
n1192_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052576]
                        mov              rdx, qword ptr [1879052584]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1193_var_α
n1192_var_β:
                        add              rsp, 16
                                                                                        jmp   n1065_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1193_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1194_binop_α
n1193_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1065_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1194_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1195_lit_string_α
n1194_binop_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n1065_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1195_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx1682_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1196_binop_α
n1195_lit_string_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n1065_var_α
.Lx1682_0:
                        .quad            .Lx1682_0_s
.Lx1682_0_s:
                        .string          ": "
#-----------------------------------------------------------------------------------------------------------------------
n1196_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1197_var_α
n1196_binop_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n1065_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1197_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052544]
                        mov              rdx, qword ptr [1879052552]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1198_binop_α
n1197_var_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n1065_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1198_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1199_lit_string_α
n1198_binop_β:
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n1065_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1199_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1686_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1200_binop_α
n1199_lit_string_β:
                        add              rsp, 16
                        add              rsp, 112
                                                                                        jmp   n1065_var_α
.Lx1686_0:
                        .quad            .Lx1686_0_s
.Lx1686_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n1200_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1201_assign_α
n1200_binop_β:
                        add              rsp, 16
                        add              rsp, 128
                                                                                        jmp   n1065_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1201_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1688_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 144
                                                                                        jmp   n1065_var_α
n1201_assign_β:
                        add              rsp, 144
                                                                                        jmp   n1065_var_α
.Lx1688_0:
                        .quad            .Lx1688_0_s
.Lx1688_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# pm_last_wrd     IDENT(wi, 1)                                    :F(pm_last_mid)
#-----------------------------------------------------------------------------------------------------------------------
n1202_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052416]
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1203_lit_integer_α
n1202_var_β:
                        add              rsp, 16
                                                                                        jmp   n1213_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1203_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx1690_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1204_call_α
n1203_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1213_var_α
.Lx1690_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1204_call_α:
                        sub              rsp, 16
                        sub              rsp, 32
                        mov              r10, qword ptr [rsp + 64]
                        mov              r11, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        mov              r10, qword ptr [rsp + 48]
                        mov              r11, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        .section         .rodata
.Lrkfnzd1692:           .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1692]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 99
                                                                                        jne   .Lx1691_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n1213_var_α
.Lx1691_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 48
                                                                                        jmp   n1205_var_α
n1204_call_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n1213_var_α
#=======================================================================================================================
#                 lline           =   pfx wq ': ' tline           :(pm_last_emit)
#-----------------------------------------------------------------------------------------------------------------------
n1205_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052560]
                        mov              rdx, qword ptr [1879052568]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1206_var_α
n1205_var_β:
                        add              rsp, 16
                                                                                        jmp   n1221_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1206_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1207_binop_α
n1206_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1221_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1207_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1208_lit_string_α
n1207_binop_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n1221_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1208_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx1696_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1209_binop_α
n1208_lit_string_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n1221_var_α
.Lx1696_0:
                        .quad            .Lx1696_0_s
.Lx1696_0_s:
                        .string          ": "
#-----------------------------------------------------------------------------------------------------------------------
n1209_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1210_var_α
n1209_binop_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n1221_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1210_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052544]
                        mov              rdx, qword ptr [1879052552]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1211_binop_α
n1210_var_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n1221_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1211_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1212_assign_α
n1211_binop_β:
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n1221_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1212_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052624], rax
                        mov              qword ptr [1879052632], rdx
                        add              rsp, 112
                                                                                        jmp   n1221_var_α
n1212_assign_β:
                        add              rsp, 112
                                                                                        jmp   n1221_var_α
#=======================================================================================================================
# pm_last_mid     lline           =   pad wq ': ' tline
#-----------------------------------------------------------------------------------------------------------------------
n1213_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052576]
                        mov              rdx, qword ptr [1879052584]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1214_var_α
n1213_var_β:
                        add              rsp, 16
                                                                                        jmp   n1221_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1214_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1215_binop_α
n1214_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1221_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1215_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1216_lit_string_α
n1215_binop_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n1221_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1216_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx1704_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1217_binop_α
n1216_lit_string_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n1221_var_α
.Lx1704_0:
                        .quad            .Lx1704_0_s
.Lx1704_0_s:
                        .string          ": "
#-----------------------------------------------------------------------------------------------------------------------
n1217_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1218_var_α
n1217_binop_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n1221_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1218_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052544]
                        mov              rdx, qword ptr [1879052552]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1219_binop_α
n1218_var_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n1221_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1219_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1220_assign_α
n1219_binop_β:
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n1221_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1220_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052624], rax
                        mov              qword ptr [1879052632], rdx
                        add              rsp, 112
                                                                                        jmp   n1221_var_α
n1220_assign_β:
                        add              rsp, 112
                                                                                        jmp   n1221_var_α
#=======================================================================================================================
# pm_last_emit    IDENT(last_sent, 1)                             :F(pm_last_mid2)
#-----------------------------------------------------------------------------------------------------------------------
n1221_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052608]
                        mov              rdx, qword ptr [1879052616]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1222_lit_integer_α
n1221_var_β:
                        add              rsp, 16
                                                                                        jmp   n1228_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1222_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx1710_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1223_call_α
n1222_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1228_var_α
.Lx1710_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1223_call_α:
                        sub              rsp, 16
                        sub              rsp, 32
                        mov              r10, qword ptr [rsp + 64]
                        mov              r11, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        mov              r10, qword ptr [rsp + 48]
                        mov              r11, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        .section         .rodata
.Lrkfnzd1712:           .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1712]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 99
                                                                                        jne   .Lx1711_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n1228_var_α
.Lx1711_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 48
                                                                                        jmp   n1224_var_α
n1223_call_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n1228_var_α
#=======================================================================================================================
#                 OUTPUT          =   lline '}}'                  :(pm_sent_loop)
#-----------------------------------------------------------------------------------------------------------------------
n1224_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052624]
                        mov              rdx, qword ptr [1879052632]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1225_lit_string_α
n1224_var_β:
                        add              rsp, 16
                                                                                        jmp   n1007_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1225_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx1714_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1226_binop_α
n1225_lit_string_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1007_var_α
.Lx1714_0:
                        .quad            .Lx1714_0_s
.Lx1714_0_s:
                        .string          "}}"
#-----------------------------------------------------------------------------------------------------------------------
n1226_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1227_assign_α
n1226_binop_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n1007_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1227_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1716_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 48
                                                                                        jmp   n1007_var_α
n1227_assign_β:
                        add              rsp, 48
                                                                                        jmp   n1007_var_α
.Lx1716_0:
                        .quad            .Lx1716_0_s
.Lx1716_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# pm_last_mid2    OUTPUT          =   lline '},'                  :(pm_sent_loop)
#-----------------------------------------------------------------------------------------------------------------------
n1228_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052624]
                        mov              rdx, qword ptr [1879052632]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1229_lit_string_α
n1228_var_β:
                        add              rsp, 16
                                                                                        jmp   n1007_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1229_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx1718_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1230_binop_α
n1229_lit_string_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1007_var_α
.Lx1718_0:
                        .quad            .Lx1718_0_s
.Lx1718_0_s:
                        .string          "},"
#-----------------------------------------------------------------------------------------------------------------------
n1230_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1231_assign_α
n1230_binop_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n1007_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1231_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1720_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 48
                                                                                        jmp   n1007_var_α
n1231_assign_β:
                        add              rsp, 48
                                                                                        jmp   n1007_var_α
.Lx1720_0:
                        .quad            .Lx1720_0_s
.Lx1720_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# pm_done         pp_mem          =   .dummy                      :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n1232_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1721_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1233_call_α
n1232_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n912_save_restore_α
.Lx1721_0:
                        .quad            .Lx1721_0_s
.Lx1721_0_s:
                        .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n1233_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1723:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1723]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx1722_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n912_save_restore_α
.Lx1722_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1234_assign_α
n1233_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n912_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n1234_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                        add              rsp, 32
                                                                                        jmp   n912_save_restore_α
n1234_assign_β:
                        add              rsp, 32
                                                                                        jmp   n912_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n1235_goto_α:
                                                                                        jmp   n991_var_α
n1235_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1236_goto_α:
                                                                                        jmp   n1007_var_α
n1236_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1237_goto_α:
                                                                                        jmp   n1065_var_α
n1237_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1238_goto_α:
                                                                                        jmp   n1103_lit_string_α
n1238_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1239_goto_α:
                                                                                        jmp   n1109_var_α
n1239_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1240_goto_α:
                                                                                        jmp   n1122_var_α
n1240_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1241_goto_α:
                                                                                        jmp   n1157_var_α
n1241_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1242_goto_α:
                                                                                        jmp   n1169_var_α
n1242_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1243_goto_α:
                                                                                        jmp   n1192_var_α
n1243_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1244_goto_α:
                                                                                        jmp   n1202_var_α
n1244_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1245_goto_α:
                                                                                        jmp   n1213_var_α
n1245_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1246_goto_α:
                                                                                        jmp   n1221_var_α
n1246_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1247_goto_α:
                                                                                        jmp   n1228_var_α
n1247_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1248_goto_α:
                                                                                        jmp   n1232_lit_string_α
n1248_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1249_goto_α:
                                                                                        jmp   n826_lit_string_α
n1249_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1250_goto_α:
                                                                                        jmp   n832_var_α
n1250_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1251_goto_α:
                                                                                        jmp   n864_var_α
n1251_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1252_goto_α:
                                                                                        jmp   n870_call_α
n1252_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1253_goto_α:
                                                                                        jmp   n891_lit_string_α
n1253_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 6688]
                        add              rsp, 6696
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 6688]
                        add              rsp, 6696
                        ret
                        .section         .rodata
.S0:                    .string          "epsilon"
.S1:                    .string          "*add_tok"
.S2:                    .string          "tag"
.S3:                    .string          "wrd"
.S4:                    .string          "*new_sent"
.S5:                    .string          "num"
.S6:                    .string          "claws"
.S7:                    .string          "nl"
                        .text
                        .section         .rodata
.C0:
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
                        .text
                        .section         .note.GNU-stack,"",@progbits
