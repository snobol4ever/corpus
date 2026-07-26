                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_alts_α
proc_alts_α:
                        .global          proc_alts_α
                        .global          proc_alts_β
                        .global          proc_alts_γ
                        .global          proc_alts_ω
                        sub              rsp, 672
                        mov              [rsp + 648], rcx
                        mov              [rsp + 656], rdx
                        mov              [rsp + 664], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 616], rsp
                        mov              rdi, rsp
                        mov              esi, 608
                        mov              edx, 640
                        call             rt_jmp_frame_lexprep2@PLT
proc_alts_α_body:
#-----------------------------------------------------------------------------------------------------------------------
# IR_MAKE_LIST
xchain0_n0_α:
                        lea              rdi, [rbp + 608]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   xchain0_n1_α
#-----------------------------------------------------------------------------------------------------------------------
xchain0_n1_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 592]
                        mov              rdx, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   xchain0_n2_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain0_n2_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   xchain0_n3_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_GEN_SCAN
xchain0_n3_α:
                        mov              rdi, qword ptr [rbp + 544]
                        mov              rsi, qword ptr [rbp + 552]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   xchain0_n5_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain0_n4_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   xchain0_n6_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain0_n5_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   xchain0_n7_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_RETURN
xchain0_n6_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_alts_γ
#-----------------------------------------------------------------------------------------------------------------------
# IR_DISJUNCTION_NARY
xchain0_n7_α:
                        mov              qword ptr [rbp + 320], 0
                        mov              qword ptr [rbp + 328], 0
                        mov              dword ptr [rbp + 336], 0
                                                                                        jmp   xchain0_n10_α
xchain0_n7_as:
                        mov              eax, dword ptr [rbp + 336]
                        cmp              eax, 0
                                                                                        jne   .Lx14_0
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   xchain0_n9_α
.Lx14_0:
                        cmp              eax, 1
                                                                                        jne   .Lx14_1
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   xchain0_n9_α
.Lx14_1:
                                                                                        jmp   xchain0_n9_α
xchain0_n7_β:
                        mov              eax, dword ptr [rbp + 336]
                        cmp              eax, 0
                                                                                        je    xchain0_n11_β
                                                                                        jmp   xchain0_n7_af
xchain0_n7_af:
                        add              dword ptr [rbp + 336], 1
                        mov              eax, dword ptr [rbp + 336]
                        cmp              eax, 1
                                                                                        je    xchain0_n12_α
                                                                                        jmp   xchain0_n8_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_GEN_SCAN
xchain0_n8_α:
                        lea              rdi, [rbp + 80]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 80]
                        mov              r14, qword ptr [rbp + 88]
                        mov              r15, qword ptr [rbp + 96]
                                                                                        jmp   xchain0_n4_α
xchain0_n8_β:
                                                                                        jmp   xchain0_n4_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_SCAN_TAB
xchain0_n9_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 328]
                        cmp              rax, 1
                                                                                        jge   .Lx18_0
                        add              rax, r15
                        add              rax, 1
.Lx18_0:
                        cmp              rax, 1
                                                                                        jge   .Lx18_239
                        add              rsp, 16
                                                                                        jmp   xchain0_n7_β
.Lx18_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx18_240
                        add              rsp, 16
                                                                                        jmp   xchain0_n7_β
.Lx18_240:
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
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   xchain0_n13_α
xchain0_n9_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   xchain0_n7_β
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_CHARSET
xchain0_n10_α:
                        mov              qword ptr [rbp + 384], 1
                        mov              dword ptr [rbp + 388], -1
                        mov              rax, qword ptr [rip + .Lx19_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   xchain0_n11_α
xchain0_n10_β:
                                                                                        jmp   xchain0_n7_af
.Lx19_0:
                        .quad            .Lx19_0_s
.Lx19_0_s:
                        .string          "|"
#-----------------------------------------------------------------------------------------------------------------------
# IR_SCAN_UPTO
xchain0_n11_α:
                        mov              qword ptr [rbp + 368], r14
.Lx21_0:
                        mov              rax, qword ptr [rbp + 368]
                        cmp              rax, r15
                                                                                        jge   xchain0_n7_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx21_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx21_1
                        mov              qword ptr [rbp + 352], 6
                        add              rax, 1
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   xchain0_n7_as
.Lx21_1:
                        inc              qword ptr [rbp + 368]
                                                                                        jmp   .Lx21_0
xchain0_n11_β:
                        inc              qword ptr [rbp + 368]
                                                                                        jmp   .Lx21_0
.Lx21_2:
                        .quad            .Lx21_2_s
.Lx21_2_s:
                        .string          "|"
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain0_n12_α:
                        mov              qword ptr [rbp + 416], 6
                        mov              rax, qword ptr [rip + .Lx22_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   xchain0_n7_as
xchain0_n12_β:
                                                                                        jmp   xchain0_n7_af
.Lx22_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
xchain0_n13_α:
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        lea              rsi, [rbp + 288]
                        call             proc_syms_dcα
                                                                                        jmp   .Lx24_2
.Lx24_2:
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    xchain0_n7_β
                                                                                        jmp   xchain0_n14_α
xchain0_n13_β:
                                                                                        jmp   xchain0_n7_β
.Lx24_0:
                        .quad            .Lx24_0_s
.Lx24_0_s:
                        .string          "syms"
#-----------------------------------------------------------------------------------------------------------------------
xchain0_n14_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+160]
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 168], rax
# marshal arg1 = producer-box slot [zr+240] -> [zr+176]
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 184], rax
                        .section         .rodata
.Lrkfn26:               .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn26]
                        lea              rsi, [rbp + 160]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    xchain0_n7_β
                                                                                        jmp   xchain0_n15_α
xchain0_n14_β:
                                                                                        jmp   xchain0_n7_β
#-----------------------------------------------------------------------------------------------------------------------
# IR_DISJUNCTION_NARY
xchain0_n15_α:
                        mov              qword ptr [rbp + 448], 0
                        mov              qword ptr [rbp + 456], 0
                        mov              dword ptr [rbp + 464], 0
                                                                                        jmp   xchain0_n16_α
xchain0_n15_as:
                        mov              eax, dword ptr [rbp + 464]
                        cmp              eax, 0
                                                                                        jne   .Lx28_0
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   xchain0_n5_α
.Lx28_0:
                        cmp              eax, 1
                                                                                        jne   .Lx28_1
                                                                                        jmp   xchain0_n5_α
.Lx28_1:
                                                                                        jmp   xchain0_n5_α
xchain0_n15_β:
                        mov              eax, dword ptr [rbp + 464]
                        cmp              eax, 0
                                                                                        je    xchain0_n15_af
                                                                                        jmp   xchain0_n15_af
xchain0_n15_af:
                        add              dword ptr [rbp + 464], 1
                        mov              eax, dword ptr [rbp + 464]
                        cmp              eax, 1
                                                                                        je    xchain0_n17_α
                                                                                        jmp   xchain0_n5_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain0_n16_α:
                        mov              qword ptr [rbp + 512], 6
                        mov              rax, qword ptr [rip + .Lx29_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   xchain0_n18_α
xchain0_n16_β:
                                                                                        jmp   xchain0_n15_af
.Lx29_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
xchain0_n17_α:
                                                                                        jmp   xchain0_n19_α
xchain0_n17_β:
                                                                                        jmp   xchain0_n19_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
xchain0_n18_α:
                        sub              rsp, 16
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1
                                                                                        jge   .Lx32_239
                        add              rsp, 16
                                                                                        jmp   xchain0_n15_af
.Lx32_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx32_240
                        add              rsp, 16
                                                                                        jmp   xchain0_n15_af
.Lx32_240:
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
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   xchain0_n15_as
xchain0_n18_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   xchain0_n15_af
#-----------------------------------------------------------------------------------------------------------------------
# IR_GEN_SCAN
xchain0_n19_α:
                        lea              rdi, [rbp + 80]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 80]
                        mov              r14, qword ptr [rbp + 88]
                        mov              r15, qword ptr [rbp + 96]
                                                                                        jmp   xchain0_n4_α
xchain0_n19_β:
                                                                                        jmp   xchain0_n4_α
#-----------------------------------------------------------------------------------------------------------------------
proc_alts_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_alts_β:
                                                                                        jmp   proc_alts_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_alts_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 648]
                        lea              rsp, [rbp + 672]
                        mov              rbp, [rbp + 664]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_alts_ω:
                        mov              rax, [rbp + 656]
                        lea              rsp, [rbp + 672]
                        mov              rbp, [rbp + 664]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_alts_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
                        pop              r11
                        sub              rsp, 688
                        mov              qword ptr [rsp + 680], rbp
                        mov              rbp, rsp
                        add              rbp, 16
                        mov              qword ptr [rbp + 640], r11
                        lea              rax, [rip + .Lx35_2]
                        mov              qword ptr [rbp + 648], rax
                        lea              rax, [rip + .Lx35_3]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 616], rbp
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 608
                        mov              edx, 640
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_alts_α_body
.Lx35_2:
                        mov              rdx, qword ptr [rsp + -688]
                        mov              rcx, rsp
                        add              rcx, -672
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx35_3:
                        mov              rdi, qword ptr [rsp + -688]
                        mov              rsi, rsp
                        add              rsi, -672
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_comment_α
proc_comment_α:
                        .global          proc_comment_α
                        .global          proc_comment_β
                        .global          proc_comment_γ
                        .global          proc_comment_ω
                        sub              rsp, 288
                        mov              [rsp + 264], rcx
                        mov              [rsp + 272], rdx
                        mov              [rsp + 280], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 248], rsp
                        mov              rdi, rsp
                        mov              esi, 240
                        mov              edx, 256
                        call             rt_jmp_frame_lexprep2@PLT
proc_comment_α_body:
#-----------------------------------------------------------------------------------------------------------------------
# IR_DISJUNCTION_NARY
xchain36_n0_α:
                        mov              qword ptr [rbp + 32], 0
                        mov              qword ptr [rbp + 40], 0
                        mov              dword ptr [rbp + 48], 0
                                                                                        jmp   xchain36_n1_α
xchain36_n0_as:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 0
                                                                                        jne   .Lx38_0
                                                                                        jmp   proc_comment_ω
.Lx38_0:
                                                                                        jmp   proc_comment_ω
xchain36_n0_β:
                        mov              eax, dword ptr [rbp + 48]
                                                                                        jmp   proc_comment_ω
xchain36_n0_af:
                        add              dword ptr [rbp + 48], 1
                        mov              eax, dword ptr [rbp + 48]
                                                                                        jmp   proc_comment_ω
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR_REF
xchain36_n1_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   xchain36_n2_α
xchain36_n1_β:
                                                                                        jmp   xchain36_n0_af
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain36_n2_α:
                        mov              qword ptr [rbp + 128], 6
                        mov              rax, qword ptr [rip + .Lx41_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   xchain36_n3_α
.Lx41_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
# IR_SUBSCRIPT x[i] variable
xchain36_n3_α:
                        mov              rdi, qword ptr [rbp + 96]
                        mov              rsi, qword ptr [rbp + 104]
                        mov              rdx, qword ptr [rbp + 128]
                        mov              rcx, qword ptr [rbp + 136]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain36_n0_af
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   xchain36_n4_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_DEREF variable -> value
xchain36_n4_α:
                        mov              rdi, qword ptr [rbp + 160]
                        mov              rsi, qword ptr [rbp + 168]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    xchain36_n0_af
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   xchain36_n5_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain36_n5_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx44_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   xchain36_n6_α
.Lx44_0:
                        .quad            .Lx44_0_s
.Lx44_0_s:
                        .string          "#"
#-----------------------------------------------------------------------------------------------------------------------
xchain36_n6_α:
# IR_BINOP_TEST
                        mov              rdi, qword ptr [rbp + 192]
                        mov              rsi, qword ptr [rbp + 200]
                        mov              rdx, qword ptr [rbp + 208]
                        mov              rcx, qword ptr [rbp + 216]
                        mov              r8d, 16
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    xchain36_n0_af
                        mov              rdi, qword ptr [rbp + 208]
                        mov              rsi, qword ptr [rbp + 216]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                                                                                        jmp   xchain36_n7_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_RETURN
xchain36_n7_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_comment_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_comment_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_comment_β:
                                                                                        jmp   proc_comment_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_comment_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 264]
                        lea              rsp, [rbp + 288]
                        mov              rbp, [rbp + 280]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_comment_ω:
                        mov              rax, [rbp + 272]
                        lea              rsp, [rbp + 288]
                        mov              rbp, [rbp + 280]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_comment_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
                        pop              r11
                        sub              rsp, 304
                        mov              qword ptr [rsp + 296], rbp
                        mov              rbp, rsp
                        add              rbp, 16
                        mov              qword ptr [rbp + 256], r11
                        lea              rax, [rip + .Lx47_2]
                        mov              qword ptr [rbp + 264], rax
                        lea              rax, [rip + .Lx47_3]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 248], rbp
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 240
                        mov              edx, 256
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_comment_α_body
.Lx47_2:
                        mov              rdx, qword ptr [rsp + -304]
                        mov              rcx, rsp
                        add              rcx, -288
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx47_3:
                        mov              rdi, qword ptr [rsp + -304]
                        mov              rsi, rsp
                        add              rsi, -288
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_define_α
proc_define_α:
                        .global          proc_define_α
                        .global          proc_define_β
                        .global          proc_define_γ
                        .global          proc_define_ω
                        sub              rsp, 672
                        mov              [rsp + 648], rcx
                        mov              [rsp + 656], rdx
                        mov              [rsp + 664], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 632], rsp
                        mov              rdi, rsp
                        mov              esi, 624
                        mov              edx, 640
                        call             rt_jmp_frame_lexprep2@PLT
proc_define_α_body:
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain48_n0_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   xchain48_n1_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_GEN_SCAN
xchain48_n1_α:
                        mov              rdi, qword ptr [rbp + 592]
                        mov              rsi, qword ptr [rbp + 600]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   xchain48_n2_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR_REF
xchain48_n2_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052288
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                                                                                        jmp   xchain48_n3_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain48_n3_α:
                        mov              qword ptr [rbp + 320], 1
                        mov              rax, qword ptr [rip + .Lx55_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   xchain48_n4_α
.Lx55_0:
                        .quad            .Lx55_0_s
.Lx55_0_s:
                        .string          "<"
#-----------------------------------------------------------------------------------------------------------------------
# IR_SCAN_MATCH
xchain48_n4_α:
                        sub              rsp, 16
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1
                                                                                        jge   .Lx57_239
                        add              rsp, 16
                                                                                        jmp   xchain48_n6_α
.Lx57_239:
                        mov              rdi, qword ptr [rip + .Lx57_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 1
                        push             r10
                        call             memcmp@PLT
                        pop              r10
                        test             eax, eax
                                                                                        je    .Lx57_240
                        add              rsp, 16
                                                                                        jmp   xchain48_n6_α
.Lx57_240:
                        mov              qword ptr [rbp + 288], 6
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   xchain48_n5_α
.Lx57_0:
                        .quad            .Lx57_0_s
.Lx57_0_s:
                        .string          "<"
#-----------------------------------------------------------------------------------------------------------------------
# IR_SCAN_TAB
xchain48_n5_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 296]
                        cmp              rax, 1
                                                                                        jge   .Lx59_0
                        add              rax, r15
                        add              rax, 1
.Lx59_0:
                        cmp              rax, 1
                                                                                        jge   .Lx59_239
                        add              rsp, 16
                                                                                        jmp   xchain48_n6_α
.Lx59_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx59_240
                        add              rsp, 16
                                                                                        jmp   xchain48_n6_α
.Lx59_240:
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
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   xchain48_n6_α
xchain48_n5_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   xchain48_n6_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain48_n6_α:
                        mov              qword ptr [rbp + 224], 1
                        mov              rax, qword ptr [rip + .Lx60_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   xchain48_n7_α
.Lx60_0:
                        .quad            .Lx60_0_s
.Lx60_0_s:
                        .string          ">::="
#-----------------------------------------------------------------------------------------------------------------------
# IR_SCAN_FIND
xchain48_n7_α:
                        mov              qword ptr [rbp + 208], r14
.Lx62_0:
                        mov              rax, qword ptr [rbp + 208]
                        mov              rcx, r15
                        sub              rcx, 4
                        cmp              rax, rcx
                                                                                        jg    xchain48_n19_α
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              rsi, 62
                                                                                        jne   .Lx62_1
                        mov              rcx, rax
                        add              rcx, 1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              rsi, 58
                                                                                        jne   .Lx62_1
                        mov              rcx, rax
                        add              rcx, 2
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              rsi, 58
                                                                                        jne   .Lx62_1
                        mov              rcx, rax
                        add              rcx, 3
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              rsi, 61
                                                                                        jne   .Lx62_1
                        mov              qword ptr [rbp + 192], 6
                        add              rax, 1
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   xchain48_n8_α
.Lx62_1:
                        inc              qword ptr [rbp + 208]
                                                                                        jmp   .Lx62_0
xchain48_n7_β:
                        inc              qword ptr [rbp + 208]
                                                                                        jmp   .Lx62_0
#-----------------------------------------------------------------------------------------------------------------------
# IR_SCAN_TAB
xchain48_n8_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 200]
                        cmp              rax, 1
                                                                                        jge   .Lx64_0
                        add              rax, r15
                        add              rax, 1
.Lx64_0:
                        cmp              rax, 1
                                                                                        jge   .Lx64_239
                        add              rsp, 16
                                                                                        jmp   xchain48_n7_β
.Lx64_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx64_240
                        add              rsp, 16
                                                                                        jmp   xchain48_n7_β
.Lx64_240:
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
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   xchain48_n9_α
xchain48_n8_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   xchain48_n7_β
#-----------------------------------------------------------------------------------------------------------------------
xchain48_n9_α:
# IR_CONJUNCTION value-forward copy
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   xchain48_n10_α
xchain48_n9_β:
                                                                                        jmp   xchain48_n19_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_SUBSCRIPT x[i] variable
xchain48_n10_α:
                        mov              rdi, qword ptr [rbp + 112]
                        mov              rsi, qword ptr [rbp + 120]
                        mov              rdx, qword ptr [rbp + 160]
                        mov              rcx, qword ptr [rbp + 168]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain48_n7_β
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   xchain48_n11_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain48_n11_α:
                        mov              qword ptr [rbp + 560], 6
                        mov              rax, qword ptr [rip + .Lx67_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   xchain48_n12_α
.Lx67_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
xchain48_n12_α:
                        sub              rsp, 16
                        mov              rax, 4
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1
                                                                                        jge   .Lx69_239
                        add              rsp, 16
                                                                                        jmp   xchain48_n13_α
.Lx69_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx69_240
                        add              rsp, 16
                                                                                        jmp   xchain48_n13_α
.Lx69_240:
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
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   xchain48_n13_α
xchain48_n12_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   xchain48_n13_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain48_n13_α:
                        mov              qword ptr [rbp + 496], 6
                        mov              rax, qword ptr [rip + .Lx70_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   xchain48_n14_α
.Lx70_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
# IR_SCAN_TAB
xchain48_n14_α:
                        sub              rsp, 16
                        mov              rax, 0
                        cmp              rax, 1
                                                                                        jge   .Lx72_0
                        add              rax, r15
                        add              rax, 1
.Lx72_0:
                        cmp              rax, 1
                                                                                        jge   .Lx72_239
                        add              rsp, 16
                                                                                        jmp   xchain48_n7_β
.Lx72_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx72_240
                        add              rsp, 16
                                                                                        jmp   xchain48_n7_β
.Lx72_240:
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
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   xchain48_n15_α
xchain48_n14_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   xchain48_n7_β
#-----------------------------------------------------------------------------------------------------------------------
xchain48_n15_α:
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        lea              rsi, [rbp + 464]
                        call             proc_alts_dcα
                                                                                        jmp   .Lx74_2
.Lx74_2:
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              eax, 99
                                                                                        je    xchain48_n7_β
                                                                                        jmp   xchain48_n16_α
xchain48_n15_β:
                                                                                        jmp   xchain48_n7_β
.Lx74_0:
                        .quad            .Lx74_0_s
.Lx74_0_s:
                        .string          "alts"
#-----------------------------------------------------------------------------------------------------------------------
xchain48_n16_α:
# IR_CONJUNCTION value-forward copy
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   xchain48_n17_α
xchain48_n16_β:
                                                                                        jmp   xchain48_n7_β
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN_VAR
xchain48_n17_α:
                        mov              rdi, qword ptr [rbp + 352]
                        mov              rsi, qword ptr [rbp + 360]
                        mov              rdx, qword ptr [rbp + 416]
                        mov              rcx, qword ptr [rbp + 424]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain48_n19_α
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   xchain48_n18_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_GEN_SCAN
xchain48_n18_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 88], rax
                        lea              rdi, [rbp + 48]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 48]
                        mov              r14, qword ptr [rbp + 56]
                        mov              r15, qword ptr [rbp + 64]
                                                                                        jmp   xchain48_n20_α
xchain48_n18_β:
                                                                                        jmp   proc_define_ω
#-----------------------------------------------------------------------------------------------------------------------
# IR_GEN_SCAN
xchain48_n19_α:
                        lea              rdi, [rbp + 48]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 48]
                        mov              r14, qword ptr [rbp + 56]
                        mov              r15, qword ptr [rbp + 64]
                                                                                        jmp   proc_define_ω
xchain48_n19_β:
                                                                                        jmp   proc_define_ω
#-----------------------------------------------------------------------------------------------------------------------
# IR_RETURN
xchain48_n20_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_define_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_define_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_define_β:
                                                                                        jmp   proc_define_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_define_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 648]
                        lea              rsp, [rbp + 672]
                        mov              rbp, [rbp + 664]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_define_ω:
                        mov              rax, [rbp + 656]
                        lea              rsp, [rbp + 672]
                        mov              rbp, [rbp + 664]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_define_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
                        pop              r11
                        sub              rsp, 688
                        mov              qword ptr [rsp + 680], rbp
                        mov              rbp, rsp
                        add              rbp, 16
                        mov              qword ptr [rbp + 640], r11
                        lea              rax, [rip + .Lx82_2]
                        mov              qword ptr [rbp + 648], rax
                        lea              rax, [rip + .Lx82_3]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 632], rbp
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 624
                        mov              edx, 640
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_define_α_body
.Lx82_2:
                        mov              rdx, qword ptr [rsp + -688]
                        mov              rcx, rsp
                        add              rcx, -672
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx82_3:
                        mov              rdi, qword ptr [rsp + -688]
                        mov              rsi, rsp
                        add              rsi, -672
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_defnon_α
proc_defnon_α:
                        .global          proc_defnon_α
                        .global          proc_defnon_β
                        .global          proc_defnon_γ
                        .global          proc_defnon_ω
                        sub              rsp, 736
                        mov              [rsp + 712], rcx
                        mov              [rsp + 720], rdx
                        mov              [rsp + 728], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 680], rsp
                        mov              rdi, rsp
                        mov              esi, 672
                        mov              edx, 704
                        call             rt_jmp_frame_lexprep2@PLT
proc_defnon_α_body:
#-----------------------------------------------------------------------------------------------------------------------
# IR_DISJUNCTION_NARY
xchain83_n0_α:
                        mov              qword ptr [rbp + 32], 0
                        mov              qword ptr [rbp + 40], 0
                        mov              dword ptr [rbp + 48], 0
                                                                                        jmp   xchain83_n1_α
xchain83_n0_as:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 0
                                                                                        jne   .Lx85_0
                                                                                        jmp   proc_defnon_ω
.Lx85_0:
                        cmp              eax, 1
                                                                                        jne   .Lx85_1
                                                                                        jmp   proc_defnon_ω
.Lx85_1:
                                                                                        jmp   proc_defnon_ω
xchain83_n0_β:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 0
                                                                                        je    proc_defnon_ω
                                                                                        jmp   proc_defnon_ω
xchain83_n0_af:
                        add              dword ptr [rbp + 48], 1
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 1
                                                                                        je    xchain83_n2_α
                                                                                        jmp   proc_defnon_ω
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain83_n1_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   xchain83_n3_α
xchain83_n1_β:
                                                                                        jmp   xchain83_n0_af
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain83_n2_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   xchain83_n4_α
xchain83_n2_β:
                                                                                        jmp   proc_defnon_ω
#-----------------------------------------------------------------------------------------------------------------------
# IR_GEN_SCAN
xchain83_n3_α:
                        mov              rdi, qword ptr [rbp + 560]
                        mov              rsi, qword ptr [rbp + 568]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   xchain83_n5_α
#-----------------------------------------------------------------------------------------------------------------------
xchain83_n4_α:
# BOX IR_CALL nonterm(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+640] -> [zr+608]
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 616], rax
                        .section         .rodata
.Lrkfn93:               .string          "nonterm"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn93]
                        lea              rsi, [rbp + 608]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 99
                                                                                        je    proc_defnon_ω
                                                                                        jmp   xchain83_n6_α
xchain83_n4_β:
                                                                                        jmp   proc_defnon_ω
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain83_n5_α:
                        mov              qword ptr [rbp + 528], 1
                        mov              rax, qword ptr [rip + .Lx94_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   xchain83_n7_α
.Lx94_0:
                        .quad            .Lx94_0_s
.Lx94_0_s:
                        .string          "'"
#-----------------------------------------------------------------------------------------------------------------------
# IR_RETURN
xchain83_n6_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              rdx, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_defnon_γ
#-----------------------------------------------------------------------------------------------------------------------
# IR_SCAN_MATCH
xchain83_n7_α:
                        sub              rsp, 16
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1
                                                                                        jge   .Lx97_239
                        add              rsp, 16
                                                                                        jmp   xchain83_n9_α
.Lx97_239:
                        mov              rdi, qword ptr [rip + .Lx97_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 1
                        push             r10
                        call             memcmp@PLT
                        pop              r10
                        test             eax, eax
                                                                                        je    .Lx97_240
                        add              rsp, 16
                                                                                        jmp   xchain83_n9_α
.Lx97_240:
                        mov              qword ptr [rbp + 496], 6
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   xchain83_n8_α
.Lx97_0:
                        .quad            .Lx97_0_s
.Lx97_0_s:
                        .string          "'"
#-----------------------------------------------------------------------------------------------------------------------
# IR_SCAN_TAB
xchain83_n8_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 504]
                        cmp              rax, 1
                                                                                        jge   .Lx99_0
                        add              rax, r15
                        add              rax, 1
.Lx99_0:
                        cmp              rax, 1
                                                                                        jge   .Lx99_239
                        add              rsp, 16
                                                                                        jmp   xchain83_n9_α
.Lx99_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx99_240
                        add              rsp, 16
                                                                                        jmp   xchain83_n9_α
.Lx99_240:
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
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   xchain83_n10_α
xchain83_n8_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   xchain83_n9_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_GEN_SCAN
xchain83_n9_α:
                        lea              rdi, [rbp + 160]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 160]
                        mov              r14, qword ptr [rbp + 168]
                        mov              r15, qword ptr [rbp + 176]
                                                                                        jmp   xchain83_n0_af
xchain83_n9_β:
                                                                                        jmp   xchain83_n0_af
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain83_n10_α:
                        mov              qword ptr [rbp + 432], 6
                        mov              rax, qword ptr [rip + .Lx00001_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   xchain83_n11_α
.Lx00001_0:
                        .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
# IR_SCAN_TAB
xchain83_n11_α:
                        sub              rsp, 16
                        mov              rax, -1
                        cmp              rax, 1
                                                                                        jge   .Lx00002_0
                        add              rax, r15
                        add              rax, 1
.Lx00002_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00002_239
                        add              rsp, 16
                                                                                        jmp   xchain83_n8_α
.Lx00002_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00002_240
                        add              rsp, 16
                                                                                        jmp   xchain83_n8_α
.Lx00002_240:
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
                                                                                        jmp   xchain83_n12_α
xchain83_n11_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   xchain83_n8_α
#-----------------------------------------------------------------------------------------------------------------------
xchain83_n12_α:
# BOX IR_CALL cset(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+400] -> [zr+368]
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 376], rax
                        .section         .rodata
.Lrkfn106:              .string          "cset"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn106]
                        lea              rsi, [rbp + 368]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 99
                                                                                        je    xchain83_n8_α
                                                                                        jmp   xchain83_n13_α
xchain83_n12_β:
                                                                                        jmp   xchain83_n8_α
#-----------------------------------------------------------------------------------------------------------------------
xchain83_n13_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   xchain83_n14_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain83_n14_α:
                        mov              qword ptr [rbp + 304], 1
                        mov              rax, qword ptr [rip + .Lx00003_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   xchain83_n15_α
.Lx00003_0:
                        .quad            .Lx00003_0_s
.Lx00003_0_s:
                        .string          "'"
#-----------------------------------------------------------------------------------------------------------------------
# IR_SCAN_MATCH
xchain83_n15_α:
                        sub              rsp, 16
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1
                                                                                        jge   .Lx00004_239
                        add              rsp, 16
                                                                                        jmp   xchain83_n8_α
.Lx00004_239:
                        mov              rdi, qword ptr [rip + .Lx00004_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 1
                        push             r10
                        call             memcmp@PLT
                        pop              r10
                        test             eax, eax
                                                                                        je    .Lx00004_240
                        add              rsp, 16
                                                                                        jmp   xchain83_n8_α
.Lx00004_240:
                        mov              qword ptr [rbp + 272], 6
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   xchain83_n16_α
.Lx00004_0:
                        .quad            .Lx00004_0_s
.Lx00004_0_s:
                        .string          "'"
#-----------------------------------------------------------------------------------------------------------------------
# IR_SCAN_TAB
xchain83_n16_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 280]
                        cmp              rax, 1
                                                                                        jge   .Lx00005_0
                        add              rax, r15
                        add              rax, 1
.Lx00005_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00005_239
                        add              rsp, 16
                                                                                        jmp   xchain83_n8_α
.Lx00005_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00005_240
                        add              rsp, 16
                                                                                        jmp   xchain83_n8_α
.Lx00005_240:
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
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   xchain83_n17_α
xchain83_n16_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   xchain83_n8_α
#-----------------------------------------------------------------------------------------------------------------------
xchain83_n17_α:
# IR_CONJUNCTION value-forward copy
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   xchain83_n18_α
xchain83_n17_β:
                                                                                        jmp   xchain83_n9_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_GEN_SCAN
xchain83_n18_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 200], rax
                        lea              rdi, [rbp + 160]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 160]
                        mov              r14, qword ptr [rbp + 168]
                        mov              r15, qword ptr [rbp + 176]
                                                                                        jmp   xchain83_n19_α
xchain83_n18_β:
                                                                                        jmp   xchain83_n0_af
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain83_n19_α:
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   xchain83_n20_α
#-----------------------------------------------------------------------------------------------------------------------
xchain83_n20_α:
# BOX IR_CALL charset(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+112] -> [zr+80]
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 88], rax
                        .section         .rodata
.Lrkfn119:              .string          "charset"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn119]
                        lea              rsi, [rbp + 80]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_defnon_ω
                                                                                        jmp   xchain83_n21_α
xchain83_n20_β:
                                                                                        jmp   proc_defnon_ω
#-----------------------------------------------------------------------------------------------------------------------
# IR_RETURN
xchain83_n21_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              rdx, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_defnon_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_defnon_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_defnon_β:
                                                                                        jmp   proc_defnon_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_defnon_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 712]
                        lea              rsp, [rbp + 736]
                        mov              rbp, [rbp + 728]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_defnon_ω:
                        mov              rax, [rbp + 720]
                        lea              rsp, [rbp + 736]
                        mov              rbp, [rbp + 728]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_defnon_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
                        pop              r11
                        sub              rsp, 752
                        mov              qword ptr [rsp + 744], rbp
                        mov              rbp, rsp
                        add              rbp, 16
                        mov              qword ptr [rbp + 704], r11
                        lea              rax, [rip + .Lx00006_2]
                        mov              qword ptr [rbp + 712], rax
                        lea              rax, [rip + .Lx00006_3]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 680], rbp
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 672
                        mov              edx, 704
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_defnon_α_body
.Lx00006_2:
                        mov              rdx, qword ptr [rsp + -752]
                        mov              rcx, rsp
                        add              rcx, -736
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00006_3:
                        mov              rdi, qword ptr [rsp + -752]
                        mov              rsi, rsp
                        add              rsi, -736
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_error_α
proc_error_α:
                        .global          proc_error_α
                        .global          proc_error_β
                        .global          proc_error_γ
                        .global          proc_error_ω
                        sub              rsp, 208
                        mov              [rsp + 184], rcx
                        mov              [rsp + 192], rdx
                        mov              [rsp + 200], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 168], rsp
                        mov              rdi, rsp
                        mov              esi, 160
                        mov              edx, 176
                        call             rt_jmp_frame_lexprep2@PLT
proc_error_α_body:
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain00007_n0_α:
                        mov              qword ptr [rbp + 96], 1
                        mov              rax, qword ptr [rip + .Lx00008_0]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   xchain00007_n1_α
.Lx00008_0:
                        .quad            .Lx00008_0_s
.Lx00008_0_s:
                        .string          "*** erroneous line:  "
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00007_n1_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   xchain00007_n2_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00007_n2_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+48]
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 56], rax
# marshal arg1 = producer-box slot [zr+128] -> [zr+64]
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 72], rax
                        .section         .rodata
.Lrkfn127:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn127]
                        lea              rsi, [rbp + 48]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    xchain00007_n3_α
                                                                                        jmp   xchain00007_n3_α
xchain00007_n2_β:
                                                                                        jmp   xchain00007_n3_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_RETURN
xchain00007_n3_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_error_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_error_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_error_β:
                                                                                        jmp   proc_error_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_error_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 184]
                        lea              rsp, [rbp + 208]
                        mov              rbp, [rbp + 200]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_error_ω:
                        mov              rax, [rbp + 192]
                        lea              rsp, [rbp + 208]
                        mov              rbp, [rbp + 200]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_error_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
                        pop              r11
                        sub              rsp, 224
                        mov              qword ptr [rsp + 216], rbp
                        mov              rbp, rsp
                        add              rbp, 16
                        mov              qword ptr [rbp + 176], r11
                        lea              rax, [rip + .Lx00009_2]
                        mov              qword ptr [rbp + 184], rax
                        lea              rax, [rip + .Lx00009_3]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 168], rbp
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 160
                        mov              edx, 176
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_error_α_body
.Lx00009_2:
                        mov              rdx, qword ptr [rsp + -224]
                        mov              rcx, rsp
                        add              rcx, -208
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00009_3:
                        mov              rdi, qword ptr [rsp + -224]
                        mov              rsi, rsp
                        add              rsi, -208
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_gener_α
proc_gener_α:
                        .global          proc_gener_α
                        .global          proc_gener_β
                        .global          proc_gener_γ
                        .global          proc_gener_ω
                        sub              rsp, 2384
                        mov              [rsp + 2360], rcx
                        mov              [rsp + 2368], rdx
                        mov              [rsp + 2376], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 2296], rsp
                        mov              rdi, rsp
                        mov              esi, 2288
                        mov              edx, 2352
                        call             rt_jmp_frame_lexprep2@PLT
proc_gener_α_body:
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00010_n0_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 2256], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 2264], rax
                                                                                        jmp   xchain00010_n1_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00010_n1_α:
# BOX IR_CALL nonterm(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2256] -> [zr+2224]
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 2224], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 2232], rax
                        .section         .rodata
.Lrkfn134:              .string          "nonterm"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn134]
                        lea              rsi, [rbp + 2224]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2208], rax
                        mov              qword ptr [rbp + 2216], rdx
                        cmp              eax, 99
                                                                                        je    xchain00010_n2_α
                                                                                        jmp   xchain00010_n3_α
xchain00010_n1_β:
                                                                                        jmp   xchain00010_n2_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00010_n2_α:
                        mov              rax, qword ptr [rbp + 2320]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 2328]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   xchain00010_n4_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_MAKE_LIST
xchain00010_n3_α:
                        mov              rax, qword ptr [rbp + 2208]
                        mov              qword ptr [rbp + 2192], rax
                        mov              rax, qword ptr [rbp + 2216]
                        mov              qword ptr [rbp + 2200], rax
                        lea              rdi, [rbp + 2192]
                        mov              esi, 1
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 2176], rax
                        mov              qword ptr [rbp + 2184], rdx
                                                                                        jmp   xchain00010_n6_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00010_n4_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+128] -> [zr+96]
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 104], rax
                        .section         .rodata
.Lrkfn140:              .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn140]
                        lea              rsi, [rbp + 96]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    xchain00010_n5_α
                                                                                        jmp   xchain00010_n7_α
xchain00010_n4_β:
                                                                                        jmp   xchain00010_n5_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00010_n5_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
                        .section         .rodata
.Lrkfn142:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn142]
                        lea              rsi, [rbp + 48]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_gener_ω
                                                                                        jmp   proc_gener_ω
xchain00010_n5_β:
                                                                                        jmp   proc_gener_ω
#-----------------------------------------------------------------------------------------------------------------------
xchain00010_n6_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 2176]
                        mov              rdx, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                                                                                        jmp   xchain00010_n2_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00010_n7_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 80]
                        mov              rdx, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                                                                                        jmp   xchain00010_n8_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_DISJUNCTION_NARY
xchain00010_n8_α:
                        mov              qword ptr [rbp + 1792], 0
                        mov              qword ptr [rbp + 1800], 0
                        mov              dword ptr [rbp + 1808], 0
                                                                                        jmp   xchain00010_n10_α
xchain00010_n8_as:
                        mov              eax, dword ptr [rbp + 1808]
                        cmp              eax, 0
                                                                                        jne   .Lx00011_0
                        mov              rax, qword ptr [rbp + 1824]
                        mov              qword ptr [rbp + 1792], rax
                        mov              rax, qword ptr [rbp + 1832]
                        mov              qword ptr [rbp + 1800], rax
                                                                                        jmp   xchain00010_n9_α
.Lx00011_0:
                                                                                        jmp   xchain00010_n9_α
xchain00010_n8_β:
                        mov              eax, dword ptr [rbp + 1808]
                                                                                        jmp   xchain00010_n9_α
xchain00010_n8_af:
                        add              dword ptr [rbp + 1808], 1
                        mov              eax, dword ptr [rbp + 1808]
                                                                                        jmp   xchain00010_n9_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00010_n9_α:
                        mov              rax, qword ptr [rbp + 2304]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 2312]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   xchain00010_n12_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00010_n10_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 2136], rdx
                                                                                        jmp   xchain00010_n13_α
xchain00010_n10_β:
                                                                                        jmp   xchain00010_n8_af
#-----------------------------------------------------------------------------------------------------------------------
xchain00010_n11_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1904] -> [zr+1840]
                        mov              rax, qword ptr [rbp + 1904]
                        mov              qword ptr [rbp + 1840], rax
                        mov              rax, qword ptr [rbp + 1912]
                        mov              qword ptr [rbp + 1848], rax
# marshal arg1 = producer-box slot [zr+1936] -> [zr+1856]
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 1864], rax
# marshal arg2 = producer-box slot [zr+2016] -> [zr+1872]
                        mov              rax, qword ptr [rbp + 2016]
                        mov              qword ptr [rbp + 1872], rax
                        mov              rax, qword ptr [rbp + 2024]
                        mov              qword ptr [rbp + 1880], rax
                        .section         .rodata
.Lrkfn151:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn151]
                        lea              rsi, [rbp + 1840]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx
                        cmp              eax, 99
                                                                                        je    xchain00010_n9_α
                                                                                        jmp   xchain00010_n8_as
xchain00010_n11_β:
                                                                                        jmp   xchain00010_n9_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00010_n12_α:
# BOX IR_CALL type(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+256] -> [zr+224]
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 232], rax
                        .section         .rodata
.Lrkfn153:              .string          "type"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn153]
                        lea              rsi, [rbp + 224]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    xchain00010_n2_α
                                                                                        jmp   xchain00010_n14_α
xchain00010_n12_β:
                                                                                        jmp   xchain00010_n2_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_UNOP
xchain00010_n13_α:
                        mov              eax, dword ptr [rbp + 2128]
                        cmp              eax, 99
                                                                                        je    xchain00010_n8_af
                        cmp              eax, 0
                                                                                        je    xchain00010_n8_af
                        mov              rax, qword ptr [rbp + 2128]
                        mov              qword ptr [rbp + 2096], rax
                        mov              rax, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 2104], rax
                                                                                        jmp   xchain00010_n15_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain00010_n14_α:
                        mov              qword ptr [rbp + 1600], 1
                        mov              rax, qword ptr [rip + .Lx00012_0]
                        mov              qword ptr [rbp + 1608], rax
                                                                                        jmp   xchain00010_n16_α
.Lx00012_0:
                        .quad            .Lx00012_0_s
.Lx00012_0_s:
                        .string          "string"
#-----------------------------------------------------------------------------------------------------------------------
# KEYWORD_read
xchain00010_n15_α:
                        mov              rdi, qword ptr [rip + .Lx00013_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    xchain00010_n9_α
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx
                                                                                        jmp   xchain00010_n17_α
xchain00010_n15_β:
                                                                                        jmp   xchain00010_n9_α
.Lx00013_0:
                        .quad            .Lx00013_0_s
.Lx00013_0_s:
                        .string          "&errout"
#-----------------------------------------------------------------------------------------------------------------------
xchain00010_n16_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+1744]
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 1744], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 1752], rax
# marshal arg1 = producer-box slot [zr+1600] -> [zr+1760]
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 1768], rax
                        .section         .rodata
.Lrkfn158:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn158]
                        lea              rsi, [rbp + 1744]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx
                        cmp              eax, 99
                                                                                        je    xchain00010_n19_α
                                                                                        jmp   xchain00010_n18_α
xchain00010_n16_β:
                                                                                        jmp   xchain00010_n19_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00010_n17_α:
                        mov              rax, qword ptr [rbp + 2304]
                        mov              qword ptr [rbp + 1984], rax
                        mov              rax, qword ptr [rbp + 2312]
                        mov              qword ptr [rbp + 1992], rax
                                                                                        jmp   xchain00010_n20_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00010_n18_α:
                        mov              rax, qword ptr [rbp + 2304]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 2312]
                        mov              qword ptr [rbp + 1688], rax
                                                                                        jmp   xchain00010_n21_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain00010_n19_α:
                        mov              qword ptr [rbp + 1344], 1
                        mov              rax, qword ptr [rip + .Lx00014_0]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   xchain00010_n22_α
.Lx00014_0:
                        .quad            .Lx00014_0_s
.Lx00014_0_s:
                        .string          "charset"
#-----------------------------------------------------------------------------------------------------------------------
xchain00010_n20_α:
                        lea              rsi, [rbp + 1984]
                        call             proc_symimage_dcα
                                                                                        jmp   .Lx00015_2
.Lx00015_2:
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx
                        cmp              eax, 99
                                                                                        je    xchain00010_n9_α
                                                                                        jmp   xchain00010_n23_α
xchain00010_n20_β:
                                                                                        jmp   xchain00010_n9_α
.Lx00015_0:
                        .quad            .Lx00015_0_s
.Lx00015_0_s:
                        .string          "symimage"
#-----------------------------------------------------------------------------------------------------------------------
xchain00010_n21_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1680] -> [zr+1648]
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1656], rax
                        .section         .rodata
.Lrkfn167:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn167]
                        lea              rsi, [rbp + 1648]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                        cmp              eax, 99
                                                                                        je    xchain00010_n2_α
                                                                                        jmp   xchain00010_n24_α
xchain00010_n21_β:
                                                                                        jmp   xchain00010_n2_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00010_n22_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+1552]
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 1552], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 1560], rax
# marshal arg1 = producer-box slot [zr+1344] -> [zr+1568]
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1576], rax
                        .section         .rodata
.Lrkfn169:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn169]
                        lea              rsi, [rbp + 1552]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                        cmp              eax, 99
                                                                                        je    xchain00010_n26_α
                                                                                        jmp   xchain00010_n25_α
xchain00010_n22_β:
                                                                                        jmp   xchain00010_n26_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00010_n23_α:
                        mov              rax, qword ptr [rbp + 2320]
                        mov              qword ptr [rbp + 2064], rax
                        mov              rax, qword ptr [rbp + 2328]
                        mov              qword ptr [rbp + 2072], rax
                                                                                        jmp   xchain00010_n27_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00010_n24_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 1632]
                        mov              rdx, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                                                                                        jmp   xchain00010_n28_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00010_n25_α:
                        mov              rax, qword ptr [rbp + 2304]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 2312]
                        mov              qword ptr [rbp + 1480], rax
                                                                                        jmp   xchain00010_n29_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain00010_n26_α:
                        mov              qword ptr [rbp + 288], 1
                        mov              rax, qword ptr [rip + .Lx00016_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   xchain00010_n30_α
.Lx00016_0:
                        .quad            .Lx00016_0_s
.Lx00016_0_s:
                        .string          "nonterm"
#-----------------------------------------------------------------------------------------------------------------------
xchain00010_n27_α:
                        lea              rsi, [rbp + 2064]
                        call             proc_listimage_dcα
                                                                                        jmp   .Lx00017_2
.Lx00017_2:
                        mov              qword ptr [rbp + 2016], rax
                        mov              qword ptr [rbp + 2024], rdx
                        cmp              eax, 99
                                                                                        je    xchain00010_n9_α
                                                                                        jmp   xchain00010_n11_α
xchain00010_n27_β:
                                                                                        jmp   xchain00010_n9_α
.Lx00017_0:
                        .quad            .Lx00017_0_s
.Lx00017_0_s:
                        .string          "listimage"
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00010_n28_α:
                        mov              rax, qword ptr [rbp + 2336]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 2344]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   xchain00010_n31_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_FIELD_GET
xchain00010_n29_α:
                        mov              rdi, qword ptr [rip + .Lx00018_0]
                        mov              rsi, qword ptr [rbp + 1472]
                        mov              rdx, qword ptr [rbp + 1480]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    xchain00010_n2_α
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                                                                                        jmp   xchain00010_n32_α
.Lx00018_0:
                        .quad            .Lx00018_0_s
.Lx00018_0_s:
                        .string          "chars"
#-----------------------------------------------------------------------------------------------------------------------
xchain00010_n30_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+1296]
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 1304], rax
# marshal arg1 = producer-box slot [zr+288] -> [zr+1312]
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 1320], rax
                        .section         .rodata
.Lrkfn182:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn182]
                        lea              rsi, [rbp + 1296]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                        cmp              eax, 99
                                                                                        je    xchain00010_n2_α
                                                                                        jmp   xchain00010_n33_β
xchain00010_n30_β:
                                                                                        jmp   xchain00010_n2_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00010_n31_α:
# IR_CONJUNCTION value-forward copy
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   xchain00010_n2_α
xchain00010_n31_β:
                                                                                        jmp   xchain00010_n2_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_RANDOM
xchain00010_n32_α:
                        mov              rdi, qword ptr [rbp + 1440]
                        mov              rsi, qword ptr [rbp + 1448]
                        call             rt_random_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain00010_n2_α
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                                                                                        jmp   xchain00010_n34_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_DISJUNCTION_NARY
xchain00010_n33_α:
                        mov              qword ptr [rbp + 688], 0
                        mov              qword ptr [rbp + 696], 0
                        mov              dword ptr [rbp + 704], 0
                                                                                        jmp   xchain00010_n36_α
xchain00010_n33_as:
                        mov              eax, dword ptr [rbp + 704]
                        cmp              eax, 0
                                                                                        jne   .Lx00019_0
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   xchain00010_n35_α
.Lx00019_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00019_1
                                                                                        jmp   xchain00010_n35_α
.Lx00019_1:
                                                                                        jmp   xchain00010_n35_α
xchain00010_n33_β:
                        mov              eax, dword ptr [rbp + 704]
                        cmp              eax, 0
                                                                                        je    xchain00010_n33_af
                                                                                        jmp   xchain00010_n33_af
xchain00010_n33_af:
                        add              dword ptr [rbp + 704], 1
                        mov              eax, dword ptr [rbp + 704]
                        cmp              eax, 1
                                                                                        je    xchain00010_n37_α
                                                                                        jmp   xchain00010_n41_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_DEREF variable -> value
xchain00010_n34_α:
                        mov              rdi, qword ptr [rbp + 1424]
                        mov              rsi, qword ptr [rbp + 1432]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    xchain00010_n2_α
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                                                                                        jmp   xchain00010_n40_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00010_n35_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 688]
                        mov              rdx, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   xchain00010_n41_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR_REF
xchain00010_n36_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052288
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   xchain00010_n42_α
xchain00010_n36_β:
                                                                                        jmp   xchain00010_n33_af
#-----------------------------------------------------------------------------------------------------------------------
# KEYWORD_read
xchain00010_n37_α:
                        mov              rdi, qword ptr [rip + .Lx00020_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    xchain00010_n5_α
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                                                                                        jmp   xchain00010_n43_α
xchain00010_n37_β:
                                                                                        jmp   xchain00010_n5_α
.Lx00020_0:
                        .quad            .Lx00020_0_s
.Lx00020_0_s:
                        .string          "&errout"
#-----------------------------------------------------------------------------------------------------------------------
xchain00010_n38_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 944]
                        mov              rsi, qword ptr [rbp + 952]
                        mov              rdx, qword ptr [rbp + 2320]
                        mov              rcx, qword ptr [rbp + 2328]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   xchain00010_n33_as
xchain00010_n38_β:
                                                                                        jmp   xchain00010_n33_af
#-----------------------------------------------------------------------------------------------------------------------
xchain00010_n39_α:
                                                                                        jmp   xchain00010_n33_as
xchain00010_n39_β:
                                                                                        jmp   xchain00010_n33_af
#-----------------------------------------------------------------------------------------------------------------------
xchain00010_n40_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1504] -> [zr+1392]
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1400], rax
                        .section         .rodata
.Lrkfn195:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn195]
                        lea              rsi, [rbp + 1392]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                        cmp              eax, 99
                                                                                        je    xchain00010_n2_α
                                                                                        jmp   xchain00010_n44_α
xchain00010_n40_β:
                                                                                        jmp   xchain00010_n2_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_DISJUNCTION_NARY
xchain00010_n41_α:
                        mov              qword ptr [rbp + 336], 0
                        mov              qword ptr [rbp + 344], 0
                        mov              dword ptr [rbp + 352], 0
                                                                                        jmp   xchain00010_n46_α
xchain00010_n41_as:
                        mov              eax, dword ptr [rbp + 352]
                        cmp              eax, 0
                                                                                        jne   .Lx00021_0
                                                                                        jmp   xchain00010_n45_α
.Lx00021_0:
                                                                                        jmp   xchain00010_n45_α
xchain00010_n41_β:
                        mov              eax, dword ptr [rbp + 352]
                                                                                        jmp   xchain00010_n2_α
xchain00010_n41_af:
                        add              dword ptr [rbp + 352], 1
                        mov              eax, dword ptr [rbp + 352]
                                                                                        jmp   xchain00010_n2_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00010_n42_α:
                        mov              rax, qword ptr [rbp + 2304]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 2312]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   xchain00010_n48_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain00010_n43_α:
                        mov              qword ptr [rbp + 1136], 1
                        mov              rax, qword ptr [rip + .Lx00022_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   xchain00010_n49_α
.Lx00022_0:
                        .quad            .Lx00022_0_s
.Lx00022_0_s:
                        .string          "*** undefined nonterminal:  <"
#-----------------------------------------------------------------------------------------------------------------------
xchain00010_n44_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 1376]
                        mov              rdx, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                                                                                        jmp   xchain00010_n28_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00010_n45_α:
# IR_CONJUNCTION value-forward copy
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   xchain00010_n50_α
xchain00010_n45_β:
                                                                                        jmp   xchain00010_n2_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00010_n46_α:
                        mov              rax, qword ptr [rbp + 2320]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 2328]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   xchain00010_n51_α
xchain00010_n46_β:
                                                                                        jmp   xchain00010_n41_af
#-----------------------------------------------------------------------------------------------------------------------
xchain00010_n47_α:
                                                                                        jmp   xchain00010_n41_as
xchain00010_n47_β:
                                                                                        jmp   xchain00010_n2_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_FIELD_GET
xchain00010_n48_α:
                        mov              rdi, qword ptr [rip + .Lx00023_0]
                        mov              rsi, qword ptr [rbp + 864]
                        mov              rdx, qword ptr [rbp + 872]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    xchain00010_n33_af
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   xchain00010_n52_α
.Lx00023_0:
                        .quad            .Lx00023_0_s
.Lx00023_0_s:
                        .string          "name"
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00010_n49_α:
                        mov              rax, qword ptr [rbp + 2304]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 2312]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   xchain00010_n53_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00010_n50_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                                                                                        jmp   xchain00010_n28_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_UNOP
xchain00010_n51_α:
                        mov              rdi, qword ptr [rbp + 2320]
                        mov              rsi, qword ptr [rbp + 2328]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   xchain00010_n55_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_SUBSCRIPT x[i] variable
xchain00010_n52_α:
                        mov              rdi, qword ptr [rbp + 800]
                        mov              rsi, qword ptr [rbp + 808]
                        mov              rdx, qword ptr [rbp + 832]
                        mov              rcx, qword ptr [rbp + 840]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain00010_n33_af
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                                                                                        jmp   xchain00010_n56_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_FIELD_GET
xchain00010_n53_α:
                        mov              rdi, qword ptr [rip + .Lx00024_0]
                        mov              rsi, qword ptr [rbp + 1200]
                        mov              rdx, qword ptr [rbp + 1208]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    xchain00010_n5_α
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                                                                                        jmp   xchain00010_n57_α
.Lx00024_0:
                        .quad            .Lx00024_0_s
.Lx00024_0_s:
                        .string          "name"
#-----------------------------------------------------------------------------------------------------------------------
xchain00010_n54_α:
                                                                                        jmp   xchain00010_n5_α
xchain00010_n54_β:
                                                                                        jmp   xchain00010_n5_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00010_n55_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   xchain00010_n58_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_DEREF variable -> value
xchain00010_n56_α:
                        mov              rdi, qword ptr [rbp + 896]
                        mov              rsi, qword ptr [rbp + 904]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    xchain00010_n33_af
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                                                                                        jmp   xchain00010_n59_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain00010_n57_α:
                        mov              qword ptr [rbp + 1232], 1
                        mov              rax, qword ptr [rip + .Lx00025_0]
                        mov              qword ptr [rbp + 1240], rax
                                                                                        jmp   xchain00010_n60_α
.Lx00025_0:
                        .quad            .Lx00025_0_s
.Lx00025_0_s:
                        .string          ">"
#-----------------------------------------------------------------------------------------------------------------------
# IR_UNOP
xchain00010_n58_α:
                        mov              eax, dword ptr [rbp + 640]
                        cmp              eax, 99
                                                                                        je    xchain00010_n41_af
                        cmp              eax, 0
                                                                                        je    xchain00010_n41_af
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   xchain00010_n61_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_UNOP
xchain00010_n59_α:
                        mov              eax, dword ptr [rbp + 928]
                        cmp              eax, 99
                                                                                        je    xchain00010_n33_af
                        cmp              eax, 0
                                                                                        je    xchain00010_n33_af
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   xchain00010_n62_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00010_n60_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1104] -> [zr+1024]
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1032], rax
# marshal arg1 = producer-box slot [zr+1136] -> [zr+1040]
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1048], rax
# marshal arg2 = producer-box slot [zr+1168] -> [zr+1056]
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1064], rax
# marshal arg3 = producer-box slot [zr+1232] -> [zr+1072]
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1080], rax
                        .section         .rodata
.Lrkfn220:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn220]
                        lea              rsi, [rbp + 1024]
                        mov              edx, 4
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                        cmp              eax, 99
                                                                                        je    xchain00010_n5_α
                                                                                        jmp   xchain00010_n5_α
xchain00010_n60_β:
                                                                                        jmp   xchain00010_n5_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00010_n61_α:
# IR_BINOP_TEST
                        mov              eax, dword ptr [rbp + 544]
                        cmp              eax, 100
                                                                                        je    .Lx00026_0
                        mov              eax, dword ptr [rbp + 608]
                        cmp              eax, 100
                                                                                        je    .Lx00026_0
                        mov              eax, dword ptr [rbp + 544]
                        cmp              eax, 6
                                                                                        jne   .Lx00026_2
                        mov              eax, dword ptr [rbp + 608]
                        cmp              eax, 6
                                                                                        jne   .Lx00026_2
.Lx00026_1:
                        mov              rax, qword ptr [rbp + 552]
                        mov              rcx, qword ptr [rbp + 616]
                        cmp              rax, rcx
                                                                                        jle   xchain00010_n41_af
                        mov              rcx, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 512], rcx
                        mov              rcx, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 520], rcx
                                                                                        jmp   xchain00010_n63_α
.Lx00026_0:
                        mov              rdi, qword ptr [rbp + 544]
                        mov              rsi, qword ptr [rbp + 552]
                        mov              rdx, qword ptr [rbp + 608]
                        mov              rcx, qword ptr [rbp + 616]
                        mov              r8d, 7
                        lea              r9, [rbp + 512]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx00026_1
                        cmp              eax, 1
                                                                                        je    xchain00010_n41_af
                                                                                        jmp   xchain00010_n63_α
.Lx00026_2:
                        mov              rdi, qword ptr [rbp + 544]
                        mov              rsi, qword ptr [rbp + 552]
                        mov              rdx, qword ptr [rbp + 608]
                        mov              rcx, qword ptr [rbp + 616]
                        mov              r8d, 7
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    xchain00010_n41_af
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   xchain00010_n63_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_RANDOM
xchain00010_n62_α:
                        mov              rdi, qword ptr [rbp + 768]
                        mov              rsi, qword ptr [rbp + 776]
                        call             rt_random_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain00010_n33_af
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   xchain00010_n64_α
#-----------------------------------------------------------------------------------------------------------------------
# KEYWORD_read
xchain00010_n63_α:
                        mov              rdi, qword ptr [rip + .Lx00027_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    xchain00010_n5_α
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   xchain00010_n65_α
xchain00010_n63_β:
                                                                                        jmp   xchain00010_n5_α
.Lx00027_0:
                        .quad            .Lx00027_0_s
.Lx00027_0_s:
                        .string          "&errout"
#-----------------------------------------------------------------------------------------------------------------------
# IR_DEREF variable -> value
xchain00010_n64_α:
                        mov              rdi, qword ptr [rbp + 752]
                        mov              rsi, qword ptr [rbp + 760]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    xchain00010_n33_af
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                                                                                        jmp   xchain00010_n66_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain00010_n65_α:
                        mov              qword ptr [rbp + 480], 1
                        mov              rax, qword ptr [rip + .Lx00028_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   xchain00010_n67_α
.Lx00028_0:
                        .quad            .Lx00028_0_s
.Lx00028_0_s:
                        .string          "*** excessive symbols remaining"
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00010_n66_α:
                        mov              rax, qword ptr [rbp + 2320]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 2328]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   xchain00010_n38_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00010_n67_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+448] -> [zr+400]
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 408], rax
# marshal arg1 = producer-box slot [zr+480] -> [zr+416]
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 424], rax
                        .section         .rodata
.Lrkfn229:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn229]
                        lea              rsi, [rbp + 400]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    xchain00010_n5_α
                                                                                        jmp   xchain00010_n5_α
xchain00010_n67_β:
                                                                                        jmp   xchain00010_n5_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00010_n68_α:
                                                                                        jmp   xchain00010_n5_α
xchain00010_n68_β:
                                                                                        jmp   xchain00010_n5_α
#-----------------------------------------------------------------------------------------------------------------------
proc_gener_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_gener_β:
                                                                                        jmp   proc_gener_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_gener_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 2360]
                        lea              rsp, [rbp + 2384]
                        mov              rbp, [rbp + 2376]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_gener_ω:
                        mov              rax, [rbp + 2368]
                        lea              rsp, [rbp + 2384]
                        mov              rbp, [rbp + 2376]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_gener_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
                        pop              r11
                        sub              rsp, 2400
                        mov              qword ptr [rsp + 2392], rbp
                        mov              rbp, rsp
                        add              rbp, 16
                        mov              qword ptr [rbp + 2352], r11
                        lea              rax, [rip + .Lx00029_2]
                        mov              qword ptr [rbp + 2360], rax
                        lea              rax, [rip + .Lx00029_3]
                        mov              qword ptr [rbp + 2368], rax
                        mov              qword ptr [rbp + 2296], rbp
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 2288
                        mov              edx, 2352
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_gener_α_body
.Lx00029_2:
                        mov              rdx, qword ptr [rsp + -2400]
                        mov              rcx, rsp
                        add              rcx, -2384
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00029_3:
                        mov              rdi, qword ptr [rsp + -2400]
                        mov              rsi, rsp
                        add              rsi, -2384
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_generate_α
proc_generate_α:
                        .global          proc_generate_α
                        .global          proc_generate_β
                        .global          proc_generate_γ
                        .global          proc_generate_ω
                        sub              rsp, 1120
                        mov              [rsp + 1096], rcx
                        mov              [rsp + 1104], rdx
                        mov              [rsp + 1112], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 1048], rsp
                        mov              rdi, rsp
                        mov              esi, 1040
                        mov              edx, 1088
                        call             rt_jmp_frame_lexprep2@PLT
proc_generate_α_body:
                        mov              qword ptr [rbp + 768], 0
#-----------------------------------------------------------------------------------------------------------------------
# IR_DISJUNCTION_NARY
xchain00030_n0_α:
                        mov              qword ptr [rbp + 32], 0
                        mov              qword ptr [rbp + 40], 0
                        mov              dword ptr [rbp + 48], 0
                                                                                        jmp   xchain00030_n1_α
xchain00030_n0_as:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 0
                                                                                        jne   .Lx00031_0
                                                                                        jmp   proc_generate_ω
.Lx00031_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00031_1
                                                                                        jmp   proc_generate_ω
.Lx00031_1:
                                                                                        jmp   proc_generate_ω
xchain00030_n0_β:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 0
                                                                                        je    proc_generate_ω
                                                                                        jmp   proc_generate_ω
xchain00030_n0_af:
                        add              dword ptr [rbp + 48], 1
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 1
                                                                                        je    proc_generate_ω
                                                                                        jmp   proc_generate_ω
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00030_n1_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   xchain00030_n3_α
xchain00030_n1_β:
                                                                                        jmp   xchain00030_n0_af
#-----------------------------------------------------------------------------------------------------------------------
xchain00030_n2_α:
                                                                                        jmp   xchain00030_n0_as
xchain00030_n2_β:
                                                                                        jmp   proc_generate_ω
#-----------------------------------------------------------------------------------------------------------------------
# IR_GEN_SCAN
xchain00030_n3_α:
                        mov              rdi, qword ptr [rbp + 1008]
                        mov              rsi, qword ptr [rbp + 1016]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   xchain00030_n4_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain00030_n4_α:
                        mov              qword ptr [rbp + 976], 1
                        mov              rax, qword ptr [rip + .Lx00032_0]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   xchain00030_n5_α
.Lx00032_0:
                        .quad            .Lx00032_0_s
.Lx00032_0_s:
                        .string          "<"
#-----------------------------------------------------------------------------------------------------------------------
# IR_SCAN_MATCH
xchain00030_n5_α:
                        sub              rsp, 16
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1
                                                                                        jge   .Lx00033_239
                        add              rsp, 16
                                                                                        jmp   xchain00030_n7_α
.Lx00033_239:
                        mov              rdi, qword ptr [rip + .Lx00033_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 1
                        push             r10
                        call             memcmp@PLT
                        pop              r10
                        test             eax, eax
                                                                                        je    .Lx00033_240
                        add              rsp, 16
                                                                                        jmp   xchain00030_n7_α
.Lx00033_240:
                        mov              qword ptr [rbp + 944], 6
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   xchain00030_n6_α
.Lx00033_0:
                        .quad            .Lx00033_0_s
.Lx00033_0_s:
                        .string          "<"
#-----------------------------------------------------------------------------------------------------------------------
# IR_SCAN_TAB
xchain00030_n6_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 952]
                        cmp              rax, 1
                                                                                        jge   .Lx00034_0
                        add              rax, r15
                        add              rax, 1
.Lx00034_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00034_239
                        add              rsp, 16
                                                                                        jmp   xchain00030_n7_α
.Lx00034_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00034_240
                        add              rsp, 16
                                                                                        jmp   xchain00030_n7_α
.Lx00034_240:
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
                                                                                        jmp   xchain00030_n8_α
xchain00030_n6_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   xchain00030_n7_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_GEN_SCAN
xchain00030_n7_α:
                        lea              rdi, [rbp + 320]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 320]
                        mov              r14, qword ptr [rbp + 328]
                        mov              r15, qword ptr [rbp + 336]
                                                                                        jmp   xchain00030_n0_af
xchain00030_n7_β:
                                                                                        jmp   xchain00030_n0_af
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain00030_n8_α:
                        mov              qword ptr [rbp + 784], 6
                        mov              rax, qword ptr [rip + .Lx00035_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   xchain00030_n9_α
.Lx00035_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_CHARSET
xchain00030_n9_α:
                        mov              qword ptr [rbp + 880], 1
                        mov              dword ptr [rbp + 884], -1
                        mov              rax, qword ptr [rip + .Lx00036_0]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   xchain00030_n10_α
.Lx00036_0:
                        .quad            .Lx00036_0_s
.Lx00036_0_s:
                        .string          ">"
#-----------------------------------------------------------------------------------------------------------------------
# IR_SCAN_UPTO
xchain00030_n10_α:
                        mov              qword ptr [rbp + 864], r14
.Lx00037_0:
                        mov              rax, qword ptr [rbp + 864]
                        cmp              rax, r15
                                                                                        jge   xchain00030_n6_α
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx00037_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx00037_1
                        mov              qword ptr [rbp + 848], 6
                        add              rax, 1
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   xchain00030_n11_α
.Lx00037_1:
                        inc              qword ptr [rbp + 864]
                                                                                        jmp   .Lx00037_0
xchain00030_n10_β:
                        inc              qword ptr [rbp + 864]
                                                                                        jmp   .Lx00037_0
.Lx00037_2:
                        .quad            .Lx00037_2_s
.Lx00037_2_s:
                        .string          ">"
#-----------------------------------------------------------------------------------------------------------------------
# IR_SCAN_TAB
xchain00030_n11_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 856]
                        cmp              rax, 1
                                                                                        jge   .Lx00038_0
                        add              rax, r15
                        add              rax, 1
.Lx00038_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00038_239
                        add              rsp, 16
                                                                                        jmp   xchain00030_n10_β
.Lx00038_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00038_240
                        add              rsp, 16
                                                                                        jmp   xchain00030_n10_β
.Lx00038_240:
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
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   xchain00030_n12_α
xchain00030_n11_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   xchain00030_n10_β
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIMIT
xchain00030_n12_α:
                        mov              rax, qword ptr [rbp + 768]
                        mov              rcx, qword ptr [rbp + 792]
                        cmp              rax, rcx
                                                                                        jge   xchain00030_n6_α
                        inc              qword ptr [rbp + 768]
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   xchain00030_n13_α
xchain00030_n12_β:
                                                                                        jmp   xchain00030_n11_β
#-----------------------------------------------------------------------------------------------------------------------
xchain00030_n13_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 752]
                        mov              rdx, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   xchain00030_n14_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain00030_n14_α:
                        mov              qword ptr [rbp + 704], 6
                        mov              rax, qword ptr [rip + .Lx00039_0]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   xchain00030_n15_α
.Lx00039_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
xchain00030_n15_α:
                        sub              rsp, 16
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1
                                                                                        jge   .Lx00040_239
                        add              rsp, 16
                                                                                        jmp   xchain00030_n6_α
.Lx00040_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00040_240
                        add              rsp, 16
                                                                                        jmp   xchain00030_n6_α
.Lx00040_240:
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
                                                                                        jmp   xchain00030_n16_α
xchain00030_n15_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   xchain00030_n6_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_DISJUNCTION_NARY
xchain00030_n16_α:
                        mov              qword ptr [rbp + 416], 0
                        mov              qword ptr [rbp + 424], 0
                        mov              dword ptr [rbp + 432], 0
                                                                                        jmp   xchain00030_n18_α
xchain00030_n16_as:
                        mov              eax, dword ptr [rbp + 432]
                        cmp              eax, 0
                                                                                        jne   .Lx00041_0
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   xchain00030_n17_α
.Lx00041_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00041_1
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   xchain00030_n17_α
.Lx00041_1:
                                                                                        jmp   xchain00030_n17_α
xchain00030_n16_β:
                        mov              eax, dword ptr [rbp + 432]
                        cmp              eax, 0
                                                                                        je    xchain00030_n19_β
                                                                                        jmp   xchain00030_n16_af
xchain00030_n16_af:
                        add              dword ptr [rbp + 432], 1
                        mov              eax, dword ptr [rbp + 432]
                        cmp              eax, 1
                                                                                        je    xchain00030_n20_α
                                                                                        jmp   xchain00030_n6_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00030_n17_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   xchain00030_n23_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain00030_n18_α:
                        mov              qword ptr [rbp + 528], 6
                        mov              rax, qword ptr [rip + .Lx00042_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   xchain00030_n24_α
xchain00030_n18_β:
                                                                                        jmp   xchain00030_n16_af
.Lx00042_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
xchain00030_n19_α:
                                                                                        jmp   xchain00030_n16_af
xchain00030_n19_β:
                                                                                        jmp   xchain00030_n16_af
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain00030_n20_α:
                        mov              qword ptr [rbp + 640], 6
                        mov              rax, qword ptr [rip + .Lx00043_0]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   xchain00030_n25_α
xchain00030_n20_β:
                                                                                        jmp   xchain00030_n16_af
.Lx00043_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
xchain00030_n21_α:
                                                                                        jmp   xchain00030_n16_as
xchain00030_n21_β:
                                                                                        jmp   xchain00030_n16_af
#-----------------------------------------------------------------------------------------------------------------------
xchain00030_n22_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+608] -> [zr+576]
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 584], rax
                        .section         .rodata
.Lrkfn268:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn268]
                        lea              rsi, [rbp + 576]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              eax, 99
                                                                                        je    xchain00030_n16_af
                                                                                        jmp   xchain00030_n16_as
xchain00030_n22_β:
                                                                                        jmp   xchain00030_n16_af
#-----------------------------------------------------------------------------------------------------------------------
xchain00030_n23_α:
# IR_CONJUNCTION value-forward copy
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   xchain00030_n26_α
xchain00030_n23_β:
                                                                                        jmp   xchain00030_n7_α
#-----------------------------------------------------------------------------------------------------------------------
# BOX ICN IR_SCAN_POS pos(n) [ICN-SCAN-3 fscan.r: i=cvpos(i,len); succeed iff i==&pos (r14+1); result {DT_I,i} normalized; single-shot beta->omega]
xchain00030_n24_α:
                        mov              rax, 0
                        cmp              rax, 1
                                                                                        jge   .Lx00044_0
                        add              rax, r15
                        add              rax, 1
.Lx00044_0:
                        cmp              rax, 1
                                                                                        jl    xchain00030_n16_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jg    xchain00030_n16_af
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jne   xchain00030_n16_af
                        mov              qword ptr [rbp + 496], 6
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   xchain00030_n27_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_SCAN_TAB
xchain00030_n25_α:
                        sub              rsp, 16
                        mov              rax, 0
                        cmp              rax, 1
                                                                                        jge   .Lx00045_0
                        add              rax, r15
                        add              rax, 1
.Lx00045_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00045_239
                        add              rsp, 16
                                                                                        jmp   xchain00030_n16_af
.Lx00045_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00045_240
                        add              rsp, 16
                                                                                        jmp   xchain00030_n16_af
.Lx00045_240:
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
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   xchain00030_n22_α
xchain00030_n25_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   xchain00030_n16_af
#-----------------------------------------------------------------------------------------------------------------------
# IR_GEN_SCAN
xchain00030_n26_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 360], rax
                        lea              rdi, [rbp + 320]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 320]
                        mov              r14, qword ptr [rbp + 328]
                        mov              r15, qword ptr [rbp + 336]
                                                                                        jmp   xchain00030_n28_α
xchain00030_n26_β:
                                                                                        jmp   xchain00030_n0_af
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain00030_n27_α:
                        mov              qword ptr [rbp + 464], 6
                        mov              rax, qword ptr [rip + .Lx00046_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   xchain00030_n21_α
.Lx00046_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain00030_n28_α:
                        mov              qword ptr [rbp + 112], 6
                        mov              rax, qword ptr [rip + .Lx00047_0]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   xchain00030_n29_α
.Lx00047_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00030_n29_α:
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   xchain00030_n30_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_TO
xchain00030_n30_α:
                        mov              rdi, qword ptr [rbp + 112]
                        mov              rsi, qword ptr [rbp + 120]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 112], 6
                        mov              qword ptr [rbp + 120], rax
                        mov              rdi, qword ptr [rbp + 144]
                        mov              rsi, qword ptr [rbp + 152]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 144], 6
                        mov              qword ptr [rbp + 152], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 96], rax
.Lx00048_0:
                        mov              rax, qword ptr [rbp + 96]
                        mov              rcx, qword ptr [rbp + 152]
                        cmp              rax, rcx
                                                                                        jg    xchain00030_n31_α
                        mov              qword ptr [rbp + 80], 6
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   xchain00030_n32_α
xchain00030_n30_β:
                        inc              qword ptr [rbp + 96]
                                                                                        jmp   .Lx00048_0
#-----------------------------------------------------------------------------------------------------------------------
# IR_RETURN
xchain00030_n31_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_generate_γ
#-----------------------------------------------------------------------------------------------------------------------
# IR_BOUND
xchain00030_n32_α:
                        mov              qword ptr [rbp + 176], rsp
                                                                                        jmp   xchain00030_n33_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00030_n33_α:
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   xchain00030_n34_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00030_n34_α:
                        lea              rsi, [rbp + 272]
                        call             proc_gener_dcα
                                                                                        jmp   .Lx00049_2
.Lx00049_2:
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    xchain00030_n35_α
                                                                                        jmp   xchain00030_n35_α
xchain00030_n34_β:
                                                                                        jmp   xchain00030_n35_α
.Lx00049_0:
                        .quad            .Lx00049_0_s
.Lx00049_0_s:
                        .string          "gener"
#-----------------------------------------------------------------------------------------------------------------------
# IR_UNMARK
xchain00030_n35_α:
                        mov              rsp, qword ptr [rbp + 176]
                                                                                        jmp   xchain00030_n30_β
#-----------------------------------------------------------------------------------------------------------------------
proc_generate_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_generate_β:
                                                                                        jmp   proc_generate_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_generate_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 1096]
                        lea              rsp, [rbp + 1120]
                        mov              rbp, [rbp + 1112]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_generate_ω:
                        mov              rax, [rbp + 1104]
                        lea              rsp, [rbp + 1120]
                        mov              rbp, [rbp + 1112]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_generate_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
                        pop              r11
                        sub              rsp, 1136
                        mov              qword ptr [rsp + 1128], rbp
                        mov              rbp, rsp
                        add              rbp, 16
                        mov              qword ptr [rbp + 1088], r11
                        lea              rax, [rip + .Lx00050_2]
                        mov              qword ptr [rbp + 1096], rax
                        lea              rax, [rip + .Lx00050_3]
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1048], rbp
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 1040
                        mov              edx, 1088
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_generate_α_body
.Lx00050_2:
                        mov              rdx, qword ptr [rsp + -1136]
                        mov              rcx, rsp
                        add              rcx, -1120
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00050_3:
                        mov              rdi, qword ptr [rsp + -1136]
                        mov              rsi, rsp
                        add              rsi, -1120
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_getrhs_α
proc_getrhs_α:
                        .global          proc_getrhs_α
                        .global          proc_getrhs_β
                        .global          proc_getrhs_γ
                        .global          proc_getrhs_ω
                        sub              rsp, 528
                        mov              [rsp + 504], rcx
                        mov              [rsp + 512], rdx
                        mov              [rsp + 520], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 472], rsp
                        mov              rdi, rsp
                        mov              esi, 464
                        mov              edx, 496
                        call             rt_jmp_frame_lexprep2@PLT
proc_getrhs_α_body:
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain00051_n0_α:
                        mov              qword ptr [rbp + 432], 1
                        mov              rax, qword ptr [rip + .Lx00052_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   xchain00051_n1_α
.Lx00052_0:
                        .quad            .Lx00052_0_s
.Lx00052_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
xchain00051_n1_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   xchain00051_n2_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00051_n2_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   xchain00051_n3_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00051_n3_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   xchain00051_n5_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00051_n4_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   xchain00051_n6_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIST_BANG
xchain00051_n5_α:
                        mov              qword ptr [rbp + 336], 0
.Lx00053_0:
                        mov              rdi, qword ptr [rbp + 352]
                        mov              rsi, qword ptr [rbp + 360]
                        mov              rdx, qword ptr [rbp + 336]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              rax, 99
                                                                                        je    xchain00051_n4_α
                                                                                        jmp   xchain00051_n7_α
xchain00051_n5_β:
                        inc              qword ptr [rbp + 336]
                                                                                        jmp   .Lx00053_0
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain00051_n6_α:
                        mov              qword ptr [rbp + 96], 6
                        mov              rax, qword ptr [rip + .Lx00054_0]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   xchain00051_n8_α
.Lx00054_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
xchain00051_n7_α:
                        lea              rsi, [rbp + 320]
                        call             proc_listimage_dcα
                                                                                        jmp   .Lx00055_2
.Lx00055_2:
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    xchain00051_n5_β
                                                                                        jmp   xchain00051_n9_α
xchain00051_n7_β:
                                                                                        jmp   xchain00051_n5_β
.Lx00055_0:
                        .quad            .Lx00055_0_s
.Lx00055_0_s:
                        .string          "listimage"
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain00051_n8_α:
                        mov              qword ptr [rbp + 128], 6
                        mov              rax, qword ptr [rip + .Lx00056_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   xchain00051_n10_α
.Lx00056_0:
                        .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain00051_n9_α:
                        mov              qword ptr [rbp + 384], 1
                        mov              rax, qword ptr [rip + .Lx00057_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   xchain00051_n11_α
.Lx00057_0:
                        .quad            .Lx00057_0_s
.Lx00057_0_s:
                        .string          "|"
#-----------------------------------------------------------------------------------------------------------------------
# IR_SUBSCRIPT section
xchain00051_n10_α:
                        mov              rdi, qword ptr [rbp + 64]
                        mov              rsi, qword ptr [rbp + 72]
                        mov              rdx, qword ptr [rbp + 96]
                        mov              rcx, qword ptr [rbp + 104]
                        mov              r8, qword ptr [rbp + 128]
                        mov              r9, qword ptr [rbp + 136]
                        call             subscript_get2@PLT
                        cmp              eax, 99
                                                                                        je    proc_getrhs_ω
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                                                                                        jmp   xchain00051_n12_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00051_n11_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 272]
                        mov              rsi, qword ptr [rbp + 280]
                        mov              rdx, qword ptr [rbp + 384]
                        mov              rcx, qword ptr [rbp + 392]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   xchain00051_n13_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_RETURN
xchain00051_n12_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_getrhs_γ
#-----------------------------------------------------------------------------------------------------------------------
xchain00051_n13_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 480]
                        mov              rsi, qword ptr [rbp + 488]
                        mov              rdx, qword ptr [rbp + 240]
                        mov              rcx, qword ptr [rbp + 248]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   xchain00051_n14_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00051_n14_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   xchain00051_n5_β
#-----------------------------------------------------------------------------------------------------------------------
proc_getrhs_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_getrhs_β:
                                                                                        jmp   proc_getrhs_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_getrhs_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 504]
                        lea              rsp, [rbp + 528]
                        mov              rbp, [rbp + 520]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_getrhs_ω:
                        mov              rax, [rbp + 512]
                        lea              rsp, [rbp + 528]
                        mov              rbp, [rbp + 520]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_getrhs_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
                        pop              r11
                        sub              rsp, 544
                        mov              qword ptr [rsp + 536], rbp
                        mov              rbp, rsp
                        add              rbp, 16
                        mov              qword ptr [rbp + 496], r11
                        lea              rax, [rip + .Lx00058_2]
                        mov              qword ptr [rbp + 504], rax
                        lea              rax, [rip + .Lx00058_3]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 472], rbp
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 464
                        mov              edx, 496
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_getrhs_α_body
.Lx00058_2:
                        mov              rdx, qword ptr [rsp + -544]
                        mov              rcx, rsp
                        add              rcx, -528
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00058_3:
                        mov              rdi, qword ptr [rsp + -544]
                        mov              rsi, rsp
                        add              rsi, -528
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_grammar_α
proc_grammar_α:
                        .global          proc_grammar_α
                        .global          proc_grammar_β
                        .global          proc_grammar_γ
                        .global          proc_grammar_ω
                        sub              rsp, 2016
                        mov              [rsp + 1992], rcx
                        mov              [rsp + 2000], rdx
                        mov              [rsp + 2008], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 1928], rsp
                        mov              rdi, rsp
                        mov              esi, 1920
                        mov              edx, 1984
                        call             rt_jmp_frame_lexprep2@PLT
proc_grammar_α_body:
#-----------------------------------------------------------------------------------------------------------------------
# IR_DISJUNCTION_NARY
xchain00059_n0_α:
                        mov              qword ptr [rbp + 32], 0
                        mov              qword ptr [rbp + 40], 0
                        mov              dword ptr [rbp + 48], 0
                                                                                        jmp   xchain00059_n1_α
xchain00059_n0_as:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 0
                                                                                        jne   .Lx00060_0
                                                                                        jmp   proc_grammar_ω
.Lx00060_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00060_1
                                                                                        jmp   proc_grammar_ω
.Lx00060_1:
                                                                                        jmp   proc_grammar_ω
xchain00059_n0_β:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 0
                                                                                        je    proc_grammar_ω
                                                                                        jmp   proc_grammar_ω
xchain00059_n0_af:
                        add              dword ptr [rbp + 48], 1
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 1
                                                                                        je    proc_grammar_ω
                                                                                        jmp   proc_grammar_ω
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00059_n1_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1896], rax
                                                                                        jmp   xchain00059_n3_α
xchain00059_n1_β:
                                                                                        jmp   xchain00059_n0_af
#-----------------------------------------------------------------------------------------------------------------------
xchain00059_n2_α:
                                                                                        jmp   xchain00059_n0_as
xchain00059_n2_β:
                                                                                        jmp   proc_grammar_ω
#-----------------------------------------------------------------------------------------------------------------------
# IR_GEN_SCAN
xchain00059_n3_α:
                        mov              rdi, qword ptr [rbp + 1888]
                        mov              rsi, qword ptr [rbp + 1896]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   xchain00059_n4_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain00059_n4_α:
                        mov              qword ptr [rbp + 1856], 1
                        mov              rax, qword ptr [rip + .Lx00061_0]
                        mov              qword ptr [rbp + 1864], rax
                                                                                        jmp   xchain00059_n5_α
.Lx00061_0:
                        .quad            .Lx00061_0_s
.Lx00061_0_s:
                        .string          "->"
#-----------------------------------------------------------------------------------------------------------------------
# IR_SCAN_FIND
xchain00059_n5_α:
                        mov              qword ptr [rbp + 1840], r14
.Lx00062_0:
                        mov              rax, qword ptr [rbp + 1840]
                        mov              rcx, r15
                        sub              rcx, 2
                        cmp              rax, rcx
                                                                                        jg    xchain00059_n11_α
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              rsi, 45
                                                                                        jne   .Lx00062_1
                        mov              rcx, rax
                        add              rcx, 1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              rsi, 62
                                                                                        jne   .Lx00062_1
                        mov              qword ptr [rbp + 1824], 6
                        add              rax, 1
                        mov              qword ptr [rbp + 1832], rax
                                                                                        jmp   xchain00059_n6_α
.Lx00062_1:
                        inc              qword ptr [rbp + 1840]
                                                                                        jmp   .Lx00062_0
xchain00059_n5_β:
                        inc              qword ptr [rbp + 1840]
                                                                                        jmp   .Lx00062_0
#-----------------------------------------------------------------------------------------------------------------------
# IR_SCAN_TAB
xchain00059_n6_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 1832]
                        cmp              rax, 1
                                                                                        jge   .Lx00063_0
                        add              rax, r15
                        add              rax, 1
.Lx00063_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00063_239
                        add              rsp, 16
                                                                                        jmp   xchain00059_n5_β
.Lx00063_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00063_240
                        add              rsp, 16
                                                                                        jmp   xchain00059_n5_β
.Lx00063_240:
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
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                                                                                        jmp   xchain00059_n7_α
xchain00059_n6_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   xchain00059_n5_β
#-----------------------------------------------------------------------------------------------------------------------
xchain00059_n7_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 1792]
                        mov              rdx, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx
                                                                                        jmp   xchain00059_n8_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain00059_n8_α:
                        mov              qword ptr [rbp + 1744], 6
                        mov              rax, qword ptr [rip + .Lx00064_0]
                        mov              qword ptr [rbp + 1752], rax
                                                                                        jmp   xchain00059_n9_α
.Lx00064_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
xchain00059_n9_α:
                        sub              rsp, 16
                        mov              rax, 2
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1
                                                                                        jge   .Lx00065_239
                        add              rsp, 16
                                                                                        jmp   xchain00059_n11_α
.Lx00065_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00065_240
                        add              rsp, 16
                                                                                        jmp   xchain00059_n11_α
.Lx00065_240:
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
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                                                                                        jmp   xchain00059_n10_α
xchain00059_n9_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   xchain00059_n11_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain00059_n10_α:
                        mov              qword ptr [rbp + 1680], 6
                        mov              rax, qword ptr [rip + .Lx00066_0]
                        mov              qword ptr [rbp + 1688], rax
                                                                                        jmp   xchain00059_n12_α
.Lx00066_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
# IR_GEN_SCAN
xchain00059_n11_α:
                        lea              rdi, [rbp + 992]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 992]
                        mov              r14, qword ptr [rbp + 1000]
                        mov              r15, qword ptr [rbp + 1008]
                                                                                        jmp   xchain00059_n0_af
xchain00059_n11_β:
                                                                                        jmp   xchain00059_n0_af
#-----------------------------------------------------------------------------------------------------------------------
# IR_SCAN_TAB
xchain00059_n12_α:
                        sub              rsp, 16
                        mov              rax, 0
                        cmp              rax, 1
                                                                                        jge   .Lx00067_0
                        add              rax, r15
                        add              rax, 1
.Lx00067_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00067_239
                        add              rsp, 16
                                                                                        jmp   xchain00059_n11_α
.Lx00067_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00067_240
                        add              rsp, 16
                                                                                        jmp   xchain00059_n11_α
.Lx00067_240:
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
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx
                                                                                        jmp   xchain00059_n13_α
xchain00059_n12_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   xchain00059_n11_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00059_n13_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 1648]
                        mov              rdx, qword ptr [rbp + 1656]
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                                                                                        jmp   xchain00059_n14_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_DISJUNCTION_NARY
xchain00059_n14_α:
                        mov              qword ptr [rbp + 1088], 0
                        mov              qword ptr [rbp + 1096], 0
                        mov              dword ptr [rbp + 1104], 0
                                                                                        jmp   xchain00059_n16_α
xchain00059_n14_as:
                        mov              eax, dword ptr [rbp + 1104]
                        cmp              eax, 0
                                                                                        jne   .Lx00068_0
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   xchain00059_n15_α
.Lx00068_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00068_1
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   xchain00059_n15_α
.Lx00068_1:
                                                                                        jmp   xchain00059_n15_α
xchain00059_n14_β:
                        mov              eax, dword ptr [rbp + 1104]
                        cmp              eax, 0
                                                                                        je    xchain00059_n11_α
                                                                                        jmp   xchain00059_n17_β
xchain00059_n14_af:
                        add              dword ptr [rbp + 1104], 1
                        mov              eax, dword ptr [rbp + 1104]
                        cmp              eax, 1
                                                                                        je    xchain00059_n17_α
                                                                                        jmp   xchain00059_n11_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00059_n15_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 1088]
                        mov              rdx, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                                                                                        jmp   xchain00059_n19_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00059_n16_α:
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 1224], rax
                                                                                        jmp   xchain00059_n20_α
xchain00059_n16_β:
                                                                                        jmp   xchain00059_n14_af
#-----------------------------------------------------------------------------------------------------------------------
# IR_DISJUNCTION_NARY
xchain00059_n17_α:
                        mov              qword ptr [rbp + 1280], 0
                        mov              qword ptr [rbp + 1288], 0
                        mov              dword ptr [rbp + 1296], 0
                                                                                        jmp   xchain00059_n21_α
xchain00059_n17_as:
                        mov              eax, dword ptr [rbp + 1296]
                        cmp              eax, 0
                                                                                        jne   .Lx00069_0
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1288], rax
                                                                                        jmp   xchain00059_n14_as
.Lx00069_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00069_1
                                                                                        jmp   xchain00059_n14_as
.Lx00069_1:
                                                                                        jmp   xchain00059_n14_as
xchain00059_n17_β:
                        mov              eax, dword ptr [rbp + 1296]
                        cmp              eax, 0
                                                                                        je    xchain00059_n17_af
                                                                                        jmp   xchain00059_n17_af
xchain00059_n17_af:
                        add              dword ptr [rbp + 1296], 1
                        mov              eax, dword ptr [rbp + 1296]
                        cmp              eax, 1
                                                                                        je    xchain00059_n22_α
                                                                                        jmp   xchain00059_n11_α
#-----------------------------------------------------------------------------------------------------------------------
# KEYWORD_read
xchain00059_n18_α:
                        mov              rdi, qword ptr [rip + .Lx00070_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    xchain00059_n11_α
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   xchain00059_n14_as
xchain00059_n18_β:
                                                                                        jmp   xchain00059_n11_α
.Lx00070_0:
                        .quad            .Lx00070_0_s
.Lx00070_0_s:
                        .string          "&output"
#-----------------------------------------------------------------------------------------------------------------------
xchain00059_n19_α:
# IR_CONJUNCTION value-forward copy
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   xchain00059_n25_α
xchain00059_n19_β:
                                                                                        jmp   xchain00059_n11_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_UNOP
xchain00059_n20_α:
                        mov              rdi, qword ptr [rbp + 1952]
                        mov              rsi, qword ptr [rbp + 1960]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                                                                                        jmp   xchain00059_n26_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00059_n21_α:
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 1384], rax
                                                                                        jmp   xchain00059_n27_α
xchain00059_n21_β:
                                                                                        jmp   xchain00059_n17_af
#-----------------------------------------------------------------------------------------------------------------------
# KEYWORD_read
xchain00059_n22_α:
                        mov              rdi, qword ptr [rip + .Lx00071_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    proc_grammar_ω
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                                                                                        jmp   xchain00059_n28_α
xchain00059_n22_β:
                                                                                        jmp   proc_grammar_ω
.Lx00071_0:
                        .quad            .Lx00071_0_s
.Lx00071_0_s:
                        .string          "&errout"
#-----------------------------------------------------------------------------------------------------------------------
xchain00059_n23_α:
# BOX IR_CALL open(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
.Lrkfn351:              .string          "open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn351]
                        lea              rsi, [rbp + 1328]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                        cmp              eax, 99
                                                                                        je    xchain00059_n17_af
                                                                                        jmp   xchain00059_n17_as
xchain00059_n23_β:
                                                                                        jmp   xchain00059_n17_af
#-----------------------------------------------------------------------------------------------------------------------
xchain00059_n24_α:
                                                                                        jmp   xchain00059_n17_as
xchain00059_n24_β:
                                                                                        jmp   xchain00059_n17_af
#-----------------------------------------------------------------------------------------------------------------------
# IR_GEN_SCAN
xchain00059_n25_α:
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1032], rax
                        lea              rdi, [rbp + 992]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 992]
                        mov              r14, qword ptr [rbp + 1000]
                        mov              r15, qword ptr [rbp + 1008]
                                                                                        jmp   xchain00059_n29_α
xchain00059_n25_β:
                                                                                        jmp   xchain00059_n0_af
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain00059_n26_α:
                        mov              qword ptr [rbp + 1248], 6
                        mov              rax, qword ptr [rip + .Lx00072_0]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   xchain00059_n30_α
.Lx00072_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain00059_n27_α:
                        mov              qword ptr [rbp + 1408], 1
                        mov              rax, qword ptr [rip + .Lx00073_0]
                        mov              qword ptr [rbp + 1416], rax
                                                                                        jmp   xchain00059_n23_α
.Lx00073_0:
                        .quad            .Lx00073_0_s
.Lx00073_0_s:
                        .string          "w"
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain00059_n28_α:
                        mov              qword ptr [rbp + 1568], 1
                        mov              rax, qword ptr [rip + .Lx00074_0]
                        mov              qword ptr [rbp + 1576], rax
                                                                                        jmp   xchain00059_n31_α
.Lx00074_0:
                        .quad            .Lx00074_0_s
.Lx00074_0_s:
                        .string          "*** cannot open "
#-----------------------------------------------------------------------------------------------------------------------
# IR_DISJUNCTION_NARY
xchain00059_n29_α:
                        mov              qword ptr [rbp + 448], 0
                        mov              qword ptr [rbp + 456], 0
                        mov              dword ptr [rbp + 464], 0
                                                                                        jmp   xchain00059_n33_α
xchain00059_n29_as:
                        mov              eax, dword ptr [rbp + 464]
                        cmp              eax, 0
                                                                                        jne   .Lx00075_0
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   xchain00059_n32_α
.Lx00075_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00075_1
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   xchain00059_n32_α
.Lx00075_1:
                        cmp              eax, 2
                                                                                        jne   .Lx00075_2
                                                                                        jmp   xchain00059_n32_α
.Lx00075_2:
                                                                                        jmp   xchain00059_n32_α
xchain00059_n29_β:
                        mov              eax, dword ptr [rbp + 464]
                        cmp              eax, 0
                                                                                        je    xchain00059_n29_af
                        cmp              eax, 1
                                                                                        je    xchain00059_n35_β
                                                                                        jmp   xchain00059_n29_af
xchain00059_n29_af:
                        add              dword ptr [rbp + 464], 1
                        mov              eax, dword ptr [rbp + 464]
                        cmp              eax, 1
                                                                                        je    xchain00059_n34_α
                        cmp              eax, 2
                                                                                        je    proc_grammar_ω
                                                                                        jmp   xchain00059_n32_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00059_n30_α:
# IR_BINOP_TEST
                        mov              eax, dword ptr [rbp + 1184]
                        cmp              eax, 100
                                                                                        je    .Lx00076_0
                        mov              eax, dword ptr [rbp + 1248]
                        cmp              eax, 100
                                                                                        je    .Lx00076_0
                        mov              eax, dword ptr [rbp + 1184]
                        cmp              eax, 6
                                                                                        jne   .Lx00076_2
                        mov              eax, dword ptr [rbp + 1248]
                        cmp              eax, 6
                                                                                        jne   .Lx00076_2
.Lx00076_1:
                        mov              rax, qword ptr [rbp + 1192]
                        mov              rcx, qword ptr [rbp + 1256]
                        cmp              rax, rcx
                                                                                        jne   xchain00059_n14_af
                        mov              rcx, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1152], rcx
                        mov              rcx, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1160], rcx
                                                                                        jmp   xchain00059_n18_α
.Lx00076_0:
                        mov              rdi, qword ptr [rbp + 1184]
                        mov              rsi, qword ptr [rbp + 1192]
                        mov              rdx, qword ptr [rbp + 1248]
                        mov              rcx, qword ptr [rbp + 1256]
                        mov              r8d, 9
                        lea              r9, [rbp + 1152]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx00076_1
                        cmp              eax, 1
                                                                                        je    xchain00059_n14_af
                                                                                        jmp   xchain00059_n18_α
.Lx00076_2:
                        mov              rdi, qword ptr [rbp + 1184]
                        mov              rsi, qword ptr [rbp + 1192]
                        mov              rdx, qword ptr [rbp + 1248]
                        mov              rcx, qword ptr [rbp + 1256]
                        mov              r8d, 9
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    xchain00059_n14_af
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   xchain00059_n18_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00059_n31_α:
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 1608], rax
                                                                                        jmp   xchain00059_n38_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00059_n32_α:
                        mov              rax, qword ptr [rbp + 1968]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 1976]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   xchain00059_n39_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00059_n33_α:
                        mov              rax, qword ptr [rbp + 1968]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 1976]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   xchain00059_n41_α
xchain00059_n33_β:
                                                                                        jmp   xchain00059_n29_af
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR_REF
xchain00059_n34_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1968]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   xchain00059_n42_α
xchain00059_n34_β:
                                                                                        jmp   xchain00059_n29_af
#-----------------------------------------------------------------------------------------------------------------------
xchain00059_n35_α:
                                                                                        jmp   xchain00059_n29_af
xchain00059_n35_β:
                                                                                        jmp   xchain00059_n29_af
#-----------------------------------------------------------------------------------------------------------------------
xchain00059_n36_α:
# IR_BINOP_TEST
                        mov              eax, dword ptr [rbp + 512]
                        cmp              eax, 100
                                                                                        je    .Lx00077_0
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 100
                                                                                        je    .Lx00077_0
                        mov              eax, dword ptr [rbp + 512]
                        cmp              eax, 6
                                                                                        jne   .Lx00077_2
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 6
                                                                                        jne   .Lx00077_2
.Lx00077_1:
                        mov              rax, qword ptr [rbp + 520]
                        mov              rcx, qword ptr [rbp + 584]
                        cmp              rax, rcx
                                                                                        jne   xchain00059_n29_af
                        mov              rcx, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 480], rcx
                        mov              rcx, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 488], rcx
                                                                                        jmp   xchain00059_n29_as
.Lx00077_0:
                        mov              rdi, qword ptr [rbp + 512]
                        mov              rsi, qword ptr [rbp + 520]
                        mov              rdx, qword ptr [rbp + 576]
                        mov              rcx, qword ptr [rbp + 584]
                        mov              r8d, 9
                        lea              r9, [rbp + 480]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx00077_1
                        cmp              eax, 1
                                                                                        je    xchain00059_n29_af
                                                                                        jmp   xchain00059_n29_as
.Lx00077_2:
                        mov              rdi, qword ptr [rbp + 512]
                        mov              rsi, qword ptr [rbp + 520]
                        mov              rdx, qword ptr [rbp + 576]
                        mov              rcx, qword ptr [rbp + 584]
                        mov              r8d, 9
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    xchain00059_n29_af
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   xchain00059_n29_as
xchain00059_n36_β:
                                                                                        jmp   xchain00059_n29_af
#-----------------------------------------------------------------------------------------------------------------------
xchain00059_n37_α:
                                                                                        jmp   xchain00059_n29_as
xchain00059_n37_β:
                                                                                        jmp   xchain00059_n29_af
#-----------------------------------------------------------------------------------------------------------------------
xchain00059_n38_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1536] -> [zr+1472]
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 1480], rax
# marshal arg1 = producer-box slot [zr+1568] -> [zr+1488]
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [rbp + 1496], rax
# marshal arg2 = producer-box slot [zr+1600] -> [zr+1504]
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 1512], rax
                        .section         .rodata
.Lrkfn373:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn373]
                        lea              rsi, [rbp + 1472]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                        cmp              eax, 99
                                                                                        je    proc_grammar_ω
                                                                                        jmp   proc_grammar_ω
xchain00059_n38_β:
                                                                                        jmp   proc_grammar_ω
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00059_n39_α:
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   xchain00059_n43_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_DISJUNCTION_NARY
xchain00059_n40_α:
                        mov              qword ptr [rbp + 80], 0
                        mov              qword ptr [rbp + 88], 0
                        mov              dword ptr [rbp + 96], 0
                                                                                        jmp   xchain00059_n45_α
xchain00059_n40_as:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 0
                                                                                        jne   .Lx00078_0
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   xchain00059_n44_α
.Lx00078_0:
                                                                                        jmp   xchain00059_n44_α
xchain00059_n40_β:
                        mov              eax, dword ptr [rbp + 96]
                                                                                        jmp   xchain00059_n44_α
xchain00059_n40_af:
                        add              dword ptr [rbp + 96], 1
                        mov              eax, dword ptr [rbp + 96]
                                                                                        jmp   xchain00059_n44_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_UNOP
xchain00059_n41_α:
                        mov              rdi, qword ptr [rbp + 1968]
                        mov              rsi, qword ptr [rbp + 1976]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   xchain00059_n47_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain00059_n42_α:
                        mov              qword ptr [rbp + 864], 6
                        mov              rax, qword ptr [rip + .Lx00079_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   xchain00059_n48_α
.Lx00079_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
xchain00059_n43_α:
                        lea              rsi, [rbp + 384]
                        lea              rdx, [rbp + 416]
                        call             proc_pwrite_dcα
                                                                                        jmp   .Lx00080_2
.Lx00080_2:
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    xchain00059_n40_α
                                                                                        jmp   xchain00059_n40_α
xchain00059_n43_β:
                                                                                        jmp   xchain00059_n40_α
.Lx00080_0:
                        .quad            .Lx00080_0_s
.Lx00080_0_s:
                        .string          "pwrite"
#-----------------------------------------------------------------------------------------------------------------------
# IR_RETURN
xchain00059_n44_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_grammar_γ
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00059_n45_α:
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   xchain00059_n49_α
xchain00059_n45_β:
                                                                                        jmp   xchain00059_n40_af
#-----------------------------------------------------------------------------------------------------------------------
xchain00059_n46_α:
# BOX IR_CALL close(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+160] -> [zr+128]
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 136], rax
                        .section         .rodata
.Lrkfn386:              .string          "close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn386]
                        lea              rsi, [rbp + 128]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    xchain00059_n44_α
                                                                                        jmp   xchain00059_n40_as
xchain00059_n46_β:
                                                                                        jmp   xchain00059_n44_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain00059_n47_α:
                        mov              qword ptr [rbp + 576], 6
                        mov              rax, qword ptr [rip + .Lx00081_0]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   xchain00059_n36_α
.Lx00081_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
# IR_SUBSCRIPT x[i] variable
xchain00059_n48_α:
                        mov              rdi, qword ptr [rbp + 832]
                        mov              rsi, qword ptr [rbp + 840]
                        mov              rdx, qword ptr [rbp + 864]
                        mov              rcx, qword ptr [rbp + 872]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain00059_n29_af
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                                                                                        jmp   xchain00059_n50_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_UNOP
xchain00059_n49_α:
                        mov              rdi, qword ptr [rbp + 1952]
                        mov              rsi, qword ptr [rbp + 1960]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   xchain00059_n51_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_DEREF variable -> value
xchain00059_n50_α:
                        mov              rdi, qword ptr [rbp + 896]
                        mov              rsi, qword ptr [rbp + 904]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    xchain00059_n29_af
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                                                                                        jmp   xchain00059_n52_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain00059_n51_α:
                        mov              qword ptr [rbp + 288], 6
                        mov              rax, qword ptr [rip + .Lx00082_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   xchain00059_n53_α
.Lx00082_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain00059_n52_α:
                        mov              qword ptr [rbp + 944], 1
                        mov              rax, qword ptr [rip + .Lx00083_0]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   xchain00059_n54_α
.Lx00083_0:
                        .quad            .Lx00083_0_s
.Lx00083_0_s:
                        .string          "<"
#-----------------------------------------------------------------------------------------------------------------------
xchain00059_n53_α:
# IR_BINOP_TEST
                        mov              eax, dword ptr [rbp + 224]
                        cmp              eax, 100
                                                                                        je    .Lx00084_0
                        mov              eax, dword ptr [rbp + 288]
                        cmp              eax, 100
                                                                                        je    .Lx00084_0
                        mov              eax, dword ptr [rbp + 224]
                        cmp              eax, 6
                                                                                        jne   .Lx00084_2
                        mov              eax, dword ptr [rbp + 288]
                        cmp              eax, 6
                                                                                        jne   .Lx00084_2
.Lx00084_1:
                        mov              rax, qword ptr [rbp + 232]
                        mov              rcx, qword ptr [rbp + 296]
                        cmp              rax, rcx
                                                                                        je    xchain00059_n40_af
                        mov              rcx, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 192], rcx
                        mov              rcx, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 200], rcx
                                                                                        jmp   xchain00059_n55_α
.Lx00084_0:
                        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        mov              rdx, qword ptr [rbp + 288]
                        mov              rcx, qword ptr [rbp + 296]
                        mov              r8d, 10
                        lea              r9, [rbp + 192]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx00084_1
                        cmp              eax, 1
                                                                                        je    xchain00059_n40_af
                                                                                        jmp   xchain00059_n55_α
.Lx00084_2:
                        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        mov              rdx, qword ptr [rbp + 288]
                        mov              rcx, qword ptr [rbp + 296]
                        mov              r8d, 10
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    xchain00059_n40_af
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   xchain00059_n55_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00059_n54_α:
# IR_BINOP_TEST
                        mov              rdi, qword ptr [rbp + 928]
                        mov              rsi, qword ptr [rbp + 936]
                        mov              rdx, qword ptr [rbp + 944]
                        mov              rcx, qword ptr [rbp + 952]
                        mov              r8d, 16
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    xchain00059_n29_af
                        mov              rdi, qword ptr [rbp + 944]
                        mov              rsi, qword ptr [rbp + 952]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   xchain00059_n56_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00059_n55_α:
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   xchain00059_n46_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR_REF
xchain00059_n56_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1968]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   xchain00059_n57_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain00059_n57_α:
                        mov              qword ptr [rbp + 688], 6
                        mov              rax, qword ptr [rip + .Lx00085_0]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   xchain00059_n58_α
.Lx00085_0:
                        .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
# IR_SUBSCRIPT x[i] variable
xchain00059_n58_α:
                        mov              rdi, qword ptr [rbp + 656]
                        mov              rsi, qword ptr [rbp + 664]
                        mov              rdx, qword ptr [rbp + 688]
                        mov              rcx, qword ptr [rbp + 696]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain00059_n29_af
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   xchain00059_n59_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_DEREF variable -> value
xchain00059_n59_α:
                        mov              rdi, qword ptr [rbp + 720]
                        mov              rsi, qword ptr [rbp + 728]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    xchain00059_n29_af
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   xchain00059_n60_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain00059_n60_α:
                        mov              qword ptr [rbp + 768], 1
                        mov              rax, qword ptr [rip + .Lx00086_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   xchain00059_n61_α
.Lx00086_0:
                        .quad            .Lx00086_0_s
.Lx00086_0_s:
                        .string          ">"
#-----------------------------------------------------------------------------------------------------------------------
xchain00059_n61_α:
# IR_BINOP_TEST
                        mov              rdi, qword ptr [rbp + 752]
                        mov              rsi, qword ptr [rbp + 760]
                        mov              rdx, qword ptr [rbp + 768]
                        mov              rcx, qword ptr [rbp + 776]
                        mov              r8d, 16
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    xchain00059_n29_af
                        mov              rdi, qword ptr [rbp + 768]
                        mov              rsi, qword ptr [rbp + 776]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   xchain00059_n37_α
#-----------------------------------------------------------------------------------------------------------------------
proc_grammar_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_grammar_β:
                                                                                        jmp   proc_grammar_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_grammar_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 1992]
                        lea              rsp, [rbp + 2016]
                        mov              rbp, [rbp + 2008]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_grammar_ω:
                        mov              rax, [rbp + 2000]
                        lea              rsp, [rbp + 2016]
                        mov              rbp, [rbp + 2008]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_grammar_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
                        pop              r11
                        sub              rsp, 2032
                        mov              qword ptr [rsp + 2024], rbp
                        mov              rbp, rsp
                        add              rbp, 16
                        mov              qword ptr [rbp + 1984], r11
                        lea              rax, [rip + .Lx00087_2]
                        mov              qword ptr [rbp + 1992], rax
                        lea              rax, [rip + .Lx00087_3]
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 1928], rbp
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 1920
                        mov              edx, 1984
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_grammar_α_body
.Lx00087_2:
                        mov              rdx, qword ptr [rsp + -2032]
                        mov              rcx, rsp
                        add              rcx, -2016
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00087_3:
                        mov              rdi, qword ptr [rsp + -2032]
                        mov              rsi, rsp
                        add              rsi, -2016
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_listimage_α
proc_listimage_α:
                        .global          proc_listimage_α
                        .global          proc_listimage_β
                        .global          proc_listimage_γ
                        .global          proc_listimage_ω
                        sub              rsp, 480
                        mov              [rsp + 456], rcx
                        mov              [rsp + 464], rdx
                        mov              [rsp + 472], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 408], rsp
                        mov              rdi, rsp
                        mov              esi, 400
                        mov              edx, 448
                        call             rt_jmp_frame_lexprep2@PLT
proc_listimage_α_body:
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain00088_n0_α:
                        mov              qword ptr [rbp + 368], 1
                        mov              rax, qword ptr [rip + .Lx00089_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   xchain00088_n1_α
.Lx00089_0:
                        .quad            .Lx00089_0_s
.Lx00089_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
xchain00088_n1_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   xchain00088_n2_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00088_n2_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   xchain00088_n3_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIST_BANG
xchain00088_n3_α:
                        mov              qword ptr [rbp + 96], 0
.Lx00090_0:
                        mov              rdi, qword ptr [rbp + 112]
                        mov              rsi, qword ptr [rbp + 120]
                        mov              rdx, qword ptr [rbp + 96]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              rax, 99
                                                                                        je    xchain00088_n4_α
                                                                                        jmp   xchain00088_n5_α
xchain00088_n3_β:
                        inc              qword ptr [rbp + 96]
                                                                                        jmp   .Lx00090_0
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00088_n4_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   xchain00088_n6_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00088_n5_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 80]
                        mov              rdx, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                                                                                        jmp   xchain00088_n7_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_RETURN
xchain00088_n6_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_listimage_γ
#-----------------------------------------------------------------------------------------------------------------------
# IR_BOUND
xchain00088_n7_α:
                        mov              qword ptr [rbp + 144], rsp
                                                                                        jmp   xchain00088_n8_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00088_n8_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   xchain00088_n9_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00088_n9_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   xchain00088_n11_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_UNMARK
xchain00088_n10_α:
                        mov              rsp, qword ptr [rbp + 144]
                                                                                        jmp   xchain00088_n3_β
#-----------------------------------------------------------------------------------------------------------------------
xchain00088_n11_α:
                        lea              rsi, [rbp + 320]
                        call             proc_symimage_dcα
                                                                                        jmp   .Lx00091_2
.Lx00091_2:
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    xchain00088_n10_α
                                                                                        jmp   xchain00088_n12_α
xchain00088_n11_β:
                                                                                        jmp   xchain00088_n10_α
.Lx00091_0:
                        .quad            .Lx00091_0_s
.Lx00091_0_s:
                        .string          "symimage"
#-----------------------------------------------------------------------------------------------------------------------
xchain00088_n12_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 416]
                        mov              rsi, qword ptr [rbp + 424]
                        mov              rdx, qword ptr [rbp + 272]
                        mov              rcx, qword ptr [rbp + 280]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   xchain00088_n13_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00088_n13_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   xchain00088_n10_α
#-----------------------------------------------------------------------------------------------------------------------
proc_listimage_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_listimage_β:
                                                                                        jmp   proc_listimage_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_listimage_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 456]
                        lea              rsp, [rbp + 480]
                        mov              rbp, [rbp + 472]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_listimage_ω:
                        mov              rax, [rbp + 464]
                        lea              rsp, [rbp + 480]
                        mov              rbp, [rbp + 472]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_listimage_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
                        pop              r11
                        sub              rsp, 496
                        mov              qword ptr [rsp + 488], rbp
                        mov              rbp, rsp
                        add              rbp, 16
                        mov              qword ptr [rbp + 448], r11
                        lea              rax, [rip + .Lx00092_2]
                        mov              qword ptr [rbp + 456], rax
                        lea              rax, [rip + .Lx00092_3]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 408], rbp
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 400
                        mov              edx, 448
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_listimage_α_body
.Lx00092_2:
                        mov              rdx, qword ptr [rsp + -496]
                        mov              rcx, rsp
                        add              rcx, -480
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00092_3:
                        mov              rdi, qword ptr [rsp + -496]
                        mov              rsi, rsp
                        add              rsi, -480
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_prompter_α
proc_prompter_α:
                        .global          proc_prompter_α
                        .global          proc_prompter_β
                        .global          proc_prompter_γ
                        .global          proc_prompter_ω
                        sub              rsp, 448
                        mov              [rsp + 424], rcx
                        mov              [rsp + 432], rdx
                        mov              [rsp + 440], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 408], rsp
                        mov              rdi, rsp
                        mov              esi, 400
                        mov              edx, 416
                        call             rt_jmp_frame_lexprep2@PLT
proc_prompter_α_body:
#-----------------------------------------------------------------------------------------------------------------------
# IR_DISJUNCTION_NARY
xchain00093_n0_α:
                        mov              qword ptr [rbp + 32], 0
                        mov              qword ptr [rbp + 40], 0
                        mov              dword ptr [rbp + 48], 0
                                                                                        jmp   xchain00093_n1_α
xchain00093_n0_as:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 0
                                                                                        jne   .Lx00094_0
                                                                                        jmp   proc_prompter_ω
.Lx00094_0:
                                                                                        jmp   proc_prompter_ω
xchain00093_n0_β:
                        mov              eax, dword ptr [rbp + 48]
                                                                                        jmp   proc_prompter_ω
xchain00093_n0_af:
                        add              dword ptr [rbp + 48], 1
                        mov              eax, dword ptr [rbp + 48]
                                                                                        jmp   proc_prompter_ω
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR_REF
xchain00093_n1_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   xchain00093_n3_α
xchain00093_n1_β:
                                                                                        jmp   xchain00093_n0_af
#-----------------------------------------------------------------------------------------------------------------------
xchain00093_n2_α:
                                                                                        jmp   xchain00093_n0_as
xchain00093_n2_β:
                                                                                        jmp   proc_prompter_ω
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain00093_n3_α:
                        mov              qword ptr [rbp + 288], 6
                        mov              rax, qword ptr [rip + .Lx00095_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   xchain00093_n4_α
.Lx00095_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
# IR_SUBSCRIPT x[i] variable
xchain00093_n4_α:
                        mov              rdi, qword ptr [rbp + 256]
                        mov              rsi, qword ptr [rbp + 264]
                        mov              rdx, qword ptr [rbp + 288]
                        mov              rcx, qword ptr [rbp + 296]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain00093_n0_af
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   xchain00093_n5_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_DEREF variable -> value
xchain00093_n5_α:
                        mov              rdi, qword ptr [rbp + 320]
                        mov              rsi, qword ptr [rbp + 328]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    xchain00093_n0_af
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   xchain00093_n6_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain00093_n6_α:
                        mov              qword ptr [rbp + 368], 1
                        mov              rax, qword ptr [rip + .Lx00096_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   xchain00093_n7_α
.Lx00096_0:
                        .quad            .Lx00096_0_s
.Lx00096_0_s:
                        .string          "="
#-----------------------------------------------------------------------------------------------------------------------
xchain00093_n7_α:
# IR_BINOP_TEST
                        mov              rdi, qword ptr [rbp + 352]
                        mov              rsi, qword ptr [rbp + 360]
                        mov              rdx, qword ptr [rbp + 368]
                        mov              rcx, qword ptr [rbp + 376]
                        mov              r8d, 16
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    xchain00093_n0_af
                        mov              rdi, qword ptr [rbp + 368]
                        mov              rsi, qword ptr [rbp + 376]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   xchain00093_n8_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00093_n8_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   xchain00093_n9_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain00093_n9_α:
                        mov              qword ptr [rbp + 160], 6
                        mov              rax, qword ptr [rip + .Lx00097_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   xchain00093_n11_α
.Lx00097_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
# IR_RETURN
xchain00093_n10_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_prompter_γ
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain00093_n11_α:
                        mov              qword ptr [rbp + 192], 6
                        mov              rax, qword ptr [rip + .Lx00098_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   xchain00093_n12_α
.Lx00098_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
# IR_SUBSCRIPT section
xchain00093_n12_α:
                        mov              rdi, qword ptr [rbp + 128]
                        mov              rsi, qword ptr [rbp + 136]
                        mov              rdx, qword ptr [rbp + 160]
                        mov              rcx, qword ptr [rbp + 168]
                        mov              r8, qword ptr [rbp + 192]
                        mov              r9, qword ptr [rbp + 200]
                        call             subscript_get2@PLT
                        cmp              eax, 99
                                                                                        je    xchain00093_n10_α
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   xchain00093_n13_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain00093_n13_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              rdx, qword ptr [rbp + 104]
                        mov              qword ptr [1879052352], rax
                        mov              qword ptr [1879052360], rdx
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   xchain00093_n10_α
#-----------------------------------------------------------------------------------------------------------------------
proc_prompter_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_prompter_β:
                                                                                        jmp   proc_prompter_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_prompter_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 424]
                        lea              rsp, [rbp + 448]
                        mov              rbp, [rbp + 440]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_prompter_ω:
                        mov              rax, [rbp + 432]
                        lea              rsp, [rbp + 448]
                        mov              rbp, [rbp + 440]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_prompter_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
                        pop              r11
                        sub              rsp, 464
                        mov              qword ptr [rsp + 456], rbp
                        mov              rbp, rsp
                        add              rbp, 16
                        mov              qword ptr [rbp + 416], r11
                        lea              rax, [rip + .Lx00099_2]
                        mov              qword ptr [rbp + 424], rax
                        lea              rax, [rip + .Lx00099_3]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 408], rbp
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 400
                        mov              edx, 416
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_prompter_α_body
.Lx00099_2:
                        mov              rdx, qword ptr [rsp + -464]
                        mov              rcx, rsp
                        add              rcx, -448
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00099_3:
                        mov              rdi, qword ptr [rsp + -464]
                        mov              rsi, rsp
                        add              rsi, -448
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pwrite_α
proc_pwrite_α:
                        .global          proc_pwrite_α
                        .global          proc_pwrite_β
                        .global          proc_pwrite_γ
                        .global          proc_pwrite_ω
                        sub              rsp, 2384
                        mov              [rsp + 2360], rcx
                        mov              [rsp + 2368], rdx
                        mov              [rsp + 2376], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 2312], rsp
                        mov              rdi, rsp
                        mov              esi, 2304
                        mov              edx, 2352
                        call             rt_jmp_frame_lexprep2@PLT
proc_pwrite_α_body:
#-----------------------------------------------------------------------------------------------------------------------
# IR_DISJUNCTION_NARY
xchain00100_n0_α:
                        mov              qword ptr [rbp + 1744], 0
                        mov              qword ptr [rbp + 1752], 0
                        mov              dword ptr [rbp + 1760], 0
                                                                                        jmp   xchain00100_n2_α
xchain00100_n0_as:
                        mov              eax, dword ptr [rbp + 1760]
                        cmp              eax, 0
                                                                                        jne   .Lx00101_0
                        mov              rax, qword ptr [rbp + 1776]
                        mov              qword ptr [rbp + 1744], rax
                        mov              rax, qword ptr [rbp + 1784]
                        mov              qword ptr [rbp + 1752], rax
                                                                                        jmp   xchain00100_n1_α
.Lx00101_0:
                                                                                        jmp   xchain00100_n1_α
xchain00100_n0_β:
                        mov              eax, dword ptr [rbp + 1760]
                                                                                        jmp   xchain00100_n1_α
xchain00100_n0_af:
                        add              dword ptr [rbp + 1760], 1
                        mov              eax, dword ptr [rbp + 1760]
                                                                                        jmp   xchain00100_n1_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_DISJUNCTION_NARY
xchain00100_n1_α:
                        mov              qword ptr [rbp + 48], 0
                        mov              qword ptr [rbp + 56], 0
                        mov              dword ptr [rbp + 64], 0
                                                                                        jmp   xchain00100_n4_α
xchain00100_n1_as:
                        mov              eax, dword ptr [rbp + 64]
                        cmp              eax, 0
                                                                                        jne   .Lx00102_0
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   proc_pwrite_ω
.Lx00102_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00102_1
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   proc_pwrite_ω
.Lx00102_1:
                                                                                        jmp   proc_pwrite_ω
xchain00100_n1_β:
                        mov              eax, dword ptr [rbp + 64]
                        cmp              eax, 0
                                                                                        je    xchain00100_n5_β
                                                                                        jmp   xchain00100_n6_β
xchain00100_n1_af:
                        add              dword ptr [rbp + 64], 1
                        mov              eax, dword ptr [rbp + 64]
                        cmp              eax, 1
                                                                                        je    xchain00100_n6_α
                                                                                        jmp   proc_pwrite_ω
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR_REF
xchain00100_n2_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052448
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx
                                                                                        jmp   xchain00100_n8_α
xchain00100_n2_β:
                                                                                        jmp   xchain00100_n0_af
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain00100_n3_α:
                        mov              rax, qword ptr [rbp + 1792]
                        mov              rdx, qword ptr [rbp + 1800]
                        mov              qword ptr [1879052432], rax
                        mov              qword ptr [1879052440], rdx
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx
                                                                                        jmp   xchain00100_n0_as
xchain00100_n3_β:
                                                                                        jmp   xchain00100_n1_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00100_n4_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   xchain00100_n9_α
xchain00100_n4_β:
                                                                                        jmp   xchain00100_n1_af
#-----------------------------------------------------------------------------------------------------------------------
xchain00100_n5_α:
                                                                                        jmp   xchain00100_n10_α
xchain00100_n5_β:
                                                                                        jmp   xchain00100_n10_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_DISJUNCTION_NARY
xchain00100_n6_α:
                        mov              qword ptr [rbp + 1104], 0
                        mov              qword ptr [rbp + 1112], 0
                        mov              dword ptr [rbp + 1120], 0
                                                                                        jmp   xchain00100_n11_α
xchain00100_n6_as:
                        mov              eax, dword ptr [rbp + 1120]
                        cmp              eax, 0
                                                                                        jne   .Lx00103_0
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   xchain00100_n1_as
.Lx00103_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00103_1
                        mov              rax, qword ptr [rbp + 1616]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1624]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   xchain00100_n1_as
.Lx00103_1:
                                                                                        jmp   xchain00100_n1_as
xchain00100_n6_β:
                        mov              eax, dword ptr [rbp + 1120]
                        cmp              eax, 0
                                                                                        je    xchain00100_n6_af
                                                                                        jmp   xchain00100_n6_af
xchain00100_n6_af:
                        add              dword ptr [rbp + 1120], 1
                        mov              eax, dword ptr [rbp + 1120]
                        cmp              eax, 1
                                                                                        je    xchain00100_n12_α
                                                                                        jmp   proc_pwrite_ω
#-----------------------------------------------------------------------------------------------------------------------
xchain00100_n7_α:
                                                                                        jmp   xchain00100_n1_as
xchain00100_n7_β:
                                                                                        jmp   proc_pwrite_ω
#-----------------------------------------------------------------------------------------------------------------------
# IR_NULLTEST_VAR
xchain00100_n8_α:
                        mov              eax, dword ptr [rbp + 2192]
                        cmp              eax, 99
                                                                                        je    xchain00100_n0_af
                        mov              rdi, qword ptr [rbp + 2192]
                        mov              rsi, qword ptr [rbp + 2200]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    xchain00100_n0_af
                        cmp              eax, 0
                                                                                        jne   xchain00100_n0_af
                        mov              rax, qword ptr [rbp + 2192]
                        mov              qword ptr [rbp + 2224], rax
                        mov              rax, qword ptr [rbp + 2200]
                        mov              qword ptr [rbp + 2232], rax
                                                                                        jmp   xchain00100_n15_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_UNOP
xchain00100_n9_α:
                        mov              rdi, qword ptr [rbp + 16]
                        mov              rsi, qword ptr [rbp + 24]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   xchain00100_n16_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00100_n10_α:
                        mov              rax, qword ptr [rbp + 2336]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 2344]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   xchain00100_n17_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00100_n11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1240], rax
                                                                                        jmp   xchain00100_n18_α
xchain00100_n11_β:
                                                                                        jmp   xchain00100_n6_af
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain00100_n12_α:
                        mov              qword ptr [rbp + 1680], 1
                        mov              rax, qword ptr [rip + .Lx00104_0]
                        mov              qword ptr [rbp + 1688], rax
                                                                                        jmp   xchain00100_n19_α
xchain00100_n12_β:
                                                                                        jmp   xchain00100_n6_af
.Lx00104_0:
                        .quad            .Lx00104_0_s
.Lx00104_0_s:
                        .string          "*** undefined nonterminal:  "
#-----------------------------------------------------------------------------------------------------------------------
xchain00100_n13_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1232] -> [zr+1152]
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1160], rax
# marshal arg1 = producer-box slot [zr+1264] -> [zr+1168]
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1176], rax
# marshal arg2 = producer-box slot [zr+1296] -> [zr+1184]
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1192], rax
# marshal arg3 = producer-box slot [zr+1328] -> [zr+1200]
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1208], rax
                        .section         .rodata
.Lrkfn470:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn470]
                        lea              rsi, [rbp + 1152]
                        mov              edx, 4
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                        cmp              eax, 99
                                                                                        je    xchain00100_n6_af
                                                                                        jmp   xchain00100_n6_as
xchain00100_n13_β:
                                                                                        jmp   xchain00100_n6_af
#-----------------------------------------------------------------------------------------------------------------------
xchain00100_n14_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1680] -> [zr+1632]
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1640], rax
# marshal arg1 = producer-box slot [zr+1712] -> [zr+1648]
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 1656], rax
                        .section         .rodata
.Lrkfn472:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn472]
                        lea              rsi, [rbp + 1632]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                        cmp              eax, 99
                                                                                        je    xchain00100_n6_af
                                                                                        jmp   xchain00100_n6_as
xchain00100_n14_β:
                                                                                        jmp   xchain00100_n6_af
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain00100_n15_α:
                        mov              qword ptr [rbp + 2272], 6
                        mov              rax, qword ptr [rip + .Lx00105_0]
                        mov              qword ptr [rbp + 2280], rax
                                                                                        jmp   xchain00100_n20_α
.Lx00105_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain00100_n16_α:
                        mov              qword ptr [rbp + 1072], 6
                        mov              rax, qword ptr [rip + .Lx00106_0]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   xchain00100_n21_α
.Lx00106_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
xchain00100_n17_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+160] -> [zr+128]
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 136], rax
                        .section         .rodata
.Lrkfn476:              .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn476]
                        lea              rsi, [rbp + 128]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    proc_pwrite_ω
                                                                                        jmp   xchain00100_n22_α
xchain00100_n17_β:
                                                                                        jmp   proc_pwrite_ω
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00100_n18_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   xchain00100_n23_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00100_n19_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1712], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1720], rax
                                                                                        jmp   xchain00100_n14_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN_VAR
xchain00100_n20_α:
                        mov              rdi, qword ptr [rbp + 2224]
                        mov              rsi, qword ptr [rbp + 2232]
                        mov              rdx, qword ptr [rbp + 2272]
                        mov              rcx, qword ptr [rbp + 2280]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain00100_n0_af
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx
                                                                                        jmp   xchain00100_n24_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00100_n21_α:
# IR_BINOP_TEST
                        mov              eax, dword ptr [rbp + 1008]
                        cmp              eax, 100
                                                                                        je    .Lx00107_0
                        mov              eax, dword ptr [rbp + 1072]
                        cmp              eax, 100
                                                                                        je    .Lx00107_0
                        mov              eax, dword ptr [rbp + 1008]
                        cmp              eax, 6
                                                                                        jne   .Lx00107_2
                        mov              eax, dword ptr [rbp + 1072]
                        cmp              eax, 6
                                                                                        jne   .Lx00107_2
.Lx00107_1:
                        mov              rax, qword ptr [rbp + 1016]
                        mov              rcx, qword ptr [rbp + 1080]
                        cmp              rax, rcx
                                                                                        jne   xchain00100_n1_af
                        mov              rcx, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 976], rcx
                        mov              rcx, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 984], rcx
                                                                                        jmp   xchain00100_n25_α
.Lx00107_0:
                        mov              rdi, qword ptr [rbp + 1008]
                        mov              rsi, qword ptr [rbp + 1016]
                        mov              rdx, qword ptr [rbp + 1072]
                        mov              rcx, qword ptr [rbp + 1080]
                        mov              r8d, 9
                        lea              r9, [rbp + 976]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx00107_1
                        cmp              eax, 1
                                                                                        je    xchain00100_n1_af
                                                                                        jmp   xchain00100_n25_α
.Lx00107_2:
                        mov              rdi, qword ptr [rbp + 1008]
                        mov              rsi, qword ptr [rbp + 1016]
                        mov              rdx, qword ptr [rbp + 1072]
                        mov              rcx, qword ptr [rbp + 1080]
                        mov              r8d, 9
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    xchain00100_n1_af
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   xchain00100_n25_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00100_n22_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   xchain00100_n26_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain00100_n23_α:
                        mov              qword ptr [rbp + 1296], 1
                        mov              rax, qword ptr [rip + .Lx00108_0]
                        mov              qword ptr [rbp + 1304], rax
                                                                                        jmp   xchain00100_n27_α
.Lx00108_0:
                        .quad            .Lx00108_0_s
.Lx00108_0_s:
                        .string          "::="
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain00100_n24_α:
                        mov              qword ptr [rbp + 1936], 1
                        mov              rax, qword ptr [rip + .Lx00109_0]
                        mov              qword ptr [rbp + 1944], rax
                                                                                        jmp   xchain00100_n28_α
.Lx00109_0:
                        .quad            .Lx00109_0_s
.Lx00109_0_s:
                        .string          "lb"
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00100_n25_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                                                                                        jmp   xchain00100_n29_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_DISJUNCTION_NARY
xchain00100_n26_α:
                        mov              qword ptr [rbp + 576], 0
                        mov              qword ptr [rbp + 584], 0
                        mov              dword ptr [rbp + 592], 0
                                                                                        jmp   xchain00100_n31_α
xchain00100_n26_as:
                        mov              eax, dword ptr [rbp + 592]
                        cmp              eax, 0
                                                                                        jne   .Lx00110_0
                                                                                        jmp   xchain00100_n30_α
.Lx00110_0:
                                                                                        jmp   xchain00100_n30_α
xchain00100_n26_β:
                        mov              eax, dword ptr [rbp + 592]
                                                                                        jmp   xchain00100_n30_α
xchain00100_n26_af:
                        add              dword ptr [rbp + 592], 1
                        mov              eax, dword ptr [rbp + 592]
                                                                                        jmp   xchain00100_n30_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR_REF
xchain00100_n27_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052288
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                                                                                        jmp   xchain00100_n33_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain00100_n28_α:
                        mov              qword ptr [rbp + 1968], 1
                        mov              rax, qword ptr [rip + .Lx00111_0]
                        mov              qword ptr [rbp + 1976], rax
                                                                                        jmp   xchain00100_n34_α
.Lx00111_0:
                        .quad            .Lx00111_0_s
.Lx00111_0_s:
                        .string          "rb"
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain00100_n29_α:
                        mov              qword ptr [rbp + 944], 6
                        mov              rax, qword ptr [rip + .Lx00112_0]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   xchain00100_n35_α
.Lx00112_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00100_n30_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   xchain00100_n36_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00100_n31_α:
                        mov              rax, qword ptr [rbp + 2320]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 2328]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   xchain00100_n37_α
xchain00100_n31_β:
                                                                                        jmp   xchain00100_n26_af
#-----------------------------------------------------------------------------------------------------------------------
xchain00100_n32_α:
                                                                                        jmp   xchain00100_n26_as
xchain00100_n32_β:
                                                                                        jmp   xchain00100_n30_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00100_n33_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1480], rax
                                                                                        jmp   xchain00100_n38_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain00100_n34_α:
                        mov              qword ptr [rbp + 2000], 1
                        mov              rax, qword ptr [rip + .Lx00113_0]
                        mov              qword ptr [rbp + 2008], rax
                                                                                        jmp   xchain00100_n39_α
.Lx00113_0:
                        .quad            .Lx00113_0_s
.Lx00113_0_s:
                        .string          "vb"
#-----------------------------------------------------------------------------------------------------------------------
xchain00100_n35_α:
# BOX IR_CALL sort(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+912] -> [zr+864]
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 872], rax
# marshal arg1 = producer-box slot [zr+944] -> [zr+880]
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 888], rax
                        .section         .rodata
.Lrkfn502:              .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn502]
                        lea              rsi, [rbp + 864]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                        cmp              eax, 99
                                                                                        je    xchain00100_n10_α
                                                                                        jmp   xchain00100_n40_α
xchain00100_n35_β:
                                                                                        jmp   xchain00100_n10_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain00100_n36_α:
                        mov              qword ptr [rbp + 352], 1
                        mov              rax, qword ptr [rip + .Lx00114_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   xchain00100_n41_α
.Lx00114_0:
                        .quad            .Lx00114_0_s
.Lx00114_0_s:
                        .string          "<"
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00100_n37_α:
                        mov              rax, qword ptr [1879052432]
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   xchain00100_n42_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain00100_n38_α:
                        mov              qword ptr [rbp + 1504], 6
                        mov              rax, qword ptr [rip + .Lx00115_0]
                        mov              qword ptr [rbp + 1512], rax
                                                                                        jmp   xchain00100_n43_α
.Lx00115_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain00100_n39_α:
                        mov              qword ptr [rbp + 2032], 1
                        mov              rax, qword ptr [rip + .Lx00116_0]
                        mov              qword ptr [rbp + 2040], rax
                                                                                        jmp   xchain00100_n44_α
.Lx00116_0:
                        .quad            .Lx00116_0_s
.Lx00116_0_s:
                        .string          "nl"
#-----------------------------------------------------------------------------------------------------------------------
xchain00100_n40_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 848]
                        mov              rdx, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   xchain00100_n10_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00100_n41_α:
                        mov              rax, qword ptr [rbp + 2320]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 2328]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   xchain00100_n45_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIST_BANG
xchain00100_n42_α:
                        mov              qword ptr [rbp + 784], 0
.Lx00117_0:
                        mov              rdi, qword ptr [rbp + 800]
                        mov              rsi, qword ptr [rbp + 808]
                        mov              rdx, qword ptr [rbp + 784]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        cmp              rax, 99
                                                                                        je    xchain00100_n26_af
                                                                                        jmp   xchain00100_n46_α
xchain00100_n42_β:
                        inc              qword ptr [rbp + 784]
                                                                                        jmp   .Lx00117_0
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain00100_n43_α:
                        mov              qword ptr [rbp + 1536], 6
                        mov              rax, qword ptr [rip + .Lx00118_0]
                        mov              qword ptr [rbp + 1544], rax
                                                                                        jmp   xchain00100_n47_α
.Lx00118_0:
                        .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain00100_n44_α:
                        mov              qword ptr [rbp + 2064], 1
                        mov              rax, qword ptr [rip + .Lx00119_0]
                        mov              qword ptr [rbp + 2072], rax
                                                                                        jmp   xchain00100_n48_α
.Lx00119_0:
                        .quad            .Lx00119_0_s
.Lx00119_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain00100_n45_α:
                        mov              qword ptr [rbp + 416], 1
                        mov              rax, qword ptr [rip + .Lx00120_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   xchain00100_n49_α
.Lx00120_0:
                        .quad            .Lx00120_0_s
.Lx00120_0_s:
                        .string          ">::="
#-----------------------------------------------------------------------------------------------------------------------
xchain00100_n46_α:
# IR_BINOP_TEST
                        mov              rdi, qword ptr [rbp + 2320]
                        mov              rsi, qword ptr [rbp + 2328]
                        mov              rdx, qword ptr [rbp + 768]
                        mov              rcx, qword ptr [rbp + 776]
                        mov              r8d, 16
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    xchain00100_n42_β
                        mov              rdi, qword ptr [rbp + 768]
                        mov              rsi, qword ptr [rbp + 776]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   xchain00100_n50_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_SUBSCRIPT section
xchain00100_n47_α:
                        mov              rdi, qword ptr [rbp + 1472]
                        mov              rsi, qword ptr [rbp + 1480]
                        mov              rdx, qword ptr [rbp + 1504]
                        mov              rcx, qword ptr [rbp + 1512]
                        mov              r8, qword ptr [rbp + 1536]
                        mov              r9, qword ptr [rbp + 1544]
                        call             subscript_get2@PLT
                        cmp              eax, 99
                                                                                        je    xchain00100_n6_af
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                                                                                        jmp   xchain00100_n51_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain00100_n48_α:
                        mov              qword ptr [rbp + 2096], 1
                        mov              rax, qword ptr [rip + .Lx00121_0]
                        mov              qword ptr [rbp + 2104], rax
                                                                                        jmp   xchain00100_n52_α
.Lx00121_0:
                        .quad            .Lx00121_0_s
.Lx00121_0_s:
                        .string          "&lcase"
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00100_n49_α:
                        mov              rax, qword ptr [rbp + 2336]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 2344]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   xchain00100_n53_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00100_n50_α:
                        mov              rax, qword ptr [rbp + 2336]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 2344]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   xchain00100_n54_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_SUBSCRIPT x[i] variable
xchain00100_n51_α:
                        mov              rdi, qword ptr [rbp + 1408]
                        mov              rsi, qword ptr [rbp + 1416]
                        mov              rdx, qword ptr [rbp + 1440]
                        mov              rcx, qword ptr [rbp + 1448]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain00100_n6_af
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                                                                                        jmp   xchain00100_n56_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain00100_n52_α:
                        mov              qword ptr [rbp + 2128], 1
                        mov              rax, qword ptr [rip + .Lx00122_0]
                        mov              qword ptr [rbp + 2136], rax
                                                                                        jmp   xchain00100_n57_α
.Lx00122_0:
                        .quad            .Lx00122_0_s
.Lx00122_0_s:
                        .string          "&ucase"
#-----------------------------------------------------------------------------------------------------------------------
xchain00100_n53_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+544] -> [zr+512]
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 520], rax
                        .section         .rodata
.Lrkfn525:              .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn525]
                        lea              rsi, [rbp + 512]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    xchain00100_n10_α
                                                                                        jmp   xchain00100_n58_α
xchain00100_n53_β:
                                                                                        jmp   xchain00100_n10_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00100_n54_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+672] -> [zr+640]
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 648], rax
                        .section         .rodata
.Lrkfn527:              .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn527]
                        lea              rsi, [rbp + 640]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              eax, 99
                                                                                        je    xchain00100_n10_α
                                                                                        jmp   xchain00100_n10_α
xchain00100_n54_β:
                                                                                        jmp   xchain00100_n10_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00100_n55_α:
                                                                                        jmp   xchain00100_n10_α
xchain00100_n55_β:
                                                                                        jmp   xchain00100_n10_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_DEREF variable -> value
xchain00100_n56_α:
                        mov              rdi, qword ptr [rbp + 1568]
                        mov              rsi, qword ptr [rbp + 1576]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    xchain00100_n6_af
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                                                                                        jmp   xchain00100_n59_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain00100_n57_α:
                        mov              qword ptr [rbp + 2160], 1
                        mov              rax, qword ptr [rip + .Lx00123_0]
                        mov              qword ptr [rbp + 2168], rax
                                                                                        jmp   xchain00100_n60_α
.Lx00123_0:
                        .quad            .Lx00123_0_s
.Lx00123_0_s:
                        .string          "&digit"
#-----------------------------------------------------------------------------------------------------------------------
xchain00100_n58_α:
                        lea              rsi, [rbp + 496]
                        call             proc_getrhs_dcα
                                                                                        jmp   .Lx00124_2
.Lx00124_2:
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              eax, 99
                                                                                        je    xchain00100_n10_α
                                                                                        jmp   xchain00100_n61_α
xchain00100_n58_β:
                                                                                        jmp   xchain00100_n10_α
.Lx00124_0:
                        .quad            .Lx00124_0_s
.Lx00124_0_s:
                        .string          "getrhs"
#-----------------------------------------------------------------------------------------------------------------------
# IR_UNOP
xchain00100_n59_α:
                        mov              eax, dword ptr [rbp + 1600]
                        cmp              eax, 99
                                                                                        je    xchain00100_n6_af
                        cmp              eax, 0
                                                                                        je    xchain00100_n6_af
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 1384], rax
                                                                                        jmp   xchain00100_n62_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_MAKE_LIST
xchain00100_n60_α:
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 1816], rax
                        mov              rax, qword ptr [rbp + 1968]
                        mov              qword ptr [rbp + 1824], rax
                        mov              rax, qword ptr [rbp + 1976]
                        mov              qword ptr [rbp + 1832], rax
                        mov              rax, qword ptr [rbp + 2000]
                        mov              qword ptr [rbp + 1840], rax
                        mov              rax, qword ptr [rbp + 2008]
                        mov              qword ptr [rbp + 1848], rax
                        mov              rax, qword ptr [rbp + 2032]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 2040]
                        mov              qword ptr [rbp + 1864], rax
                        mov              rax, qword ptr [rbp + 2064]
                        mov              qword ptr [rbp + 1872], rax
                        mov              rax, qword ptr [rbp + 2072]
                        mov              qword ptr [rbp + 1880], rax
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 1896], rax
                        mov              rax, qword ptr [rbp + 2128]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 1912], rax
                        mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 1928], rax
                        lea              rdi, [rbp + 1808]
                        mov              esi, 8
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                                                                                        jmp   xchain00100_n3_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00100_n61_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+320] -> [zr+224]
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 232], rax
# marshal arg1 = producer-box slot [zr+352] -> [zr+240]
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 248], rax
# marshal arg2 = producer-box slot [zr+384] -> [zr+256]
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 264], rax
# marshal arg3 = producer-box slot [zr+416] -> [zr+272]
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 280], rax
# marshal arg4 = producer-box slot [zr+448] -> [zr+288]
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 296], rax
                        .section         .rodata
.Lrkfn537:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn537]
                        lea              rsi, [rbp + 224]
                        mov              edx, 5
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    xchain00100_n10_α
                                                                                        jmp   xchain00100_n63_α
xchain00100_n61_β:
                                                                                        jmp   xchain00100_n10_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00100_n62_α:
                        lea              rsi, [rbp + 1376]
                        call             proc_getrhs_dcα
                                                                                        jmp   .Lx00125_2
.Lx00125_2:
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                        cmp              eax, 99
                                                                                        je    xchain00100_n6_af
                                                                                        jmp   xchain00100_n13_α
xchain00100_n62_β:
                                                                                        jmp   xchain00100_n6_af
.Lx00125_0:
                        .quad            .Lx00125_0_s
.Lx00125_0_s:
                        .string          "getrhs"
#-----------------------------------------------------------------------------------------------------------------------
xchain00100_n63_α:
# IR_CONJUNCTION value-forward copy
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   xchain00100_n10_α
xchain00100_n63_β:
                                                                                        jmp   xchain00100_n10_α
#-----------------------------------------------------------------------------------------------------------------------
proc_pwrite_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pwrite_β:
                                                                                        jmp   proc_pwrite_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_pwrite_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 2360]
                        lea              rsp, [rbp + 2384]
                        mov              rbp, [rbp + 2376]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pwrite_ω:
                        mov              rax, [rbp + 2368]
                        lea              rsp, [rbp + 2384]
                        mov              rbp, [rbp + 2376]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pwrite_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
                        pop              r11
                        sub              rsp, 2400
                        mov              qword ptr [rsp + 2392], rbp
                        mov              rbp, rsp
                        add              rbp, 16
                        mov              qword ptr [rbp + 2352], r11
                        lea              rax, [rip + .Lx00126_2]
                        mov              qword ptr [rbp + 2360], rax
                        lea              rax, [rip + .Lx00126_3]
                        mov              qword ptr [rbp + 2368], rax
                        mov              qword ptr [rbp + 2312], rbp
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              rdi, rbp
                        mov              esi, 2304
                        mov              edx, 2352
                        mov              ecx, 2
                        mov              r8d, 2
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_pwrite_α_body
.Lx00126_2:
                        mov              rdx, qword ptr [rsp + -2400]
                        mov              rcx, rsp
                        add              rcx, -2384
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00126_3:
                        mov              rdi, qword ptr [rsp + -2400]
                        mov              rsi, rsp
                        add              rsi, -2384
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_source_α
proc_source_α:
                        .global          proc_source_α
                        .global          proc_source_β
                        .global          proc_source_γ
                        .global          proc_source_ω
                        sub              rsp, 928
                        mov              [rsp + 904], rcx
                        mov              [rsp + 912], rdx
                        mov              [rsp + 920], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 856], rsp
                        mov              rdi, rsp
                        mov              esi, 848
                        mov              edx, 896
                        call             rt_jmp_frame_lexprep2@PLT
proc_source_α_body:
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00127_n0_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   xchain00127_n1_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_GEN_SCAN
xchain00127_n1_α:
                        mov              rdi, qword ptr [rbp + 816]
                        mov              rsi, qword ptr [rbp + 824]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   xchain00127_n2_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_DISJUNCTION_NARY
xchain00127_n2_α:
                        mov              qword ptr [rbp + 112], 0
                        mov              qword ptr [rbp + 120], 0
                        mov              dword ptr [rbp + 128], 0
                                                                                        jmp   xchain00127_n4_α
xchain00127_n2_as:
                        mov              eax, dword ptr [rbp + 128]
                        cmp              eax, 0
                                                                                        jne   .Lx00128_0
                                                                                        jmp   xchain00127_n3_α
.Lx00128_0:
                                                                                        jmp   xchain00127_n3_α
xchain00127_n2_β:
                        mov              eax, dword ptr [rbp + 128]
                                                                                        jmp   xchain00127_n27_α
xchain00127_n2_af:
                        add              dword ptr [rbp + 128], 1
                        mov              eax, dword ptr [rbp + 128]
                                                                                        jmp   xchain00127_n27_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_GEN_SCAN
xchain00127_n3_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 88], rax
                        lea              rdi, [rbp + 48]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 48]
                        mov              r14, qword ptr [rbp + 56]
                        mov              r15, qword ptr [rbp + 64]
                                                                                        jmp   xchain00127_n6_α
xchain00127_n3_β:
                        call             rt_scan_reenter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                                                                                        jmp   xchain00127_n2_β
                                                                                        jmp   proc_source_ω
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain00127_n4_α:
                        mov              qword ptr [rbp + 784], 1
                        mov              rax, qword ptr [rip + .Lx00129_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   xchain00127_n7_α
xchain00127_n4_β:
                                                                                        jmp   xchain00127_n2_af
.Lx00129_0:
                        .quad            .Lx00129_0_s
.Lx00129_0_s:
                        .string          "@"
#-----------------------------------------------------------------------------------------------------------------------
xchain00127_n5_α:
                                                                                        jmp   xchain00127_n2_as
xchain00127_n5_β:
                                                                                        jmp   xchain00127_n27_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_RETURN
xchain00127_n6_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_source_γ
#-----------------------------------------------------------------------------------------------------------------------
# IR_SCAN_MATCH
xchain00127_n7_α:
                        sub              rsp, 16
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1
                                                                                        jge   .Lx00130_239
                        add              rsp, 16
                                                                                        jmp   xchain00127_n2_af
.Lx00130_239:
                        mov              rdi, qword ptr [rip + .Lx00130_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 1
                        push             r10
                        call             memcmp@PLT
                        pop              r10
                        test             eax, eax
                                                                                        je    .Lx00130_240
                        add              rsp, 16
                                                                                        jmp   xchain00127_n2_af
.Lx00130_240:
                        mov              qword ptr [rbp + 752], 6
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   xchain00127_n8_α
.Lx00130_0:
                        .quad            .Lx00130_0_s
.Lx00130_0_s:
                        .string          "@"
#-----------------------------------------------------------------------------------------------------------------------
# IR_SCAN_TAB
xchain00127_n8_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 760]
                        cmp              rax, 1
                                                                                        jge   .Lx00131_0
                        add              rax, r15
                        add              rax, 1
.Lx00131_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00131_239
                        add              rsp, 16
                                                                                        jmp   xchain00127_n2_af
.Lx00131_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00131_240
                        add              rsp, 16
                                                                                        jmp   xchain00127_n2_af
.Lx00131_240:
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
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   xchain00127_n9_α
xchain00127_n8_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   xchain00127_n2_af
#-----------------------------------------------------------------------------------------------------------------------
# IR_DISJUNCTION_NARY
xchain00127_n9_α:
                        mov              qword ptr [rbp + 368], 0
                        mov              qword ptr [rbp + 376], 0
                        mov              dword ptr [rbp + 384], 0
                                                                                        jmp   xchain00127_n11_α
xchain00127_n9_as:
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 0
                                                                                        jne   .Lx00132_0
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   xchain00127_n10_α
.Lx00132_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00132_1
                                                                                        jmp   xchain00127_n10_α
.Lx00132_1:
                                                                                        jmp   xchain00127_n10_α
xchain00127_n9_β:
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 0
                                                                                        je    xchain00127_n9_af
                                                                                        jmp   xchain00127_n9_af
xchain00127_n9_af:
                        add              dword ptr [rbp + 384], 1
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 1
                                                                                        je    xchain00127_n12_α
                                                                                        jmp   xchain00127_n15_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00127_n10_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   xchain00127_n15_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain00127_n11_α:
                        mov              qword ptr [rbp + 496], 6
                        mov              rax, qword ptr [rip + .Lx00133_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   xchain00127_n16_α
xchain00127_n11_β:
                                                                                        jmp   xchain00127_n9_af
.Lx00133_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
# KEYWORD_read
xchain00127_n12_α:
                        mov              rdi, qword ptr [rip + .Lx00134_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    proc_source_ω
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   xchain00127_n17_α
xchain00127_n12_β:
                                                                                        jmp   proc_source_ω
.Lx00134_0:
                        .quad            .Lx00134_0_s
.Lx00134_0_s:
                        .string          "&errout"
#-----------------------------------------------------------------------------------------------------------------------
xchain00127_n13_α:
# BOX IR_CALL open(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+448] -> [zr+416]
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 424], rax
                        .section         .rodata
.Lrkfn564:              .string          "open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn564]
                        lea              rsi, [rbp + 416]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    xchain00127_n9_af
                                                                                        jmp   xchain00127_n9_as
xchain00127_n13_β:
                                                                                        jmp   xchain00127_n9_af
#-----------------------------------------------------------------------------------------------------------------------
xchain00127_n14_α:
                                                                                        jmp   xchain00127_n9_as
xchain00127_n14_β:
                                                                                        jmp   xchain00127_n9_af
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00127_n15_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   xchain00127_n18_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_SCAN_TAB
xchain00127_n16_α:
                        sub              rsp, 16
                        mov              rax, 0
                        cmp              rax, 1
                                                                                        jge   .Lx00135_0
                        add              rax, r15
                        add              rax, 1
.Lx00135_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00135_239
                        add              rsp, 16
                                                                                        jmp   xchain00127_n9_af
.Lx00135_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00135_240
                        add              rsp, 16
                                                                                        jmp   xchain00127_n9_af
.Lx00135_240:
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
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   xchain00127_n20_α
xchain00127_n16_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   xchain00127_n9_af
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain00127_n17_α:
                        mov              qword ptr [rbp + 656], 1
                        mov              rax, qword ptr [rip + .Lx00136_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   xchain00127_n21_α
.Lx00136_0:
                        .quad            .Lx00136_0_s
.Lx00136_0_s:
                        .string          "*** cannot open "
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00127_n18_α:
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   xchain00127_n22_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_RETURN
xchain00127_n19_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_source_γ
#-----------------------------------------------------------------------------------------------------------------------
xchain00127_n20_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   xchain00127_n13_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00127_n21_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   xchain00127_n23_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00127_n22_α:
# BOX IR_CALL push(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+288] -> [zr+240]
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 248], rax
# marshal arg1 = producer-box slot [zr+320] -> [zr+256]
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 264], rax
                        .section         .rodata
.Lrkfn576:              .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn576]
                        lea              rsi, [rbp + 240]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    xchain00127_n19_α
                                                                                        jmp   xchain00127_n24_α
xchain00127_n22_β:
                                                                                        jmp   xchain00127_n19_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00127_n23_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+624] -> [zr+560]
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 568], rax
# marshal arg1 = producer-box slot [zr+656] -> [zr+576]
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 584], rax
# marshal arg2 = producer-box slot [zr+688] -> [zr+592]
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 600], rax
                        .section         .rodata
.Lrkfn578:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn578]
                        lea              rsi, [rbp + 560]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 99
                                                                                        je    proc_source_ω
                                                                                        jmp   proc_source_ω
xchain00127_n23_β:
                                                                                        jmp   proc_source_ω
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00127_n24_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   xchain00127_n25_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain00127_n25_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   xchain00127_n26_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00127_n26_α:
# IR_CONJUNCTION value-forward copy
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   xchain00127_n19_α
xchain00127_n26_β:
                                                                                        jmp   xchain00127_n19_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_GEN_SCAN
xchain00127_n27_α:
                        lea              rdi, [rbp + 48]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 48]
                        mov              r14, qword ptr [rbp + 56]
                        mov              r15, qword ptr [rbp + 64]
                                                                                        jmp   proc_source_ω
xchain00127_n27_β:
                                                                                        jmp   proc_source_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_source_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_source_β:
                                                                                        jmp   proc_source_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_source_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 904]
                        lea              rsp, [rbp + 928]
                        mov              rbp, [rbp + 920]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_source_ω:
                        mov              rax, [rbp + 912]
                        lea              rsp, [rbp + 928]
                        mov              rbp, [rbp + 920]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_source_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
                        pop              r11
                        sub              rsp, 944
                        mov              qword ptr [rsp + 936], rbp
                        mov              rbp, rsp
                        add              rbp, 16
                        mov              qword ptr [rbp + 896], r11
                        lea              rax, [rip + .Lx00137_2]
                        mov              qword ptr [rbp + 904], rax
                        lea              rax, [rip + .Lx00137_3]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 856], rbp
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 848
                        mov              edx, 896
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_source_α_body
.Lx00137_2:
                        mov              rdx, qword ptr [rsp + -944]
                        mov              rcx, rsp
                        add              rcx, -928
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00137_3:
                        mov              rdi, qword ptr [rsp + -944]
                        mov              rsi, rsp
                        add              rsi, -928
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_symimage_α
proc_symimage_α:
                        .global          proc_symimage_α
                        .global          proc_symimage_β
                        .global          proc_symimage_γ
                        .global          proc_symimage_ω
                        sub              rsp, 960
                        mov              [rsp + 936], rcx
                        mov              [rsp + 944], rdx
                        mov              [rsp + 952], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 904], rsp
                        mov              rdi, rsp
                        mov              esi, 896
                        mov              edx, 928
                        call             rt_jmp_frame_lexprep2@PLT
proc_symimage_α_body:
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00138_n0_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   xchain00138_n1_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00138_n1_α:
# BOX IR_CALL type(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+112] -> [zr+80]
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 88], rax
                        .section         .rodata
.Lrkfn590:              .string          "type"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn590]
                        lea              rsi, [rbp + 80]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_symimage_ω
                                                                                        jmp   xchain00138_n2_α
xchain00138_n1_β:
                                                                                        jmp   proc_symimage_ω
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain00138_n2_α:
                        mov              qword ptr [rbp + 752], 1
                        mov              rax, qword ptr [rip + .Lx00139_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   xchain00138_n3_α
.Lx00139_0:
                        .quad            .Lx00139_0_s
.Lx00139_0_s:
                        .string          "string"
#-----------------------------------------------------------------------------------------------------------------------
xchain00138_n3_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+848]
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 856], rax
# marshal arg1 = producer-box slot [zr+752] -> [zr+864]
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 872], rax
                        .section         .rodata
.Lrkfn593:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn593]
                        lea              rsi, [rbp + 848]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              eax, 99
                                                                                        je    xchain00138_n5_α
                                                                                        jmp   xchain00138_n4_α
xchain00138_n3_β:
                                                                                        jmp   xchain00138_n5_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00138_n4_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   xchain00138_n6_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain00138_n5_α:
                        mov              qword ptr [rbp + 448], 1
                        mov              rax, qword ptr [rip + .Lx00140_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   xchain00138_n7_α
.Lx00140_0:
                        .quad            .Lx00140_0_s
.Lx00140_0_s:
                        .string          "nonterm"
#-----------------------------------------------------------------------------------------------------------------------
xchain00138_n6_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 784]
                        mov              rdx, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   xchain00138_n8_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00138_n7_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+704]
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 712], rax
# marshal arg1 = producer-box slot [zr+448] -> [zr+720]
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 728], rax
                        .section         .rodata
.Lrkfn599:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn599]
                        lea              rsi, [rbp + 704]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 99
                                                                                        je    xchain00138_n10_α
                                                                                        jmp   xchain00138_n9_α
xchain00138_n7_β:
                                                                                        jmp   xchain00138_n10_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00138_n8_α:
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   xchain00138_n11_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain00138_n9_α:
                        mov              qword ptr [rbp + 544], 1
                        mov              rax, qword ptr [rip + .Lx00141_0]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   xchain00138_n12_α
.Lx00141_0:
                        .quad            .Lx00141_0_s
.Lx00141_0_s:
                        .string          "<"
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain00138_n10_α:
                        mov              qword ptr [rbp + 144], 1
                        mov              rax, qword ptr [rip + .Lx00142_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   xchain00138_n13_α
.Lx00142_0:
                        .quad            .Lx00142_0_s
.Lx00142_0_s:
                        .string          "charset"
#-----------------------------------------------------------------------------------------------------------------------
# IR_RETURN
xchain00138_n11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_symimage_γ
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00138_n12_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   xchain00138_n14_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00138_n13_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+400]
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 408], rax
# marshal arg1 = producer-box slot [zr+144] -> [zr+416]
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 424], rax
                        .section         .rodata
.Lrkfn608:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn608]
                        lea              rsi, [rbp + 400]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    proc_symimage_ω
                                                                                        jmp   xchain00138_n15_α
xchain00138_n13_β:
                                                                                        jmp   proc_symimage_ω
#-----------------------------------------------------------------------------------------------------------------------
# IR_FIELD_GET
xchain00138_n14_α:
                        mov              rdi, qword ptr [rip + .Lx00143_0]
                        mov              rsi, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    proc_symimage_ω
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   xchain00138_n16_α
.Lx00143_0:
                        .quad            .Lx00143_0_s
.Lx00143_0_s:
                        .string          "name"
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain00138_n15_α:
                        mov              qword ptr [rbp + 240], 1
                        mov              rax, qword ptr [rip + .Lx00144_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   xchain00138_n17_α
.Lx00144_0:
                        .quad            .Lx00144_0_s
.Lx00144_0_s:
                        .string          "<'"
#-----------------------------------------------------------------------------------------------------------------------
xchain00138_n16_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 544]
                        mov              rsi, qword ptr [rbp + 552]
                        mov              rdx, qword ptr [rbp + 576]
                        mov              rcx, qword ptr [rbp + 584]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   xchain00138_n18_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00138_n17_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   xchain00138_n19_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain00138_n18_α:
                        mov              qword ptr [rbp + 640], 1
                        mov              rax, qword ptr [rip + .Lx00145_0]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   xchain00138_n20_α
.Lx00145_0:
                        .quad            .Lx00145_0_s
.Lx00145_0_s:
                        .string          ">"
#-----------------------------------------------------------------------------------------------------------------------
# IR_FIELD_GET
xchain00138_n19_α:
                        mov              rdi, qword ptr [rip + .Lx00146_0]
                        mov              rsi, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    proc_symimage_ω
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   xchain00138_n21_α
.Lx00146_0:
                        .quad            .Lx00146_0_s
.Lx00146_0_s:
                        .string          "chars"
#-----------------------------------------------------------------------------------------------------------------------
xchain00138_n20_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 512]
                        mov              rsi, qword ptr [rbp + 520]
                        mov              rdx, qword ptr [rbp + 640]
                        mov              rcx, qword ptr [rbp + 648]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   xchain00138_n22_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00138_n21_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 240]
                        mov              rsi, qword ptr [rbp + 248]
                        mov              rdx, qword ptr [rbp + 272]
                        mov              rcx, qword ptr [rbp + 280]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   xchain00138_n23_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00138_n22_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 480]
                        mov              rdx, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   xchain00138_n8_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain00138_n23_α:
                        mov              qword ptr [rbp + 336], 1
                        mov              rax, qword ptr [rip + .Lx00147_0]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   xchain00138_n24_α
.Lx00147_0:
                        .quad            .Lx00147_0_s
.Lx00147_0_s:
                        .string          "'>"
#-----------------------------------------------------------------------------------------------------------------------
xchain00138_n24_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 208]
                        mov              rsi, qword ptr [rbp + 216]
                        mov              rdx, qword ptr [rbp + 336]
                        mov              rcx, qword ptr [rbp + 344]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   xchain00138_n25_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00138_n25_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   xchain00138_n8_α
#-----------------------------------------------------------------------------------------------------------------------
proc_symimage_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_symimage_β:
                                                                                        jmp   proc_symimage_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_symimage_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 936]
                        lea              rsp, [rbp + 960]
                        mov              rbp, [rbp + 952]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_symimage_ω:
                        mov              rax, [rbp + 944]
                        lea              rsp, [rbp + 960]
                        mov              rbp, [rbp + 952]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_symimage_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
                        pop              r11
                        sub              rsp, 976
                        mov              qword ptr [rsp + 968], rbp
                        mov              rbp, rsp
                        add              rbp, 16
                        mov              qword ptr [rbp + 928], r11
                        lea              rax, [rip + .Lx00148_2]
                        mov              qword ptr [rbp + 936], rax
                        lea              rax, [rip + .Lx00148_3]
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 904], rbp
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 896
                        mov              edx, 928
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_symimage_α_body
.Lx00148_2:
                        mov              rdx, qword ptr [rsp + -976]
                        mov              rcx, rsp
                        add              rcx, -960
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00148_3:
                        mov              rdi, qword ptr [rsp + -976]
                        mov              rsi, rsp
                        add              rsi, -960
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_syms_α
proc_syms_α:
                        .global          proc_syms_α
                        .global          proc_syms_β
                        .global          proc_syms_γ
                        .global          proc_syms_ω
                        sub              rsp, 1168
                        mov              [rsp + 1144], rcx
                        mov              [rsp + 1152], rdx
                        mov              [rsp + 1160], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 1112], rsp
                        mov              rdi, rsp
                        mov              esi, 1104
                        mov              edx, 1136
                        call             rt_jmp_frame_lexprep2@PLT
proc_syms_α_body:
#-----------------------------------------------------------------------------------------------------------------------
# IR_DISJUNCTION_NARY
xchain00149_n0_α:
                        mov              qword ptr [rbp + 880], 0
                        mov              qword ptr [rbp + 888], 0
                        mov              dword ptr [rbp + 896], 0
                                                                                        jmp   xchain00149_n2_α
xchain00149_n0_as:
                        mov              eax, dword ptr [rbp + 896]
                        cmp              eax, 0
                                                                                        jne   .Lx00150_0
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   xchain00149_n1_α
.Lx00150_0:
                                                                                        jmp   xchain00149_n1_α
xchain00149_n0_β:
                        mov              eax, dword ptr [rbp + 896]
                                                                                        jmp   xchain00149_n1_α
xchain00149_n0_af:
                        add              dword ptr [rbp + 896], 1
                        mov              eax, dword ptr [rbp + 896]
                                                                                        jmp   xchain00149_n1_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_MAKE_LIST
xchain00149_n1_α:
                        lea              rdi, [rbp + 880]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   xchain00149_n4_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR_REF
xchain00149_n2_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052480
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                                                                                        jmp   xchain00149_n5_α
xchain00149_n2_β:
                                                                                        jmp   xchain00149_n0_af
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain00149_n3_α:
                        mov              rax, qword ptr [rbp + 928]
                        mov              rdx, qword ptr [rbp + 936]
                        mov              qword ptr [1879052464], rax
                        mov              qword ptr [1879052472], rdx
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                                                                                        jmp   xchain00149_n0_as
xchain00149_n3_β:
                                                                                        jmp   xchain00149_n1_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00149_n4_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 864]
                        mov              rdx, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   xchain00149_n6_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_NULLTEST_VAR
xchain00149_n5_α:
                        mov              eax, dword ptr [rbp + 992]
                        cmp              eax, 99
                                                                                        je    xchain00149_n0_af
                        mov              rdi, qword ptr [rbp + 992]
                        mov              rsi, qword ptr [rbp + 1000]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    xchain00149_n0_af
                        cmp              eax, 0
                                                                                        jne   xchain00149_n0_af
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   xchain00149_n7_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00149_n6_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   xchain00149_n8_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain00149_n7_α:
                        mov              qword ptr [rbp + 1072], 6
                        mov              rax, qword ptr [rip + .Lx00151_0]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   xchain00149_n10_α
.Lx00151_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
# IR_GEN_SCAN
xchain00149_n8_α:
                        mov              rdi, qword ptr [rbp + 816]
                        mov              rsi, qword ptr [rbp + 824]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   xchain00149_n11_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00149_n9_α:
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   xchain00149_n12_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN_VAR
xchain00149_n10_α:
                        mov              rdi, qword ptr [rbp + 1024]
                        mov              rsi, qword ptr [rbp + 1032]
                        mov              rdx, qword ptr [rbp + 1072]
                        mov              rcx, qword ptr [rbp + 1080]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain00149_n0_af
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                                                                                        jmp   xchain00149_n13_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00149_n11_α:
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   xchain00149_n14_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_RETURN
xchain00149_n12_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_syms_γ
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_CHARSET
xchain00149_n13_α:
                        mov              qword ptr [rbp + 960], 1
                        mov              dword ptr [rbp + 964], -1
                        mov              rax, qword ptr [rip + .Lx00152_0]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   xchain00149_n16_α
.Lx00152_0:
                        .quad            .Lx00152_0_s
.Lx00152_0_s:
                        .string          "<"
#-----------------------------------------------------------------------------------------------------------------------
# IR_DISJUNCTION_NARY
xchain00149_n14_α:
                        mov              qword ptr [rbp + 240], 0
                        mov              qword ptr [rbp + 248], 0
                        mov              dword ptr [rbp + 256], 0
                                                                                        jmp   xchain00149_n18_α
xchain00149_n14_as:
                        mov              eax, dword ptr [rbp + 256]
                        cmp              eax, 0
                                                                                        jne   .Lx00153_0
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   xchain00149_n17_α
.Lx00153_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00153_1
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   xchain00149_n17_α
.Lx00153_1:
                                                                                        jmp   xchain00149_n17_α
xchain00149_n14_β:
                        mov              eax, dword ptr [rbp + 256]
                        cmp              eax, 0
                                                                                        je    xchain00149_n14_af
                                                                                        jmp   xchain00149_n20_β
xchain00149_n14_af:
                        add              dword ptr [rbp + 256], 1
                        mov              eax, dword ptr [rbp + 256]
                        cmp              eax, 1
                                                                                        je    xchain00149_n19_α
                                                                                        jmp   xchain00149_n15_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_GEN_SCAN
xchain00149_n15_α:
                        lea              rdi, [rbp + 80]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 80]
                        mov              r14, qword ptr [rbp + 88]
                        mov              r15, qword ptr [rbp + 96]
                                                                                        jmp   xchain00149_n9_α
xchain00149_n15_β:
                                                                                        jmp   xchain00149_n9_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_UNOP
xchain00149_n16_α:
                        mov              rdi, qword ptr [rbp + 960]
                        mov              rsi, qword ptr [rbp + 968]
                        call             rt_cset_compl@PLT
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                                                                                        jmp   xchain00149_n3_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00149_n17_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+160]
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 168], rax
# marshal arg1 = producer-box slot [zr+240] -> [zr+176]
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 184], rax
                        .section         .rodata
.Lrkfn651:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn651]
                        lea              rsi, [rbp + 160]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    xchain00149_n14_β
                                                                                        jmp   xchain00149_n11_α
xchain00149_n17_β:
                                                                                        jmp   xchain00149_n14_β
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00149_n18_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   xchain00149_n23_α
xchain00149_n18_β:
                                                                                        jmp   xchain00149_n14_af
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain00149_n19_α:
                        mov              qword ptr [rbp + 416], 6
                        mov              rax, qword ptr [rip + .Lx00154_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   xchain00149_n24_α
xchain00149_n19_β:
                                                                                        jmp   xchain00149_n14_af
.Lx00154_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
# IR_CALL_VALUE invoke through a runtime callee value (proc/string/int); a jmp-entry GENERATOR callee takes the SPINE transfer (bcps_spine_gen_arm contract: prep resolves+stages+opens, wires in rcx/rdx, once-flag in the granted handle cell [zeta+off+16+n*16], beta resumes jmp [rsp]); det/builtin/unresolved callees fall back to the one-shot C window whose handle parks in the same cell (values 0/ptr, disjoint from the spine flag 1)
xchain00149_n20_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 472], rax
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 488], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 504], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        mov              qword ptr [rbp + 512], 0
                        mov              rdi, qword ptr [rbp + 416]
                        mov              rsi, qword ptr [rbp + 424]
                        lea              rdx, [rbp + 464]
                        mov              ecx, 3
                        call             rt_call_value_spine_prep@PLT
                        test             rax, rax
                                                                                        je    .Lx00155_7
                        lea              rcx, [rip + .Lx00155_3]
                        lea              rdx, [rip + .Lx00155_4]
                                                                                        jmp   rax
.Lx00155_3:
                        mov              qword ptr [rbp + 520], rsp
                        mov              rax, qword ptr [rbp + 512]
                        test             rax, rax
                                                                                        jne   .Lx00155_5
                        mov              qword ptr [rbp + 512], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx00155_2
.Lx00155_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx00155_2
.Lx00155_4:
                        mov              qword ptr [rbp + 520], rsp
                        mov              rax, qword ptr [rbp + 512]
                        test             rax, rax
                                                                                        jne   .Lx00155_6
                        mov              qword ptr [rbp + 512], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx00155_2
.Lx00155_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx00155_2
.Lx00155_7:
                        mov              rdi, qword ptr [rbp + 416]
                        mov              rsi, qword ptr [rbp + 424]
                        lea              rdx, [rbp + 464]
                        mov              ecx, 3
                        lea              r8, [rbp + 512]
                        call             rt_call_value_gen_h@PLT
.Lx00155_2:
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              eax, 99
                                                                                        je    xchain00149_n25_β
                                                                                        jmp   xchain00149_n22_α
xchain00149_n20_β:
                        mov              rax, qword ptr [rbp + 512]
                        cmp              rax, 1
                                                                                        jne   .Lx00155_8
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 520]
                                                                                        jmp   qword ptr [rsp]
.Lx00155_8:
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        lea              rdi, [rbp + 512]
                        call             rt_call_value_resume_h@PLT
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    xchain00149_n25_β
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   xchain00149_n22_α
                                                                                        jmp   xchain00149_n25_β
#-----------------------------------------------------------------------------------------------------------------------
# IR_SCAN_TAB
xchain00149_n21_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 312]
                        cmp              rax, 1
                                                                                        jge   .Lx00156_0
                        add              rax, r15
                        add              rax, 1
.Lx00156_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00156_239
                        add              rsp, 16
                                                                                        jmp   xchain00149_n14_af
.Lx00156_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00156_240
                        add              rsp, 16
                                                                                        jmp   xchain00149_n14_af
.Lx00156_240:
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
                                                                                        jmp   xchain00149_n14_as
xchain00149_n21_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   xchain00149_n14_af
#-----------------------------------------------------------------------------------------------------------------------
xchain00149_n22_α:
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        lea              rsi, [rbp + 448]
                        call             proc_defnon_dcα
                                                                                        jmp   .Lx00157_2
.Lx00157_2:
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 99
                                                                                        je    xchain00149_n20_β
                                                                                        jmp   xchain00149_n14_as
xchain00149_n22_β:
                                                                                        jmp   xchain00149_n20_β
.Lx00157_0:
                        .quad            .Lx00157_0_s
.Lx00157_0_s:
                        .string          "defnon"
#-----------------------------------------------------------------------------------------------------------------------
# IR_SCAN_MANY (var cset) [fstranl.r many: advance while s[i] in cset-descr@slot; fail if none consumed]
xchain00149_n23_α:
                        mov              eax, r14d
.Lx00158_0:
                        cmp              eax, r15d
                                                                                        jge   .Lx00158_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rbp + 344]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx00158_1
                        add              eax, 1
                                                                                        jmp   .Lx00158_0
.Lx00158_1:
                        cmp              eax, r14d
                                                                                        je    xchain00149_n14_af
                        mov              qword ptr [rbp + 304], 6
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rbp + 312], rcx
                                                                                        jmp   xchain00149_n21_α
xchain00149_n23_β:
                                                                                        jmp   xchain00149_n14_af
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain00149_n24_α:
                        mov              qword ptr [rbp + 624], 1
                        mov              rax, qword ptr [rip + .Lx00159_0]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   xchain00149_n26_α
.Lx00159_0:
                        .quad            .Lx00159_0_s
.Lx00159_0_s:
                        .string          "<"
#-----------------------------------------------------------------------------------------------------------------------
# IR_SCAN_UPTO
xchain00149_n25_α:
                        mov              qword ptr [rbp + 704], r14
.Lx00160_0:
                        mov              rax, qword ptr [rbp + 704]
                        cmp              rax, r15
                                                                                        jge   xchain00149_n14_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx00160_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx00160_1
                        mov              qword ptr [rbp + 688], 6
                        add              rax, 1
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   xchain00149_n27_α
.Lx00160_1:
                        inc              qword ptr [rbp + 704]
                                                                                        jmp   .Lx00160_0
xchain00149_n25_β:
                        inc              qword ptr [rbp + 704]
                                                                                        jmp   .Lx00160_0
.Lx00160_2:
                        .quad            .Lx00160_2_s
.Lx00160_2_s:
                        .string          ">"
#-----------------------------------------------------------------------------------------------------------------------
# IR_SCAN_MATCH
xchain00149_n26_α:
                        sub              rsp, 16
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1
                                                                                        jge   .Lx00161_239
                        add              rsp, 16
                                                                                        jmp   xchain00149_n14_af
.Lx00161_239:
                        mov              rdi, qword ptr [rip + .Lx00161_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 1
                        push             r10
                        call             memcmp@PLT
                        pop              r10
                        test             eax, eax
                                                                                        je    .Lx00161_240
                        add              rsp, 16
                                                                                        jmp   xchain00149_n14_af
.Lx00161_240:
                        mov              qword ptr [rbp + 592], 6
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   xchain00149_n28_α
.Lx00161_0:
                        .quad            .Lx00161_0_s
.Lx00161_0_s:
                        .string          "<"
#-----------------------------------------------------------------------------------------------------------------------
# IR_SCAN_TAB
xchain00149_n27_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 696]
                        cmp              rax, 1
                                                                                        jge   .Lx00162_0
                        add              rax, r15
                        add              rax, 1
.Lx00162_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00162_239
                        add              rsp, 16
                                                                                        jmp   xchain00149_n25_β
.Lx00162_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00162_240
                        add              rsp, 16
                                                                                        jmp   xchain00149_n25_β
.Lx00162_240:
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
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   xchain00149_n29_α
xchain00149_n27_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   xchain00149_n25_β
#-----------------------------------------------------------------------------------------------------------------------
# IR_SCAN_TAB
xchain00149_n28_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 600]
                        cmp              rax, 1
                                                                                        jge   .Lx00163_0
                        add              rax, r15
                        add              rax, 1
.Lx00163_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00163_239
                        add              rsp, 16
                                                                                        jmp   xchain00149_n14_af
.Lx00163_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00163_240
                        add              rsp, 16
                                                                                        jmp   xchain00149_n14_af
.Lx00163_240:
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
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   xchain00149_n30_α
xchain00149_n28_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   xchain00149_n14_af
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain00149_n29_α:
                        mov              qword ptr [rbp + 784], 6
                        mov              rax, qword ptr [rip + .Lx00164_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   xchain00149_n31_α
.Lx00164_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_CHARSET
xchain00149_n30_α:
                        mov              qword ptr [rbp + 720], 1
                        mov              dword ptr [rbp + 724], -1
                        mov              rax, qword ptr [rip + .Lx00165_0]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   xchain00149_n25_α
.Lx00165_0:
                        .quad            .Lx00165_0_s
.Lx00165_0_s:
                        .string          ">"
#-----------------------------------------------------------------------------------------------------------------------
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
xchain00149_n31_α:
                        sub              rsp, 16
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1
                                                                                        jge   .Lx00166_239
                        add              rsp, 16
                                                                                        jmp   xchain00149_n25_β
.Lx00166_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00166_240
                        add              rsp, 16
                                                                                        jmp   xchain00149_n25_β
.Lx00166_240:
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
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   xchain00149_n20_α
xchain00149_n31_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   xchain00149_n25_β
#-----------------------------------------------------------------------------------------------------------------------
proc_syms_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_syms_β:
                                                                                        jmp   proc_syms_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_syms_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 1144]
                        lea              rsp, [rbp + 1168]
                        mov              rbp, [rbp + 1160]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_syms_ω:
                        mov              rax, [rbp + 1152]
                        lea              rsp, [rbp + 1168]
                        mov              rbp, [rbp + 1160]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_syms_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
                        pop              r11
                        sub              rsp, 1184
                        mov              qword ptr [rsp + 1176], rbp
                        mov              rbp, rsp
                        add              rbp, 16
                        mov              qword ptr [rbp + 1136], r11
                        lea              rax, [rip + .Lx00167_2]
                        mov              qword ptr [rbp + 1144], rax
                        lea              rax, [rip + .Lx00167_3]
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1112], rbp
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 1104
                        mov              edx, 1136
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_syms_α_body
.Lx00167_2:
                        mov              rdx, qword ptr [rsp + -1184]
                        mov              rcx, rsp
                        add              rcx, -1168
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00167_3:
                        mov              rdi, qword ptr [rsp + -1184]
                        mov              rsi, rsp
                        add              rsi, -1168
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_options_α
proc_options_α:
                        .global          proc_options_α
                        .global          proc_options_β
                        .global          proc_options_γ
                        .global          proc_options_ω
                        sub              rsp, 3760
                        mov              [rsp + 3736], rcx
                        mov              [rsp + 3744], rdx
                        mov              [rsp + 3752], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 3592], rsp
                        mov              rdi, rsp
                        mov              esi, 3584
                        mov              edx, 3728
                        call             rt_jmp_frame_lexprep2@PLT
proc_options_α_body:
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR_REF
xchain00168_n0_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3424], rax
                        mov              qword ptr [rbp + 3432], rdx
                                                                                        jmp   xchain00168_n1_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_NULLTEST_VAR
xchain00168_n1_α:
                        mov              eax, dword ptr [rbp + 3424]
                        cmp              eax, 99
                                                                                        je    xchain00168_n3_α
                        mov              rdi, qword ptr [rbp + 3424]
                        mov              rsi, qword ptr [rbp + 3432]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    xchain00168_n3_α
                        cmp              eax, 0
                                                                                        jne   xchain00168_n3_α
                        mov              rax, qword ptr [rbp + 3424]
                        mov              qword ptr [rbp + 3456], rax
                        mov              rax, qword ptr [rbp + 3432]
                        mov              qword ptr [rbp + 3464], rax
                                                                                        jmp   xchain00168_n2_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_CHARSET
xchain00168_n2_α:
                        mov              qword ptr [rbp + 3552], 1
                        mov              dword ptr [rbp + 3556], -1
                        mov              rax, qword ptr [rip + .Lx00169_0]
                        mov              qword ptr [rbp + 3560], rax
                                                                                        jmp   xchain00168_n4_α
.Lx00169_0:
                        .quad            .Lx00169_0_s
.Lx00169_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
xchain00168_n3_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
                        .section         .rodata
.Lrkfn682:              .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn682]
                        lea              rsi, [rbp + 3408]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3392], rax
                        mov              qword ptr [rbp + 3400], rdx
                        cmp              eax, 99
                                                                                        je    xchain00168_n6_α
                                                                                        jmp   xchain00168_n5_α
xchain00168_n3_β:
                                                                                        jmp   xchain00168_n6_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00168_n4_α:
# BOX IR_CALL string(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3552] -> [zr+3520]
                        mov              rax, qword ptr [rbp + 3552]
                        mov              qword ptr [rbp + 3520], rax
                        mov              rax, qword ptr [rbp + 3560]
                        mov              qword ptr [rbp + 3528], rax
                        .section         .rodata
.Lrkfn684:              .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn684]
                        lea              rsi, [rbp + 3520]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3504], rax
                        mov              qword ptr [rbp + 3512], rdx
                        cmp              eax, 99
                                                                                        je    xchain00168_n3_α
                                                                                        jmp   xchain00168_n7_α
xchain00168_n4_β:
                                                                                        jmp   xchain00168_n3_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00168_n5_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 3392]
                        mov              rdx, qword ptr [rbp + 3400]
                        mov              qword ptr [rbp + 3600], rax
                        mov              qword ptr [rbp + 3608], rdx
                        mov              qword ptr [rbp + 3376], rax
                        mov              qword ptr [rbp + 3384], rdx
                                                                                        jmp   xchain00168_n6_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_MAKE_LIST
xchain00168_n6_α:
                        lea              rdi, [rbp + 3376]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 3360], rax
                        mov              qword ptr [rbp + 3368], rdx
                                                                                        jmp   xchain00168_n8_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN_VAR
xchain00168_n7_α:
                        mov              rdi, qword ptr [rbp + 3456]
                        mov              rsi, qword ptr [rbp + 3464]
                        mov              rdx, qword ptr [rbp + 3504]
                        mov              rcx, qword ptr [rbp + 3512]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain00168_n3_α
                        mov              qword ptr [rbp + 3488], rax
                        mov              qword ptr [rbp + 3496], rdx
                                                                                        jmp   xchain00168_n3_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00168_n8_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 3360]
                        mov              rdx, qword ptr [rbp + 3368]
                        mov              qword ptr [rbp + 3616], rax
                        mov              qword ptr [rbp + 3624], rdx
                        mov              qword ptr [rbp + 3344], rax
                        mov              qword ptr [rbp + 3352], rdx
                                                                                        jmp   xchain00168_n9_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00168_n9_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   xchain00168_n10_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00168_n10_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+320] -> [zr+288]
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 296], rax
                        .section         .rodata
.Lrkfn693:              .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn693]
                        lea              rsi, [rbp + 288]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    xchain00168_n11_α
                                                                                        jmp   xchain00168_n12_α
xchain00168_n10_β:
                                                                                        jmp   xchain00168_n11_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00168_n11_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   xchain00168_n13_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00168_n12_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 3632], rax
                        mov              qword ptr [rbp + 3640], rdx
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   xchain00168_n15_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00168_n13_α:
                        mov              rax, qword ptr [rbp + 3616]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 3624]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   xchain00168_n16_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00168_n14_α:
                        mov              rax, qword ptr [rbp + 3600]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 3608]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   xchain00168_n17_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00168_n15_α:
                        mov              rax, qword ptr [rbp + 3632]
                        mov              qword ptr [rbp + 3312], rax
                        mov              rax, qword ptr [rbp + 3640]
                        mov              qword ptr [rbp + 3320], rax
                                                                                        jmp   xchain00168_n18_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00168_n16_α:
# BOX IR_CALL pull(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+192]
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 200], rax
                        .section         .rodata
.Lrkfn704:              .string          "pull"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn704]
                        lea              rsi, [rbp + 192]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    xchain00168_n14_α
                                                                                        jmp   xchain00168_n19_α
xchain00168_n16_β:
                                                                                        jmp   xchain00168_n14_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_RETURN
xchain00168_n17_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_options_γ
#-----------------------------------------------------------------------------------------------------------------------
# IR_GEN_SCAN
xchain00168_n18_α:
                        mov              rdi, qword ptr [rbp + 3312]
                        mov              rsi, qword ptr [rbp + 3320]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   xchain00168_n20_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00168_n19_α:
# BOX IR_CALL push(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+144] -> [zr+96]
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 104], rax
# marshal arg1 = producer-box slot [zr+176] -> [zr+112]
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn709:              .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn709]
                        lea              rsi, [rbp + 96]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    xchain00168_n14_α
                                                                                        jmp   xchain00168_n11_α
xchain00168_n19_β:
                                                                                        jmp   xchain00168_n14_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_DISJUNCTION_NARY
xchain00168_n20_α:
                        mov              qword ptr [rbp + 432], 0
                        mov              qword ptr [rbp + 440], 0
                        mov              dword ptr [rbp + 448], 0
                                                                                        jmp   xchain00168_n22_α
xchain00168_n20_as:
                        mov              eax, dword ptr [rbp + 448]
                        cmp              eax, 0
                                                                                        jne   .Lx00170_0
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   xchain00168_n21_α
.Lx00170_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00170_1
                        mov              rax, qword ptr [rbp + 3184]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 3192]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   xchain00168_n21_α
.Lx00170_1:
                                                                                        jmp   xchain00168_n21_α
xchain00168_n20_β:
                        mov              eax, dword ptr [rbp + 448]
                        cmp              eax, 0
                                                                                        je    xchain00168_n23_β
                                                                                        jmp   xchain00168_n35_α
xchain00168_n20_af:
                        add              dword ptr [rbp + 448], 1
                        mov              eax, dword ptr [rbp + 448]
                        cmp              eax, 1
                                                                                        je    xchain00168_n24_α
                                                                                        jmp   xchain00168_n35_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_GEN_SCAN
xchain00168_n21_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 408], rax
                        lea              rdi, [rbp + 368]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 368]
                        mov              r14, qword ptr [rbp + 376]
                        mov              r15, qword ptr [rbp + 384]
                                                                                        jmp   xchain00168_n9_α
xchain00168_n21_β:
                        call             rt_scan_reenter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                                                                                        jmp   xchain00168_n20_β
                                                                                        jmp   xchain00168_n9_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain00168_n22_α:
                        mov              qword ptr [rbp + 3152], 1
                        mov              rax, qword ptr [rip + .Lx00171_0]
                        mov              qword ptr [rbp + 3160], rax
                                                                                        jmp   xchain00168_n27_α
xchain00168_n22_β:
                                                                                        jmp   xchain00168_n20_af
.Lx00171_0:
                        .quad            .Lx00171_0_s
.Lx00171_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
# IR_DISJUNCTION_NARY
xchain00168_n23_α:
                        mov              qword ptr [rbp + 560], 0
                        mov              qword ptr [rbp + 568], 0
                        mov              dword ptr [rbp + 576], 0
                                                                                        jmp   xchain00168_n29_α
xchain00168_n23_as:
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 0
                                                                                        jne   .Lx00172_0
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   xchain00168_n28_α
.Lx00172_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00172_1
                        mov              rax, qword ptr [rbp + 2640]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 2648]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   xchain00168_n28_α
.Lx00172_1:
                                                                                        jmp   xchain00168_n28_α
xchain00168_n23_β:
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 0
                                                                                        je    xchain00168_n30_β
                                                                                        jmp   xchain00168_n28_α
xchain00168_n23_af:
                        add              dword ptr [rbp + 576], 1
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 1
                                                                                        je    xchain00168_n31_α
                                                                                        jmp   xchain00168_n28_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00168_n24_α:
                        mov              rax, qword ptr [rbp + 3616]
                        mov              qword ptr [rbp + 3248], rax
                        mov              rax, qword ptr [rbp + 3624]
                        mov              qword ptr [rbp + 3256], rax
                                                                                        jmp   xchain00168_n34_α
xchain00168_n24_β:
                                                                                        jmp   xchain00168_n35_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00168_n25_α:
                                                                                        jmp   xchain00168_n20_as
xchain00168_n25_β:
                                                                                        jmp   xchain00168_n35_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00168_n26_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3248] -> [zr+3200]
                        mov              rax, qword ptr [rbp + 3248]
                        mov              qword ptr [rbp + 3200], rax
                        mov              rax, qword ptr [rbp + 3256]
                        mov              qword ptr [rbp + 3208], rax
# marshal arg1 = producer-box slot [zr+3280] -> [zr+3216]
                        mov              rax, qword ptr [rbp + 3280]
                        mov              qword ptr [rbp + 3216], rax
                        mov              rax, qword ptr [rbp + 3288]
                        mov              qword ptr [rbp + 3224], rax
                        .section         .rodata
.Lrkfn721:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn721]
                        lea              rsi, [rbp + 3200]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3184], rax
                        mov              qword ptr [rbp + 3192], rdx
                        cmp              eax, 99
                                                                                        je    xchain00168_n35_α
                                                                                        jmp   xchain00168_n20_as
xchain00168_n26_β:
                                                                                        jmp   xchain00168_n35_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_SCAN_MATCH
xchain00168_n27_α:
                        sub              rsp, 16
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1
                                                                                        jge   .Lx00173_239
                        add              rsp, 16
                                                                                        jmp   xchain00168_n20_af
.Lx00173_239:
                        mov              rdi, qword ptr [rip + .Lx00173_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 1
                        push             r10
                        call             memcmp@PLT
                        pop              r10
                        test             eax, eax
                                                                                        je    .Lx00173_240
                        add              rsp, 16
                                                                                        jmp   xchain00168_n20_af
.Lx00173_240:
                        mov              qword ptr [rbp + 3120], 6
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 3128], rax
                                                                                        jmp   xchain00168_n36_α
.Lx00173_0:
                        .quad            .Lx00173_0_s
.Lx00173_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain00168_n28_α:
                        mov              qword ptr [rbp + 528], 6
                        mov              rax, qword ptr [rip + .Lx00174_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   xchain00168_n37_α
.Lx00174_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00168_n29_α:
                        mov              rax, qword ptr [rbp + 3648]
                        mov              qword ptr [rbp + 2544], rax
                        mov              rax, qword ptr [rbp + 3656]
                        mov              qword ptr [rbp + 2552], rax
                                                                                        jmp   xchain00168_n38_α
xchain00168_n29_β:
                                                                                        jmp   xchain00168_n23_af
#-----------------------------------------------------------------------------------------------------------------------
# IR_DISJUNCTION_NARY
xchain00168_n30_α:
                        mov              qword ptr [rbp + 704], 0
                        mov              qword ptr [rbp + 712], 0
                        mov              dword ptr [rbp + 720], 0
                                                                                        jmp   xchain00168_n39_α
xchain00168_n30_as:
                        mov              eax, dword ptr [rbp + 720]
                        cmp              eax, 0
                                                                                        jne   .Lx00175_0
                        mov              rax, qword ptr [rbp + 3664]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 3672]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   xchain00168_n32_α
.Lx00175_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00175_1
                        mov              rax, qword ptr [rbp + 2368]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 2376]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   xchain00168_n32_α
.Lx00175_1:
                                                                                        jmp   xchain00168_n32_α
xchain00168_n30_β:
                        mov              eax, dword ptr [rbp + 720]
                        cmp              eax, 0
                                                                                        je    xchain00168_n28_α
                                                                                        jmp   xchain00168_n28_α
xchain00168_n30_af:
                        add              dword ptr [rbp + 720], 1
                        mov              eax, dword ptr [rbp + 720]
                        cmp              eax, 1
                                                                                        je    xchain00168_n40_α
                                                                                        jmp   xchain00168_n28_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain00168_n31_α:
                        mov              qword ptr [rbp + 2704], 1
                        mov              rax, qword ptr [rip + .Lx00176_0]
                        mov              qword ptr [rbp + 2712], rax
                                                                                        jmp   xchain00168_n42_α
xchain00168_n31_β:
                                                                                        jmp   xchain00168_n28_α
.Lx00176_0:
                        .quad            .Lx00176_0_s
.Lx00176_0_s:
                        .string          "Unrecognized option: -"
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN_VAR
xchain00168_n32_α:
                        mov              rdi, qword ptr [rbp + 656]
                        mov              rsi, qword ptr [rbp + 664]
                        mov              rdx, qword ptr [rbp + 704]
                        mov              rcx, qword ptr [rbp + 712]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain00168_n28_α
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   xchain00168_n23_as
xchain00168_n32_β:
                                                                                        jmp   xchain00168_n28_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00168_n33_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2704] -> [zr+2656]
                        mov              rax, qword ptr [rbp + 2704]
                        mov              qword ptr [rbp + 2656], rax
                        mov              rax, qword ptr [rbp + 2712]
                        mov              qword ptr [rbp + 2664], rax
# marshal arg1 = producer-box slot [zr+2736] -> [zr+2672]
                        mov              rax, qword ptr [rbp + 2736]
                        mov              qword ptr [rbp + 2672], rax
                        mov              rax, qword ptr [rbp + 2744]
                        mov              qword ptr [rbp + 2680], rax
                        .section         .rodata
.Lrkfn732:              .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn732]
                        lea              rsi, [rbp + 2656]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2640], rax
                        mov              qword ptr [rbp + 2648], rdx
                        cmp              eax, 99
                                                                                        je    xchain00168_n28_α
                                                                                        jmp   xchain00168_n23_as
xchain00168_n33_β:
                                                                                        jmp   xchain00168_n28_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00168_n34_α:
                        mov              rax, qword ptr [rbp + 3632]
                        mov              qword ptr [rbp + 3280], rax
                        mov              rax, qword ptr [rbp + 3640]
                        mov              qword ptr [rbp + 3288], rax
                                                                                        jmp   xchain00168_n26_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_GEN_SCAN
xchain00168_n35_α:
                        lea              rdi, [rbp + 368]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 368]
                        mov              r14, qword ptr [rbp + 376]
                        mov              r15, qword ptr [rbp + 384]
                                                                                        jmp   xchain00168_n9_α
xchain00168_n35_β:
                                                                                        jmp   xchain00168_n9_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_SCAN_TAB
xchain00168_n36_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 3128]
                        cmp              rax, 1
                                                                                        jge   .Lx00177_0
                        add              rax, r15
                        add              rax, 1
.Lx00177_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00177_239
                        add              rsp, 16
                                                                                        jmp   xchain00168_n20_af
.Lx00177_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00177_240
                        add              rsp, 16
                                                                                        jmp   xchain00168_n20_af
.Lx00177_240:
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
                        mov              qword ptr [rbp + 3088], rax
                        mov              qword ptr [rbp + 3096], rdx
                                                                                        jmp   xchain00168_n43_α
xchain00168_n36_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   xchain00168_n20_af
#-----------------------------------------------------------------------------------------------------------------------
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
xchain00168_n37_α:
                        sub              rsp, 16
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1
                                                                                        jge   .Lx00178_239
                        add              rsp, 16
                                                                                        jmp   xchain00168_n35_α
.Lx00178_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00178_240
                        add              rsp, 16
                                                                                        jmp   xchain00168_n35_α
.Lx00178_240:
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
                                                                                        jmp   xchain00168_n44_α
xchain00168_n37_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   xchain00168_n35_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00168_n38_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 2576], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 2584], rax
                                                                                        jmp   xchain00168_n45_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_CHARSET
xchain00168_n39_α:
                        mov              qword ptr [rbp + 2208], 1
                        mov              dword ptr [rbp + 2212], -1
                        mov              rax, qword ptr [rip + .Lx00179_0]
                        mov              qword ptr [rbp + 2216], rax
                                                                                        jmp   xchain00168_n46_α
xchain00168_n39_β:
                                                                                        jmp   xchain00168_n30_af
.Lx00179_0:
                        .quad            .Lx00179_0_s
.Lx00179_0_s:
                        .string          "+.:"
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain00168_n40_α:
                        mov              qword ptr [rbp + 2368], 6
                        mov              rax, qword ptr [rip + .Lx00180_0]
                        mov              qword ptr [rbp + 2376], rax
                                                                                        jmp   xchain00168_n30_as
xchain00168_n40_β:
                                                                                        jmp   xchain00168_n28_α
.Lx00180_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
xchain00168_n41_α:
                                                                                        jmp   xchain00168_n30_as
xchain00168_n41_β:
                                                                                        jmp   xchain00168_n28_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00168_n42_α:
                        mov              rax, qword ptr [rbp + 3648]
                        mov              qword ptr [rbp + 2736], rax
                        mov              rax, qword ptr [rbp + 3656]
                        mov              qword ptr [rbp + 2744], rax
                                                                                        jmp   xchain00168_n33_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain00168_n43_α:
                        mov              qword ptr [rbp + 3056], 6
                        mov              rax, qword ptr [rip + .Lx00181_0]
                        mov              qword ptr [rbp + 3064], rax
                                                                                        jmp   xchain00168_n47_α
.Lx00181_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
xchain00168_n44_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 3648], rax
                        mov              qword ptr [rbp + 3656], rdx
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   xchain00168_n23_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00168_n45_α:
# BOX CALL_GEN find(...) -> rt_call_arr_gen by-name [four-port generator; alpha zeroes resume cell, beta re-pumps invoke with persisted cell]
# marshal arg0 = producer-box slot [zr+2544] -> [zr+2496]
                        mov              rax, qword ptr [rbp + 2544]
                        mov              qword ptr [rbp + 2496], rax
                        mov              rax, qword ptr [rbp + 2552]
                        mov              qword ptr [rbp + 2504], rax
# marshal arg1 = producer-box slot [zr+2576] -> [zr+2512]
                        mov              rax, qword ptr [rbp + 2576]
                        mov              qword ptr [rbp + 2512], rax
                        mov              rax, qword ptr [rbp + 2584]
                        mov              qword ptr [rbp + 2520], rax
                        mov              qword ptr [rbp + 2528], 0
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
.Lx00182_60:
                        .section         .rodata
.Lbynamegenfn481:       .string          "find"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn481]
                        lea              rsi, [rbp + 2496]
                        mov              edx, 2
                        lea              rcx, [rbp + 2528]
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 2480], rax
                        mov              qword ptr [rbp + 2488], rdx
                        cmp              eax, 99
                                                                                        je    xchain00168_n23_af
                                                                                        jmp   xchain00168_n48_α
xchain00168_n45_β:
                                                                                        jmp   .Lx00182_60
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR_REF
xchain00168_n46_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx
                                                                                        jmp   xchain00168_n49_α
#-----------------------------------------------------------------------------------------------------------------------
# BOX ICN IR_SCAN_POS pos(n) [ICN-SCAN-3 fscan.r: i=cvpos(i,len); succeed iff i==&pos (r14+1); result {DT_I,i} normalized; single-shot beta->omega]
xchain00168_n47_α:
                        mov              rax, 0
                        cmp              rax, 1
                                                                                        jge   .Lx00183_0
                        add              rax, r15
                        add              rax, 1
.Lx00183_0:
                        cmp              rax, 1
                                                                                        jl    xchain00168_n50_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jg    xchain00168_n50_α
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jne   xchain00168_n50_α
                        mov              qword ptr [rbp + 3024], 6
                        mov              qword ptr [rbp + 3032], rax
                                                                                        jmp   xchain00168_n36_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain00168_n48_α:
                        mov              qword ptr [rbp + 2608], 6
                        mov              rax, qword ptr [rip + .Lx00184_0]
                        mov              qword ptr [rbp + 2616], rax
                                                                                        jmp   xchain00168_n51_α
.Lx00184_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00168_n49_α:
                        mov              rax, qword ptr [rbp + 3712]
                        mov              qword ptr [rbp + 2288], rax
                        mov              rax, qword ptr [rbp + 3720]
                        mov              qword ptr [rbp + 2296], rax
                                                                                        jmp   xchain00168_n52_α
#-----------------------------------------------------------------------------------------------------------------------
# KEYWORD_null
xchain00168_n50_α:
                        mov              qword ptr [rbp + 2992], 0
                        mov              qword ptr [rbp + 3000], 0
                                                                                        jmp   xchain00168_n53_α
xchain00168_n50_β:
                                                                                        jmp   xchain00168_n36_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_COERCE_NUMERIC
xchain00168_n51_α:
                        mov              eax, dword ptr [rbp + 2480]
                        cmp              eax, 7
                                                                                        je    .Lx00185_1
                        cmp              eax, 6
                                                                                        jne   .Lx00185_0
                        mov              eax, dword ptr [rbp + 2608]
                        cmp              eax, 6
                                                                                        jne   .Lx00185_0
.Lx00185_1:
                        mov              rax, qword ptr [rbp + 2480]
                        mov              qword ptr [rbp + 2448], rax
                        mov              rax, qword ptr [rbp + 2488]
                        mov              qword ptr [rbp + 2456], rax
                                                                                        jmp   xchain00168_n54_α
.Lx00185_0:
                        lea              rdi, [rbp + 2480]
                        lea              rsi, [rbp + 2608]
                        lea              rdx, [rbp + 2448]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   xchain00168_n54_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_SUBSCRIPT x[i] variable
xchain00168_n52_α:
                        mov              rdi, qword ptr [rbp + 2256]
                        mov              rsi, qword ptr [rbp + 2264]
                        mov              rdx, qword ptr [rbp + 2288]
                        mov              rcx, qword ptr [rbp + 2296]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain00168_n30_af
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx
                                                                                        jmp   xchain00168_n55_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00168_n53_α:
# IR_CONJUNCTION value-forward copy
                        mov              rax, qword ptr [rbp + 2992]
                        mov              qword ptr [rbp + 2976], rax
                        mov              rax, qword ptr [rbp + 3000]
                        mov              qword ptr [rbp + 2984], rax
                                                                                        jmp   xchain00168_n56_α
xchain00168_n53_β:
                                                                                        jmp   xchain00168_n20_af
#-----------------------------------------------------------------------------------------------------------------------
xchain00168_n54_α:
# IR_BINOP_ARITH
                        mov              eax, dword ptr [rbp + 2448]
                        cmp              eax, 100
                                                                                        je    .Lx00186_0
                        mov              eax, dword ptr [rbp + 2448]
                        cmp              eax, 6
                                                                                        jne   .Lx00186_2
.Lx00186_1:
                        mov              rax, qword ptr [rbp + 2456]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 2416], 6
                        mov              qword ptr [rbp + 2424], rax
                                                                                        jmp   xchain00168_n57_α
.Lx00186_0:
                        mov              rdi, qword ptr [rbp + 2448]
                        mov              rsi, qword ptr [rbp + 2456]
                        mov              rdx, qword ptr [rbp + 2608]
                        mov              rcx, qword ptr [rbp + 2616]
                        mov              r8d, 0
                        lea              r9, [rbp + 2416]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   xchain00168_n57_α
.Lx00186_2:
                        mov              rdi, qword ptr [rbp + 2448]
                        mov              rsi, qword ptr [rbp + 2456]
                        mov              rdx, qword ptr [rbp + 2608]
                        mov              rcx, qword ptr [rbp + 2616]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    xchain00168_n23_af
                        mov              qword ptr [rbp + 2416], rax
                        mov              qword ptr [rbp + 2424], rdx
                                                                                        jmp   xchain00168_n57_α
xchain00168_n54_β:
                                                                                        jmp   xchain00168_n23_af
#-----------------------------------------------------------------------------------------------------------------------
# IR_DEREF variable -> value
xchain00168_n55_α:
                        mov              rdi, qword ptr [rbp + 2320]
                        mov              rsi, qword ptr [rbp + 2328]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    xchain00168_n30_af
                        mov              qword ptr [rbp + 2352], rax
                        mov              qword ptr [rbp + 2360], rdx
                                                                                        jmp   xchain00168_n58_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_DISJUNCTION_NARY
xchain00168_n56_α:
                        mov              qword ptr [rbp + 2768], 0
                        mov              qword ptr [rbp + 2776], 0
                        mov              dword ptr [rbp + 2784], 0
                                                                                        jmp   xchain00168_n59_α
xchain00168_n56_as:
                        mov              eax, dword ptr [rbp + 2784]
                        cmp              eax, 0
                                                                                        jne   .Lx00187_0
                                                                                        jmp   xchain00168_n28_α
.Lx00187_0:
                                                                                        jmp   xchain00168_n28_α
xchain00168_n56_β:
                        mov              eax, dword ptr [rbp + 2784]
                                                                                        jmp   xchain00168_n28_α
xchain00168_n56_af:
                        add              dword ptr [rbp + 2784], 1
                        mov              eax, dword ptr [rbp + 2784]
                                                                                        jmp   xchain00168_n28_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00168_n57_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 2416]
                        mov              rdx, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 3712], rax
                        mov              qword ptr [rbp + 3720], rdx
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx
                                                                                        jmp   xchain00168_n60_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00168_n58_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 2352]
                        mov              rdx, qword ptr [rbp + 2360]
                        mov              qword ptr [rbp + 3680], rax
                        mov              qword ptr [rbp + 3688], rdx
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                                                                                        jmp   xchain00168_n61_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain00168_n59_α:
                        mov              qword ptr [rbp + 2944], 1
                        mov              rax, qword ptr [rip + .Lx00188_0]
                        mov              qword ptr [rbp + 2952], rax
                                                                                        jmp   xchain00168_n62_α
xchain00168_n59_β:
                                                                                        jmp   xchain00168_n56_af
.Lx00188_0:
                        .quad            .Lx00188_0_s
.Lx00188_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR_REF
xchain00168_n60_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3600]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   xchain00168_n63_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00168_n61_α:
# BOX CALL any(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [zr+2208] -> [zr+2160]
                        mov              rax, qword ptr [rbp + 2208]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 2216]
                        mov              qword ptr [rbp + 2168], rax
# marshal arg1 = producer-box slot [zr+2240] -> [zr+2176]
                        mov              rax, qword ptr [rbp + 2240]
                        mov              qword ptr [rbp + 2176], rax
                        mov              rax, qword ptr [rbp + 2248]
                        mov              qword ptr [rbp + 2184], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn497:          .string          "any"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn497]
                        lea              rsi, [rbp + 2160]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    xchain00168_n30_af
                                                                                        jmp   xchain00168_n64_α
xchain00168_n61_β:
                                                                                        jmp   xchain00168_n30_af
#-----------------------------------------------------------------------------------------------------------------------
# IR_SCAN_MATCH
xchain00168_n62_α:
                        sub              rsp, 16
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1
                                                                                        jge   .Lx00189_239
                        add              rsp, 16
                                                                                        jmp   xchain00168_n56_af
.Lx00189_239:
                        mov              rdi, qword ptr [rip + .Lx00189_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 1
                        push             r10
                        call             memcmp@PLT
                        pop              r10
                        test             eax, eax
                                                                                        je    .Lx00189_240
                        add              rsp, 16
                                                                                        jmp   xchain00168_n56_af
.Lx00189_240:
                        mov              qword ptr [rbp + 2912], 6
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 2920], rax
                                                                                        jmp   xchain00168_n65_α
.Lx00189_0:
                        .quad            .Lx00189_0_s
.Lx00189_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00168_n63_α:
                        mov              rax, qword ptr [rbp + 3648]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 3656]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   xchain00168_n66_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_DISJUNCTION_NARY
xchain00168_n64_α:
                        mov              qword ptr [rbp + 1776], 0
                        mov              qword ptr [rbp + 1784], 0
                        mov              dword ptr [rbp + 1792], 0
                                                                                        jmp   xchain00168_n68_α
xchain00168_n64_as:
                        mov              eax, dword ptr [rbp + 1792]
                        cmp              eax, 0
                                                                                        jne   .Lx00190_0
                        mov              rax, qword ptr [rbp + 1808]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 1784], rax
                                                                                        jmp   xchain00168_n67_α
.Lx00190_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00190_1
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 1784], rax
                                                                                        jmp   xchain00168_n67_α
.Lx00190_1:
                        cmp              eax, 2
                                                                                        jne   .Lx00190_2
                        mov              rax, qword ptr [rbp + 2016]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 2024]
                        mov              qword ptr [rbp + 1784], rax
                                                                                        jmp   xchain00168_n67_α
.Lx00190_2:
                                                                                        jmp   xchain00168_n67_α
xchain00168_n64_β:
                        mov              eax, dword ptr [rbp + 1792]
                        cmp              eax, 0
                                                                                        je    xchain00168_n64_af
                        cmp              eax, 1
                                                                                        je    xchain00168_n64_af
                                                                                        jmp   xchain00168_n64_af
xchain00168_n64_af:
                        add              dword ptr [rbp + 1792], 1
                        mov              eax, dword ptr [rbp + 1792]
                        cmp              eax, 1
                                                                                        je    xchain00168_n69_α
                        cmp              eax, 2
                                                                                        je    xchain00168_n70_α
                                                                                        jmp   xchain00168_n75_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_SCAN_TAB
xchain00168_n65_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 2920]
                        cmp              rax, 1
                                                                                        jge   .Lx00191_0
                        add              rax, r15
                        add              rax, 1
.Lx00191_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00191_239
                        add              rsp, 16
                                                                                        jmp   xchain00168_n56_af
.Lx00191_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00191_240
                        add              rsp, 16
                                                                                        jmp   xchain00168_n56_af
.Lx00191_240:
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
                        mov              qword ptr [rbp + 2880], rax
                        mov              qword ptr [rbp + 2888], rdx
                                                                                        jmp   xchain00168_n74_α
xchain00168_n65_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   xchain00168_n56_af
#-----------------------------------------------------------------------------------------------------------------------
# IR_SUBSCRIPT x[i] variable
xchain00168_n66_α:
                        mov              rdi, qword ptr [rbp + 592]
                        mov              rsi, qword ptr [rbp + 600]
                        mov              rdx, qword ptr [rbp + 624]
                        mov              rcx, qword ptr [rbp + 632]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain00168_n28_α
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   xchain00168_n30_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00168_n67_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 1776]
                        mov              rdx, qword ptr [rbp + 1784]
                        mov              qword ptr [rbp + 3696], rax
                        mov              qword ptr [rbp + 3704], rdx
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx
                                                                                        jmp   xchain00168_n75_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain00168_n68_α:
                        mov              qword ptr [rbp + 1840], 1
                        mov              rax, qword ptr [rip + .Lx00192_0]
                        mov              qword ptr [rbp + 1848], rax
                                                                                        jmp   xchain00168_n76_α
xchain00168_n68_β:
                                                                                        jmp   xchain00168_n64_af
.Lx00192_0:
                        .quad            .Lx00192_0_s
.Lx00192_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00168_n69_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1984], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1992], rax
                                                                                        jmp   xchain00168_n72_α
xchain00168_n69_β:
                                                                                        jmp   xchain00168_n64_af
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain00168_n70_α:
                        mov              qword ptr [rbp + 2080], 1
                        mov              rax, qword ptr [rip + .Lx00193_0]
                        mov              qword ptr [rbp + 2088], rax
                                                                                        jmp   xchain00168_n77_α
xchain00168_n70_β:
                                                                                        jmp   xchain00168_n64_af
.Lx00193_0:
                        .quad            .Lx00193_0_s
.Lx00193_0_s:
                        .string          "No parameter following -"
#-----------------------------------------------------------------------------------------------------------------------
xchain00168_n71_α:
# IR_BINOP_TEST
                        mov              rdi, qword ptr [rbp + 1840]
                        mov              rsi, qword ptr [rbp + 1848]
                        mov              rdx, qword ptr [rbp + 1872]
                        mov              rcx, qword ptr [rbp + 1880]
                        mov              r8d, 17
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    xchain00168_n64_af
                        mov              rdi, qword ptr [rbp + 1872]
                        mov              rsi, qword ptr [rbp + 1880]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                                                                                        jmp   xchain00168_n64_as
xchain00168_n71_β:
                                                                                        jmp   xchain00168_n64_af
#-----------------------------------------------------------------------------------------------------------------------
xchain00168_n72_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1984] -> [zr+1952]
                        mov              rax, qword ptr [rbp + 1984]
                        mov              qword ptr [rbp + 1952], rax
                        mov              rax, qword ptr [rbp + 1992]
                        mov              qword ptr [rbp + 1960], rax
                        .section         .rodata
.Lrkfn789:              .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn789]
                        lea              rsi, [rbp + 1952]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx
                        cmp              eax, 99
                                                                                        je    xchain00168_n64_af
                                                                                        jmp   xchain00168_n64_as
xchain00168_n72_β:
                                                                                        jmp   xchain00168_n64_af
#-----------------------------------------------------------------------------------------------------------------------
xchain00168_n73_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2080] -> [zr+2032]
                        mov              rax, qword ptr [rbp + 2080]
                        mov              qword ptr [rbp + 2032], rax
                        mov              rax, qword ptr [rbp + 2088]
                        mov              qword ptr [rbp + 2040], rax
# marshal arg1 = producer-box slot [zr+2112] -> [zr+2048]
                        mov              rax, qword ptr [rbp + 2112]
                        mov              qword ptr [rbp + 2048], rax
                        mov              rax, qword ptr [rbp + 2120]
                        mov              qword ptr [rbp + 2056], rax
                        .section         .rodata
.Lrkfn791:              .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn791]
                        lea              rsi, [rbp + 2032]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2016], rax
                        mov              qword ptr [rbp + 2024], rdx
                        cmp              eax, 99
                                                                                        je    xchain00168_n64_af
                                                                                        jmp   xchain00168_n64_as
xchain00168_n73_β:
                                                                                        jmp   xchain00168_n64_af
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain00168_n74_α:
                        mov              qword ptr [rbp + 2848], 6
                        mov              rax, qword ptr [rip + .Lx00194_0]
                        mov              qword ptr [rbp + 2856], rax
                                                                                        jmp   xchain00168_n78_α
.Lx00194_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00168_n75_α:
                        mov              rax, qword ptr [rbp + 3680]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 3688]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   xchain00168_n79_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain00168_n76_α:
                        mov              qword ptr [rbp + 1904], 6
                        mov              rax, qword ptr [rip + .Lx00195_0]
                        mov              qword ptr [rbp + 1912], rax
                                                                                        jmp   xchain00168_n80_α
.Lx00195_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00168_n77_α:
                        mov              rax, qword ptr [rbp + 3648]
                        mov              qword ptr [rbp + 2112], rax
                        mov              rax, qword ptr [rbp + 3656]
                        mov              qword ptr [rbp + 2120], rax
                                                                                        jmp   xchain00168_n73_α
#-----------------------------------------------------------------------------------------------------------------------
# BOX ICN IR_SCAN_POS pos(n) [ICN-SCAN-3 fscan.r: i=cvpos(i,len); succeed iff i==&pos (r14+1); result {DT_I,i} normalized; single-shot beta->omega]
xchain00168_n78_α:
                        mov              rax, 0
                        cmp              rax, 1
                                                                                        jge   .Lx00196_0
                        add              rax, r15
                        add              rax, 1
.Lx00196_0:
                        cmp              rax, 1
                                                                                        jl    xchain00168_n65_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jg    xchain00168_n65_α
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jne   xchain00168_n65_α
                        mov              qword ptr [rbp + 2816], 6
                        mov              qword ptr [rbp + 2824], rax
                                                                                        jmp   xchain00168_n81_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain00168_n79_α:
                        mov              qword ptr [rbp + 1616], 1
                        mov              rax, qword ptr [rip + .Lx00197_0]
                        mov              qword ptr [rbp + 1624], rax
                                                                                        jmp   xchain00168_n82_α
.Lx00197_0:
                        .quad            .Lx00197_0_s
.Lx00197_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
# IR_SCAN_TAB
xchain00168_n80_α:
                        sub              rsp, 16
                        mov              rax, 0
                        cmp              rax, 1
                                                                                        jge   .Lx00198_0
                        add              rax, r15
                        add              rax, 1
.Lx00198_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00198_239
                        add              rsp, 16
                                                                                        jmp   xchain00168_n64_af
.Lx00198_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00198_240
                        add              rsp, 16
                                                                                        jmp   xchain00168_n64_af
.Lx00198_240:
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
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                                                                                        jmp   xchain00168_n71_α
xchain00168_n80_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   xchain00168_n64_af
#-----------------------------------------------------------------------------------------------------------------------
xchain00168_n81_α:
# IR_CONJUNCTION value-forward copy
                        mov              rax, qword ptr [rbp + 2816]
                        mov              qword ptr [rbp + 2800], rax
                        mov              rax, qword ptr [rbp + 2824]
                        mov              qword ptr [rbp + 2808], rax
                                                                                        jmp   xchain00168_n11_α
xchain00168_n81_β:
                                                                                        jmp   xchain00168_n56_af
#-----------------------------------------------------------------------------------------------------------------------
xchain00168_n82_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+784] -> [zr+1712]
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 1712], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 1720], rax
# marshal arg1 = producer-box slot [zr+1616] -> [zr+1728]
                        mov              rax, qword ptr [rbp + 1616]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 1624]
                        mov              qword ptr [rbp + 1736], rax
                        .section         .rodata
.Lrkfn805:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn805]
                        lea              rsi, [rbp + 1712]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                        cmp              eax, 99
                                                                                        je    xchain00168_n84_α
                                                                                        jmp   xchain00168_n83_α
xchain00168_n82_β:
                                                                                        jmp   xchain00168_n84_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00168_n83_α:
                        mov              rax, qword ptr [rbp + 3696]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 3704]
                        mov              qword ptr [rbp + 1656], rax
                                                                                        jmp   xchain00168_n85_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain00168_n84_α:
                        mov              qword ptr [rbp + 1216], 1
                        mov              rax, qword ptr [rip + .Lx00199_0]
                        mov              qword ptr [rbp + 1224], rax
                                                                                        jmp   xchain00168_n86_α
.Lx00199_0:
                        .quad            .Lx00199_0_s
.Lx00199_0_s:
                        .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
xchain00168_n85_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 1648]
                        mov              rdx, qword ptr [rbp + 1656]
                        mov              qword ptr [rbp + 3664], rax
                        mov              qword ptr [rbp + 3672], rdx
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
                                                                                        jmp   xchain00168_n87_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00168_n86_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+784] -> [zr+1568]
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 1576], rax
# marshal arg1 = producer-box slot [zr+1216] -> [zr+1584]
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1592], rax
                        .section         .rodata
.Lrkfn811:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn811]
                        lea              rsi, [rbp + 1568]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                        cmp              eax, 99
                                                                                        je    xchain00168_n89_α
                                                                                        jmp   xchain00168_n88_α
xchain00168_n86_β:
                                                                                        jmp   xchain00168_n89_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00168_n87_α:
                        mov              rax, qword ptr [rbp + 3664]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 3672]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   xchain00168_n41_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_DISJUNCTION_NARY
xchain00168_n88_α:
                        mov              qword ptr [rbp + 1248], 0
                        mov              qword ptr [rbp + 1256], 0
                        mov              dword ptr [rbp + 1264], 0
                                                                                        jmp   xchain00168_n91_α
xchain00168_n88_as:
                        mov              eax, dword ptr [rbp + 1264]
                        cmp              eax, 0
                                                                                        jne   .Lx00200_0
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   xchain00168_n90_α
.Lx00200_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00200_1
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   xchain00168_n90_α
.Lx00200_1:
                                                                                        jmp   xchain00168_n90_α
xchain00168_n88_β:
                        mov              eax, dword ptr [rbp + 1264]
                        cmp              eax, 0
                                                                                        je    xchain00168_n88_af
                                                                                        jmp   xchain00168_n88_af
xchain00168_n88_af:
                        add              dword ptr [rbp + 1264], 1
                        mov              eax, dword ptr [rbp + 1264]
                        cmp              eax, 1
                                                                                        je    xchain00168_n92_α
                                                                                        jmp   xchain00168_n28_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain00168_n89_α:
                        mov              qword ptr [rbp + 816], 1
                        mov              rax, qword ptr [rip + .Lx00201_0]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   xchain00168_n95_α
.Lx00201_0:
                        .quad            .Lx00201_0_s
.Lx00201_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
xchain00168_n90_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 1248]
                        mov              rdx, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 3664], rax
                        mov              qword ptr [rbp + 3672], rdx
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                                                                                        jmp   xchain00168_n87_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00168_n91_α:
                        mov              rax, qword ptr [rbp + 3696]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 3704]
                        mov              qword ptr [rbp + 1336], rax
                                                                                        jmp   xchain00168_n93_α
xchain00168_n91_β:
                                                                                        jmp   xchain00168_n88_af
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain00168_n92_α:
                        mov              qword ptr [rbp + 1440], 1
                        mov              rax, qword ptr [rip + .Lx00202_0]
                        mov              qword ptr [rbp + 1448], rax
                                                                                        jmp   xchain00168_n96_α
xchain00168_n92_β:
                                                                                        jmp   xchain00168_n88_af
.Lx00202_0:
                        .quad            .Lx00202_0_s
.Lx00202_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
xchain00168_n93_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1328] -> [zr+1296]
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1304], rax
                        .section         .rodata
.Lrkfn822:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn822]
                        lea              rsi, [rbp + 1296]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                        cmp              eax, 99
                                                                                        je    xchain00168_n88_af
                                                                                        jmp   xchain00168_n88_as
xchain00168_n93_β:
                                                                                        jmp   xchain00168_n88_af
#-----------------------------------------------------------------------------------------------------------------------
xchain00168_n94_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1440] -> [zr+1376]
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 1384], rax
# marshal arg1 = producer-box slot [zr+1472] -> [zr+1392]
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1400], rax
# marshal arg2 = producer-box slot [zr+1504] -> [zr+1408]
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1416], rax
                        .section         .rodata
.Lrkfn824:              .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn824]
                        lea              rsi, [rbp + 1376]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                        cmp              eax, 99
                                                                                        je    xchain00168_n88_af
                                                                                        jmp   xchain00168_n88_as
xchain00168_n94_β:
                                                                                        jmp   xchain00168_n88_af
#-----------------------------------------------------------------------------------------------------------------------
xchain00168_n95_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+784] -> [zr+1168]
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 1176], rax
# marshal arg1 = producer-box slot [zr+816] -> [zr+1184]
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 1192], rax
                        .section         .rodata
.Lrkfn826:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn826]
                        lea              rsi, [rbp + 1168]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        cmp              eax, 99
                                                                                        je    xchain00168_n28_α
                                                                                        jmp   xchain00168_n97_α
xchain00168_n95_β:
                                                                                        jmp   xchain00168_n28_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00168_n96_α:
                        mov              rax, qword ptr [rbp + 3648]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 3656]
                        mov              qword ptr [rbp + 1480], rax
                                                                                        jmp   xchain00168_n98_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_DISJUNCTION_NARY
xchain00168_n97_α:
                        mov              qword ptr [rbp + 848], 0
                        mov              qword ptr [rbp + 856], 0
                        mov              dword ptr [rbp + 864], 0
                                                                                        jmp   xchain00168_n00203_α
xchain00168_n97_as:
                        mov              eax, dword ptr [rbp + 864]
                        cmp              eax, 0
                                                                                        jne   .Lx00204_0
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   xchain00168_n99_α
.Lx00204_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00204_1
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   xchain00168_n99_α
.Lx00204_1:
                                                                                        jmp   xchain00168_n99_α
xchain00168_n97_β:
                        mov              eax, dword ptr [rbp + 864]
                        cmp              eax, 0
                                                                                        je    xchain00168_n97_af
                                                                                        jmp   xchain00168_n97_af
xchain00168_n97_af:
                        add              dword ptr [rbp + 864], 1
                        mov              eax, dword ptr [rbp + 864]
                        cmp              eax, 1
                                                                                        je    xchain00168_n00205_α
                                                                                        jmp   xchain00168_n28_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain00168_n98_α:
                        mov              qword ptr [rbp + 1504], 1
                        mov              rax, qword ptr [rip + .Lx00206_0]
                        mov              qword ptr [rbp + 1512], rax
                                                                                        jmp   xchain00168_n94_α
.Lx00206_0:
                        .quad            .Lx00206_0_s
.Lx00206_0_s:
                        .string          " needs numeric parameter"
#-----------------------------------------------------------------------------------------------------------------------
xchain00168_n99_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 848]
                        mov              rdx, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 3664], rax
                        mov              qword ptr [rbp + 3672], rdx
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   xchain00168_n87_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00168_n00203_α:
                        mov              rax, qword ptr [rbp + 3696]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 3704]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   xchain00168_n00001_α
xchain00168_n00203_β:
                                                                                        jmp   xchain00168_n97_af
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain00168_n00205_α:
                        mov              qword ptr [rbp + 1040], 1
                        mov              rax, qword ptr [rip + .Lx00207_0]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   xchain00168_n00002_α
xchain00168_n00205_β:
                                                                                        jmp   xchain00168_n97_af
.Lx00207_0:
                        .quad            .Lx00207_0_s
.Lx00207_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
xchain00168_n00001_α:
# BOX IR_CALL real(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+928] -> [zr+896]
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 904], rax
                        .section         .rodata
.Lrkfn837:              .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn837]
                        lea              rsi, [rbp + 896]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              eax, 99
                                                                                        je    xchain00168_n97_af
                                                                                        jmp   xchain00168_n97_as
xchain00168_n00001_β:
                                                                                        jmp   xchain00168_n97_af
#-----------------------------------------------------------------------------------------------------------------------
xchain00168_n00208_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1040] -> [zr+976]
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 984], rax
# marshal arg1 = producer-box slot [zr+1072] -> [zr+992]
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1000], rax
# marshal arg2 = producer-box slot [zr+1104] -> [zr+1008]
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1016], rax
                        .section         .rodata
.Lrkfn839:              .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn839]
                        lea              rsi, [rbp + 976]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        cmp              eax, 99
                                                                                        je    xchain00168_n97_af
                                                                                        jmp   xchain00168_n97_as
xchain00168_n00208_β:
                                                                                        jmp   xchain00168_n97_af
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00168_n00002_α:
                        mov              rax, qword ptr [rbp + 3648]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 3656]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   xchain00168_n00209_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain00168_n00209_α:
                        mov              qword ptr [rbp + 1104], 1
                        mov              rax, qword ptr [rip + .Lx00210_0]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   xchain00168_n00208_α
.Lx00210_0:
                        .quad            .Lx00210_0_s
.Lx00210_0_s:
                        .string          " needs numeric parameter"
#-----------------------------------------------------------------------------------------------------------------------
proc_options_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_options_β:
                                                                                        jmp   proc_options_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_options_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 3736]
                        lea              rsp, [rbp + 3760]
                        mov              rbp, [rbp + 3752]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_options_ω:
                        mov              rax, [rbp + 3744]
                        lea              rsp, [rbp + 3760]
                        mov              rbp, [rbp + 3752]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_options_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
                        pop              r11
                        sub              rsp, 3776
                        mov              qword ptr [rsp + 3768], rbp
                        mov              rbp, rsp
                        add              rbp, 16
                        mov              qword ptr [rbp + 3728], r11
                        lea              rax, [rip + .Lx00211_2]
                        mov              qword ptr [rbp + 3736], rax
                        lea              rax, [rip + .Lx00211_3]
                        mov              qword ptr [rbp + 3744], rax
                        mov              qword ptr [rbp + 3592], rbp
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              rdi, rbp
                        mov              esi, 3584
                        mov              edx, 3728
                        mov              ecx, 2
                        mov              r8d, 2
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_options_α_body
.Lx00211_2:
                        mov              rdx, qword ptr [rsp + -3776]
                        mov              rcx, rsp
                        add              rcx, -3760
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00211_3:
                        mov              rdi, qword ptr [rsp + -3776]
                        mov              rsi, rsp
                        add              rsi, -3760
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_Init___α
proc_Init___α:
                        .global          proc_Init___α
                        .global          proc_Init___β
                        .global          proc_Init___γ
                        .global          proc_Init___ω
                        sub              rsp, 624
                        mov              [rsp + 600], rcx
                        mov              [rsp + 608], rdx
                        mov              [rsp + 616], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 552], rsp
                        mov              rdi, rsp
                        mov              esi, 544
                        mov              edx, 592
                        call             rt_jmp_frame_lexprep2@PLT
proc_Init___α_body:
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00212_n0_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   xchain00212_n1_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain00212_n1_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              rdx, qword ptr [rbp + 520]
                        mov              qword ptr [1879052416], rax
                        mov              qword ptr [1879052424], rdx
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   xchain00212_n2_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00212_n2_α:
                        call             proc_Signature___dcα
                                                                                        jmp   .Lx00213_2
.Lx00213_2:
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 99
                                                                                        je    xchain00212_n3_α
                                                                                        jmp   xchain00212_n3_α
xchain00212_n2_β:
                                                                                        jmp   xchain00212_n3_α
.Lx00213_0:
                        .quad            .Lx00213_0_s
.Lx00213_0_s:
                        .string          "Signature__"
#-----------------------------------------------------------------------------------------------------------------------
xchain00212_n3_α:
                        call             proc_Regions___dcα
                                                                                        jmp   .Lx00214_2
.Lx00214_2:
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    xchain00212_n4_α
                                                                                        jmp   xchain00212_n4_α
xchain00212_n3_β:
                                                                                        jmp   xchain00212_n4_α
.Lx00214_0:
                        .quad            .Lx00214_0_s
.Lx00214_0_s:
                        .string          "Regions__"
#-----------------------------------------------------------------------------------------------------------------------
xchain00212_n4_α:
                        call             proc_Time___dcα
                                                                                        jmp   .Lx00215_2
.Lx00215_2:
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    xchain00212_n5_α
                                                                                        jmp   xchain00212_n5_α
xchain00212_n4_β:
                                                                                        jmp   xchain00212_n5_α
.Lx00215_0:
                        .quad            .Lx00215_0_s
.Lx00215_0_s:
                        .string          "Time__"
#-----------------------------------------------------------------------------------------------------------------------
# IR_DISJUNCTION_NARY
xchain00212_n5_α:
                        mov              qword ptr [rbp + 192], 0
                        mov              qword ptr [rbp + 200], 0
                        mov              dword ptr [rbp + 208], 0
                                                                                        jmp   xchain00212_n7_α
xchain00212_n5_as:
                        mov              eax, dword ptr [rbp + 208]
                        cmp              eax, 0
                                                                                        jne   .Lx00216_0
                                                                                        jmp   xchain00212_n6_α
.Lx00216_0:
                                                                                        jmp   xchain00212_n6_α
xchain00212_n5_β:
                        mov              eax, dword ptr [rbp + 208]
                                                                                        jmp   xchain00212_n6_α
xchain00212_n5_af:
                        add              dword ptr [rbp + 208], 1
                        mov              eax, dword ptr [rbp + 208]
                                                                                        jmp   xchain00212_n6_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00212_n6_α:
                        mov              rdi, qword ptr [rip + .Lx00217_0]
                        call             NV_GET_fn@PLT
                        cmp              eax, 99
                                                                                        je    xchain00212_n10_α
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   xchain00212_n9_α
.Lx00217_0:
                        .quad            .Lx00217_0_s
.Lx00217_0_s:
                        .string          "write"
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain00212_n7_α:
                        mov              qword ptr [rbp + 368], 1
                        mov              rax, qword ptr [rip + .Lx00218_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   xchain00212_n11_α
xchain00212_n7_β:
                                                                                        jmp   xchain00212_n5_af
.Lx00218_0:
                        .quad            .Lx00218_0_s
.Lx00218_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
xchain00212_n8_α:
                                                                                        jmp   xchain00212_n5_as
xchain00212_n8_β:
                                                                                        jmp   xchain00212_n6_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain00212_n9_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        mov              qword ptr [1879052384], rax
                        mov              qword ptr [1879052392], rdx
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   xchain00212_n10_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00212_n10_α:
                        mov              rdi, qword ptr [rip + .Lx00219_0]
                        call             NV_GET_fn@PLT
                        cmp              eax, 99
                                                                                        je    xchain00212_n13_α
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                                                                                        jmp   xchain00212_n12_α
.Lx00219_0:
                        .quad            .Lx00219_0_s
.Lx00219_0_s:
                        .string          "writes"
#-----------------------------------------------------------------------------------------------------------------------
xchain00212_n11_α:
# BOX IR_CALL getenv(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+368] -> [zr+336]
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                        .section         .rodata
.Lrkfn862:              .string          "getenv"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn862]
                        lea              rsi, [rbp + 336]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    xchain00212_n5_af
                                                                                        jmp   xchain00212_n14_α
xchain00212_n11_β:
                                                                                        jmp   xchain00212_n5_af
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain00212_n12_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        mov              qword ptr [1879052400], rax
                        mov              qword ptr [1879052408], rdx
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   xchain00212_n13_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain00212_n13_α:
                        mov              qword ptr [rbp + 64], 6
                        mov              rax, qword ptr [rip + .Lx00220_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   xchain00212_n15_α
.Lx00220_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain00212_n14_α:
                        mov              qword ptr [rbp + 288], 1
                        mov              rax, qword ptr [rip + .Lx00221_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   xchain00212_n16_α
.Lx00221_0:
                        .quad            .Lx00221_0_s
.Lx00221_0_s:
                        .string          "*** Benchmarking with output ***"
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN global
xchain00212_n15_α:
                        mov              rsi, qword ptr [rbp + 64]
                        mov              rdx, qword ptr [rbp + 72]
                        mov              rdi, qword ptr [rip + .Lx00222_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                                                                                        jmp   xchain00212_n17_α
.Lx00222_0:
                        .quad            .Lx00222_0_s
.Lx00222_0_s:
                        .string          "writes"
#-----------------------------------------------------------------------------------------------------------------------
xchain00212_n16_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+288] -> [zr+256]
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 264], rax
                        .section         .rodata
.Lrkfn868:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn868]
                        lea              rsi, [rbp + 256]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    xchain00212_n18_α
                                                                                        jmp   xchain00212_n18_α
xchain00212_n16_β:
                                                                                        jmp   xchain00212_n18_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN global
xchain00212_n17_α:
                        mov              rsi, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56]
                        mov              rdi, qword ptr [rip + .Lx00223_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                                                                                        jmp   xchain00212_n19_α
.Lx00223_0:
                        .quad            .Lx00223_0_s
.Lx00223_0_s:
                        .string          "write"
#-----------------------------------------------------------------------------------------------------------------------
# IR_RETURN
xchain00212_n18_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_Init___γ
#-----------------------------------------------------------------------------------------------------------------------
# IR_RETURN
xchain00212_n19_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_Init___γ
#-----------------------------------------------------------------------------------------------------------------------
proc_Init___res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_Init___β:
                                                                                        jmp   proc_Init___ω
#-----------------------------------------------------------------------------------------------------------------------
proc_Init___γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 600]
                        lea              rsp, [rbp + 624]
                        mov              rbp, [rbp + 616]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_Init___ω:
                        mov              rax, [rbp + 608]
                        lea              rsp, [rbp + 624]
                        mov              rbp, [rbp + 616]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_Init___dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
                        pop              r11
                        sub              rsp, 640
                        mov              qword ptr [rsp + 632], rbp
                        mov              rbp, rsp
                        add              rbp, 16
                        mov              qword ptr [rbp + 592], r11
                        lea              rax, [rip + .Lx00224_2]
                        mov              qword ptr [rbp + 600], rax
                        lea              rax, [rip + .Lx00224_3]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 552], rbp
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 544
                        mov              edx, 592
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_Init___α_body
.Lx00224_2:
                        mov              rdx, qword ptr [rsp + -640]
                        mov              rcx, rsp
                        add              rcx, -624
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00224_3:
                        mov              rdi, qword ptr [rsp + -640]
                        mov              rsi, rsp
                        add              rsi, -624
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_Term___α
proc_Term___α:
                        .global          proc_Term___α
                        .global          proc_Term___β
                        .global          proc_Term___γ
                        .global          proc_Term___ω
                        sub              rsp, 624
                        mov              [rsp + 600], rcx
                        mov              [rsp + 608], rdx
                        mov              [rsp + 616], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 552], rsp
                        mov              rdi, rsp
                        mov              esi, 544
                        mov              edx, 592
                        call             rt_jmp_frame_lexprep2@PLT
proc_Term___α_body:
#-----------------------------------------------------------------------------------------------------------------------
# IR_DISJUNCTION_NARY
xchain00225_n0_α:
                        mov              qword ptr [rbp + 288], 0
                        mov              qword ptr [rbp + 296], 0
                        mov              dword ptr [rbp + 304], 0
                                                                                        jmp   xchain00225_n2_α
xchain00225_n0_as:
                        mov              eax, dword ptr [rbp + 304]
                        cmp              eax, 0
                                                                                        jne   .Lx00226_0
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   xchain00225_n1_α
.Lx00226_0:
                                                                                        jmp   xchain00225_n1_α
xchain00225_n0_β:
                        mov              eax, dword ptr [rbp + 304]
                                                                                        jmp   xchain00225_n1_α
xchain00225_n0_af:
                        add              dword ptr [rbp + 304], 1
                        mov              eax, dword ptr [rbp + 304]
                                                                                        jmp   xchain00225_n1_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00225_n1_α:
                        mov              rax, qword ptr [1879052416]
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   xchain00225_n4_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain00225_n2_α:
                        mov              qword ptr [rbp + 512], 1
                        mov              rax, qword ptr [rip + .Lx00227_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   xchain00225_n6_α
xchain00225_n2_β:
                                                                                        jmp   xchain00225_n9_α
.Lx00227_0:
                        .quad            .Lx00227_0_s
.Lx00227_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
xchain00225_n3_α:
                                                                                        jmp   xchain00225_n0_as
xchain00225_n3_β:
                                                                                        jmp   xchain00225_n1_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain00225_n4_α:
                        mov              qword ptr [rbp + 224], 1
                        mov              rax, qword ptr [rip + .Lx00228_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   xchain00225_n7_α
.Lx00228_0:
                        .quad            .Lx00228_0_s
.Lx00228_0_s:
                        .string          " elapsed time = "
#-----------------------------------------------------------------------------------------------------------------------
xchain00225_n5_α:
                        call             proc_Regions___dcα
                                                                                        jmp   .Lx00229_2
.Lx00229_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    xchain00225_n8_α
                                                                                        jmp   xchain00225_n8_α
xchain00225_n5_β:
                                                                                        jmp   xchain00225_n8_α
.Lx00229_0:
                        .quad            .Lx00229_0_s
.Lx00229_0_s:
                        .string          "Regions__"
#-----------------------------------------------------------------------------------------------------------------------
xchain00225_n6_α:
# BOX IR_CALL getenv(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+512] -> [zr+480]
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 488], rax
                        .section         .rodata
.Lrkfn883:              .string          "getenv"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn883]
                        lea              rsi, [rbp + 480]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 99
                                                                                        je    xchain00225_n9_α
                                                                                        jmp   xchain00225_n0_af
xchain00225_n6_β:
                                                                                        jmp   xchain00225_n9_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00225_n7_α:
                        call             proc_Time___dcα
                                                                                        jmp   .Lx00230_2
.Lx00230_2:
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 99
                                                                                        je    xchain00225_n5_α
                                                                                        jmp   xchain00225_n10_α
xchain00225_n7_β:
                                                                                        jmp   xchain00225_n5_α
.Lx00230_0:
                        .quad            .Lx00230_0_s
.Lx00230_0_s:
                        .string          "Time__"
#-----------------------------------------------------------------------------------------------------------------------
xchain00225_n8_α:
                        call             proc_Storage___dcα
                                                                                        jmp   .Lx00231_2
.Lx00231_2:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    xchain00225_n11_α
                                                                                        jmp   xchain00225_n11_α
xchain00225_n8_β:
                                                                                        jmp   xchain00225_n11_α
.Lx00231_0:
                        .quad            .Lx00231_0_s
.Lx00231_0_s:
                        .string          "Storage__"
#-----------------------------------------------------------------------------------------------------------------------
# KEYWORD_null
xchain00225_n9_α:
                        mov              qword ptr [rbp + 432], 0
                        mov              qword ptr [rbp + 440], 0
                                                                                        jmp   xchain00225_n12_α
xchain00225_n9_β:
                                                                                        jmp   xchain00225_n0_af
#-----------------------------------------------------------------------------------------------------------------------
xchain00225_n10_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+192] -> [zr+128]
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 136], rax
# marshal arg1 = producer-box slot [zr+224] -> [zr+144]
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 152], rax
# marshal arg2 = producer-box slot [zr+256] -> [zr+160]
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn890:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn890]
                        lea              rsi, [rbp + 128]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    xchain00225_n5_α
                                                                                        jmp   xchain00225_n5_α
xchain00225_n10_β:
                                                                                        jmp   xchain00225_n5_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00225_n11_α:
                        call             proc_Collections___dcα
                                                                                        jmp   .Lx00232_2
.Lx00232_2:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    xchain00225_n13_α
                                                                                        jmp   xchain00225_n13_α
xchain00225_n11_β:
                                                                                        jmp   xchain00225_n13_α
.Lx00232_0:
                        .quad            .Lx00232_0_s
.Lx00232_0_s:
                        .string          "Collections__"
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00225_n12_α:
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   xchain00225_n14_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_RETURN
xchain00225_n13_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_Term___γ
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN global
xchain00225_n14_α:
                        mov              rsi, qword ptr [rbp + 400]
                        mov              rdx, qword ptr [rbp + 408]
                        mov              rdi, qword ptr [rip + .Lx00233_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   xchain00225_n15_α
.Lx00233_0:
                        .quad            .Lx00233_0_s
.Lx00233_0_s:
                        .string          "write"
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00225_n15_α:
                        mov              rax, qword ptr [1879052400]
                        mov              rdx, qword ptr [1879052408]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   xchain00225_n16_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN global
xchain00225_n16_α:
                        mov              rsi, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        mov              rdi, qword ptr [rip + .Lx00234_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   xchain00225_n3_α
.Lx00234_0:
                        .quad            .Lx00234_0_s
.Lx00234_0_s:
                        .string          "writes"
#-----------------------------------------------------------------------------------------------------------------------
proc_Term___res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_Term___β:
                                                                                        jmp   proc_Term___ω
#-----------------------------------------------------------------------------------------------------------------------
proc_Term___γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 600]
                        lea              rsp, [rbp + 624]
                        mov              rbp, [rbp + 616]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_Term___ω:
                        mov              rax, [rbp + 608]
                        lea              rsp, [rbp + 624]
                        mov              rbp, [rbp + 616]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_Term___dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
                        pop              r11
                        sub              rsp, 640
                        mov              qword ptr [rsp + 632], rbp
                        mov              rbp, rsp
                        add              rbp, 16
                        mov              qword ptr [rbp + 592], r11
                        lea              rax, [rip + .Lx00235_2]
                        mov              qword ptr [rbp + 600], rax
                        lea              rax, [rip + .Lx00235_3]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 552], rbp
                        mov              rdi, rbp
                        mov              esi, 544
                        mov              edx, 592
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_Term___α_body
.Lx00235_2:
                        mov              rdx, qword ptr [rsp + -640]
                        mov              rcx, rsp
                        add              rcx, -624
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00235_3:
                        mov              rdi, qword ptr [rsp + -640]
                        mov              rsi, rsp
                        add              rsi, -624
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_Collections___α
proc_Collections___α:
                        .global          proc_Collections___α
                        .global          proc_Collections___β
                        .global          proc_Collections___γ
                        .global          proc_Collections___ω
                        sub              rsp, 1280
                        mov              [rsp + 1256], rcx
                        mov              [rsp + 1264], rdx
                        mov              [rsp + 1272], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 1208], rsp
                        mov              rdi, rsp
                        mov              esi, 1200
                        mov              edx, 1248
                        call             rt_jmp_frame_lexprep2@PLT
proc_Collections___α_body:
#-----------------------------------------------------------------------------------------------------------------------
# IR_DISJUNCTION_NARY
xchain00236_n0_α:
                        mov              qword ptr [rbp + 832], 0
                        mov              qword ptr [rbp + 840], 0
                        mov              dword ptr [rbp + 848], 0
                                                                                        jmp   xchain00236_n2_α
xchain00236_n0_as:
                        mov              eax, dword ptr [rbp + 848]
                        cmp              eax, 0
                                                                                        jne   .Lx00237_0
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   xchain00236_n1_α
.Lx00237_0:
                                                                                        jmp   xchain00236_n1_α
xchain00236_n0_β:
                        mov              eax, dword ptr [rbp + 848]
                                                                                        jmp   xchain00236_n1_α
xchain00236_n0_af:
                        add              dword ptr [rbp + 848], 1
                        mov              eax, dword ptr [rbp + 848]
                                                                                        jmp   xchain00236_n1_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_MAKE_LIST
xchain00236_n1_α:
                        lea              rdi, [rbp + 832]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   xchain00236_n4_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR_REF
xchain00236_n2_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052512
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                                                                                        jmp   xchain00236_n5_α
xchain00236_n2_β:
                                                                                        jmp   xchain00236_n0_af
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain00236_n3_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              rdx, qword ptr [rbp + 888]
                        mov              qword ptr [1879052496], rax
                        mov              qword ptr [1879052504], rdx
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   xchain00236_n0_as
xchain00236_n3_β:
                                                                                        jmp   xchain00236_n1_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00236_n4_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 816]
                        mov              rdx, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   xchain00236_n6_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_NULLTEST_VAR
xchain00236_n5_α:
                        mov              eax, dword ptr [rbp + 1088]
                        cmp              eax, 99
                                                                                        je    xchain00236_n0_af
                        mov              rdi, qword ptr [rbp + 1088]
                        mov              rsi, qword ptr [rbp + 1096]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    xchain00236_n0_af
                        cmp              eax, 0
                                                                                        jne   xchain00236_n0_af
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   xchain00236_n7_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00236_n6_α:
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   xchain00236_n8_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain00236_n7_α:
                        mov              qword ptr [rbp + 1168], 6
                        mov              rax, qword ptr [rip + .Lx00238_0]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   xchain00236_n10_α
.Lx00238_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
# KEYWORD_gen
xchain00236_n8_α:
                        mov              qword ptr [rbp + 784], 0
.Lx00239_1:
                        mov              rdi, qword ptr [rip + .Lx00239_0]
                        mov              rsi, qword ptr [rbp + 784]
                        call             rt_keyword_gen@PLT
                        cmp              eax, 99
                                                                                        je    xchain00236_n9_α
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        mov              rax, qword ptr [rbp + 784]
                        add              rax, 1
                        mov              qword ptr [rbp + 784], rax
                                                                                        jmp   xchain00236_n11_α
xchain00236_n8_β:
                                                                                        jmp   .Lx00239_1
.Lx00239_0:
                        .quad            .Lx00239_0_s
.Lx00239_0_s:
                        .string          "&collections"
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain00236_n9_α:
                        mov              qword ptr [rbp + 640], 1
                        mov              rax, qword ptr [rip + .Lx00240_0]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   xchain00236_n12_α
.Lx00240_0:
                        .quad            .Lx00240_0_s
.Lx00240_0_s:
                        .string          "collections"
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN_VAR
xchain00236_n10_α:
                        mov              rdi, qword ptr [rbp + 1120]
                        mov              rsi, qword ptr [rbp + 1128]
                        mov              rdx, qword ptr [rbp + 1168]
                        mov              rcx, qword ptr [rbp + 1176]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain00236_n0_af
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                                                                                        jmp   xchain00236_n13_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00236_n11_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+736] -> [zr+688]
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 696], rax
# marshal arg1 = producer-box slot [zr+768] -> [zr+704]
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 712], rax
                        .section         .rodata
.Lrkfn916:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn916]
                        lea              rsi, [rbp + 688]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 99
                                                                                        je    xchain00236_n8_β
                                                                                        jmp   xchain00236_n8_β
xchain00236_n11_β:
                                                                                        jmp   xchain00236_n8_β
#-----------------------------------------------------------------------------------------------------------------------
xchain00236_n12_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+640] -> [zr+608]
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 616], rax
                        .section         .rodata
.Lrkfn918:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn918]
                        lea              rsi, [rbp + 608]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 99
                                                                                        je    xchain00236_n14_α
                                                                                        jmp   xchain00236_n14_α
xchain00236_n12_β:
                                                                                        jmp   xchain00236_n14_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain00236_n13_α:
                        mov              qword ptr [rbp + 960], 1
                        mov              rax, qword ptr [rip + .Lx00241_0]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   xchain00236_n15_α
.Lx00241_0:
                        .quad            .Lx00241_0_s
.Lx00241_0_s:
                        .string          "total"
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain00236_n14_α:
                        mov              qword ptr [rbp + 64], 6
                        mov              rax, qword ptr [rip + .Lx00242_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   xchain00236_n16_α
.Lx00242_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain00236_n15_α:
                        mov              qword ptr [rbp + 992], 1
                        mov              rax, qword ptr [rip + .Lx00243_0]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   xchain00236_n17_α
.Lx00243_0:
                        .quad            .Lx00243_0_s
.Lx00243_0_s:
                        .string          "static"
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00236_n16_α:
                        mov              rax, qword ptr [1879052496]
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                                                                                        jmp   xchain00236_n18_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain00236_n17_α:
                        mov              qword ptr [rbp + 1024], 1
                        mov              rax, qword ptr [rip + .Lx00244_0]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   xchain00236_n20_α
.Lx00244_0:
                        .quad            .Lx00244_0_s
.Lx00244_0_s:
                        .string          "string"
#-----------------------------------------------------------------------------------------------------------------------
# IR_UNOP
xchain00236_n18_α:
                        mov              rdi, qword ptr [rbp + 128]
                        mov              rsi, qword ptr [rbp + 136]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   xchain00236_n21_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_RETURN
xchain00236_n19_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_Collections___γ
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain00236_n20_α:
                        mov              qword ptr [rbp + 1056], 1
                        mov              rax, qword ptr [rip + .Lx00245_0]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   xchain00236_n22_α
.Lx00245_0:
                        .quad            .Lx00245_0_s
.Lx00245_0_s:
                        .string          "block"
#-----------------------------------------------------------------------------------------------------------------------
# IR_TO
xchain00236_n21_α:
                        mov              rdi, qword ptr [rbp + 64]
                        mov              rsi, qword ptr [rbp + 72]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 64], 6
                        mov              qword ptr [rbp + 72], rax
                        mov              rdi, qword ptr [rbp + 96]
                        mov              rsi, qword ptr [rbp + 104]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 96], 6
                        mov              qword ptr [rbp + 104], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 48], rax
.Lx00246_0:
                        mov              rax, qword ptr [rbp + 48]
                        mov              rcx, qword ptr [rbp + 104]
                        cmp              rax, rcx
                                                                                        jg    xchain00236_n19_α
                        mov              qword ptr [rbp + 32], 6
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   xchain00236_n23_α
xchain00236_n21_β:
                        inc              qword ptr [rbp + 48]
                                                                                        jmp   .Lx00246_0
#-----------------------------------------------------------------------------------------------------------------------
# IR_MAKE_LIST
xchain00236_n22_α:
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 904], rax
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 920], rax
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 936], rax
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 952], rax
                        lea              rdi, [rbp + 896]
                        mov              esi, 4
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   xchain00236_n3_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00236_n23_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                                                                                        jmp   xchain00236_n24_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_BOUND
xchain00236_n24_α:
                        mov              qword ptr [rbp + 160], rsp
                                                                                        jmp   xchain00236_n25_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR_REF
xchain00236_n25_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052496
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   xchain00236_n26_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00236_n26_α:
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   xchain00236_n27_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_SUBSCRIPT x[i] variable
xchain00236_n27_α:
                        mov              rdi, qword ptr [rbp + 272]
                        mov              rsi, qword ptr [rbp + 280]
                        mov              rdx, qword ptr [rbp + 304]
                        mov              rcx, qword ptr [rbp + 312]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain00236_n28_α
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   xchain00236_n29_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_UNMARK
xchain00236_n28_α:
                        mov              rsp, qword ptr [rbp + 160]
                                                                                        jmp   xchain00236_n21_β
#-----------------------------------------------------------------------------------------------------------------------
# IR_DEREF variable -> value
xchain00236_n29_α:
                        mov              rdi, qword ptr [rbp + 336]
                        mov              rsi, qword ptr [rbp + 344]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    xchain00236_n28_α
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   xchain00236_n30_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR_REF
xchain00236_n30_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1232]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   xchain00236_n31_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00236_n31_α:
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   xchain00236_n32_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_SUBSCRIPT x[i] variable
xchain00236_n32_α:
                        mov              rdi, qword ptr [rbp + 448]
                        mov              rsi, qword ptr [rbp + 456]
                        mov              rdx, qword ptr [rbp + 480]
                        mov              rcx, qword ptr [rbp + 488]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain00236_n28_α
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   xchain00236_n33_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_DEREF variable -> value
xchain00236_n33_α:
                        mov              rdi, qword ptr [rbp + 512]
                        mov              rsi, qword ptr [rbp + 520]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    xchain00236_n28_α
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   xchain00236_n34_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain00236_n34_α:
                        mov              qword ptr [rbp + 560], 6
                        mov              rax, qword ptr [rip + .Lx00247_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   xchain00236_n35_α
.Lx00247_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
xchain00236_n35_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+544] -> [zr+400]
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 408], rax
# marshal arg1 = producer-box slot [zr+560] -> [zr+416]
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 424], rax
                        .section         .rodata
.Lrkfn950:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn950]
                        lea              rsi, [rbp + 400]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    xchain00236_n28_α
                                                                                        jmp   xchain00236_n36_α
xchain00236_n35_β:
                                                                                        jmp   xchain00236_n28_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00236_n36_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+368] -> [zr+224]
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 232], rax
# marshal arg1 = producer-box slot [zr+384] -> [zr+240]
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 248], rax
                        .section         .rodata
.Lrkfn952:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn952]
                        lea              rsi, [rbp + 224]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    xchain00236_n28_α
                                                                                        jmp   xchain00236_n28_α
xchain00236_n36_β:
                                                                                        jmp   xchain00236_n28_α
#-----------------------------------------------------------------------------------------------------------------------
proc_Collections___res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_Collections___β:
                                                                                        jmp   proc_Collections___ω
#-----------------------------------------------------------------------------------------------------------------------
proc_Collections___γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 1256]
                        lea              rsp, [rbp + 1280]
                        mov              rbp, [rbp + 1272]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_Collections___ω:
                        mov              rax, [rbp + 1264]
                        lea              rsp, [rbp + 1280]
                        mov              rbp, [rbp + 1272]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_Collections___dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
                        pop              r11
                        sub              rsp, 1296
                        mov              qword ptr [rsp + 1288], rbp
                        mov              rbp, rsp
                        add              rbp, 16
                        mov              qword ptr [rbp + 1248], r11
                        lea              rax, [rip + .Lx00248_2]
                        mov              qword ptr [rbp + 1256], rax
                        lea              rax, [rip + .Lx00248_3]
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1208], rbp
                        mov              rdi, rbp
                        mov              esi, 1200
                        mov              edx, 1248
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_Collections___α_body
.Lx00248_2:
                        mov              rdx, qword ptr [rsp + -1296]
                        mov              rcx, rsp
                        add              rcx, -1280
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00248_3:
                        mov              rdi, qword ptr [rsp + -1296]
                        mov              rsi, rsp
                        add              rsi, -1280
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_Regions___α
proc_Regions___α:
                        .global          proc_Regions___α
                        .global          proc_Regions___β
                        .global          proc_Regions___γ
                        .global          proc_Regions___ω
                        sub              rsp, 1232
                        mov              [rsp + 1208], rcx
                        mov              [rsp + 1216], rdx
                        mov              [rsp + 1224], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 1160], rsp
                        mov              rdi, rsp
                        mov              esi, 1152
                        mov              edx, 1200
                        call             rt_jmp_frame_lexprep2@PLT
proc_Regions___α_body:
#-----------------------------------------------------------------------------------------------------------------------
# IR_DISJUNCTION_NARY
xchain00249_n0_α:
                        mov              qword ptr [rbp + 832], 0
                        mov              qword ptr [rbp + 840], 0
                        mov              dword ptr [rbp + 848], 0
                                                                                        jmp   xchain00249_n2_α
xchain00249_n0_as:
                        mov              eax, dword ptr [rbp + 848]
                        cmp              eax, 0
                                                                                        jne   .Lx00250_0
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   xchain00249_n1_α
.Lx00250_0:
                                                                                        jmp   xchain00249_n1_α
xchain00249_n0_β:
                        mov              eax, dword ptr [rbp + 848]
                                                                                        jmp   xchain00249_n1_α
xchain00249_n0_af:
                        add              dword ptr [rbp + 848], 1
                        mov              eax, dword ptr [rbp + 848]
                                                                                        jmp   xchain00249_n1_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_MAKE_LIST
xchain00249_n1_α:
                        lea              rdi, [rbp + 832]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   xchain00249_n4_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR_REF
xchain00249_n2_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052544
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   xchain00249_n5_α
xchain00249_n2_β:
                                                                                        jmp   xchain00249_n0_af
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain00249_n3_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              rdx, qword ptr [rbp + 888]
                        mov              qword ptr [1879052528], rax
                        mov              qword ptr [1879052536], rdx
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   xchain00249_n0_as
xchain00249_n3_β:
                                                                                        jmp   xchain00249_n1_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00249_n4_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 816]
                        mov              rdx, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   xchain00249_n6_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_NULLTEST_VAR
xchain00249_n5_α:
                        mov              eax, dword ptr [rbp + 1040]
                        cmp              eax, 99
                                                                                        je    xchain00249_n0_af
                        mov              rdi, qword ptr [rbp + 1040]
                        mov              rsi, qword ptr [rbp + 1048]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    xchain00249_n0_af
                        cmp              eax, 0
                                                                                        jne   xchain00249_n0_af
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   xchain00249_n7_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00249_n6_α:
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   xchain00249_n8_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain00249_n7_α:
                        mov              qword ptr [rbp + 1120], 6
                        mov              rax, qword ptr [rip + .Lx00251_0]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   xchain00249_n10_α
.Lx00251_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
# KEYWORD_gen
xchain00249_n8_α:
                        mov              qword ptr [rbp + 784], 0
.Lx00252_1:
                        mov              rdi, qword ptr [rip + .Lx00252_0]
                        mov              rsi, qword ptr [rbp + 784]
                        call             rt_keyword_gen@PLT
                        cmp              eax, 99
                                                                                        je    xchain00249_n9_α
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        mov              rax, qword ptr [rbp + 784]
                        add              rax, 1
                        mov              qword ptr [rbp + 784], rax
                                                                                        jmp   xchain00249_n11_α
xchain00249_n8_β:
                                                                                        jmp   .Lx00252_1
.Lx00252_0:
                        .quad            .Lx00252_0_s
.Lx00252_0_s:
                        .string          "&regions"
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain00249_n9_α:
                        mov              qword ptr [rbp + 640], 1
                        mov              rax, qword ptr [rip + .Lx00253_0]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   xchain00249_n12_α
.Lx00253_0:
                        .quad            .Lx00253_0_s
.Lx00253_0_s:
                        .string          "regions"
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN_VAR
xchain00249_n10_α:
                        mov              rdi, qword ptr [rbp + 1072]
                        mov              rsi, qword ptr [rbp + 1080]
                        mov              rdx, qword ptr [rbp + 1120]
                        mov              rcx, qword ptr [rbp + 1128]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain00249_n0_af
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                                                                                        jmp   xchain00249_n13_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00249_n11_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+736] -> [zr+688]
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 696], rax
# marshal arg1 = producer-box slot [zr+768] -> [zr+704]
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 712], rax
                        .section         .rodata
.Lrkfn971:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn971]
                        lea              rsi, [rbp + 688]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 99
                                                                                        je    xchain00249_n8_β
                                                                                        jmp   xchain00249_n8_β
xchain00249_n11_β:
                                                                                        jmp   xchain00249_n8_β
#-----------------------------------------------------------------------------------------------------------------------
xchain00249_n12_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+640] -> [zr+608]
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 616], rax
                        .section         .rodata
.Lrkfn973:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn973]
                        lea              rsi, [rbp + 608]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 99
                                                                                        je    xchain00249_n14_α
                                                                                        jmp   xchain00249_n14_α
xchain00249_n12_β:
                                                                                        jmp   xchain00249_n14_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain00249_n13_α:
                        mov              qword ptr [rbp + 944], 1
                        mov              rax, qword ptr [rip + .Lx00254_0]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   xchain00249_n15_α
.Lx00254_0:
                        .quad            .Lx00254_0_s
.Lx00254_0_s:
                        .string          "static"
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain00249_n14_α:
                        mov              qword ptr [rbp + 64], 6
                        mov              rax, qword ptr [rip + .Lx00255_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   xchain00249_n16_α
.Lx00255_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain00249_n15_α:
                        mov              qword ptr [rbp + 976], 1
                        mov              rax, qword ptr [rip + .Lx00256_0]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   xchain00249_n17_α
.Lx00256_0:
                        .quad            .Lx00256_0_s
.Lx00256_0_s:
                        .string          "string"
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00249_n16_α:
                        mov              rax, qword ptr [1879052528]
                        mov              rdx, qword ptr [1879052536]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                                                                                        jmp   xchain00249_n18_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain00249_n17_α:
                        mov              qword ptr [rbp + 1008], 1
                        mov              rax, qword ptr [rip + .Lx00257_0]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   xchain00249_n20_α
.Lx00257_0:
                        .quad            .Lx00257_0_s
.Lx00257_0_s:
                        .string          "block"
#-----------------------------------------------------------------------------------------------------------------------
# IR_UNOP
xchain00249_n18_α:
                        mov              rdi, qword ptr [rbp + 128]
                        mov              rsi, qword ptr [rbp + 136]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   xchain00249_n21_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_RETURN
xchain00249_n19_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_Regions___γ
#-----------------------------------------------------------------------------------------------------------------------
# IR_MAKE_LIST
xchain00249_n20_α:
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 904], rax
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 920], rax
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 936], rax
                        lea              rdi, [rbp + 896]
                        mov              esi, 3
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   xchain00249_n3_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_TO
xchain00249_n21_α:
                        mov              rdi, qword ptr [rbp + 64]
                        mov              rsi, qword ptr [rbp + 72]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 64], 6
                        mov              qword ptr [rbp + 72], rax
                        mov              rdi, qword ptr [rbp + 96]
                        mov              rsi, qword ptr [rbp + 104]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 96], 6
                        mov              qword ptr [rbp + 104], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 48], rax
.Lx00258_0:
                        mov              rax, qword ptr [rbp + 48]
                        mov              rcx, qword ptr [rbp + 104]
                        cmp              rax, rcx
                                                                                        jg    xchain00249_n19_α
                        mov              qword ptr [rbp + 32], 6
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   xchain00249_n22_α
xchain00249_n21_β:
                        inc              qword ptr [rbp + 48]
                                                                                        jmp   .Lx00258_0
#-----------------------------------------------------------------------------------------------------------------------
xchain00249_n22_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                                                                                        jmp   xchain00249_n23_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_BOUND
xchain00249_n23_α:
                        mov              qword ptr [rbp + 160], rsp
                                                                                        jmp   xchain00249_n24_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR_REF
xchain00249_n24_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052528
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   xchain00249_n25_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00249_n25_α:
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   xchain00249_n26_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_SUBSCRIPT x[i] variable
xchain00249_n26_α:
                        mov              rdi, qword ptr [rbp + 272]
                        mov              rsi, qword ptr [rbp + 280]
                        mov              rdx, qword ptr [rbp + 304]
                        mov              rcx, qword ptr [rbp + 312]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain00249_n27_α
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   xchain00249_n28_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_UNMARK
xchain00249_n27_α:
                        mov              rsp, qword ptr [rbp + 160]
                                                                                        jmp   xchain00249_n21_β
#-----------------------------------------------------------------------------------------------------------------------
# IR_DEREF variable -> value
xchain00249_n28_α:
                        mov              rdi, qword ptr [rbp + 336]
                        mov              rsi, qword ptr [rbp + 344]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    xchain00249_n27_α
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   xchain00249_n29_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR_REF
xchain00249_n29_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1184]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   xchain00249_n30_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00249_n30_α:
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   xchain00249_n31_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_SUBSCRIPT x[i] variable
xchain00249_n31_α:
                        mov              rdi, qword ptr [rbp + 448]
                        mov              rsi, qword ptr [rbp + 456]
                        mov              rdx, qword ptr [rbp + 480]
                        mov              rcx, qword ptr [rbp + 488]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain00249_n27_α
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   xchain00249_n32_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_DEREF variable -> value
xchain00249_n32_α:
                        mov              rdi, qword ptr [rbp + 512]
                        mov              rsi, qword ptr [rbp + 520]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    xchain00249_n27_α
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   xchain00249_n33_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain00249_n33_α:
                        mov              qword ptr [rbp + 560], 6
                        mov              rax, qword ptr [rip + .Lx00259_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   xchain00249_n34_α
.Lx00259_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
xchain00249_n34_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+544] -> [zr+400]
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 408], rax
# marshal arg1 = producer-box slot [zr+560] -> [zr+416]
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 424], rax
                        .section         .rodata
.Lrkfn1004:             .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1004]
                        lea              rsi, [rbp + 400]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    xchain00249_n27_α
                                                                                        jmp   xchain00249_n35_α
xchain00249_n34_β:
                                                                                        jmp   xchain00249_n27_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00249_n35_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+368] -> [zr+224]
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 232], rax
# marshal arg1 = producer-box slot [zr+384] -> [zr+240]
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 248], rax
                        .section         .rodata
.Lrkfn1006:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1006]
                        lea              rsi, [rbp + 224]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    xchain00249_n27_α
                                                                                        jmp   xchain00249_n27_α
xchain00249_n35_β:
                                                                                        jmp   xchain00249_n27_α
#-----------------------------------------------------------------------------------------------------------------------
proc_Regions___res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_Regions___β:
                                                                                        jmp   proc_Regions___ω
#-----------------------------------------------------------------------------------------------------------------------
proc_Regions___γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 1208]
                        lea              rsp, [rbp + 1232]
                        mov              rbp, [rbp + 1224]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_Regions___ω:
                        mov              rax, [rbp + 1216]
                        lea              rsp, [rbp + 1232]
                        mov              rbp, [rbp + 1224]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_Regions___dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
                        pop              r11
                        sub              rsp, 1248
                        mov              qword ptr [rsp + 1240], rbp
                        mov              rbp, rsp
                        add              rbp, 16
                        mov              qword ptr [rbp + 1200], r11
                        lea              rax, [rip + .Lx00260_2]
                        mov              qword ptr [rbp + 1208], rax
                        lea              rax, [rip + .Lx00260_3]
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1160], rbp
                        mov              rdi, rbp
                        mov              esi, 1152
                        mov              edx, 1200
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_Regions___α_body
.Lx00260_2:
                        mov              rdx, qword ptr [rsp + -1248]
                        mov              rcx, rsp
                        add              rcx, -1232
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00260_3:
                        mov              rdi, qword ptr [rsp + -1248]
                        mov              rsi, rsp
                        add              rsi, -1232
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_Signature___α
proc_Signature___α:
                        .global          proc_Signature___α
                        .global          proc_Signature___β
                        .global          proc_Signature___γ
                        .global          proc_Signature___ω
                        sub              rsp, 304
                        mov              [rsp + 280], rcx
                        mov              [rsp + 288], rdx
                        mov              [rsp + 296], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 264], rsp
                        mov              rdi, rsp
                        mov              esi, 256
                        mov              edx, 272
                        call             rt_jmp_frame_lexprep2@PLT
proc_Signature___α_body:
#-----------------------------------------------------------------------------------------------------------------------
# KEYWORD_read
xchain00261_n0_α:
                        mov              rdi, qword ptr [rip + .Lx00262_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    xchain00261_n2_α
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   xchain00261_n1_α
xchain00261_n0_β:
                                                                                        jmp   xchain00261_n2_α
.Lx00262_0:
                        .quad            .Lx00262_0_s
.Lx00262_0_s:
                        .string          "&version"
#-----------------------------------------------------------------------------------------------------------------------
xchain00261_n1_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+192]
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 200], rax
                        .section         .rodata
.Lrkfn1011:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1011]
                        lea              rsi, [rbp + 192]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    xchain00261_n2_α
                                                                                        jmp   xchain00261_n2_α
xchain00261_n1_β:
                                                                                        jmp   xchain00261_n2_α
#-----------------------------------------------------------------------------------------------------------------------
# KEYWORD_read
xchain00261_n2_α:
                        mov              rdi, qword ptr [rip + .Lx00263_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    xchain00261_n4_α
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   xchain00261_n3_α
xchain00261_n2_β:
                                                                                        jmp   xchain00261_n4_α
.Lx00263_0:
                        .quad            .Lx00263_0_s
.Lx00263_0_s:
                        .string          "&host"
#-----------------------------------------------------------------------------------------------------------------------
xchain00261_n3_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+144] -> [zr+112]
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn1014:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1014]
                        lea              rsi, [rbp + 112]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    xchain00261_n4_α
                                                                                        jmp   xchain00261_n4_α
xchain00261_n3_β:
                                                                                        jmp   xchain00261_n4_α
#-----------------------------------------------------------------------------------------------------------------------
# KEYWORD_gen
xchain00261_n4_α:
                        mov              qword ptr [rbp + 80], 0
.Lx00264_1:
                        mov              rdi, qword ptr [rip + .Lx00264_0]
                        mov              rsi, qword ptr [rbp + 80]
                        call             rt_keyword_gen@PLT
                        cmp              eax, 99
                                                                                        je    xchain00261_n6_α
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        mov              rax, qword ptr [rbp + 80]
                        add              rax, 1
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   xchain00261_n5_α
xchain00261_n4_β:
                                                                                        jmp   .Lx00264_1
.Lx00264_0:
                        .quad            .Lx00264_0_s
.Lx00264_0_s:
                        .string          "&features"
#-----------------------------------------------------------------------------------------------------------------------
xchain00261_n5_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+32]
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 40], rax
                        .section         .rodata
.Lrkfn1017:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1017]
                        lea              rsi, [rbp + 32]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    xchain00261_n4_β
                                                                                        jmp   xchain00261_n4_β
xchain00261_n5_β:
                                                                                        jmp   xchain00261_n4_β
#-----------------------------------------------------------------------------------------------------------------------
# IR_RETURN
xchain00261_n6_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_Signature___γ
#-----------------------------------------------------------------------------------------------------------------------
proc_Signature___res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_Signature___β:
                                                                                        jmp   proc_Signature___ω
#-----------------------------------------------------------------------------------------------------------------------
proc_Signature___γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 280]
                        lea              rsp, [rbp + 304]
                        mov              rbp, [rbp + 296]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_Signature___ω:
                        mov              rax, [rbp + 288]
                        lea              rsp, [rbp + 304]
                        mov              rbp, [rbp + 296]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_Signature___dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
                        pop              r11
                        sub              rsp, 320
                        mov              qword ptr [rsp + 312], rbp
                        mov              rbp, rsp
                        add              rbp, 16
                        mov              qword ptr [rbp + 272], r11
                        lea              rax, [rip + .Lx00265_2]
                        mov              qword ptr [rbp + 280], rax
                        lea              rax, [rip + .Lx00265_3]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 264], rbp
                        mov              rdi, rbp
                        mov              esi, 256
                        mov              edx, 272
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_Signature___α_body
.Lx00265_2:
                        mov              rdx, qword ptr [rsp + -320]
                        mov              rcx, rsp
                        add              rcx, -304
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00265_3:
                        mov              rdi, qword ptr [rsp + -320]
                        mov              rsi, rsp
                        add              rsi, -304
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_Storage___α
proc_Storage___α:
                        .global          proc_Storage___α
                        .global          proc_Storage___β
                        .global          proc_Storage___γ
                        .global          proc_Storage___ω
                        sub              rsp, 1232
                        mov              [rsp + 1208], rcx
                        mov              [rsp + 1216], rdx
                        mov              [rsp + 1224], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 1160], rsp
                        mov              rdi, rsp
                        mov              esi, 1152
                        mov              edx, 1200
                        call             rt_jmp_frame_lexprep2@PLT
proc_Storage___α_body:
#-----------------------------------------------------------------------------------------------------------------------
# IR_DISJUNCTION_NARY
xchain00266_n0_α:
                        mov              qword ptr [rbp + 832], 0
                        mov              qword ptr [rbp + 840], 0
                        mov              dword ptr [rbp + 848], 0
                                                                                        jmp   xchain00266_n2_α
xchain00266_n0_as:
                        mov              eax, dword ptr [rbp + 848]
                        cmp              eax, 0
                                                                                        jne   .Lx00267_0
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   xchain00266_n1_α
.Lx00267_0:
                                                                                        jmp   xchain00266_n1_α
xchain00266_n0_β:
                        mov              eax, dword ptr [rbp + 848]
                                                                                        jmp   xchain00266_n1_α
xchain00266_n0_af:
                        add              dword ptr [rbp + 848], 1
                        mov              eax, dword ptr [rbp + 848]
                                                                                        jmp   xchain00266_n1_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_MAKE_LIST
xchain00266_n1_α:
                        lea              rdi, [rbp + 832]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   xchain00266_n4_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR_REF
xchain00266_n2_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052576
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   xchain00266_n5_α
xchain00266_n2_β:
                                                                                        jmp   xchain00266_n0_af
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain00266_n3_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              rdx, qword ptr [rbp + 888]
                        mov              qword ptr [1879052560], rax
                        mov              qword ptr [1879052568], rdx
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   xchain00266_n0_as
xchain00266_n3_β:
                                                                                        jmp   xchain00266_n1_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00266_n4_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 816]
                        mov              rdx, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   xchain00266_n6_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_NULLTEST_VAR
xchain00266_n5_α:
                        mov              eax, dword ptr [rbp + 1040]
                        cmp              eax, 99
                                                                                        je    xchain00266_n0_af
                        mov              rdi, qword ptr [rbp + 1040]
                        mov              rsi, qword ptr [rbp + 1048]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    xchain00266_n0_af
                        cmp              eax, 0
                                                                                        jne   xchain00266_n0_af
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   xchain00266_n7_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00266_n6_α:
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   xchain00266_n8_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain00266_n7_α:
                        mov              qword ptr [rbp + 1120], 6
                        mov              rax, qword ptr [rip + .Lx00268_0]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   xchain00266_n10_α
.Lx00268_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
# KEYWORD_gen
xchain00266_n8_α:
                        mov              qword ptr [rbp + 784], 0
.Lx00269_1:
                        mov              rdi, qword ptr [rip + .Lx00269_0]
                        mov              rsi, qword ptr [rbp + 784]
                        call             rt_keyword_gen@PLT
                        cmp              eax, 99
                                                                                        je    xchain00266_n9_α
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        mov              rax, qword ptr [rbp + 784]
                        add              rax, 1
                        mov              qword ptr [rbp + 784], rax
                                                                                        jmp   xchain00266_n11_α
xchain00266_n8_β:
                                                                                        jmp   .Lx00269_1
.Lx00269_0:
                        .quad            .Lx00269_0_s
.Lx00269_0_s:
                        .string          "&storage"
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain00266_n9_α:
                        mov              qword ptr [rbp + 640], 1
                        mov              rax, qword ptr [rip + .Lx00270_0]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   xchain00266_n12_α
.Lx00270_0:
                        .quad            .Lx00270_0_s
.Lx00270_0_s:
                        .string          "storage"
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN_VAR
xchain00266_n10_α:
                        mov              rdi, qword ptr [rbp + 1072]
                        mov              rsi, qword ptr [rbp + 1080]
                        mov              rdx, qword ptr [rbp + 1120]
                        mov              rcx, qword ptr [rbp + 1128]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain00266_n0_af
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                                                                                        jmp   xchain00266_n13_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00266_n11_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+736] -> [zr+688]
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 696], rax
# marshal arg1 = producer-box slot [zr+768] -> [zr+704]
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 712], rax
                        .section         .rodata
.Lrkfn1037:             .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1037]
                        lea              rsi, [rbp + 688]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 99
                                                                                        je    xchain00266_n8_β
                                                                                        jmp   xchain00266_n8_β
xchain00266_n11_β:
                                                                                        jmp   xchain00266_n8_β
#-----------------------------------------------------------------------------------------------------------------------
xchain00266_n12_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+640] -> [zr+608]
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 616], rax
                        .section         .rodata
.Lrkfn1039:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1039]
                        lea              rsi, [rbp + 608]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 99
                                                                                        je    xchain00266_n14_α
                                                                                        jmp   xchain00266_n14_α
xchain00266_n12_β:
                                                                                        jmp   xchain00266_n14_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain00266_n13_α:
                        mov              qword ptr [rbp + 944], 1
                        mov              rax, qword ptr [rip + .Lx00271_0]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   xchain00266_n15_α
.Lx00271_0:
                        .quad            .Lx00271_0_s
.Lx00271_0_s:
                        .string          "static"
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain00266_n14_α:
                        mov              qword ptr [rbp + 64], 6
                        mov              rax, qword ptr [rip + .Lx00272_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   xchain00266_n16_α
.Lx00272_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain00266_n15_α:
                        mov              qword ptr [rbp + 976], 1
                        mov              rax, qword ptr [rip + .Lx00273_0]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   xchain00266_n17_α
.Lx00273_0:
                        .quad            .Lx00273_0_s
.Lx00273_0_s:
                        .string          "string"
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00266_n16_α:
                        mov              rax, qword ptr [1879052560]
                        mov              rdx, qword ptr [1879052568]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                                                                                        jmp   xchain00266_n18_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain00266_n17_α:
                        mov              qword ptr [rbp + 1008], 1
                        mov              rax, qword ptr [rip + .Lx00274_0]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   xchain00266_n20_α
.Lx00274_0:
                        .quad            .Lx00274_0_s
.Lx00274_0_s:
                        .string          "block"
#-----------------------------------------------------------------------------------------------------------------------
# IR_UNOP
xchain00266_n18_α:
                        mov              rdi, qword ptr [rbp + 128]
                        mov              rsi, qword ptr [rbp + 136]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   xchain00266_n21_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_RETURN
xchain00266_n19_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_Storage___γ
#-----------------------------------------------------------------------------------------------------------------------
# IR_MAKE_LIST
xchain00266_n20_α:
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 904], rax
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 920], rax
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 936], rax
                        lea              rdi, [rbp + 896]
                        mov              esi, 3
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   xchain00266_n3_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_TO
xchain00266_n21_α:
                        mov              rdi, qword ptr [rbp + 64]
                        mov              rsi, qword ptr [rbp + 72]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 64], 6
                        mov              qword ptr [rbp + 72], rax
                        mov              rdi, qword ptr [rbp + 96]
                        mov              rsi, qword ptr [rbp + 104]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 96], 6
                        mov              qword ptr [rbp + 104], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 48], rax
.Lx00275_0:
                        mov              rax, qword ptr [rbp + 48]
                        mov              rcx, qword ptr [rbp + 104]
                        cmp              rax, rcx
                                                                                        jg    xchain00266_n19_α
                        mov              qword ptr [rbp + 32], 6
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   xchain00266_n22_α
xchain00266_n21_β:
                        inc              qword ptr [rbp + 48]
                                                                                        jmp   .Lx00275_0
#-----------------------------------------------------------------------------------------------------------------------
xchain00266_n22_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                                                                                        jmp   xchain00266_n23_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_BOUND
xchain00266_n23_α:
                        mov              qword ptr [rbp + 160], rsp
                                                                                        jmp   xchain00266_n24_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR_REF
xchain00266_n24_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052560
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   xchain00266_n25_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00266_n25_α:
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   xchain00266_n26_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_SUBSCRIPT x[i] variable
xchain00266_n26_α:
                        mov              rdi, qword ptr [rbp + 272]
                        mov              rsi, qword ptr [rbp + 280]
                        mov              rdx, qword ptr [rbp + 304]
                        mov              rcx, qword ptr [rbp + 312]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain00266_n27_α
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   xchain00266_n28_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_UNMARK
xchain00266_n27_α:
                        mov              rsp, qword ptr [rbp + 160]
                                                                                        jmp   xchain00266_n21_β
#-----------------------------------------------------------------------------------------------------------------------
# IR_DEREF variable -> value
xchain00266_n28_α:
                        mov              rdi, qword ptr [rbp + 336]
                        mov              rsi, qword ptr [rbp + 344]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    xchain00266_n27_α
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   xchain00266_n29_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR_REF
xchain00266_n29_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1184]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   xchain00266_n30_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00266_n30_α:
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   xchain00266_n31_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_SUBSCRIPT x[i] variable
xchain00266_n31_α:
                        mov              rdi, qword ptr [rbp + 448]
                        mov              rsi, qword ptr [rbp + 456]
                        mov              rdx, qword ptr [rbp + 480]
                        mov              rcx, qword ptr [rbp + 488]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain00266_n27_α
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   xchain00266_n32_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_DEREF variable -> value
xchain00266_n32_α:
                        mov              rdi, qword ptr [rbp + 512]
                        mov              rsi, qword ptr [rbp + 520]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    xchain00266_n27_α
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   xchain00266_n33_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain00266_n33_α:
                        mov              qword ptr [rbp + 560], 6
                        mov              rax, qword ptr [rip + .Lx00276_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   xchain00266_n34_α
.Lx00276_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
xchain00266_n34_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+544] -> [zr+400]
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 408], rax
# marshal arg1 = producer-box slot [zr+560] -> [zr+416]
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 424], rax
                        .section         .rodata
.Lrkfn1070:             .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1070]
                        lea              rsi, [rbp + 400]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    xchain00266_n27_α
                                                                                        jmp   xchain00266_n35_α
xchain00266_n34_β:
                                                                                        jmp   xchain00266_n27_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00266_n35_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+368] -> [zr+224]
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 232], rax
# marshal arg1 = producer-box slot [zr+384] -> [zr+240]
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 248], rax
                        .section         .rodata
.Lrkfn1072:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1072]
                        lea              rsi, [rbp + 224]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    xchain00266_n27_α
                                                                                        jmp   xchain00266_n27_α
xchain00266_n35_β:
                                                                                        jmp   xchain00266_n27_α
#-----------------------------------------------------------------------------------------------------------------------
proc_Storage___res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_Storage___β:
                                                                                        jmp   proc_Storage___ω
#-----------------------------------------------------------------------------------------------------------------------
proc_Storage___γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 1208]
                        lea              rsp, [rbp + 1232]
                        mov              rbp, [rbp + 1224]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_Storage___ω:
                        mov              rax, [rbp + 1216]
                        lea              rsp, [rbp + 1232]
                        mov              rbp, [rbp + 1224]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_Storage___dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
                        pop              r11
                        sub              rsp, 1248
                        mov              qword ptr [rsp + 1240], rbp
                        mov              rbp, rsp
                        add              rbp, 16
                        mov              qword ptr [rbp + 1200], r11
                        lea              rax, [rip + .Lx00277_2]
                        mov              qword ptr [rbp + 1208], rax
                        lea              rax, [rip + .Lx00277_3]
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1160], rbp
                        mov              rdi, rbp
                        mov              esi, 1152
                        mov              edx, 1200
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_Storage___α_body
.Lx00277_2:
                        mov              rdx, qword ptr [rsp + -1248]
                        mov              rcx, rsp
                        add              rcx, -1232
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00277_3:
                        mov              rdi, qword ptr [rsp + -1248]
                        mov              rsi, rsp
                        add              rsi, -1232
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_Time___α
proc_Time___α:
                        .global          proc_Time___α
                        .global          proc_Time___β
                        .global          proc_Time___γ
                        .global          proc_Time___ω
                        sub              rsp, 416
                        mov              [rsp + 392], rcx
                        mov              [rsp + 400], rdx
                        mov              [rsp + 408], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 376], rsp
                        mov              rdi, rsp
                        mov              esi, 368
                        mov              edx, 384
                        call             rt_jmp_frame_lexprep2@PLT
proc_Time___α_body:
#-----------------------------------------------------------------------------------------------------------------------
# IR_DISJUNCTION_NARY
xchain00278_n0_α:
                        mov              qword ptr [rbp + 176], 0
                        mov              qword ptr [rbp + 184], 0
                        mov              dword ptr [rbp + 192], 0
                                                                                        jmp   xchain00278_n2_α
xchain00278_n0_as:
                        mov              eax, dword ptr [rbp + 192]
                        cmp              eax, 0
                                                                                        jne   .Lx00279_0
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   xchain00278_n1_α
.Lx00279_0:
                                                                                        jmp   xchain00278_n1_α
xchain00278_n0_β:
                        mov              eax, dword ptr [rbp + 192]
                                                                                        jmp   xchain00278_n1_α
xchain00278_n0_af:
                        add              dword ptr [rbp + 192], 1
                        mov              eax, dword ptr [rbp + 192]
                                                                                        jmp   xchain00278_n1_α
#-----------------------------------------------------------------------------------------------------------------------
# KEYWORD_read
xchain00278_n1_α:
                        mov              rdi, qword ptr [rip + .Lx00280_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    proc_Time___ω
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                                                                                        jmp   xchain00278_n4_α
xchain00278_n1_β:
                                                                                        jmp   proc_Time___ω
.Lx00280_0:
                        .quad            .Lx00280_0_s
.Lx00280_0_s:
                        .string          "&time"
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR_REF
xchain00278_n2_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052608
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   xchain00278_n5_α
xchain00278_n2_β:
                                                                                        jmp   xchain00278_n0_af
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain00278_n3_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        mov              qword ptr [1879052592], rax
                        mov              qword ptr [1879052600], rdx
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   xchain00278_n0_as
xchain00278_n3_β:
                                                                                        jmp   xchain00278_n1_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00278_n4_α:
                        mov              rax, qword ptr [1879052592]
                        mov              rdx, qword ptr [1879052600]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   xchain00278_n6_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_NULLTEST_VAR
xchain00278_n5_α:
                        mov              eax, dword ptr [rbp + 256]
                        cmp              eax, 99
                                                                                        je    xchain00278_n0_af
                        mov              rdi, qword ptr [rbp + 256]
                        mov              rsi, qword ptr [rbp + 264]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    xchain00278_n0_af
                        cmp              eax, 0
                                                                                        jne   xchain00278_n0_af
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   xchain00278_n7_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_COERCE_NUMERIC
xchain00278_n6_α:
                        mov              eax, dword ptr [rbp + 112]
                        cmp              eax, 7
                                                                                        je    .Lx00281_1
                        cmp              eax, 6
                                                                                        jne   .Lx00281_0
                        mov              eax, dword ptr [rbp + 144]
                        cmp              eax, 6
                                                                                        jne   .Lx00281_0
.Lx00281_1:
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   xchain00278_n8_α
.Lx00281_0:
                        lea              rdi, [rbp + 112]
                        lea              rsi, [rbp + 144]
                        lea              rdx, [rbp + 80]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   xchain00278_n8_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain00278_n7_α:
                        mov              qword ptr [rbp + 336], 6
                        mov              rax, qword ptr [rip + .Lx00282_0]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   xchain00278_n9_α
.Lx00282_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
# IR_COERCE_NUMERIC
xchain00278_n8_α:
                        mov              eax, dword ptr [rbp + 144]
                        cmp              eax, 7
                                                                                        je    .Lx00283_1
                        cmp              eax, 6
                                                                                        jne   .Lx00283_0
                        mov              eax, dword ptr [rbp + 112]
                        cmp              eax, 6
                                                                                        jne   .Lx00283_0
.Lx00283_1:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   xchain00278_n10_α
.Lx00283_0:
                        lea              rdi, [rbp + 144]
                        lea              rsi, [rbp + 112]
                        lea              rdx, [rbp + 48]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   xchain00278_n10_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN_VAR
xchain00278_n9_α:
                        mov              rdi, qword ptr [rbp + 288]
                        mov              rsi, qword ptr [rbp + 296]
                        mov              rdx, qword ptr [rbp + 336]
                        mov              rcx, qword ptr [rbp + 344]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain00278_n0_af
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   xchain00278_n11_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00278_n10_α:
# IR_BINOP_ARITH
                        mov              eax, dword ptr [rbp + 80]
                        cmp              eax, 100
                                                                                        je    .Lx00284_0
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 100
                                                                                        je    .Lx00284_0
                        mov              eax, dword ptr [rbp + 80]
                        cmp              eax, 6
                                                                                        jne   .Lx00284_2
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 6
                                                                                        jne   .Lx00284_2
.Lx00284_1:
                        mov              rax, qword ptr [rbp + 88]
                        mov              rcx, qword ptr [rbp + 56]
                        sub              rax, rcx
                        mov              qword ptr [rbp + 16], 6
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   xchain00278_n12_α
.Lx00284_0:
                        mov              rdi, qword ptr [rbp + 80]
                        mov              rsi, qword ptr [rbp + 88]
                        mov              rdx, qword ptr [rbp + 48]
                        mov              rcx, qword ptr [rbp + 56]
                        mov              r8d, 1
                        lea              r9, [rbp + 16]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   xchain00278_n12_α
.Lx00284_2:
                        mov              rdi, qword ptr [rbp + 80]
                        mov              rsi, qword ptr [rbp + 88]
                        mov              rdx, qword ptr [rbp + 48]
                        mov              rcx, qword ptr [rbp + 56]
                        mov              r8d, 1
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    proc_Time___ω
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                                                                                        jmp   xchain00278_n12_α
xchain00278_n10_β:
                                                                                        jmp   proc_Time___ω
#-----------------------------------------------------------------------------------------------------------------------
# KEYWORD_read
xchain00278_n11_α:
                        mov              rdi, qword ptr [rip + .Lx00285_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    xchain00278_n1_α
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   xchain00278_n3_α
xchain00278_n11_β:
                                                                                        jmp   xchain00278_n1_α
.Lx00285_0:
                        .quad            .Lx00285_0_s
.Lx00285_0_s:
                        .string          "&time"
#-----------------------------------------------------------------------------------------------------------------------
# IR_RETURN
xchain00278_n12_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              rdx, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_Time___γ
#-----------------------------------------------------------------------------------------------------------------------
proc_Time___res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_Time___β:
                                                                                        jmp   proc_Time___ω
#-----------------------------------------------------------------------------------------------------------------------
proc_Time___γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 392]
                        lea              rsp, [rbp + 416]
                        mov              rbp, [rbp + 408]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_Time___ω:
                        mov              rax, [rbp + 400]
                        lea              rsp, [rbp + 416]
                        mov              rbp, [rbp + 408]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_Time___dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
                        pop              r11
                        sub              rsp, 432
                        mov              qword ptr [rsp + 424], rbp
                        mov              rbp, rsp
                        add              rbp, 16
                        mov              qword ptr [rbp + 384], r11
                        lea              rax, [rip + .Lx00286_2]
                        mov              qword ptr [rbp + 392], rax
                        lea              rax, [rip + .Lx00286_3]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 376], rbp
                        mov              rdi, rbp
                        mov              esi, 368
                        mov              edx, 384
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_Time___α_body
.Lx00286_2:
                        mov              rdx, qword ptr [rsp + -432]
                        mov              rcx, rsp
                        add              rcx, -416
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00286_3:
                        mov              rdi, qword ptr [rsp + -432]
                        mov              rsi, rsp
                        add              rsi, -416
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lclassspec0:           .string          "nonterm(name)"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lclassspec0]
                        call             record_register@PLT
                        .section         .rodata
.Lclassspec1:           .string          "charset(chars)"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lclassspec1]
                        call             record_register@PLT
                        .section         .rodata
.Lstartup_pname0:       .string          "alts"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_alts_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 640
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_alts_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "comment"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_comment_α]
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
                        lea              rsi, [rip + proc_comment_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "define"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_define_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 640
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_define_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "defnon"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_defnon_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 704
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_defnon_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "error"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_error_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 176
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_error_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "gener"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_gener_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 2352
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_gener_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "generate"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_generate_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1088
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_generate_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "getrhs"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname7]
                        lea              rsi, [rip + proc_getrhs_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 496
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        lea              rsi, [rip + proc_getrhs_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname8:       .string          "grammar"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname8]
                        lea              rsi, [rip + proc_grammar_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1984
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        lea              rsi, [rip + proc_grammar_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname9:       .string          "listimage"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname9]
                        lea              rsi, [rip + proc_listimage_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 448
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        lea              rsi, [rip + proc_listimage_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname10:      .string          "prompter"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname10]
                        lea              rsi, [rip + proc_prompter_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 416
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        lea              rsi, [rip + proc_prompter_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname11:      .string          "pwrite"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname11]
                        lea              rsi, [rip + proc_pwrite_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 2352
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        lea              rsi, [rip + proc_pwrite_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname12:      .string          "source"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname12]
                        lea              rsi, [rip + proc_source_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 896
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        lea              rsi, [rip + proc_source_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname13:      .string          "symimage"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname13]
                        lea              rsi, [rip + proc_symimage_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 928
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        lea              rsi, [rip + proc_symimage_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname14:      .string          "syms"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname14]
                        lea              rsi, [rip + proc_syms_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        mov              esi, 1136
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        lea              rsi, [rip + proc_syms_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname15:      .string          "options"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname15]
                        lea              rsi, [rip + proc_options_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        mov              esi, 3728
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        lea              rsi, [rip + proc_options_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname16:      .string          "Init__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname16]
                        lea              rsi, [rip + proc_Init___α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        mov              esi, 592
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        lea              rsi, [rip + proc_Init___dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname17:      .string          "Term__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname17]
                        lea              rsi, [rip + proc_Term___α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname17]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname17]
                        mov              esi, 592
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname17]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname17]
                        lea              rsi, [rip + proc_Term___dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname18:      .string          "Collections__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname18]
                        lea              rsi, [rip + proc_Collections___α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname18]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname18]
                        mov              esi, 1248
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname18]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname18]
                        lea              rsi, [rip + proc_Collections___dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname19:      .string          "Regions__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname19]
                        lea              rsi, [rip + proc_Regions___α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname19]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname19]
                        mov              esi, 1200
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname19]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname19]
                        lea              rsi, [rip + proc_Regions___dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname20:      .string          "Signature__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname20]
                        lea              rsi, [rip + proc_Signature___α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname20]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname20]
                        mov              esi, 272
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname20]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname20]
                        lea              rsi, [rip + proc_Signature___dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname21:      .string          "Storage__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname21]
                        lea              rsi, [rip + proc_Storage___α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname21]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname21]
                        mov              esi, 1200
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname21]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname21]
                        lea              rsi, [rip + proc_Storage___dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname22:      .string          "Time__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname22]
                        lea              rsi, [rip + proc_Time___α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname22]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname22]
                        mov              esi, 384
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname22]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname22]
                        lea              rsi, [rip + proc_Time___dcα]
                        call             rt_proc_set_dcfn@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "defs"
.Lgvan1:                .string          "ifile"
.Lgvan2:                .string          "in"
.Lgvan3:                .string          "limit"
.Lgvan4:                .string          "prompt"
.Lgvan5:                .string          "tswitch"
.Lgvan6:                .string          "Save__"
.Lgvan7:                .string          "Saves__"
.Lgvan8:                .string          "Name__"
.Lgvan9:                .string          "pwrite__STATIC__builtin"
.Lgvan10:               .string          "pwrite__INITFLAG__0"
.Lgvan11:               .string          "syms__STATIC__nonbrack"
.Lgvan12:               .string          "syms__INITFLAG__0"
.Lgvan13:               .string          "Collections____STATIC__labels"
.Lgvan14:               .string          "Collections____INITFLAG__0"
.Lgvan15:               .string          "Regions____STATIC__labels"
.Lgvan16:               .string          "Regions____INITFLAG__0"
.Lgvan17:               .string          "Storage____STATIC__labels"
.Lgvan18:               .string          "Storage____INITFLAG__0"
.Lgvan19:               .string          "Time____STATIC__lasttime"
.Lgvan20:               .string          "Time____INITFLAG__0"
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
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 21
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 21
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
                        sub              rsp, 65544
                        mov              rdi, rsp
                        mov              ecx, 65544
                        xor              eax, eax
                        rep stosb
                        mov              qword ptr [rsp + 4360], rsp
                        mov              r12, qword ptr [1879048192]
                        mov              [rsp + 65536], rbp
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
xchain00287_n0_α:
                        mov              edi, 16
                        call             rt_proc_call_open_det0@PLT
                        test             rax, rax
                                                                                        je    .Lx00288_1
                        lea              rcx, [rip + .Lx00288_3]
                        lea              rdx, [rip + .Lx00288_4]
                                                                                        jmp   rax
.Lx00288_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx00288_2
.Lx00288_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx00288_2
.Lx00288_1:
                        call             rt_faildescr@PLT
.Lx00288_2:
                        mov              qword ptr [rbp + 4320], rax
                        mov              qword ptr [rbp + 4328], rdx
                        cmp              eax, 99
                                                                                        je    xchain00287_n1_α
                                                                                        jmp   xchain00287_n1_α
xchain00287_n0_β:
                                                                                        jmp   xchain00287_n1_α
.Lx00288_0:
                        .quad            .Lx00288_0_s
.Lx00288_0_s:
                        .string          "Init__"
#-----------------------------------------------------------------------------------------------------------------------
# IR_PROC_VALUE
xchain00287_n1_α:
                        mov              rdi, qword ptr [rip + .Lx00289_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 4096], rax
                        mov              qword ptr [rbp + 4104], rdx
                                                                                        jmp   xchain00287_n2_α
.Lx00289_0:
                        .quad            .Lx00289_0_s
.Lx00289_0_s:
                        .string          "define"
#-----------------------------------------------------------------------------------------------------------------------
# IR_PROC_VALUE
xchain00287_n2_α:
                        mov              rdi, qword ptr [rip + .Lx00290_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 4128], rax
                        mov              qword ptr [rbp + 4136], rdx
                                                                                        jmp   xchain00287_n3_α
.Lx00290_0:
                        .quad            .Lx00290_0_s
.Lx00290_0_s:
                        .string          "generate"
#-----------------------------------------------------------------------------------------------------------------------
# IR_PROC_VALUE
xchain00287_n3_α:
                        mov              rdi, qword ptr [rip + .Lx00291_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 4160], rax
                        mov              qword ptr [rbp + 4168], rdx
                                                                                        jmp   xchain00287_n4_α
.Lx00291_0:
                        .quad            .Lx00291_0_s
.Lx00291_0_s:
                        .string          "grammar"
#-----------------------------------------------------------------------------------------------------------------------
# IR_PROC_VALUE
xchain00287_n4_α:
                        mov              rdi, qword ptr [rip + .Lx00292_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 4192], rax
                        mov              qword ptr [rbp + 4200], rdx
                                                                                        jmp   xchain00287_n5_α
.Lx00292_0:
                        .quad            .Lx00292_0_s
.Lx00292_0_s:
                        .string          "source"
#-----------------------------------------------------------------------------------------------------------------------
# IR_PROC_VALUE
xchain00287_n5_α:
                        mov              rdi, qword ptr [rip + .Lx00293_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 4224], rax
                        mov              qword ptr [rbp + 4232], rdx
                                                                                        jmp   xchain00287_n6_α
.Lx00293_0:
                        .quad            .Lx00293_0_s
.Lx00293_0_s:
                        .string          "comment"
#-----------------------------------------------------------------------------------------------------------------------
# IR_PROC_VALUE
xchain00287_n6_α:
                        mov              rdi, qword ptr [rip + .Lx00294_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 4256], rax
                        mov              qword ptr [rbp + 4264], rdx
                                                                                        jmp   xchain00287_n7_α
.Lx00294_0:
                        .quad            .Lx00294_0_s
.Lx00294_0_s:
                        .string          "prompter"
#-----------------------------------------------------------------------------------------------------------------------
# IR_PROC_VALUE
xchain00287_n7_α:
                        mov              rdi, qword ptr [rip + .Lx00295_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 4288], rax
                        mov              qword ptr [rbp + 4296], rdx
                                                                                        jmp   xchain00287_n8_α
.Lx00295_0:
                        .quad            .Lx00295_0_s
.Lx00295_0_s:
                        .string          "error"
#-----------------------------------------------------------------------------------------------------------------------
# IR_MAKE_LIST
xchain00287_n8_α:
                        mov              rax, qword ptr [rbp + 4096]
                        mov              qword ptr [rbp + 3984], rax
                        mov              rax, qword ptr [rbp + 4104]
                        mov              qword ptr [rbp + 3992], rax
                        mov              rax, qword ptr [rbp + 4128]
                        mov              qword ptr [rbp + 4000], rax
                        mov              rax, qword ptr [rbp + 4136]
                        mov              qword ptr [rbp + 4008], rax
                        mov              rax, qword ptr [rbp + 4160]
                        mov              qword ptr [rbp + 4016], rax
                        mov              rax, qword ptr [rbp + 4168]
                        mov              qword ptr [rbp + 4024], rax
                        mov              rax, qword ptr [rbp + 4192]
                        mov              qword ptr [rbp + 4032], rax
                        mov              rax, qword ptr [rbp + 4200]
                        mov              qword ptr [rbp + 4040], rax
                        mov              rax, qword ptr [rbp + 4224]
                        mov              qword ptr [rbp + 4048], rax
                        mov              rax, qword ptr [rbp + 4232]
                        mov              qword ptr [rbp + 4056], rax
                        mov              rax, qword ptr [rbp + 4256]
                        mov              qword ptr [rbp + 4064], rax
                        mov              rax, qword ptr [rbp + 4264]
                        mov              qword ptr [rbp + 4072], rax
                        mov              rax, qword ptr [rbp + 4288]
                        mov              qword ptr [rbp + 4080], rax
                        mov              rax, qword ptr [rbp + 4296]
                        mov              qword ptr [rbp + 4088], rax
                        lea              rdi, [rbp + 3984]
                        mov              esi, 7
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 3968], rax
                        mov              qword ptr [rbp + 3976], rdx
                                                                                        jmp   xchain00287_n9_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00287_n9_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 3968]
                        mov              rdx, qword ptr [rbp + 3976]
                        mov              qword ptr [rbp + 4368], rax
                        mov              qword ptr [rbp + 4376], rdx
                        mov              qword ptr [rbp + 3952], rax
                        mov              qword ptr [rbp + 3960], rdx
                                                                                        jmp   xchain00287_n10_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00287_n10_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
                        .section         .rodata
.Lrkfn1114:             .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1114]
                        lea              rsi, [rbp + 3936]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3920], rax
                        mov              qword ptr [rbp + 3928], rdx
                        cmp              eax, 99
                                                                                        je    xchain00287_n12_α
                                                                                        jmp   xchain00287_n11_α
xchain00287_n10_β:
                                                                                        jmp   xchain00287_n12_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain00287_n11_α:
                        mov              rax, qword ptr [rbp + 3920]
                        mov              rdx, qword ptr [rbp + 3928]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                        mov              qword ptr [rbp + 3904], rax
                        mov              qword ptr [rbp + 3912], rdx
                                                                                        jmp   xchain00287_n12_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR_REF
xchain00287_n12_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052288
                        mov              qword ptr [rbp + 3696], rax
                        mov              qword ptr [rbp + 3704], rdx
                                                                                        jmp   xchain00287_n13_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain00287_n13_α:
                        mov              qword ptr [rbp + 3728], 1
                        mov              rax, qword ptr [rip + .Lx00296_0]
                        mov              qword ptr [rbp + 3736], rax
                                                                                        jmp   xchain00287_n14_α
.Lx00296_0:
                        .quad            .Lx00296_0_s
.Lx00296_0_s:
                        .string          "lb"
#-----------------------------------------------------------------------------------------------------------------------
# IR_SUBSCRIPT x[i] variable
xchain00287_n14_α:
                        mov              rdi, qword ptr [rbp + 3696]
                        mov              rsi, qword ptr [rbp + 3704]
                        mov              rdx, qword ptr [rbp + 3728]
                        mov              rcx, qword ptr [rbp + 3736]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain00287_n16_α
                        mov              qword ptr [rbp + 3760], rax
                        mov              qword ptr [rbp + 3768], rdx
                                                                                        jmp   xchain00287_n15_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain00287_n15_α:
                        mov              qword ptr [rbp + 3872], 1
                        mov              rax, qword ptr [rip + .Lx00297_0]
                        mov              qword ptr [rbp + 3880], rax
                                                                                        jmp   xchain00287_n17_α
.Lx00297_0:
                        .quad            .Lx00297_0_s
.Lx00297_0_s:
                        .string          "<"
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR_REF
xchain00287_n16_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052288
                        mov              qword ptr [rbp + 3488], rax
                        mov              qword ptr [rbp + 3496], rdx
                                                                                        jmp   xchain00287_n18_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_MAKE_LIST
xchain00287_n17_α:
                        mov              rax, qword ptr [rbp + 3872]
                        mov              qword ptr [rbp + 3856], rax
                        mov              rax, qword ptr [rbp + 3880]
                        mov              qword ptr [rbp + 3864], rax
                        lea              rdi, [rbp + 3856]
                        mov              esi, 1
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 3840], rax
                        mov              qword ptr [rbp + 3848], rdx
                                                                                        jmp   xchain00287_n19_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain00287_n18_α:
                        mov              qword ptr [rbp + 3520], 1
                        mov              rax, qword ptr [rip + .Lx00298_0]
                        mov              qword ptr [rbp + 3528], rax
                                                                                        jmp   xchain00287_n20_α
.Lx00298_0:
                        .quad            .Lx00298_0_s
.Lx00298_0_s:
                        .string          "rb"
#-----------------------------------------------------------------------------------------------------------------------
# IR_MAKE_LIST
xchain00287_n19_α:
                        mov              rax, qword ptr [rbp + 3840]
                        mov              qword ptr [rbp + 3824], rax
                        mov              rax, qword ptr [rbp + 3848]
                        mov              qword ptr [rbp + 3832], rax
                        lea              rdi, [rbp + 3824]
                        mov              esi, 1
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 3808], rax
                        mov              qword ptr [rbp + 3816], rdx
                                                                                        jmp   xchain00287_n21_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_SUBSCRIPT x[i] variable
xchain00287_n20_α:
                        mov              rdi, qword ptr [rbp + 3488]
                        mov              rsi, qword ptr [rbp + 3496]
                        mov              rdx, qword ptr [rbp + 3520]
                        mov              rcx, qword ptr [rbp + 3528]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain00287_n23_α
                        mov              qword ptr [rbp + 3552], rax
                        mov              qword ptr [rbp + 3560], rdx
                                                                                        jmp   xchain00287_n22_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN_VAR
xchain00287_n21_α:
                        mov              rdi, qword ptr [rbp + 3760]
                        mov              rsi, qword ptr [rbp + 3768]
                        mov              rdx, qword ptr [rbp + 3808]
                        mov              rcx, qword ptr [rbp + 3816]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain00287_n16_α
                        mov              qword ptr [rbp + 3792], rax
                        mov              qword ptr [rbp + 3800], rdx
                                                                                        jmp   xchain00287_n16_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain00287_n22_α:
                        mov              qword ptr [rbp + 3664], 1
                        mov              rax, qword ptr [rip + .Lx00299_0]
                        mov              qword ptr [rbp + 3672], rax
                                                                                        jmp   xchain00287_n24_α
.Lx00299_0:
                        .quad            .Lx00299_0_s
.Lx00299_0_s:
                        .string          ">"
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR_REF
xchain00287_n23_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052288
                        mov              qword ptr [rbp + 3280], rax
                        mov              qword ptr [rbp + 3288], rdx
                                                                                        jmp   xchain00287_n25_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_MAKE_LIST
xchain00287_n24_α:
                        mov              rax, qword ptr [rbp + 3664]
                        mov              qword ptr [rbp + 3648], rax
                        mov              rax, qword ptr [rbp + 3672]
                        mov              qword ptr [rbp + 3656], rax
                        lea              rdi, [rbp + 3648]
                        mov              esi, 1
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 3632], rax
                        mov              qword ptr [rbp + 3640], rdx
                                                                                        jmp   xchain00287_n26_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain00287_n25_α:
                        mov              qword ptr [rbp + 3312], 1
                        mov              rax, qword ptr [rip + .Lx00300_0]
                        mov              qword ptr [rbp + 3320], rax
                                                                                        jmp   xchain00287_n27_α
.Lx00300_0:
                        .quad            .Lx00300_0_s
.Lx00300_0_s:
                        .string          "vb"
#-----------------------------------------------------------------------------------------------------------------------
# IR_MAKE_LIST
xchain00287_n26_α:
                        mov              rax, qword ptr [rbp + 3632]
                        mov              qword ptr [rbp + 3616], rax
                        mov              rax, qword ptr [rbp + 3640]
                        mov              qword ptr [rbp + 3624], rax
                        lea              rdi, [rbp + 3616]
                        mov              esi, 1
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 3600], rax
                        mov              qword ptr [rbp + 3608], rdx
                                                                                        jmp   xchain00287_n28_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_SUBSCRIPT x[i] variable
xchain00287_n27_α:
                        mov              rdi, qword ptr [rbp + 3280]
                        mov              rsi, qword ptr [rbp + 3288]
                        mov              rdx, qword ptr [rbp + 3312]
                        mov              rcx, qword ptr [rbp + 3320]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain00287_n30_α
                        mov              qword ptr [rbp + 3344], rax
                        mov              qword ptr [rbp + 3352], rdx
                                                                                        jmp   xchain00287_n29_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN_VAR
xchain00287_n28_α:
                        mov              rdi, qword ptr [rbp + 3552]
                        mov              rsi, qword ptr [rbp + 3560]
                        mov              rdx, qword ptr [rbp + 3600]
                        mov              rcx, qword ptr [rbp + 3608]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain00287_n23_α
                        mov              qword ptr [rbp + 3584], rax
                        mov              qword ptr [rbp + 3592], rdx
                                                                                        jmp   xchain00287_n23_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain00287_n29_α:
                        mov              qword ptr [rbp + 3456], 1
                        mov              rax, qword ptr [rip + .Lx00301_0]
                        mov              qword ptr [rbp + 3464], rax
                                                                                        jmp   xchain00287_n31_α
.Lx00301_0:
                        .quad            .Lx00301_0_s
.Lx00301_0_s:
                        .string          "|"
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR_REF
xchain00287_n30_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052288
                        mov              qword ptr [rbp + 3072], rax
                        mov              qword ptr [rbp + 3080], rdx
                                                                                        jmp   xchain00287_n32_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_MAKE_LIST
xchain00287_n31_α:
                        mov              rax, qword ptr [rbp + 3456]
                        mov              qword ptr [rbp + 3440], rax
                        mov              rax, qword ptr [rbp + 3464]
                        mov              qword ptr [rbp + 3448], rax
                        lea              rdi, [rbp + 3440]
                        mov              esi, 1
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 3424], rax
                        mov              qword ptr [rbp + 3432], rdx
                                                                                        jmp   xchain00287_n33_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain00287_n32_α:
                        mov              qword ptr [rbp + 3104], 1
                        mov              rax, qword ptr [rip + .Lx00302_0]
                        mov              qword ptr [rbp + 3112], rax
                                                                                        jmp   xchain00287_n34_α
.Lx00302_0:
                        .quad            .Lx00302_0_s
.Lx00302_0_s:
                        .string          "nl"
#-----------------------------------------------------------------------------------------------------------------------
# IR_MAKE_LIST
xchain00287_n33_α:
                        mov              rax, qword ptr [rbp + 3424]
                        mov              qword ptr [rbp + 3408], rax
                        mov              rax, qword ptr [rbp + 3432]
                        mov              qword ptr [rbp + 3416], rax
                        lea              rdi, [rbp + 3408]
                        mov              esi, 1
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 3392], rax
                        mov              qword ptr [rbp + 3400], rdx
                                                                                        jmp   xchain00287_n35_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_SUBSCRIPT x[i] variable
xchain00287_n34_α:
                        mov              rdi, qword ptr [rbp + 3072]
                        mov              rsi, qword ptr [rbp + 3080]
                        mov              rdx, qword ptr [rbp + 3104]
                        mov              rcx, qword ptr [rbp + 3112]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain00287_n37_α
                        mov              qword ptr [rbp + 3136], rax
                        mov              qword ptr [rbp + 3144], rdx
                                                                                        jmp   xchain00287_n36_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN_VAR
xchain00287_n35_α:
                        mov              rdi, qword ptr [rbp + 3344]
                        mov              rsi, qword ptr [rbp + 3352]
                        mov              rdx, qword ptr [rbp + 3392]
                        mov              rcx, qword ptr [rbp + 3400]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain00287_n30_α
                        mov              qword ptr [rbp + 3376], rax
                        mov              qword ptr [rbp + 3384], rdx
                                                                                        jmp   xchain00287_n30_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain00287_n36_α:
                        mov              qword ptr [rbp + 3248], 1
                        mov              rax, qword ptr [rip + .Lx00303_0]
                        mov              qword ptr [rbp + 3256], rax
                                                                                        jmp   xchain00287_n38_α
.Lx00303_0:
                        .quad            .Lx00303_0_s
.Lx00303_0_s:
                        .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR_REF
xchain00287_n37_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052288
                        mov              qword ptr [rbp + 2864], rax
                        mov              qword ptr [rbp + 2872], rdx
                                                                                        jmp   xchain00287_n39_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_MAKE_LIST
xchain00287_n38_α:
                        mov              rax, qword ptr [rbp + 3248]
                        mov              qword ptr [rbp + 3232], rax
                        mov              rax, qword ptr [rbp + 3256]
                        mov              qword ptr [rbp + 3240], rax
                        lea              rdi, [rbp + 3232]
                        mov              esi, 1
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 3216], rax
                        mov              qword ptr [rbp + 3224], rdx
                                                                                        jmp   xchain00287_n40_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain00287_n39_α:
                        mov              qword ptr [rbp + 2896], 1
                        mov              rax, qword ptr [rip + .Lx00304_0]
                        mov              qword ptr [rbp + 2904], rax
                                                                                        jmp   xchain00287_n41_α
.Lx00304_0:
                        .quad            .Lx00304_0_s
.Lx00304_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
# IR_MAKE_LIST
xchain00287_n40_α:
                        mov              rax, qword ptr [rbp + 3216]
                        mov              qword ptr [rbp + 3200], rax
                        mov              rax, qword ptr [rbp + 3224]
                        mov              qword ptr [rbp + 3208], rax
                        lea              rdi, [rbp + 3200]
                        mov              esi, 1
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 3184], rax
                        mov              qword ptr [rbp + 3192], rdx
                                                                                        jmp   xchain00287_n42_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_SUBSCRIPT x[i] variable
xchain00287_n41_α:
                        mov              rdi, qword ptr [rbp + 2864]
                        mov              rsi, qword ptr [rbp + 2872]
                        mov              rdx, qword ptr [rbp + 2896]
                        mov              rcx, qword ptr [rbp + 2904]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain00287_n44_α
                        mov              qword ptr [rbp + 2928], rax
                        mov              qword ptr [rbp + 2936], rdx
                                                                                        jmp   xchain00287_n43_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN_VAR
xchain00287_n42_α:
                        mov              rdi, qword ptr [rbp + 3136]
                        mov              rsi, qword ptr [rbp + 3144]
                        mov              rdx, qword ptr [rbp + 3184]
                        mov              rcx, qword ptr [rbp + 3192]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain00287_n37_α
                        mov              qword ptr [rbp + 3168], rax
                        mov              qword ptr [rbp + 3176], rdx
                                                                                        jmp   xchain00287_n37_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain00287_n43_α:
                        mov              qword ptr [rbp + 3040], 1
                        mov              rax, qword ptr [rip + .Lx00305_0]
                        mov              qword ptr [rbp + 3048], rax
                                                                                        jmp   xchain00287_n45_α
.Lx00305_0:
                        .quad            .Lx00305_0_s
.Lx00305_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR_REF
xchain00287_n44_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052288
                        mov              qword ptr [rbp + 2608], rax
                        mov              qword ptr [rbp + 2616], rdx
                                                                                        jmp   xchain00287_n46_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_MAKE_LIST
xchain00287_n45_α:
                        mov              rax, qword ptr [rbp + 3040]
                        mov              qword ptr [rbp + 3024], rax
                        mov              rax, qword ptr [rbp + 3048]
                        mov              qword ptr [rbp + 3032], rax
                        lea              rdi, [rbp + 3024]
                        mov              esi, 1
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 3008], rax
                        mov              qword ptr [rbp + 3016], rdx
                                                                                        jmp   xchain00287_n47_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain00287_n46_α:
                        mov              qword ptr [rbp + 2640], 1
                        mov              rax, qword ptr [rip + .Lx00306_0]
                        mov              qword ptr [rbp + 2648], rax
                                                                                        jmp   xchain00287_n48_α
.Lx00306_0:
                        .quad            .Lx00306_0_s
.Lx00306_0_s:
                        .string          "&lcase"
#-----------------------------------------------------------------------------------------------------------------------
# IR_MAKE_LIST
xchain00287_n47_α:
                        mov              rax, qword ptr [rbp + 3008]
                        mov              qword ptr [rbp + 2992], rax
                        mov              rax, qword ptr [rbp + 3016]
                        mov              qword ptr [rbp + 3000], rax
                        lea              rdi, [rbp + 2992]
                        mov              esi, 1
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 2976], rax
                        mov              qword ptr [rbp + 2984], rdx
                                                                                        jmp   xchain00287_n49_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_SUBSCRIPT x[i] variable
xchain00287_n48_α:
                        mov              rdi, qword ptr [rbp + 2608]
                        mov              rsi, qword ptr [rbp + 2616]
                        mov              rdx, qword ptr [rbp + 2640]
                        mov              rcx, qword ptr [rbp + 2648]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain00287_n51_α
                        mov              qword ptr [rbp + 2672], rax
                        mov              qword ptr [rbp + 2680], rdx
                                                                                        jmp   xchain00287_n50_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN_VAR
xchain00287_n49_α:
                        mov              rdi, qword ptr [rbp + 2928]
                        mov              rsi, qword ptr [rbp + 2936]
                        mov              rdx, qword ptr [rbp + 2976]
                        mov              rcx, qword ptr [rbp + 2984]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain00287_n44_α
                        mov              qword ptr [rbp + 2960], rax
                        mov              qword ptr [rbp + 2968], rdx
                                                                                        jmp   xchain00287_n44_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_CHARSET
xchain00287_n50_α:
                        mov              qword ptr [rbp + 2832], 1
                        mov              dword ptr [rbp + 2836], -1
                        mov              rax, qword ptr [rip + .Lx00307_0]
                        mov              qword ptr [rbp + 2840], rax
                                                                                        jmp   xchain00287_n52_α
.Lx00307_0:
                        .quad            .Lx00307_0_s
.Lx00307_0_s:
                        .string          "abcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR_REF
xchain00287_n51_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052288
                        mov              qword ptr [rbp + 2352], rax
                        mov              qword ptr [rbp + 2360], rdx
                                                                                        jmp   xchain00287_n53_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00287_n52_α:
# BOX IR_CALL charset(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2832] -> [zr+2800]
                        mov              rax, qword ptr [rbp + 2832]
                        mov              qword ptr [rbp + 2800], rax
                        mov              rax, qword ptr [rbp + 2840]
                        mov              qword ptr [rbp + 2808], rax
                        .section         .rodata
.Lrkfn1174:             .string          "charset"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1174]
                        lea              rsi, [rbp + 2800]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2784], rax
                        mov              qword ptr [rbp + 2792], rdx
                        cmp              eax, 99
                                                                                        je    xchain00287_n51_α
                                                                                        jmp   xchain00287_n54_α
xchain00287_n52_β:
                                                                                        jmp   xchain00287_n51_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain00287_n53_α:
                        mov              qword ptr [rbp + 2384], 1
                        mov              rax, qword ptr [rip + .Lx00308_0]
                        mov              qword ptr [rbp + 2392], rax
                                                                                        jmp   xchain00287_n55_α
.Lx00308_0:
                        .quad            .Lx00308_0_s
.Lx00308_0_s:
                        .string          "&ucase"
#-----------------------------------------------------------------------------------------------------------------------
# IR_MAKE_LIST
xchain00287_n54_α:
                        mov              rax, qword ptr [rbp + 2784]
                        mov              qword ptr [rbp + 2768], rax
                        mov              rax, qword ptr [rbp + 2792]
                        mov              qword ptr [rbp + 2776], rax
                        lea              rdi, [rbp + 2768]
                        mov              esi, 1
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 2752], rax
                        mov              qword ptr [rbp + 2760], rdx
                                                                                        jmp   xchain00287_n56_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_SUBSCRIPT x[i] variable
xchain00287_n55_α:
                        mov              rdi, qword ptr [rbp + 2352]
                        mov              rsi, qword ptr [rbp + 2360]
                        mov              rdx, qword ptr [rbp + 2384]
                        mov              rcx, qword ptr [rbp + 2392]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain00287_n58_α
                        mov              qword ptr [rbp + 2416], rax
                        mov              qword ptr [rbp + 2424], rdx
                                                                                        jmp   xchain00287_n57_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_MAKE_LIST
xchain00287_n56_α:
                        mov              rax, qword ptr [rbp + 2752]
                        mov              qword ptr [rbp + 2736], rax
                        mov              rax, qword ptr [rbp + 2760]
                        mov              qword ptr [rbp + 2744], rax
                        lea              rdi, [rbp + 2736]
                        mov              esi, 1
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 2720], rax
                        mov              qword ptr [rbp + 2728], rdx
                                                                                        jmp   xchain00287_n59_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_CHARSET
xchain00287_n57_α:
                        mov              qword ptr [rbp + 2576], 1
                        mov              dword ptr [rbp + 2580], -1
                        mov              rax, qword ptr [rip + .Lx00309_0]
                        mov              qword ptr [rbp + 2584], rax
                                                                                        jmp   xchain00287_n60_α
.Lx00309_0:
                        .quad            .Lx00309_0_s
.Lx00309_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR_REF
xchain00287_n58_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052288
                        mov              qword ptr [rbp + 2096], rax
                        mov              qword ptr [rbp + 2104], rdx
                                                                                        jmp   xchain00287_n61_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN_VAR
xchain00287_n59_α:
                        mov              rdi, qword ptr [rbp + 2672]
                        mov              rsi, qword ptr [rbp + 2680]
                        mov              rdx, qword ptr [rbp + 2720]
                        mov              rcx, qword ptr [rbp + 2728]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain00287_n51_α
                        mov              qword ptr [rbp + 2704], rax
                        mov              qword ptr [rbp + 2712], rdx
                                                                                        jmp   xchain00287_n51_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00287_n60_α:
# BOX IR_CALL charset(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2576] -> [zr+2544]
                        mov              rax, qword ptr [rbp + 2576]
                        mov              qword ptr [rbp + 2544], rax
                        mov              rax, qword ptr [rbp + 2584]
                        mov              qword ptr [rbp + 2552], rax
                        .section         .rodata
.Lrkfn1186:             .string          "charset"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1186]
                        lea              rsi, [rbp + 2544]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2528], rax
                        mov              qword ptr [rbp + 2536], rdx
                        cmp              eax, 99
                                                                                        je    xchain00287_n58_α
                                                                                        jmp   xchain00287_n62_α
xchain00287_n60_β:
                                                                                        jmp   xchain00287_n58_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain00287_n61_α:
                        mov              qword ptr [rbp + 2128], 1
                        mov              rax, qword ptr [rip + .Lx00310_0]
                        mov              qword ptr [rbp + 2136], rax
                                                                                        jmp   xchain00287_n63_α
.Lx00310_0:
                        .quad            .Lx00310_0_s
.Lx00310_0_s:
                        .string          "&digit"
#-----------------------------------------------------------------------------------------------------------------------
# IR_MAKE_LIST
xchain00287_n62_α:
                        mov              rax, qword ptr [rbp + 2528]
                        mov              qword ptr [rbp + 2512], rax
                        mov              rax, qword ptr [rbp + 2536]
                        mov              qword ptr [rbp + 2520], rax
                        lea              rdi, [rbp + 2512]
                        mov              esi, 1
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 2496], rax
                        mov              qword ptr [rbp + 2504], rdx
                                                                                        jmp   xchain00287_n64_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_SUBSCRIPT x[i] variable
xchain00287_n63_α:
                        mov              rdi, qword ptr [rbp + 2096]
                        mov              rsi, qword ptr [rbp + 2104]
                        mov              rdx, qword ptr [rbp + 2128]
                        mov              rcx, qword ptr [rbp + 2136]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain00287_n66_α
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                                                                                        jmp   xchain00287_n65_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_MAKE_LIST
xchain00287_n64_α:
                        mov              rax, qword ptr [rbp + 2496]
                        mov              qword ptr [rbp + 2480], rax
                        mov              rax, qword ptr [rbp + 2504]
                        mov              qword ptr [rbp + 2488], rax
                        lea              rdi, [rbp + 2480]
                        mov              esi, 1
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 2464], rax
                        mov              qword ptr [rbp + 2472], rdx
                                                                                        jmp   xchain00287_n67_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_CHARSET
xchain00287_n65_α:
                        mov              qword ptr [rbp + 2320], 1
                        mov              dword ptr [rbp + 2324], -1
                        mov              rax, qword ptr [rip + .Lx00311_0]
                        mov              qword ptr [rbp + 2328], rax
                                                                                        jmp   xchain00287_n68_α
.Lx00311_0:
                        .quad            .Lx00311_0_s
.Lx00311_0_s:
                        .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00287_n66_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 2032], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 2040], rax
                                                                                        jmp   xchain00287_n69_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN_VAR
xchain00287_n67_α:
                        mov              rdi, qword ptr [rbp + 2416]
                        mov              rsi, qword ptr [rbp + 2424]
                        mov              rdx, qword ptr [rbp + 2464]
                        mov              rcx, qword ptr [rbp + 2472]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain00287_n58_α
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx
                                                                                        jmp   xchain00287_n58_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00287_n68_α:
# BOX IR_CALL charset(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2320] -> [zr+2288]
                        mov              rax, qword ptr [rbp + 2320]
                        mov              qword ptr [rbp + 2288], rax
                        mov              rax, qword ptr [rbp + 2328]
                        mov              qword ptr [rbp + 2296], rax
                        .section         .rodata
.Lrkfn1198:             .string          "charset"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1198]
                        lea              rsi, [rbp + 2288]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                        cmp              eax, 99
                                                                                        je    xchain00287_n66_α
                                                                                        jmp   xchain00287_n71_α
xchain00287_n68_β:
                                                                                        jmp   xchain00287_n66_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain00287_n69_α:
                        mov              qword ptr [rbp + 2064], 1
                        mov              rax, qword ptr [rip + .Lx00312_0]
                        mov              qword ptr [rbp + 2072], rax
                                                                                        jmp   xchain00287_n72_α
.Lx00312_0:
                        .quad            .Lx00312_0_s
.Lx00312_0_s:
                        .string          "tl+s+"
#-----------------------------------------------------------------------------------------------------------------------
# IR_DISJUNCTION_NARY
xchain00287_n70_α:
                        mov              qword ptr [rbp + 1744], 0
                        mov              qword ptr [rbp + 1752], 0
                        mov              dword ptr [rbp + 1760], 0
                                                                                        jmp   xchain00287_n74_α
xchain00287_n70_as:
                        mov              eax, dword ptr [rbp + 1760]
                        cmp              eax, 0
                                                                                        jne   .Lx00313_0
                        mov              rax, qword ptr [rbp + 1776]
                        mov              qword ptr [rbp + 1744], rax
                        mov              rax, qword ptr [rbp + 1784]
                        mov              qword ptr [rbp + 1752], rax
                                                                                        jmp   xchain00287_n73_α
.Lx00313_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00313_1
                        mov              rax, qword ptr [rbp + 1920]
                        mov              qword ptr [rbp + 1744], rax
                        mov              rax, qword ptr [rbp + 1928]
                        mov              qword ptr [rbp + 1752], rax
                                                                                        jmp   xchain00287_n73_α
.Lx00313_1:
                                                                                        jmp   xchain00287_n73_α
xchain00287_n70_β:
                        mov              eax, dword ptr [rbp + 1760]
                        cmp              eax, 0
                                                                                        je    xchain00287_n70_af
                                                                                        jmp   xchain00287_n70_af
xchain00287_n70_af:
                        add              dword ptr [rbp + 1760], 1
                        mov              eax, dword ptr [rbp + 1760]
                        cmp              eax, 1
                                                                                        je    xchain00287_n75_α
                                                                                        jmp   xchain00287_n79_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_MAKE_LIST
xchain00287_n71_α:
                        mov              rax, qword ptr [rbp + 2272]
                        mov              qword ptr [rbp + 2256], rax
                        mov              rax, qword ptr [rbp + 2280]
                        mov              qword ptr [rbp + 2264], rax
                        lea              rdi, [rbp + 2256]
                        mov              esi, 1
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                                                                                        jmp   xchain00287_n77_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00287_n72_α:
                        lea              rsi, [rbp + 2032]
                        lea              rdx, [rbp + 2064]
                        call             proc_options_dcα
                                                                                        jmp   .Lx00314_2
.Lx00314_2:
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx
                        cmp              eax, 99
                                                                                        je    xchain00287_n70_α
                                                                                        jmp   xchain00287_n78_α
xchain00287_n72_β:
                                                                                        jmp   xchain00287_n70_α
.Lx00314_0:
                        .quad            .Lx00314_0_s
.Lx00314_0_s:
                        .string          "options"
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain00287_n73_α:
                        mov              rax, qword ptr [rbp + 1744]
                        mov              rdx, qword ptr [rbp + 1752]
                        mov              qword ptr [1879052336], rax
                        mov              qword ptr [1879052344], rdx
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx
                                                                                        jmp   xchain00287_n79_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR_REF
xchain00287_n74_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4400]
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                                                                                        jmp   xchain00287_n80_α
xchain00287_n74_β:
                                                                                        jmp   xchain00287_n70_af
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain00287_n75_α:
                        mov              qword ptr [rbp + 1920], 6
                        mov              rax, qword ptr [rip + .Lx00315_0]
                        mov              qword ptr [rbp + 1928], rax
                                                                                        jmp   xchain00287_n70_as
xchain00287_n75_β:
                                                                                        jmp   xchain00287_n70_af
.Lx00315_0:
                        .quad            1000
#-----------------------------------------------------------------------------------------------------------------------
# IR_UNOP
xchain00287_n76_α:
                        mov              eax, dword ptr [rbp + 1904]
                        cmp              eax, 99
                                                                                        je    xchain00287_n70_af
                        cmp              eax, 0
                                                                                        je    xchain00287_n70_af
                        mov              rax, qword ptr [rbp + 1904]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 1912]
                        mov              qword ptr [rbp + 1784], rax
                                                                                        jmp   xchain00287_n70_as
xchain00287_n76_β:
                                                                                        jmp   xchain00287_n70_af
#-----------------------------------------------------------------------------------------------------------------------
# IR_MAKE_LIST
xchain00287_n77_α:
                        mov              rax, qword ptr [rbp + 2240]
                        mov              qword ptr [rbp + 2224], rax
                        mov              rax, qword ptr [rbp + 2248]
                        mov              qword ptr [rbp + 2232], rax
                        lea              rdi, [rbp + 2224]
                        mov              esi, 1
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 2208], rax
                        mov              qword ptr [rbp + 2216], rdx
                                                                                        jmp   xchain00287_n81_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00287_n78_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 1968]
                        mov              rdx, qword ptr [rbp + 1976]
                        mov              qword ptr [rbp + 4400], rax
                        mov              qword ptr [rbp + 4408], rdx
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx
                                                                                        jmp   xchain00287_n70_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR_REF
xchain00287_n79_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4400]
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                                                                                        jmp   xchain00287_n82_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain00287_n80_α:
                        mov              qword ptr [rbp + 1840], 1
                        mov              rax, qword ptr [rip + .Lx00316_0]
                        mov              qword ptr [rbp + 1848], rax
                                                                                        jmp   xchain00287_n83_α
.Lx00316_0:
                        .quad            .Lx00316_0_s
.Lx00316_0_s:
                        .string          "l"
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN_VAR
xchain00287_n81_α:
                        mov              rdi, qword ptr [rbp + 2160]
                        mov              rsi, qword ptr [rbp + 2168]
                        mov              rdx, qword ptr [rbp + 2208]
                        mov              rcx, qword ptr [rbp + 2216]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain00287_n66_α
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx
                                                                                        jmp   xchain00287_n66_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain00287_n82_α:
                        mov              qword ptr [rbp + 1648], 1
                        mov              rax, qword ptr [rip + .Lx00317_0]
                        mov              qword ptr [rbp + 1656], rax
                                                                                        jmp   xchain00287_n84_α
.Lx00317_0:
                        .quad            .Lx00317_0_s
.Lx00317_0_s:
                        .string          "t"
#-----------------------------------------------------------------------------------------------------------------------
# IR_SUBSCRIPT x[i] variable
xchain00287_n83_α:
                        mov              rdi, qword ptr [rbp + 1808]
                        mov              rsi, qword ptr [rbp + 1816]
                        mov              rdx, qword ptr [rbp + 1840]
                        mov              rcx, qword ptr [rbp + 1848]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain00287_n70_af
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                                                                                        jmp   xchain00287_n85_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_SUBSCRIPT x[i] variable
xchain00287_n84_α:
                        mov              rdi, qword ptr [rbp + 1616]
                        mov              rsi, qword ptr [rbp + 1624]
                        mov              rdx, qword ptr [rbp + 1648]
                        mov              rcx, qword ptr [rbp + 1656]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain00287_n87_α
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
                                                                                        jmp   xchain00287_n86_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_DEREF variable -> value
xchain00287_n85_α:
                        mov              rdi, qword ptr [rbp + 1872]
                        mov              rsi, qword ptr [rbp + 1880]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    xchain00287_n70_af
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx
                                                                                        jmp   xchain00287_n76_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_DEREF variable -> value
xchain00287_n86_α:
                        mov              rdi, qword ptr [rbp + 1680]
                        mov              rsi, qword ptr [rbp + 1688]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    xchain00287_n87_α
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                                                                                        jmp   xchain00287_n88_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR_REF
xchain00287_n87_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4400]
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                                                                                        jmp   xchain00287_n89_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_UNOP
xchain00287_n88_α:
                        mov              eax, dword ptr [rbp + 1712]
                        cmp              eax, 99
                                                                                        je    xchain00287_n87_α
                        cmp              eax, 0
                                                                                        je    xchain00287_n87_α
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 1592], rax
                                                                                        jmp   xchain00287_n90_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain00287_n89_α:
                        mov              qword ptr [rbp + 1488], 1
                        mov              rax, qword ptr [rip + .Lx00318_0]
                        mov              qword ptr [rbp + 1496], rax
                                                                                        jmp   xchain00287_n91_α
.Lx00318_0:
                        .quad            .Lx00318_0_s
.Lx00318_0_s:
                        .string          "s"
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain00287_n90_α:
                        mov              rax, qword ptr [rbp + 1584]
                        mov              rdx, qword ptr [rbp + 1592]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                                                                                        jmp   xchain00287_n87_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_SUBSCRIPT x[i] variable
xchain00287_n91_α:
                        mov              rdi, qword ptr [rbp + 1456]
                        mov              rsi, qword ptr [rbp + 1464]
                        mov              rdx, qword ptr [rbp + 1488]
                        mov              rcx, qword ptr [rbp + 1496]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain00287_n93_α
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                                                                                        jmp   xchain00287_n92_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_DEREF variable -> value
xchain00287_n92_α:
                        mov              rdi, qword ptr [rbp + 1520]
                        mov              rsi, qword ptr [rbp + 1528]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    xchain00287_n93_α
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                                                                                        jmp   xchain00287_n94_α
#-----------------------------------------------------------------------------------------------------------------------
# KEYWORD_read
xchain00287_n93_α:
                        mov              rdi, qword ptr [rip + .Lx00319_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    xchain00287_n98_α
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                                                                                        jmp   xchain00287_n95_α
xchain00287_n93_β:
                                                                                        jmp   xchain00287_n98_α
.Lx00319_0:
                        .quad            .Lx00319_0_s
.Lx00319_0_s:
                        .string          "&input"
#-----------------------------------------------------------------------------------------------------------------------
# IR_UNOP
xchain00287_n94_α:
                        mov              eax, dword ptr [rbp + 1552]
                        cmp              eax, 99
                                                                                        je    xchain00287_n93_α
                        cmp              eax, 0
                                                                                        je    xchain00287_n93_α
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1432], rax
                                                                                        jmp   xchain00287_n96_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_MAKE_LIST
xchain00287_n95_α:
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1368], rax
                        lea              rdi, [rbp + 1360]
                        mov              esi, 1
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                                                                                        jmp   xchain00287_n97_α
#-----------------------------------------------------------------------------------------------------------------------
# BOX ICN IR_KEYWORD_ASSIGN random [data.r kywdint: coerce int, store g_random seed, result {DT_I,n}; non-numeric->omega]
xchain00287_n96_α:
                        mov              rdi, qword ptr [rbp + 1424]
                        mov              rsi, qword ptr [rbp + 1432]
                        call             rt_keyword_random_set@PLT
                        cmp              eax, 99
                                                                                        je    xchain00287_n93_α
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                                                                                        jmp   xchain00287_n93_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain00287_n97_α:
                        mov              rax, qword ptr [rbp + 1344]
                        mov              rdx, qword ptr [rbp + 1352]
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                                                                                        jmp   xchain00287_n98_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain00287_n98_α:
                        mov              qword ptr [rbp + 1296], 1
                        mov              rax, qword ptr [rip + .Lx00320_0]
                        mov              qword ptr [rbp + 1304], rax
                                                                                        jmp   xchain00287_n99_α
.Lx00320_0:
                        .quad            .Lx00320_0_s
.Lx00320_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain00287_n99_α:
                        mov              rax, qword ptr [rbp + 1296]
                        mov              rdx, qword ptr [rbp + 1304]
                        mov              qword ptr [1879052352], rax
                        mov              qword ptr [1879052360], rdx
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                                                                                        jmp   xchain00287_n00203_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00287_n00203_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                                                                                        jmp   xchain00287_n00205_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00287_n00205_α:
# BOX IR_CALL pop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+128] -> [zr+96]
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 104], rax
                        .section         .rodata
.Lrkfn1240:             .string          "pop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1240]
                        lea              rsi, [rbp + 96]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    xchain00287_n00001_α
                                                                                        jmp   xchain00287_n00208_α
xchain00287_n00205_β:
                                                                                        jmp   xchain00287_n00001_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00287_n00001_α:
                        call             proc_Term___dcα
                                                                                        jmp   .Lx00321_2
.Lx00321_2:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   main_ω
xchain00287_n00001_β:
                                                                                        jmp   main_ω
.Lx00321_0:
                        .quad            .Lx00321_0_s
.Lx00321_0_s:
                        .string          "Term__"
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain00287_n00208_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              rdx, qword ptr [rbp + 88]
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                                                                                        jmp   xchain00287_n00002_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_DISJUNCTION_NARY
xchain00287_n00002_α:
                        mov              qword ptr [rbp + 1040], 0
                        mov              qword ptr [rbp + 1048], 0
                        mov              dword ptr [rbp + 1056], 0
                                                                                        jmp   xchain00287_n00322_α
xchain00287_n00002_as:
                        mov              eax, dword ptr [rbp + 1056]
                        cmp              eax, 0
                                                                                        jne   .Lx00323_0
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   xchain00287_n00209_α
.Lx00323_0:
                                                                                        jmp   xchain00287_n00209_α
xchain00287_n00002_β:
                        mov              eax, dword ptr [rbp + 1056]
                                                                                        jmp   xchain00287_n00209_α
xchain00287_n00002_af:
                        add              dword ptr [rbp + 1056], 1
                        mov              eax, dword ptr [rbp + 1056]
                                                                                        jmp   xchain00287_n00209_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_DISJUNCTION_NARY
xchain00287_n00209_α:
                        mov              qword ptr [rbp + 928], 0
                        mov              qword ptr [rbp + 936], 0
                        mov              dword ptr [rbp + 944], 0
                                                                                        jmp   xchain00287_n00324_α
xchain00287_n00209_as:
                        mov              eax, dword ptr [rbp + 944]
                        cmp              eax, 0
                                                                                        jne   .Lx00325_0
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   xchain00287_n00003_α
.Lx00325_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00325_1
                                                                                        jmp   xchain00287_n00003_α
.Lx00325_1:
                                                                                        jmp   xchain00287_n00003_α
xchain00287_n00209_β:
                        mov              eax, dword ptr [rbp + 944]
                        cmp              eax, 0
                                                                                        je    xchain00287_n00209_af
                                                                                        jmp   xchain00287_n00209_af
xchain00287_n00209_af:
                        add              dword ptr [rbp + 944], 1
                        mov              eax, dword ptr [rbp + 944]
                        cmp              eax, 1
                                                                                        je    xchain00287_n00004_α
                                                                                        jmp   xchain00287_n00326_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00287_n00322_α:
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                                                                                        jmp   xchain00287_n00005_α
xchain00287_n00322_β:
                                                                                        jmp   xchain00287_n00002_af
#-----------------------------------------------------------------------------------------------------------------------
xchain00287_n00327_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1120] -> [zr+1088]
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1096], rax
                        .section         .rodata
.Lrkfn1250:             .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1250]
                        lea              rsi, [rbp + 1088]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        cmp              eax, 99
                                                                                        je    xchain00287_n00209_α
                                                                                        jmp   xchain00287_n00002_as
xchain00287_n00327_β:
                                                                                        jmp   xchain00287_n00209_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00287_n00003_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 928]
                        mov              rdx, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 4384], rax
                        mov              qword ptr [rbp + 4392], rdx
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                                                                                        jmp   xchain00287_n00326_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00287_n00324_α:
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   xchain00287_n00328_α
xchain00287_n00324_β:
                                                                                        jmp   xchain00287_n00209_af
#-----------------------------------------------------------------------------------------------------------------------
xchain00287_n00004_α:
                                                                                        jmp   xchain00287_n00329_α
xchain00287_n00004_β:
                                                                                        jmp   xchain00287_n00329_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00287_n00328_α:
# BOX IR_CALL read(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1008] -> [zr+976]
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 984], rax
                        .section         .rodata
.Lrkfn1255:             .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1255]
                        lea              rsi, [rbp + 976]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        cmp              eax, 99
                                                                                        je    xchain00287_n00209_af
                                                                                        jmp   xchain00287_n00209_as
xchain00287_n00328_β:
                                                                                        jmp   xchain00287_n00209_af
#-----------------------------------------------------------------------------------------------------------------------
# IR_UNOP
xchain00287_n00005_α:
                        mov              rdi, qword ptr [rbp + 1216]
                        mov              rsi, qword ptr [rbp + 1224]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                                                                                        jmp   xchain00287_n00330_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR_REF
xchain00287_n00326_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4384]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   xchain00287_n00331_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00287_n00329_α:
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   xchain00287_n00332_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain00287_n00330_α:
                        mov              qword ptr [rbp + 1248], 6
                        mov              rax, qword ptr [rip + .Lx00333_0]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   xchain00287_n00334_α
.Lx00333_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain00287_n00331_α:
                        mov              qword ptr [rbp + 512], 6
                        mov              rax, qword ptr [rip + .Lx00335_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   xchain00287_n00336_α
.Lx00335_0:
                        .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
xchain00287_n00332_α:
# BOX IR_CALL close(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+192]
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 200], rax
                        .section         .rodata
.Lrkfn1263:             .string          "close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1263]
                        lea              rsi, [rbp + 192]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    xchain00287_n00203_α
                                                                                        jmp   xchain00287_n00337_α
xchain00287_n00332_β:
                                                                                        jmp   xchain00287_n00203_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00287_n00334_α:
# IR_BINOP_TEST
                        mov              eax, dword ptr [rbp + 1184]
                        cmp              eax, 100
                                                                                        je    .Lx00338_0
                        mov              eax, dword ptr [rbp + 1248]
                        cmp              eax, 100
                                                                                        je    .Lx00338_0
                        mov              eax, dword ptr [rbp + 1184]
                        cmp              eax, 6
                                                                                        jne   .Lx00338_2
                        mov              eax, dword ptr [rbp + 1248]
                        cmp              eax, 6
                                                                                        jne   .Lx00338_2
.Lx00338_1:
                        mov              rax, qword ptr [rbp + 1192]
                        mov              rcx, qword ptr [rbp + 1256]
                        cmp              rax, rcx
                                                                                        je    xchain00287_n00002_af
                        mov              rcx, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1152], rcx
                        mov              rcx, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1160], rcx
                                                                                        jmp   xchain00287_n00006_α
.Lx00338_0:
                        mov              rdi, qword ptr [rbp + 1184]
                        mov              rsi, qword ptr [rbp + 1192]
                        mov              rdx, qword ptr [rbp + 1248]
                        mov              rcx, qword ptr [rbp + 1256]
                        mov              r8d, 10
                        lea              r9, [rbp + 1152]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx00338_1
                        cmp              eax, 1
                                                                                        je    xchain00287_n00002_af
                                                                                        jmp   xchain00287_n00006_α
.Lx00338_2:
                        mov              rdi, qword ptr [rbp + 1184]
                        mov              rsi, qword ptr [rbp + 1192]
                        mov              rdx, qword ptr [rbp + 1248]
                        mov              rcx, qword ptr [rbp + 1256]
                        mov              r8d, 10
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    xchain00287_n00002_af
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   xchain00287_n00006_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_SUBSCRIPT x[i] variable
xchain00287_n00336_α:
                        mov              rdi, qword ptr [rbp + 480]
                        mov              rsi, qword ptr [rbp + 488]
                        mov              rdx, qword ptr [rbp + 512]
                        mov              rcx, qword ptr [rbp + 520]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain00287_n00008_α
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   xchain00287_n00007_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00287_n00337_α:
# IR_CONJUNCTION value-forward copy
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   xchain00287_n00203_α
xchain00287_n00337_β:
                                                                                        jmp   xchain00287_n00203_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00287_n00006_α:
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   xchain00287_n00327_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_DEREF variable -> value
xchain00287_n00007_α:
                        mov              rdi, qword ptr [rbp + 544]
                        mov              rsi, qword ptr [rbp + 552]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    xchain00287_n00008_α
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   xchain00287_n00339_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00287_n00008_α:
                        mov              rax, qword ptr [rbp + 4368]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 4376]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   xchain00287_n00340_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain00287_n00339_α:
                        mov              qword ptr [rbp + 592], 1
                        mov              rax, qword ptr [rip + .Lx00341_0]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   xchain00287_n00342_α
.Lx00341_0:
                        .quad            .Lx00341_0_s
.Lx00341_0_s:
                        .string          "\\"
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIST_BANG
xchain00287_n00340_α:
                        mov              qword ptr [rbp + 288], 0
.Lx00343_0:
                        mov              rdi, qword ptr [rbp + 304]
                        mov              rsi, qword ptr [rbp + 312]
                        mov              rdx, qword ptr [rbp + 288]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              rax, 99
                                                                                        je    xchain00287_n00002_α
                                                                                        jmp   xchain00287_n00344_α
xchain00287_n00340_β:
                        inc              qword ptr [rbp + 288]
                                                                                        jmp   .Lx00343_0
#-----------------------------------------------------------------------------------------------------------------------
xchain00287_n00342_α:
# IR_BINOP_TEST
                        mov              rdi, qword ptr [rbp + 576]
                        mov              rsi, qword ptr [rbp + 584]
                        mov              rdx, qword ptr [rbp + 592]
                        mov              rcx, qword ptr [rbp + 600]
                        mov              r8d, 16
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    xchain00287_n00008_α
                        mov              rdi, qword ptr [rbp + 592]
                        mov              rsi, qword ptr [rbp + 600]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   xchain00287_n00345_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00287_n00344_α:
                        mov              rax, qword ptr [rbp + 4384]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 4392]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   xchain00287_n00009_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_DISJUNCTION_NARY
xchain00287_n00345_α:
                        mov              qword ptr [rbp + 640], 0
                        mov              qword ptr [rbp + 648], 0
                        mov              dword ptr [rbp + 656], 0
                                                                                        jmp   xchain00287_n00346_α
xchain00287_n00345_as:
                        mov              eax, dword ptr [rbp + 656]
                        cmp              eax, 0
                                                                                        jne   .Lx00347_0
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   xchain00287_n00010_α
.Lx00347_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00347_1
                                                                                        jmp   xchain00287_n00010_α
.Lx00347_1:
                                                                                        jmp   xchain00287_n00010_α
xchain00287_n00345_β:
                        mov              eax, dword ptr [rbp + 656]
                        cmp              eax, 0
                                                                                        je    xchain00287_n00345_af
                                                                                        jmp   xchain00287_n00345_af
xchain00287_n00345_af:
                        add              dword ptr [rbp + 656], 1
                        mov              eax, dword ptr [rbp + 656]
                        cmp              eax, 1
                                                                                        je    xchain00287_n00348_α
                                                                                        jmp   xchain00287_n00326_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_CALL_VALUE invoke through a runtime callee value (proc/string/int); a jmp-entry GENERATOR callee takes the SPINE transfer (bcps_spine_gen_arm contract: prep resolves+stages+opens, wires in rcx/rdx, once-flag in the granted handle cell [zeta+off+16+n*16], beta resumes jmp [rsp]); det/builtin/unresolved callees fall back to the one-shot C window whose handle parks in the same cell (values 0/ptr, disjoint from the spine flag 1)
xchain00287_n00009_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 360], rax
                        mov              qword ptr [rbp + 368], 0
                        mov              rdi, qword ptr [rbp + 272]
                        mov              rsi, qword ptr [rbp + 280]
                        lea              rdx, [rbp + 352]
                        mov              ecx, 1
                        call             rt_call_value_spine_prep@PLT
                        test             rax, rax
                                                                                        je    .Lx00349_7
                        lea              rcx, [rip + .Lx00349_3]
                        lea              rdx, [rip + .Lx00349_4]
                                                                                        jmp   rax
.Lx00349_3:
                        mov              qword ptr [rbp + 376], rsp
                        mov              rax, qword ptr [rbp + 368]
                        test             rax, rax
                                                                                        jne   .Lx00349_5
                        mov              qword ptr [rbp + 368], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx00349_2
.Lx00349_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx00349_2
.Lx00349_4:
                        mov              qword ptr [rbp + 376], rsp
                        mov              rax, qword ptr [rbp + 368]
                        test             rax, rax
                                                                                        jne   .Lx00349_6
                        mov              qword ptr [rbp + 368], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx00349_2
.Lx00349_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx00349_2
.Lx00349_7:
                        mov              rdi, qword ptr [rbp + 272]
                        mov              rsi, qword ptr [rbp + 280]
                        lea              rdx, [rbp + 352]
                        mov              ecx, 1
                        lea              r8, [rbp + 368]
                        call             rt_call_value_gen_h@PLT
.Lx00349_2:
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    xchain00287_n00340_β
                                                                                        jmp   xchain00287_n00350_α
xchain00287_n00009_β:
                        mov              rax, qword ptr [rbp + 368]
                        cmp              rax, 1
                                                                                        jne   .Lx00349_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 376]
                                                                                        jmp   qword ptr [rsp]
.Lx00349_8:
                        lea              rdi, [rbp + 368]
                        call             rt_call_value_resume_h@PLT
                        cmp              eax, 99
                                                                                        je    xchain00287_n00340_β
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   xchain00287_n00350_α
                                                                                        jmp   xchain00287_n00340_β
#-----------------------------------------------------------------------------------------------------------------------
xchain00287_n00010_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 640]
                        mov              rdx, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 4384], rax
                        mov              qword ptr [rbp + 4392], rdx
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   xchain00287_n00326_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00287_n00346_α:
                        mov              rax, qword ptr [rbp + 4384]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 4392]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   xchain00287_n00351_α
xchain00287_n00346_β:
                                                                                        jmp   xchain00287_n00345_af
#-----------------------------------------------------------------------------------------------------------------------
xchain00287_n00348_α:
                                                                                        jmp   xchain00287_n00008_α
xchain00287_n00348_β:
                                                                                        jmp   xchain00287_n00008_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00287_n00352_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 704]
                        mov              rsi, qword ptr [rbp + 712]
                        mov              rdx, qword ptr [rbp + 832]
                        mov              rcx, qword ptr [rbp + 840]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   xchain00287_n00345_as
xchain00287_n00352_β:
                                                                                        jmp   xchain00287_n00345_af
#-----------------------------------------------------------------------------------------------------------------------
xchain00287_n00350_α:
# IR_CONJUNCTION value-forward copy
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   xchain00287_n00002_α
xchain00287_n00350_β:
                                                                                        jmp   xchain00287_n00002_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain00287_n00351_α:
                        mov              qword ptr [rbp + 768], 6
                        mov              rax, qword ptr [rip + .Lx00353_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   xchain00287_n00354_α
.Lx00353_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain00287_n00354_α:
                        mov              qword ptr [rbp + 800], 6
                        mov              rax, qword ptr [rip + .Lx00355_0]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   xchain00287_n00356_α
.Lx00355_0:
                        .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
# IR_SUBSCRIPT section
xchain00287_n00356_α:
                        mov              rdi, qword ptr [rbp + 736]
                        mov              rsi, qword ptr [rbp + 744]
                        mov              rdx, qword ptr [rbp + 768]
                        mov              rcx, qword ptr [rbp + 776]
                        mov              r8, qword ptr [rbp + 800]
                        mov              r9, qword ptr [rbp + 808]
                        call             subscript_get2@PLT
                        cmp              eax, 99
                                                                                        je    xchain00287_n00345_af
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   xchain00287_n00357_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain00287_n00357_α:
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   xchain00287_n00358_α
#-----------------------------------------------------------------------------------------------------------------------
xchain00287_n00358_α:
# BOX IR_CALL read(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+880] -> [zr+848]
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 856], rax
                        .section         .rodata
.Lrkfn1292:             .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1292]
                        lea              rsi, [rbp + 848]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              eax, 99
                                                                                        je    xchain00287_n00345_af
                                                                                        jmp   xchain00287_n00352_α
xchain00287_n00358_β:
                                                                                        jmp   xchain00287_n00345_af
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, qword ptr [rbp + 4360]
                        mov              rbp, [rsp + 65536]
                        add              rsp, 65544
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, qword ptr [rbp + 4360]
                        mov              dword ptr [rsp+0], 99
                        mov              dword ptr [rsp+4], 0
                        mov              qword ptr [rsp+8], 0
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 65536]
                        add              rsp, 65544
                        ret
                        .section         .note.GNU-stack,"",@progbits
