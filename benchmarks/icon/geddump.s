                        .intel_syntax    noprefix
                        .text
                        .globl           proc_event_α
proc_event_α:
#=======================================================================================================================
                        .global          proc_event_α
                        .global          proc_event_β
                        .global          proc_event_γ
                        .global          proc_event_ω
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
proc_event_α_body:
# IR_LIT_STRING
xchain0_n0_α:
                        mov              qword ptr [rbp + 1088], 1
                        mov              rax, qword ptr [rip + .Lx1_0]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   xchain0_n1_α
.Lx1_0:
                        .quad            .Lx1_0_s
.Lx1_0_s:
                        .string          ""
# IR_VAR
xchain0_n1_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   xchain0_n2_α
xchain0_n2_α:
                        lea              rsi, [rbp + 1168]
                        call             proc_geddate_dcα
                                                                                        jmp   .Lx5_2
.Lx5_2:
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                        cmp              eax, 99
                                                                                        je    xchain0_n3_α
                                                                                        jmp   xchain0_n4_α
xchain0_n2_β:
                                                                                        jmp   xchain0_n3_α
.Lx5_0:
                        .quad            .Lx5_0_s
.Lx5_0_s:
                        .string          "geddate"
# IR_LIT_STRING
xchain0_n3_α:
                        mov              qword ptr [rbp + 864], 1
                        mov              rax, qword ptr [rip + .Lx6_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   xchain0_n5_α
.Lx6_0:
                        .quad            .Lx6_0_s
.Lx6_0_s:
                        .string          ""
xchain0_n4_α:
# IR_BINOP_TEST
                        mov              rdi, qword ptr [rbp + 1088]
                        mov              rsi, qword ptr [rbp + 1096]
                        mov              rdx, qword ptr [rbp + 1120]
                        mov              rcx, qword ptr [rbp + 1128]
                        mov              r8d, 17
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    xchain0_n3_α
                        mov              rdi, qword ptr [rbp + 1120]
                        mov              rsi, qword ptr [rbp + 1128]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                                                                                        jmp   xchain0_n6_α
# IR_VAR
xchain0_n5_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   xchain0_n7_α
xchain0_n6_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 1056]
                        mov              rdx, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   xchain0_n3_α
# IR_LIT_STRING
xchain0_n7_α:
                        mov              qword ptr [rbp + 1008], 1
                        mov              rax, qword ptr [rip + .Lx11_0]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   xchain0_n9_α
.Lx11_0:
                        .quad            .Lx11_0_s
.Lx11_0_s:
                        .string          "PLAC"
# IR_DISJUNCTION_NARY
xchain0_n8_α:
                        mov              qword ptr [rbp + 48], 0
                        mov              qword ptr [rbp + 56], 0
                        mov              dword ptr [rbp + 64], 0
                                                                                        jmp   xchain0_n11_α
xchain0_n8_as:
                        mov              eax, dword ptr [rbp + 64]
                        cmp              eax, 0
                                                                                        jne   .Lx13_0
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   xchain0_n10_α
.Lx13_0:
                        cmp              eax, 1
                                                                                        jne   .Lx13_1
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   xchain0_n10_α
.Lx13_1:
                                                                                        jmp   xchain0_n10_α
xchain0_n8_β:
                        mov              eax, dword ptr [rbp + 64]
                        cmp              eax, 0
                                                                                        je    xchain0_n10_α
                                                                                        jmp   xchain0_n13_β
xchain0_n8_af:
                        add              dword ptr [rbp + 64], 1
                        mov              eax, dword ptr [rbp + 64]
                        cmp              eax, 1
                                                                                        je    xchain0_n12_α
                                                                                        jmp   xchain0_n10_α
xchain0_n9_α:
                        mov              qword ptr [rbp + 944], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx15_20
                        mov              rax, qword ptr [rbp + 976]
                        mov              rdx, qword ptr [rbp + 984]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx15_21
.Lx15_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 976]
                        mov              rdx, qword ptr [rbp + 984]
                        call             rt_arg_stage@PLT
.Lx15_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx15_22
                        mov              rax, qword ptr [rbp + 1008]
                        mov              rdx, qword ptr [rbp + 1016]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx15_23
.Lx15_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1008]
                        mov              rdx, qword ptr [rbp + 1016]
                        call             rt_arg_stage@PLT
.Lx15_23:
                        mov              edi, 7
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx15_1
                        lea              rcx, [rip + .Lx15_3]
                        lea              rdx, [rip + .Lx15_4]
                                                                                        jmp   rax
.Lx15_3:
                        mov              qword ptr [rbp + 952], rsp
                        mov              rax, qword ptr [rbp + 944]
                        test             rax, rax
                                                                                        jne   .Lx15_5
                        mov              qword ptr [rbp + 944], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx15_2
.Lx15_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx15_2
.Lx15_4:
                        mov              rax, qword ptr [rbp + 944]
                        test             rax, rax
                                                                                        jne   .Lx15_6
                        mov              qword ptr [rbp + 944], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx15_2
.Lx15_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx15_2
.Lx15_1:
                        call             rt_faildescr@PLT
.Lx15_2:
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              eax, 99
                                                                                        je    xchain0_n8_α
                                                                                        jmp   xchain0_n16_α
xchain0_n9_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 952]
                                                                                        jmp   qword ptr [rsp]
.Lx15_0:
                        .quad            .Lx15_0_s
.Lx15_0_s:
                        .string          "gedval"
# IR_RETURN
xchain0_n10_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_event_γ
# IR_VAR
xchain0_n11_α:
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   xchain0_n17_α
xchain0_n11_β:
                                                                                        jmp   xchain0_n8_af
# IR_LIT_STRING
xchain0_n12_α:
                        mov              qword ptr [rbp + 528], 1
                        mov              rax, qword ptr [rip + .Lx19_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   xchain0_n18_α
xchain0_n12_β:
                                                                                        jmp   xchain0_n10_α
.Lx19_0:
                        .quad            .Lx19_0_s
.Lx19_0_s:
                        .string          "   "
# IR_DISJUNCTION_NARY
xchain0_n13_α:
                        mov              qword ptr [rbp + 624], 0
                        mov              qword ptr [rbp + 632], 0
                        mov              dword ptr [rbp + 640], 0
                                                                                        jmp   xchain0_n20_α
xchain0_n13_as:
                        mov              eax, dword ptr [rbp + 640]
                        cmp              eax, 0
                                                                                        jne   .Lx21_0
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   xchain0_n19_α
.Lx21_0:
                        cmp              eax, 1
                                                                                        jne   .Lx21_1
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   xchain0_n19_α
.Lx21_1:
                                                                                        jmp   xchain0_n19_α
xchain0_n13_β:
                        mov              eax, dword ptr [rbp + 640]
                        cmp              eax, 0
                                                                                        je    xchain0_n13_af
                                                                                        jmp   xchain0_n13_af
xchain0_n13_af:
                        add              dword ptr [rbp + 640], 1
                        mov              eax, dword ptr [rbp + 640]
                        cmp              eax, 1
                                                                                        je    xchain0_n21_α
                                                                                        jmp   xchain0_n10_α
xchain0_n14_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+96]
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 104], rax
# marshal arg1 = producer-box slot [zr+208] -> [zr+112]
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 120], rax
# marshal arg2 = producer-box slot [zr+240] -> [zr+128]
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 136], rax
# marshal arg3 = producer-box slot [zr+272] -> [zr+144]
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 152], rax
                        .section         .rodata
.Lrkfn23:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn23]
                        lea              rsi, [rbp + 96]
                        mov              edx, 4
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    xchain0_n10_α
                                                                                        jmp   xchain0_n8_as
xchain0_n14_β:
                                                                                        jmp   xchain0_n10_α
xchain0_n15_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+528] -> [zr+416]
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 424], rax
# marshal arg1 = producer-box slot [zr+560] -> [zr+432]
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 440], rax
# marshal arg2 = producer-box slot [zr+592] -> [zr+448]
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 456], rax
# marshal arg3 = producer-box slot [zr+624] -> [zr+464]
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 472], rax
# marshal arg4 = producer-box slot [zr+752] -> [zr+480]
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 488], rax
# marshal arg5 = producer-box slot [zr+784] -> [zr+496]
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 504], rax
                        .section         .rodata
.Lrkfn25:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn25]
                        lea              rsi, [rbp + 416]
                        mov              edx, 6
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    xchain0_n13_β
                                                                                        jmp   xchain0_n8_as
xchain0_n15_β:
                                                                                        jmp   xchain0_n13_β
xchain0_n16_α:
# IR_BINOP_TEST
                        mov              rdi, qword ptr [rbp + 864]
                        mov              rsi, qword ptr [rbp + 872]
                        mov              rdx, qword ptr [rbp + 896]
                        mov              rcx, qword ptr [rbp + 904]
                        mov              r8d, 17
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    xchain0_n9_β
                        mov              rdi, qword ptr [rbp + 896]
                        mov              rsi, qword ptr [rbp + 904]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   xchain0_n23_α
# IR_UNOP
xchain0_n17_α:
                        mov              eax, dword ptr [rbp + 1232]
                        cmp              eax, 99
                                                                                        je    xchain0_n8_af
                        cmp              eax, 0
                                                                                        jne   xchain0_n8_af
                        mov              qword ptr [rbp + 336], 0
                        mov              qword ptr [rbp + 344], 0
                                                                                        jmp   xchain0_n24_α
# IR_VAR
xchain0_n18_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   xchain0_n25_α
# IR_LIT_STRING
xchain0_n19_α:
                        mov              qword ptr [rbp + 752], 1
                        mov              rax, qword ptr [rip + .Lx30_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   xchain0_n26_α
.Lx30_0:
                        .quad            .Lx30_0_s
.Lx30_0_s:
                        .string          "  "
# IR_VAR
xchain0_n20_α:
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   xchain0_n22_α
xchain0_n20_β:
                                                                                        jmp   xchain0_n13_af
# IR_LIT_STRING
xchain0_n21_α:
                        mov              qword ptr [rbp + 720], 1
                        mov              rax, qword ptr [rip + .Lx33_0]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   xchain0_n13_as
xchain0_n21_β:
                                                                                        jmp   xchain0_n13_af
.Lx33_0:
                        .quad            .Lx33_0_s
.Lx33_0_s:
                        .string          "            "
# IR_UNOP
xchain0_n22_α:
                        mov              eax, dword ptr [rbp + 1216]
                        cmp              eax, 99
                                                                                        je    xchain0_n13_af
                        cmp              eax, 0
                                                                                        je    xchain0_n13_af
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   xchain0_n13_as
xchain0_n22_β:
                                                                                        jmp   xchain0_n13_af
xchain0_n23_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 832]
                        mov              rdx, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   xchain0_n8_α
# IR_LIT_STRING
xchain0_n24_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              rax, qword ptr [rip + .Lx36_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   xchain0_n27_α
.Lx36_0:
                        .quad            .Lx36_0_s
.Lx36_0_s:
                        .string          "   "
# IR_LIT_STRING
xchain0_n25_α:
                        mov              qword ptr [rbp + 592], 1
                        mov              rax, qword ptr [rip + .Lx37_0]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   xchain0_n13_α
.Lx37_0:
                        .quad            .Lx37_0_s
.Lx37_0_s:
                        .string          " "
# IR_VAR
xchain0_n26_α:
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   xchain0_n15_α
# IR_VAR
xchain0_n27_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   xchain0_n28_α
# IR_LIT_STRING
xchain0_n28_α:
                        mov              qword ptr [rbp + 240], 1
                        mov              rax, qword ptr [rip + .Lx42_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   xchain0_n29_α
.Lx42_0:
                        .quad            .Lx42_0_s
.Lx42_0_s:
                        .string          " "
# IR_VAR
xchain0_n29_α:
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   xchain0_n30_α
# IR_UNOP
xchain0_n30_α:
                        mov              eax, dword ptr [rbp + 1216]
                        cmp              eax, 99
                                                                                        je    xchain0_n10_α
                        cmp              eax, 0
                                                                                        je    xchain0_n10_α
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   xchain0_n14_α
proc_event_res:
                        add              rsp, 8
                        pop              rbp
proc_event_β:
                                                                                        jmp   proc_event_ω
proc_event_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 1256]
                        lea              rsp, [rbp + 1280]
                        mov              rbp, [rbp + 1272]
                                                                                        jmp   rax
proc_event_ω:
                        mov              rax, [rbp + 1264]
                        lea              rsp, [rbp + 1280]
                        mov              rbp, [rbp + 1272]
                                                                                        jmp   rax
proc_event_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
                        pop              r11
                        sub              rsp, 1296
                        mov              qword ptr [rsp + 1288], rbp
                        mov              rbp, rsp
                        add              rbp, 16
                        mov              qword ptr [rbp + 1248], r11
                        lea              rax, [rip + .Lx46_2]
                        mov              qword ptr [rbp + 1256], rax
                        lea              rax, [rip + .Lx46_3]
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1208], rbp
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              rdi, rbp
                        mov              esi, 1200
                        mov              edx, 1248
                        mov              ecx, 2
                        mov              r8d, 2
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_event_α_body
.Lx46_2:
                        mov              rdx, qword ptr [rsp + -1296]
                        mov              rcx, rsp
                        add              rcx, -1280
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx46_3:
                        mov              rdi, qword ptr [rsp + -1296]
                        mov              rsi, rsp
                        add              rsi, -1280
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
                        .globl           proc_refto_α
proc_refto_α:
#=======================================================================================================================
                        .global          proc_refto_α
                        .global          proc_refto_β
                        .global          proc_refto_γ
                        .global          proc_refto_ω
                        sub              rsp, 576
                        mov              [rsp + 552], rcx
                        mov              [rsp + 560], rdx
                        mov              [rsp + 568], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 536], rsp
                        mov              rdi, rsp
                        mov              esi, 528
                        mov              edx, 544
                        call             rt_jmp_frame_lexprep2@PLT
proc_refto_α_body:
# IR_LIT_STRING
xchain47_n0_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              rax, qword ptr [rip + .Lx48_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   xchain47_n1_α
.Lx48_0:
                        .quad            .Lx48_0_s
.Lx48_0_s:
                        .string          "   "
# IR_VAR
xchain47_n1_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   xchain47_n2_α
# IR_LIT_STRING
xchain47_n2_α:
                        mov              qword ptr [rbp + 240], 1
                        mov              rax, qword ptr [rip + .Lx51_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   xchain47_n4_α
.Lx51_0:
                        .quad            .Lx51_0_s
.Lx51_0_s:
                        .string          " ["
# IR_RETURN
xchain47_n3_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_refto_γ
# IR_VAR_REF
xchain47_n4_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052288
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   xchain47_n5_α
# IR_VAR
xchain47_n5_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   xchain47_n6_α
# IR_SUBSCRIPT x[i] variable
xchain47_n6_α:
                        mov              rdi, qword ptr [rbp + 304]
                        mov              rsi, qword ptr [rbp + 312]
                        mov              rdx, qword ptr [rbp + 336]
                        mov              rcx, qword ptr [rbp + 344]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain47_n3_α
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   xchain47_n7_α
# IR_DEREF variable -> value
xchain47_n7_α:
                        mov              rdi, qword ptr [rbp + 368]
                        mov              rsi, qword ptr [rbp + 376]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    xchain47_n3_α
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   xchain47_n8_α
# IR_FIELD_GET
xchain47_n8_α:
                        mov              rdi, qword ptr [rip + .Lx59_0]
                        mov              rsi, qword ptr [rbp + 400]
                        mov              rdx, qword ptr [rbp + 408]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    xchain47_n3_α
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   xchain47_n9_α
.Lx59_0:
                        .quad            .Lx59_0_s
.Lx59_0_s:
                        .string          "n"
# IR_LIT_STRING
xchain47_n9_α:
                        mov              qword ptr [rbp + 416], 1
                        mov              rax, qword ptr [rip + .Lx60_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   xchain47_n10_α
.Lx60_0:
                        .quad            .Lx60_0_s
.Lx60_0_s:
                        .string          "] "
# IR_VAR
xchain47_n10_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   xchain47_n11_α
xchain47_n11_α:
                        lea              rsi, [rbp + 496]
                        call             proc_gedfnf_dcα
                                                                                        jmp   .Lx64_2
.Lx64_2:
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              eax, 99
                                                                                        je    xchain47_n3_α
                                                                                        jmp   xchain47_n12_α
xchain47_n11_β:
                                                                                        jmp   xchain47_n3_α
.Lx64_0:
                        .quad            .Lx64_0_s
.Lx64_0_s:
                        .string          "gedfnf"
xchain47_n12_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+64]
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 72], rax
# marshal arg1 = producer-box slot [zr+208] -> [zr+80]
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 88], rax
# marshal arg2 = producer-box slot [zr+240] -> [zr+96]
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 104], rax
# marshal arg3 = producer-box slot [zr+272] -> [zr+112]
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 120], rax
# marshal arg4 = producer-box slot [zr+416] -> [zr+128]
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 136], rax
# marshal arg5 = producer-box slot [zr+448] -> [zr+144]
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 152], rax
                        .section         .rodata
.Lrkfn66:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn66]
                        lea              rsi, [rbp + 64]
                        mov              edx, 6
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    xchain47_n3_α
                                                                                        jmp   xchain47_n3_α
xchain47_n12_β:
                                                                                        jmp   xchain47_n3_α
proc_refto_res:
                        add              rsp, 8
                        pop              rbp
proc_refto_β:
                                                                                        jmp   proc_refto_ω
proc_refto_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 552]
                        lea              rsp, [rbp + 576]
                        mov              rbp, [rbp + 568]
                                                                                        jmp   rax
proc_refto_ω:
                        mov              rax, [rbp + 560]
                        lea              rsp, [rbp + 576]
                        mov              rbp, [rbp + 568]
                                                                                        jmp   rax
proc_refto_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
                        pop              r11
                        sub              rsp, 592
                        mov              qword ptr [rsp + 584], rbp
                        mov              rbp, rsp
                        add              rbp, 16
                        mov              qword ptr [rbp + 544], r11
                        lea              rax, [rip + .Lx67_2]
                        mov              qword ptr [rbp + 552], rax
                        lea              rax, [rip + .Lx67_3]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 536], rbp
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              rdi, rbp
                        mov              esi, 528
                        mov              edx, 544
                        mov              ecx, 2
                        mov              r8d, 2
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_refto_α_body
.Lx67_2:
                        mov              rdx, qword ptr [rsp + -592]
                        mov              rcx, rsp
                        add              rcx, -576
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx67_3:
                        mov              rdi, qword ptr [rsp + -592]
                        mov              rsi, rsp
                        add              rsi, -576
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
                        .globl           proc_sortkey_α
proc_sortkey_α:
#=======================================================================================================================
                        .global          proc_sortkey_α
                        .global          proc_sortkey_β
                        .global          proc_sortkey_γ
                        .global          proc_sortkey_ω
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
proc_sortkey_α_body:
# IR_VAR
xchain68_n0_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   xchain68_n1_α
xchain68_n1_α:
                        lea              rsi, [rbp + 128]
                        call             proc_gedlnf_dcα
                                                                                        jmp   .Lx72_2
.Lx72_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    proc_sortkey_ω
                                                                                        jmp   xchain68_n2_α
xchain68_n1_β:
                                                                                        jmp   proc_sortkey_ω
.Lx72_0:
                        .quad            .Lx72_0_s
.Lx72_0_s:
                        .string          "gedlnf"
xchain68_n2_α:
# BOX IR_CALL map(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+48]
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 56], rax
                        .section         .rodata
.Lrkfn74:               .string          "map"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn74]
                        lea              rsi, [rbp + 48]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_sortkey_ω
                                                                                        jmp   xchain68_n3_α
xchain68_n2_β:
                                                                                        jmp   proc_sortkey_ω
# IR_RETURN
xchain68_n3_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_sortkey_γ
proc_sortkey_res:
                        add              rsp, 8
                        pop              rbp
proc_sortkey_β:
                                                                                        jmp   proc_sortkey_ω
proc_sortkey_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 184]
                        lea              rsp, [rbp + 208]
                        mov              rbp, [rbp + 200]
                                                                                        jmp   rax
proc_sortkey_ω:
                        mov              rax, [rbp + 192]
                        lea              rsp, [rbp + 208]
                        mov              rbp, [rbp + 200]
                                                                                        jmp   rax
proc_sortkey_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
                        pop              r11
                        sub              rsp, 224
                        mov              qword ptr [rsp + 216], rbp
                        mov              rbp, rsp
                        add              rbp, 16
                        mov              qword ptr [rbp + 176], r11
                        lea              rax, [rip + .Lx76_2]
                        mov              qword ptr [rbp + 184], rax
                        lea              rax, [rip + .Lx76_3]
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
                                                                                        jmp   proc_sortkey_α_body
.Lx76_2:
                        mov              rdx, qword ptr [rsp + -224]
                        mov              rcx, rsp
                        add              rcx, -208
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx76_3:
                        mov              rdi, qword ptr [rsp + -224]
                        mov              rsi, rsp
                        add              rsi, -208
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
                        .globl           proc_gedload_α
proc_gedload_α:
#=======================================================================================================================
                        .global          proc_gedload_α
                        .global          proc_gedload_β
                        .global          proc_gedload_γ
                        .global          proc_gedload_ω
                        sub              rsp, 3936
                        mov              [rsp + 3912], rcx
                        mov              [rsp + 3920], rdx
                        mov              [rsp + 3928], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 3752], rsp
                        mov              rdi, rsp
                        mov              esi, 3744
                        mov              edx, 3904
                        call             rt_jmp_frame_lexprep2@PLT
proc_gedload_α_body:
# IR_LIT_INTEGER
xchain77_n0_α:
                        mov              qword ptr [rbp + 3712], 6
                        mov              rax, qword ptr [rip + .Lx78_0]
                        mov              qword ptr [rbp + 3720], rax
                                                                                        jmp   xchain77_n1_α
.Lx78_0:
                        .quad            0
xchain77_n1_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 3712]
                        mov              rdx, qword ptr [rbp + 3720]
                        mov              qword ptr [rbp + 3888], rax
                        mov              qword ptr [rbp + 3896], rdx
                        mov              qword ptr [rbp + 3696], rax
                        mov              qword ptr [rbp + 3704], rdx
                                                                                        jmp   xchain77_n2_α
# IR_LIT_INTEGER
xchain77_n2_α:
                        mov              qword ptr [rbp + 3456], 6
                        mov              rax, qword ptr [rip + .Lx80_0]
                        mov              qword ptr [rbp + 3464], rax
                                                                                        jmp   xchain77_n3_α
.Lx80_0:
                        .quad            18446744073709551615
# KEYWORD_null
xchain77_n3_α:
                        mov              qword ptr [rbp + 3488], 0
                        mov              qword ptr [rbp + 3496], 0
                                                                                        jmp   xchain77_n4_α
xchain77_n3_β:
                                                                                        jmp   xchain77_n8_α
# IR_LIT_STRING
xchain77_n4_α:
                        mov              qword ptr [rbp + 3520], 1
                        mov              rax, qword ptr [rip + .Lx82_0]
                        mov              qword ptr [rbp + 3528], rax
                                                                                        jmp   xchain77_n5_α
.Lx82_0:
                        .quad            .Lx82_0_s
.Lx82_0_s:
                        .string          "ROOT"
# IR_LIT_STRING
xchain77_n5_α:
                        mov              qword ptr [rbp + 3552], 1
                        mov              rax, qword ptr [rip + .Lx83_0]
                        mov              qword ptr [rbp + 3560], rax
                                                                                        jmp   xchain77_n6_α
.Lx83_0:
                        .quad            .Lx83_0_s
.Lx83_0_s:
                        .string          ""
# IR_VAR
xchain77_n6_α:
                        mov              rax, qword ptr [rbp + 3888]
                        mov              qword ptr [rbp + 3584], rax
                        mov              rax, qword ptr [rbp + 3896]
                        mov              qword ptr [rbp + 3592], rax
                                                                                        jmp   xchain77_n7_α
# KEYWORD_null
xchain77_n7_α:
                        mov              qword ptr [rbp + 3616], 0
                        mov              qword ptr [rbp + 3624], 0
                                                                                        jmp   xchain77_n9_α
xchain77_n7_β:
                                                                                        jmp   xchain77_n8_α
xchain77_n8_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
                        .section         .rodata
.Lrkfn88:               .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn88]
                        lea              rsi, [rbp + 3248]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3232], rax
                        mov              qword ptr [rbp + 3240], rdx
                        cmp              eax, 99
                                                                                        je    xchain77_n11_α
                                                                                        jmp   xchain77_n10_α
xchain77_n8_β:
                                                                                        jmp   xchain77_n11_α
# KEYWORD_null
xchain77_n9_α:
                        mov              qword ptr [rbp + 3648], 0
                        mov              qword ptr [rbp + 3656], 0
                                                                                        jmp   xchain77_n12_α
xchain77_n9_β:
                                                                                        jmp   xchain77_n8_α
xchain77_n10_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 3232]
                        mov              rdx, qword ptr [rbp + 3240]
                        mov              qword ptr [rbp + 3776], rax
                        mov              qword ptr [rbp + 3784], rdx
                        mov              qword ptr [rbp + 3216], rax
                        mov              qword ptr [rbp + 3224], rdx
                                                                                        jmp   xchain77_n11_α
# IR_MAKE_LIST
xchain77_n11_α:
                        lea              rdi, [rbp + 3216]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 3200], rax
                        mov              qword ptr [rbp + 3208], rdx
                                                                                        jmp   xchain77_n13_α
# IR_MAKE_LIST
xchain77_n12_α:
                        lea              rdi, [rbp + 3696]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 3680], rax
                        mov              qword ptr [rbp + 3688], rdx
                                                                                        jmp   xchain77_n14_α
xchain77_n13_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 3200]
                        mov              rdx, qword ptr [rbp + 3208]
                        mov              qword ptr [rbp + 3792], rax
                        mov              qword ptr [rbp + 3800], rdx
                        mov              qword ptr [rbp + 3184], rax
                        mov              qword ptr [rbp + 3192], rdx
                                                                                        jmp   xchain77_n15_α
xchain77_n14_α:
# BOX IR_CALL gednode(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3456] -> [zr+3312]
                        mov              rax, qword ptr [rbp + 3456]
                        mov              qword ptr [rbp + 3312], rax
                        mov              rax, qword ptr [rbp + 3464]
                        mov              qword ptr [rbp + 3320], rax
# marshal arg1 = producer-box slot [zr+3488] -> [zr+3328]
                        mov              rax, qword ptr [rbp + 3488]
                        mov              qword ptr [rbp + 3328], rax
                        mov              rax, qword ptr [rbp + 3496]
                        mov              qword ptr [rbp + 3336], rax
# marshal arg2 = producer-box slot [zr+3520] -> [zr+3344]
                        mov              rax, qword ptr [rbp + 3520]
                        mov              qword ptr [rbp + 3344], rax
                        mov              rax, qword ptr [rbp + 3528]
                        mov              qword ptr [rbp + 3352], rax
# marshal arg3 = producer-box slot [zr+3552] -> [zr+3360]
                        mov              rax, qword ptr [rbp + 3552]
                        mov              qword ptr [rbp + 3360], rax
                        mov              rax, qword ptr [rbp + 3560]
                        mov              qword ptr [rbp + 3368], rax
# marshal arg4 = producer-box slot [zr+3584] -> [zr+3376]
                        mov              rax, qword ptr [rbp + 3584]
                        mov              qword ptr [rbp + 3376], rax
                        mov              rax, qword ptr [rbp + 3592]
                        mov              qword ptr [rbp + 3384], rax
# marshal arg5 = producer-box slot [zr+3616] -> [zr+3392]
                        mov              rax, qword ptr [rbp + 3616]
                        mov              qword ptr [rbp + 3392], rax
                        mov              rax, qword ptr [rbp + 3624]
                        mov              qword ptr [rbp + 3400], rax
# marshal arg6 = producer-box slot [zr+3648] -> [zr+3408]
                        mov              rax, qword ptr [rbp + 3648]
                        mov              qword ptr [rbp + 3408], rax
                        mov              rax, qword ptr [rbp + 3656]
                        mov              qword ptr [rbp + 3416], rax
# marshal arg7 = producer-box slot [zr+3680] -> [zr+3424]
                        mov              rax, qword ptr [rbp + 3680]
                        mov              qword ptr [rbp + 3424], rax
                        mov              rax, qword ptr [rbp + 3688]
                        mov              qword ptr [rbp + 3432], rax
                        .section         .rodata
.Lrkfn97:               .string          "gednode"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn97]
                        lea              rsi, [rbp + 3312]
                        mov              edx, 8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3296], rax
                        mov              qword ptr [rbp + 3304], rdx
                        cmp              eax, 99
                                                                                        je    xchain77_n8_α
                                                                                        jmp   xchain77_n16_α
xchain77_n14_β:
                                                                                        jmp   xchain77_n8_α
# IR_MAKE_LIST
xchain77_n15_α:
                        lea              rdi, [rbp + 3184]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 3168], rax
                        mov              qword ptr [rbp + 3176], rdx
                                                                                        jmp   xchain77_n17_α
xchain77_n16_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 3296]
                        mov              rdx, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 3872], rax
                        mov              qword ptr [rbp + 3880], rdx
                        mov              qword ptr [rbp + 3280], rax
                        mov              qword ptr [rbp + 3288], rdx
                                                                                        jmp   xchain77_n18_α
xchain77_n17_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 3168]
                        mov              rdx, qword ptr [rbp + 3176]
                        mov              qword ptr [rbp + 3808], rax
                        mov              qword ptr [rbp + 3816], rdx
                        mov              qword ptr [rbp + 3152], rax
                        mov              qword ptr [rbp + 3160], rdx
                                                                                        jmp   xchain77_n19_α
xchain77_n18_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 3280]
                        mov              rdx, qword ptr [rbp + 3288]
                        mov              qword ptr [rbp + 3760], rax
                        mov              qword ptr [rbp + 3768], rdx
                        mov              qword ptr [rbp + 3264], rax
                        mov              qword ptr [rbp + 3272], rdx
                                                                                        jmp   xchain77_n8_α
# IR_VAR
xchain77_n19_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   xchain77_n20_α
xchain77_n20_α:
# BOX IR_CALL read(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+768] -> [zr+736]
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 744], rax
                        .section         .rodata
.Lrkfn106:              .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn106]
                        lea              rsi, [rbp + 736]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              eax, 99
                                                                                        je    xchain77_n21_α
                                                                                        jmp   xchain77_n22_α
xchain77_n20_β:
                                                                                        jmp   xchain77_n21_α
# IR_VAR
xchain77_n21_α:
                        mov              rax, qword ptr [rbp + 3760]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 3768]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   xchain77_n23_α
# IR_LIT_CHARSET
xchain77_n22_α:
                        mov              qword ptr [rbp + 800], 1
                        mov              dword ptr [rbp + 804], -1
                        mov              rax, qword ptr [rip + .Lx00001_0]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   xchain77_n25_α
.Lx00001_0:
                        .quad            .Lx00001_0_s
.Lx00001_0_s:
                        .string          "\t\n "
xchain77_n23_α:
                        mov              qword ptr [rbp + 304], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00002_20
                        mov              rax, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx00002_21
.Lx00002_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        call             rt_arg_stage@PLT
.Lx00002_21:
                        mov              edi, 5
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx00002_1
                        lea              rcx, [rip + .Lx00002_3]
                        lea              rdx, [rip + .Lx00002_4]
                                                                                        jmp   rax
.Lx00002_3:
                        mov              qword ptr [rbp + 312], rsp
                        mov              rax, qword ptr [rbp + 304]
                        test             rax, rax
                                                                                        jne   .Lx00002_5
                        mov              qword ptr [rbp + 304], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx00002_2
.Lx00002_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx00002_2
.Lx00002_4:
                        mov              rax, qword ptr [rbp + 304]
                        test             rax, rax
                                                                                        jne   .Lx00002_6
                        mov              qword ptr [rbp + 304], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx00002_2
.Lx00002_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx00002_2
.Lx00002_1:
                        call             rt_faildescr@PLT
.Lx00002_2:
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    xchain77_n24_α
                                                                                        jmp   xchain77_n26_α
xchain77_n23_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 312]
                                                                                        jmp   qword ptr [rsp]
.Lx00002_0:
                        .quad            .Lx00002_0_s
.Lx00002_0_s:
                        .string          "gedwalk"
# IR_VAR
xchain77_n24_α:
                        mov              rax, qword ptr [rbp + 3760]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 3768]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   xchain77_n27_α
xchain77_n25_α:
# BOX IR_CALL trim(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+720] -> [zr+672]
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 680], rax
# marshal arg1 = producer-box slot [zr+800] -> [zr+688]
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 696], rax
                        .section         .rodata
.Lrkfn115:              .string          "trim"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn115]
                        lea              rsi, [rbp + 672]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              eax, 99
                                                                                        je    xchain77_n21_α
                                                                                        jmp   xchain77_n28_α
xchain77_n25_β:
                                                                                        jmp   xchain77_n21_α
xchain77_n26_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 3824], rax
                        mov              qword ptr [rbp + 3832], rdx
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   xchain77_n29_α
# IR_VAR
xchain77_n27_α:
                        mov              rax, qword ptr [rbp + 3776]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 3784]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   xchain77_n30_α
xchain77_n28_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 3840], rax
                        mov              qword ptr [rbp + 3848], rdx
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   xchain77_n31_α
# IR_BOUND
xchain77_n29_α:
                        mov              qword ptr [rbp + 368], rsp
                                                                                        jmp   xchain77_n32_α
# IR_VAR
xchain77_n30_α:
                        mov              rax, qword ptr [rbp + 3792]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 3800]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   xchain77_n33_α
# IR_VAR
xchain77_n31_α:
                        mov              rax, qword ptr [rbp + 3888]
                        mov              qword ptr [rbp + 3088], rax
                        mov              rax, qword ptr [rbp + 3896]
                        mov              qword ptr [rbp + 3096], rax
                                                                                        jmp   xchain77_n34_α
# IR_VAR
xchain77_n32_α:
                        mov              rax, qword ptr [rbp + 3824]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 3832]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   xchain77_n36_α
# IR_VAR
xchain77_n33_α:
                        mov              rax, qword ptr [rbp + 3808]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 3816]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   xchain77_n38_α
# IR_LIT_INTEGER
xchain77_n34_α:
                        mov              qword ptr [rbp + 3120], 6
                        mov              rax, qword ptr [rip + .Lx00003_0]
                        mov              qword ptr [rbp + 3128], rax
                                                                                        jmp   xchain77_n39_α
.Lx00003_0:
                        .quad            1
# IR_DISJUNCTION_NARY
xchain77_n35_α:
                        mov              qword ptr [rbp + 2848], 0
                        mov              qword ptr [rbp + 2856], 0
                        mov              dword ptr [rbp + 2864], 0
                                                                                        jmp   xchain77_n41_α
xchain77_n35_as:
                        mov              eax, dword ptr [rbp + 2864]
                        cmp              eax, 0
                                                                                        jne   .Lx00004_0
                                                                                        jmp   xchain77_n40_α
.Lx00004_0:
                                                                                        jmp   xchain77_n40_α
xchain77_n35_β:
                        mov              eax, dword ptr [rbp + 2864]
                                                                                        jmp   xchain77_n40_α
xchain77_n35_af:
                        add              dword ptr [rbp + 2864], 1
                        mov              eax, dword ptr [rbp + 2864]
                                                                                        jmp   xchain77_n40_α
# IR_FIELD_GET lv
xchain77_n36_α:
                        mov              rdi, qword ptr [rip + .Lx00005_0]
                        mov              rsi, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        call             rt_field_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain77_n37_α
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   xchain77_n42_α
.Lx00005_0:
                        .quad            .Lx00005_0_s
.Lx00005_0_s:
                        .string          "ref"
# IR_UNMARK
xchain77_n37_α:
                        mov              rsp, qword ptr [rbp + 368]
                                                                                        jmp   xchain77_n23_β
xchain77_n38_α:
# BOX IR_CALL gedcom(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+128] -> [zr+48]
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 56], rax
# marshal arg1 = producer-box slot [zr+160] -> [zr+64]
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 72], rax
# marshal arg2 = producer-box slot [zr+192] -> [zr+80]
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 88], rax
# marshal arg3 = producer-box slot [zr+224] -> [zr+96]
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 104], rax
                        .section         .rodata
.Lrkfn137:              .string          "gedcom"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn137]
                        lea              rsi, [rbp + 48]
                        mov              edx, 4
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_gedload_ω
                                                                                        jmp   xchain77_n43_α
xchain77_n38_β:
                                                                                        jmp   proc_gedload_ω
# IR_COERCE_NUMERIC
xchain77_n39_α:
                        mov              eax, dword ptr [rbp + 3888]
                        cmp              eax, 7
                                                                                        je    .Lx00006_1
                        cmp              eax, 6
                                                                                        jne   .Lx00006_0
                        mov              eax, dword ptr [rbp + 3120]
                        cmp              eax, 6
                                                                                        jne   .Lx00006_0
.Lx00006_1:
                        mov              rax, qword ptr [rbp + 3888]
                        mov              qword ptr [rbp + 3056], rax
                        mov              rax, qword ptr [rbp + 3896]
                        mov              qword ptr [rbp + 3064], rax
                                                                                        jmp   xchain77_n44_α
.Lx00006_0:
                        lea              rdi, [rbp + 3888]
                        lea              rsi, [rbp + 3120]
                        lea              rdx, [rbp + 3056]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   xchain77_n44_α
# IR_DISJUNCTION_NARY
xchain77_n40_α:
                        mov              qword ptr [rbp + 2400], 0
                        mov              qword ptr [rbp + 2408], 0
                        mov              dword ptr [rbp + 2416], 0
                                                                                        jmp   xchain77_n46_α
xchain77_n40_as:
                        mov              eax, dword ptr [rbp + 2416]
                        cmp              eax, 0
                                                                                        jne   .Lx00007_0
                                                                                        jmp   xchain77_n45_α
.Lx00007_0:
                                                                                        jmp   xchain77_n45_α
xchain77_n40_β:
                        mov              eax, dword ptr [rbp + 2416]
                                                                                        jmp   xchain77_n45_α
xchain77_n40_af:
                        add              dword ptr [rbp + 2416], 1
                        mov              eax, dword ptr [rbp + 2416]
                                                                                        jmp   xchain77_n45_α
# IR_VAR
xchain77_n41_α:
                        mov              rax, qword ptr [rbp + 3840]
                        mov              qword ptr [rbp + 2944], rax
                        mov              rax, qword ptr [rbp + 3848]
                        mov              qword ptr [rbp + 2952], rax
                                                                                        jmp   xchain77_n48_α
xchain77_n41_β:
                                                                                        jmp   xchain77_n35_af
# IR_VAR_REF
xchain77_n42_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3776]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   xchain77_n49_α
# IR_RETURN
xchain77_n43_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_gedload_γ
xchain77_n44_α:
# IR_BINOP_ARITH
                        mov              eax, dword ptr [rbp + 3056]
                        cmp              eax, 100
                                                                                        je    .Lx00008_0
                        mov              eax, dword ptr [rbp + 3056]
                        cmp              eax, 6
                                                                                        jne   .Lx00008_2
.Lx00008_1:
                        mov              rax, qword ptr [rbp + 3064]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 3024], 6
                        mov              qword ptr [rbp + 3032], rax
                                                                                        jmp   xchain77_n50_α
.Lx00008_0:
                        mov              rdi, qword ptr [rbp + 3056]
                        mov              rsi, qword ptr [rbp + 3064]
                        mov              rdx, qword ptr [rbp + 3120]
                        mov              rcx, qword ptr [rbp + 3128]
                        mov              r8d, 0
                        lea              r9, [rbp + 3024]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   xchain77_n50_α
.Lx00008_2:
                        mov              rdi, qword ptr [rbp + 3056]
                        mov              rsi, qword ptr [rbp + 3064]
                        mov              rdx, qword ptr [rbp + 3120]
                        mov              rcx, qword ptr [rbp + 3128]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    xchain77_n35_α
                        mov              qword ptr [rbp + 3024], rax
                        mov              qword ptr [rbp + 3032], rdx
                                                                                        jmp   xchain77_n50_α
xchain77_n44_β:
                                                                                        jmp   xchain77_n35_α
# IR_VAR
xchain77_n45_α:
                        mov              rax, qword ptr [rbp + 3824]
                        mov              qword ptr [rbp + 2320], rax
                        mov              rax, qword ptr [rbp + 3832]
                        mov              qword ptr [rbp + 2328], rax
                                                                                        jmp   xchain77_n51_α
# IR_VAR
xchain77_n46_α:
                        mov              rax, qword ptr [rbp + 3840]
                        mov              qword ptr [rbp + 2816], rax
                        mov              rax, qword ptr [rbp + 3848]
                        mov              qword ptr [rbp + 2824], rax
                                                                                        jmp   xchain77_n53_α
xchain77_n46_β:
                                                                                        jmp   xchain77_n54_α
xchain77_n47_α:
                                                                                        jmp   xchain77_n40_as
xchain77_n47_β:
                                                                                        jmp   xchain77_n45_α
# IR_UNOP
xchain77_n48_α:
                        mov              rdi, qword ptr [rbp + 3840]
                        mov              rsi, qword ptr [rbp + 3848]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 2912], rax
                        mov              qword ptr [rbp + 2920], rdx
                                                                                        jmp   xchain77_n55_α
# IR_VAR
xchain77_n49_α:
                        mov              rax, qword ptr [rbp + 3824]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 3832]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   xchain77_n56_α
xchain77_n50_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 3024]
                        mov              rdx, qword ptr [rbp + 3032]
                        mov              qword ptr [rbp + 3888], rax
                        mov              qword ptr [rbp + 3896], rdx
                        mov              qword ptr [rbp + 3008], rax
                        mov              qword ptr [rbp + 3016], rdx
                                                                                        jmp   xchain77_n35_α
# IR_FIELD_GET lv
xchain77_n51_α:
                        mov              rdi, qword ptr [rip + .Lx00009_0]
                        mov              rsi, qword ptr [rbp + 2320]
                        mov              rdx, qword ptr [rbp + 2328]
                        call             rt_field_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain77_n52_α
                        mov              qword ptr [rbp + 2288], rax
                        mov              qword ptr [rbp + 2296], rdx
                                                                                        jmp   xchain77_n57_α
.Lx00009_0:
                        .quad            .Lx00009_0_s
.Lx00009_0_s:
                        .string          "lnum"
# IR_VAR
xchain77_n52_α:
                        mov              rax, qword ptr [rbp + 3824]
                        mov              qword ptr [rbp + 2224], rax
                        mov              rax, qword ptr [rbp + 3832]
                        mov              qword ptr [rbp + 2232], rax
                                                                                        jmp   xchain77_n58_α
xchain77_n53_α:
                        lea              rsi, [rbp + 2816]
                        call             proc_gedscan_dcα
                                                                                        jmp   .Lx00010_2
.Lx00010_2:
                        mov              qword ptr [rbp + 2768], rax
                        mov              qword ptr [rbp + 2776], rdx
                        cmp              eax, 99
                                                                                        je    xchain77_n54_α
                                                                                        jmp   xchain77_n60_α
xchain77_n53_β:
                                                                                        jmp   xchain77_n54_α
.Lx00010_0:
                        .quad            .Lx00010_0_s
.Lx00010_0_s:
                        .string          "gedscan"
# KEYWORD_null
xchain77_n54_α:
                        mov              qword ptr [rbp + 2720], 0
                        mov              qword ptr [rbp + 2728], 0
                                                                                        jmp   xchain77_n61_α
xchain77_n54_β:
                                                                                        jmp   xchain77_n40_af
# IR_LIT_INTEGER
xchain77_n55_α:
                        mov              qword ptr [rbp + 2976], 6
                        mov              rax, qword ptr [rip + .Lx00011_0]
                        mov              qword ptr [rbp + 2984], rax
                                                                                        jmp   xchain77_n62_α
.Lx00011_0:
                        .quad            0
# IR_FIELD_GET
xchain77_n56_α:
                        mov              rdi, qword ptr [rip + .Lx00012_0]
                        mov              rsi, qword ptr [rbp + 560]
                        mov              rdx, qword ptr [rbp + 568]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    xchain77_n37_α
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   xchain77_n63_α
.Lx00012_0:
                        .quad            .Lx00012_0_s
.Lx00012_0_s:
                        .string          "data"
# IR_VAR
xchain77_n57_α:
                        mov              rax, qword ptr [rbp + 3888]
                        mov              qword ptr [rbp + 2368], rax
                        mov              rax, qword ptr [rbp + 3896]
                        mov              qword ptr [rbp + 2376], rax
                                                                                        jmp   xchain77_n64_α
# IR_FIELD_GET lv
xchain77_n58_α:
                        mov              rdi, qword ptr [rip + .Lx00013_0]
                        mov              rsi, qword ptr [rbp + 2224]
                        mov              rdx, qword ptr [rbp + 2232]
                        call             rt_field_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain77_n59_α
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx
                                                                                        jmp   xchain77_n65_α
.Lx00013_0:
                        .quad            .Lx00013_0_s
.Lx00013_0_s:
                        .string          "sub"
# IR_VAR
xchain77_n59_α:
                        mov              rax, qword ptr [rbp + 3872]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 3880]
                        mov              qword ptr [rbp + 2024], rax
                                                                                        jmp   xchain77_n66_α
xchain77_n60_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 2768]
                        mov              rdx, qword ptr [rbp + 2776]
                        mov              qword ptr [rbp + 3824], rax
                        mov              qword ptr [rbp + 3832], rdx
                        mov              qword ptr [rbp + 2752], rax
                        mov              qword ptr [rbp + 2760], rdx
                                                                                        jmp   xchain77_n40_af
# KEYWORD_read
xchain77_n61_α:
                        mov              rdi, qword ptr [rip + .Lx00014_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    xchain77_n19_α
                        mov              qword ptr [rbp + 2560], rax
                        mov              qword ptr [rbp + 2568], rdx
                                                                                        jmp   xchain77_n68_α
xchain77_n61_β:
                                                                                        jmp   xchain77_n19_α
.Lx00014_0:
                        .quad            .Lx00014_0_s
.Lx00014_0_s:
                        .string          "&errout"
xchain77_n62_α:
# IR_BINOP_TEST
                        mov              eax, dword ptr [rbp + 2912]
                        cmp              eax, 100
                                                                                        je    .Lx00015_0
                        mov              eax, dword ptr [rbp + 2976]
                        cmp              eax, 100
                                                                                        je    .Lx00015_0
                        mov              eax, dword ptr [rbp + 2912]
                        cmp              eax, 6
                                                                                        jne   .Lx00015_2
                        mov              eax, dword ptr [rbp + 2976]
                        cmp              eax, 6
                                                                                        jne   .Lx00015_2
.Lx00015_1:
                        mov              rax, qword ptr [rbp + 2920]
                        mov              rcx, qword ptr [rbp + 2984]
                        cmp              rax, rcx
                                                                                        jne   xchain77_n35_af
                        mov              rcx, qword ptr [rbp + 2976]
                        mov              qword ptr [rbp + 2880], rcx
                        mov              rcx, qword ptr [rbp + 2984]
                        mov              qword ptr [rbp + 2888], rcx
                                                                                        jmp   xchain77_n19_α
.Lx00015_0:
                        mov              rdi, qword ptr [rbp + 2912]
                        mov              rsi, qword ptr [rbp + 2920]
                        mov              rdx, qword ptr [rbp + 2976]
                        mov              rcx, qword ptr [rbp + 2984]
                        mov              r8d, 9
                        lea              r9, [rbp + 2880]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx00015_1
                        cmp              eax, 1
                                                                                        je    xchain77_n35_af
                                                                                        jmp   xchain77_n19_α
.Lx00015_2:
                        mov              rdi, qword ptr [rbp + 2912]
                        mov              rsi, qword ptr [rbp + 2920]
                        mov              rdx, qword ptr [rbp + 2976]
                        mov              rcx, qword ptr [rbp + 2984]
                        mov              r8d, 9
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    xchain77_n35_af
                        mov              rax, qword ptr [rbp + 2976]
                        mov              qword ptr [rbp + 2880], rax
                        mov              rax, qword ptr [rbp + 2984]
                        mov              qword ptr [rbp + 2888], rax
                                                                                        jmp   xchain77_n19_α
# IR_SUBSCRIPT x[i] variable
xchain77_n63_α:
                        mov              rdi, qword ptr [rbp + 496]
                        mov              rsi, qword ptr [rbp + 504]
                        mov              rdx, qword ptr [rbp + 528]
                        mov              rcx, qword ptr [rbp + 536]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain77_n37_α
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   xchain77_n69_α
# IR_ASSIGN_VAR
xchain77_n64_α:
                        mov              rdi, qword ptr [rbp + 2288]
                        mov              rsi, qword ptr [rbp + 2296]
                        mov              rdx, qword ptr [rbp + 2368]
                        mov              rcx, qword ptr [rbp + 2376]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain77_n52_α
                        mov              qword ptr [rbp + 2352], rax
                        mov              qword ptr [rbp + 2360], rdx
                                                                                        jmp   xchain77_n52_α
# IR_MAKE_LIST
xchain77_n65_α:
                        lea              rdi, [rbp + 2288]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                                                                                        jmp   xchain77_n70_α
# IR_FIELD_GET
xchain77_n66_α:
                        mov              rdi, qword ptr [rip + .Lx00016_0]
                        mov              rsi, qword ptr [rbp + 2016]
                        mov              rdx, qword ptr [rbp + 2024]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    xchain77_n67_α
                        mov              qword ptr [rbp + 1984], rax
                        mov              qword ptr [rbp + 1992], rdx
                                                                                        jmp   xchain77_n71_α
.Lx00016_0:
                        .quad            .Lx00016_0_s
.Lx00016_0_s:
                        .string          "level"
# IR_VAR
xchain77_n67_α:
                        mov              rax, qword ptr [rbp + 3872]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 3880]
                        mov              qword ptr [rbp + 1896], rax
                                                                                        jmp   xchain77_n72_α
# IR_LIT_STRING
xchain77_n68_α:
                        mov              qword ptr [rbp + 2592], 1
                        mov              rax, qword ptr [rip + .Lx00017_0]
                        mov              qword ptr [rbp + 2600], rax
                                                                                        jmp   xchain77_n74_α
.Lx00017_0:
                        .quad            .Lx00017_0_s
.Lx00017_0_s:
                        .string          "ERR, line "
# IR_DEREF variable -> value
xchain77_n69_α:
                        mov              rdi, qword ptr [rbp + 592]
                        mov              rsi, qword ptr [rbp + 600]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    xchain77_n37_α
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   xchain77_n75_α
# IR_ASSIGN_VAR
xchain77_n70_α:
                        mov              rdi, qword ptr [rbp + 2192]
                        mov              rsi, qword ptr [rbp + 2200]
                        mov              rdx, qword ptr [rbp + 2272]
                        mov              rcx, qword ptr [rbp + 2280]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain77_n59_α
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx
                                                                                        jmp   xchain77_n59_α
# IR_VAR
xchain77_n71_α:
                        mov              rax, qword ptr [rbp + 3824]
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 3832]
                        mov              qword ptr [rbp + 2088], rax
                                                                                        jmp   xchain77_n76_α
# IR_FIELD_GET
xchain77_n72_α:
                        mov              rdi, qword ptr [rip + .Lx00018_0]
                        mov              rsi, qword ptr [rbp + 1888]
                        mov              rdx, qword ptr [rbp + 1896]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    xchain77_n73_α
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx
                                                                                        jmp   xchain77_n77_α
.Lx00018_0:
                        .quad            .Lx00018_0_s
.Lx00018_0_s:
                        .string          "sub"
# IR_VAR
xchain77_n73_α:
                        mov              rax, qword ptr [rbp + 3824]
                        mov              qword ptr [rbp + 1712], rax
                        mov              rax, qword ptr [rbp + 3832]
                        mov              qword ptr [rbp + 1720], rax
                                                                                        jmp   xchain77_n78_α
# IR_VAR
xchain77_n74_α:
                        mov              rax, qword ptr [rbp + 3888]
                        mov              qword ptr [rbp + 2624], rax
                        mov              rax, qword ptr [rbp + 3896]
                        mov              qword ptr [rbp + 2632], rax
                                                                                        jmp   xchain77_n80_α
# IR_ASSIGN_VAR
xchain77_n75_α:
                        mov              rdi, qword ptr [rbp + 416]
                        mov              rsi, qword ptr [rbp + 424]
                        mov              rdx, qword ptr [rbp + 624]
                        mov              rcx, qword ptr [rbp + 632]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain77_n37_α
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   xchain77_n37_α
# IR_FIELD_GET
xchain77_n76_α:
                        mov              rdi, qword ptr [rip + .Lx00019_0]
                        mov              rsi, qword ptr [rbp + 2080]
                        mov              rdx, qword ptr [rbp + 2088]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    xchain77_n67_α
                        mov              qword ptr [rbp + 2048], rax
                        mov              qword ptr [rbp + 2056], rdx
                                                                                        jmp   xchain77_n82_α
.Lx00019_0:
                        .quad            .Lx00019_0_s
.Lx00019_0_s:
                        .string          "level"
# IR_VAR
xchain77_n77_α:
                        mov              rax, qword ptr [rbp + 3824]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 3832]
                        mov              qword ptr [rbp + 1928], rax
                                                                                        jmp   xchain77_n83_α
# IR_FIELD_GET lv
xchain77_n78_α:
                        mov              rdi, qword ptr [rip + .Lx00020_0]
                        mov              rsi, qword ptr [rbp + 1712]
                        mov              rdx, qword ptr [rbp + 1720]
                        call             rt_field_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain77_n79_α
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
                                                                                        jmp   xchain77_n84_α
.Lx00020_0:
                        .quad            .Lx00020_0_s
.Lx00020_0_s:
                        .string          "parent"
# IR_VAR
xchain77_n79_α:
                        mov              rax, qword ptr [rbp + 3824]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 3832]
                        mov              qword ptr [rbp + 1656], rax
                                                                                        jmp   xchain77_n85_α
# IR_LIT_STRING
xchain77_n80_α:
                        mov              qword ptr [rbp + 2656], 1
                        mov              rax, qword ptr [rip + .Lx00021_0]
                        mov              qword ptr [rbp + 2664], rax
                                                                                        jmp   xchain77_n87_α
.Lx00021_0:
                        .quad            .Lx00021_0_s
.Lx00021_0_s:
                        .string          ": "
xchain77_n81_α:
                                                                                        jmp   xchain77_n19_α
xchain77_n81_β:
                                                                                        jmp   xchain77_n19_α
xchain77_n82_α:
# IR_BINOP_TEST
                        mov              eax, dword ptr [rbp + 1984]
                        cmp              eax, 100
                                                                                        je    .Lx00022_0
                        mov              eax, dword ptr [rbp + 2048]
                        cmp              eax, 100
                                                                                        je    .Lx00022_0
                        mov              eax, dword ptr [rbp + 1984]
                        cmp              eax, 6
                                                                                        jne   .Lx00022_2
                        mov              eax, dword ptr [rbp + 2048]
                        cmp              eax, 6
                                                                                        jne   .Lx00022_2
.Lx00022_1:
                        mov              rax, qword ptr [rbp + 1992]
                        mov              rcx, qword ptr [rbp + 2056]
                        cmp              rax, rcx
                                                                                        jl    xchain77_n67_α
                        mov              rcx, qword ptr [rbp + 2048]
                        mov              qword ptr [rbp + 1952], rcx
                        mov              rcx, qword ptr [rbp + 2056]
                        mov              qword ptr [rbp + 1960], rcx
                                                                                        jmp   xchain77_n88_α
.Lx00022_0:
                        mov              rdi, qword ptr [rbp + 1984]
                        mov              rsi, qword ptr [rbp + 1992]
                        mov              rdx, qword ptr [rbp + 2048]
                        mov              rcx, qword ptr [rbp + 2056]
                        mov              r8d, 8
                        lea              r9, [rbp + 1952]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx00022_1
                        cmp              eax, 1
                                                                                        je    xchain77_n67_α
                                                                                        jmp   xchain77_n88_α
.Lx00022_2:
                        mov              rdi, qword ptr [rbp + 1984]
                        mov              rsi, qword ptr [rbp + 1992]
                        mov              rdx, qword ptr [rbp + 2048]
                        mov              rcx, qword ptr [rbp + 2056]
                        mov              r8d, 8
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    xchain77_n67_α
                        mov              rax, qword ptr [rbp + 2048]
                        mov              qword ptr [rbp + 1952], rax
                        mov              rax, qword ptr [rbp + 2056]
                        mov              qword ptr [rbp + 1960], rax
                                                                                        jmp   xchain77_n88_α
xchain77_n83_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1856] -> [zr+1808]
                        mov              rax, qword ptr [rbp + 1856]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 1864]
                        mov              qword ptr [rbp + 1816], rax
# marshal arg1 = producer-box slot [zr+1920] -> [zr+1824]
                        mov              rax, qword ptr [rbp + 1920]
                        mov              qword ptr [rbp + 1824], rax
                        mov              rax, qword ptr [rbp + 1928]
                        mov              qword ptr [rbp + 1832], rax
                        .section         .rodata
.Lrkfn201:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn201]
                        lea              rsi, [rbp + 1808]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                        cmp              eax, 99
                                                                                        je    xchain77_n73_α
                                                                                        jmp   xchain77_n73_α
xchain77_n83_β:
                                                                                        jmp   xchain77_n73_α
# IR_VAR
xchain77_n84_α:
                        mov              rax, qword ptr [rbp + 3872]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 3880]
                        mov              qword ptr [rbp + 1768], rax
                                                                                        jmp   xchain77_n89_α
xchain77_n85_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 1648]
                        mov              rdx, qword ptr [rbp + 1656]
                        mov              qword ptr [rbp + 3872], rax
                        mov              qword ptr [rbp + 3880], rdx
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                                                                                        jmp   xchain77_n86_α
# IR_VAR_REF
xchain77_n86_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3776]
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                                                                                        jmp   xchain77_n90_α
# IR_VAR
xchain77_n87_α:
                        mov              rax, qword ptr [rbp + 3840]
                        mov              qword ptr [rbp + 2688], rax
                        mov              rax, qword ptr [rbp + 3848]
                        mov              qword ptr [rbp + 2696], rax
                                                                                        jmp   xchain77_n91_α
# IR_VAR
xchain77_n88_α:
                        mov              rax, qword ptr [rbp + 3872]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 3880]
                        mov              qword ptr [rbp + 2168], rax
                                                                                        jmp   xchain77_n92_α
# IR_ASSIGN_VAR
xchain77_n89_α:
                        mov              rdi, qword ptr [rbp + 1680]
                        mov              rsi, qword ptr [rbp + 1688]
                        mov              rdx, qword ptr [rbp + 1760]
                        mov              rcx, qword ptr [rbp + 1768]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain77_n79_α
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                                                                                        jmp   xchain77_n79_α
# IR_VAR
xchain77_n90_α:
                        mov              rax, qword ptr [rbp + 3824]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 3832]
                        mov              qword ptr [rbp + 1528], rax
                                                                                        jmp   xchain77_n93_α
xchain77_n91_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2560] -> [zr+2464]
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 2472], rax
# marshal arg1 = producer-box slot [zr+2592] -> [zr+2480]
                        mov              rax, qword ptr [rbp + 2592]
                        mov              qword ptr [rbp + 2480], rax
                        mov              rax, qword ptr [rbp + 2600]
                        mov              qword ptr [rbp + 2488], rax
# marshal arg2 = producer-box slot [zr+2624] -> [zr+2496]
                        mov              rax, qword ptr [rbp + 2624]
                        mov              qword ptr [rbp + 2496], rax
                        mov              rax, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 2504], rax
# marshal arg3 = producer-box slot [zr+2656] -> [zr+2512]
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 2512], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 2520], rax
# marshal arg4 = producer-box slot [zr+2688] -> [zr+2528]
                        mov              rax, qword ptr [rbp + 2688]
                        mov              qword ptr [rbp + 2528], rax
                        mov              rax, qword ptr [rbp + 2696]
                        mov              qword ptr [rbp + 2536], rax
                        .section         .rodata
.Lrkfn215:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn215]
                        lea              rsi, [rbp + 2464]
                        mov              edx, 5
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx
                        cmp              eax, 99
                                                                                        je    xchain77_n19_α
                                                                                        jmp   xchain77_n19_α
xchain77_n91_β:
                                                                                        jmp   xchain77_n19_α
# IR_FIELD_GET
xchain77_n92_α:
                        mov              rdi, qword ptr [rip + .Lx00023_0]
                        mov              rsi, qword ptr [rbp + 2160]
                        mov              rdx, qword ptr [rbp + 2168]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    xchain77_n59_α
                        mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 2136], rdx
                                                                                        jmp   xchain77_n95_α
.Lx00023_0:
                        .quad            .Lx00023_0_s
.Lx00023_0_s:
                        .string          "parent"
# IR_FIELD_GET
xchain77_n93_α:
                        mov              rdi, qword ptr [rip + .Lx00024_0]
                        mov              rsi, qword ptr [rbp + 1520]
                        mov              rdx, qword ptr [rbp + 1528]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    xchain77_n94_α
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                                                                                        jmp   xchain77_n96_α
.Lx00024_0:
                        .quad            .Lx00024_0_s
.Lx00024_0_s:
                        .string          "id"
# IR_VAR
xchain77_n94_α:
                        mov              rax, qword ptr [rbp + 3824]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 3832]
                        mov              qword ptr [rbp + 920], rax
                                                                                        jmp   xchain77_n97_α
xchain77_n95_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 2128]
                        mov              rdx, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 3872], rax
                        mov              qword ptr [rbp + 3880], rdx
                        mov              qword ptr [rbp + 2112], rax
                        mov              qword ptr [rbp + 2120], rdx
                                                                                        jmp   xchain77_n59_α
# IR_UNOP
xchain77_n96_α:
                        mov              eax, dword ptr [rbp + 1488]
                        cmp              eax, 99
                                                                                        je    xchain77_n94_α
                        cmp              eax, 0
                                                                                        je    xchain77_n94_α
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1464], rax
                                                                                        jmp   xchain77_n98_α
# IR_FIELD_GET
xchain77_n97_α:
                        mov              rdi, qword ptr [rip + .Lx00025_0]
                        mov              rsi, qword ptr [rbp + 912]
                        mov              rdx, qword ptr [rbp + 920]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    xchain77_n19_α
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   xchain77_n99_α
.Lx00025_0:
                        .quad            .Lx00025_0_s
.Lx00025_0_s:
                        .string          "tag"
# IR_SUBSCRIPT x[i] variable
xchain77_n98_α:
                        mov              rdi, qword ptr [rbp + 1424]
                        mov              rsi, qword ptr [rbp + 1432]
                        mov              rdx, qword ptr [rbp + 1456]
                        mov              rcx, qword ptr [rbp + 1464]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain77_n94_α
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                                                                                        jmp   xchain77_n00026_α
# IR_LIT_STRING
xchain77_n99_α:
                        mov              qword ptr [rbp + 1184], 1
                        mov              rax, qword ptr [rip + .Lx00027_0]
                        mov              qword ptr [rbp + 1192], rax
                                                                                        jmp   xchain77_n00028_α
.Lx00027_0:
                        .quad            .Lx00027_0_s
.Lx00027_0_s:
                        .string          "FAM"
# IR_VAR
xchain77_n00026_α:
                        mov              rax, qword ptr [rbp + 3824]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 3832]
                        mov              qword ptr [rbp + 1608], rax
                                                                                        jmp   xchain77_n00029_α
xchain77_n00028_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+880] -> [zr+1376]
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 1384], rax
# marshal arg1 = producer-box slot [zr+1184] -> [zr+1392]
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1400], rax
                        .section         .rodata
.Lrkfn228:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn228]
                        lea              rsi, [rbp + 1376]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                        cmp              eax, 99
                                                                                        je    xchain77_n00030_α
                                                                                        jmp   xchain77_n00031_α
xchain77_n00028_β:
                                                                                        jmp   xchain77_n00030_α
# IR_ASSIGN_VAR
xchain77_n00029_α:
                        mov              rdi, qword ptr [rbp + 1552]
                        mov              rsi, qword ptr [rbp + 1560]
                        mov              rdx, qword ptr [rbp + 1600]
                        mov              rcx, qword ptr [rbp + 1608]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain77_n94_α
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                                                                                        jmp   xchain77_n94_α
# IR_VAR
xchain77_n00031_α:
                        mov              rax, qword ptr [rbp + 3792]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 3800]
                        mov              qword ptr [rbp + 1288], rax
                                                                                        jmp   xchain77_n00032_α
# IR_LIT_STRING
xchain77_n00030_α:
                        mov              qword ptr [rbp + 944], 1
                        mov              rax, qword ptr [rip + .Lx00033_0]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   xchain77_n00034_α
.Lx00033_0:
                        .quad            .Lx00033_0_s
.Lx00033_0_s:
                        .string          "INDI"
# IR_VAR
xchain77_n00032_α:
                        mov              rax, qword ptr [rbp + 3824]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 3832]
                        mov              qword ptr [rbp + 1320], rax
                                                                                        jmp   xchain77_n00035_α
xchain77_n00034_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+880] -> [zr+1136]
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 1144], rax
# marshal arg1 = producer-box slot [zr+944] -> [zr+1152]
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 1160], rax
                        .section         .rodata
.Lrkfn236:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn236]
                        lea              rsi, [rbp + 1136]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                        cmp              eax, 99
                                                                                        je    xchain77_n19_α
                                                                                        jmp   xchain77_n00036_α
xchain77_n00034_β:
                                                                                        jmp   xchain77_n19_α
xchain77_n00035_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1280] -> [zr+1232]
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1240], rax
# marshal arg1 = producer-box slot [zr+1312] -> [zr+1248]
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1256], rax
                        .section         .rodata
.Lrkfn238:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn238]
                        lea              rsi, [rbp + 1232]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                        cmp              eax, 99
                                                                                        je    xchain77_n19_α
                                                                                        jmp   xchain77_n00001_α
xchain77_n00035_β:
                                                                                        jmp   xchain77_n19_α
# IR_VAR
xchain77_n00036_α:
                        mov              rax, qword ptr [rbp + 3808]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 3816]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   xchain77_n00037_α
xchain77_n00001_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 1216]
                        mov              rdx, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 3856], rax
                        mov              qword ptr [rbp + 3864], rdx
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                                                                                        jmp   xchain77_n00002_α
# IR_VAR
xchain77_n00037_α:
                        mov              rax, qword ptr [rbp + 3824]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 3832]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   xchain77_n00038_α
# IR_VAR
xchain77_n00002_α:
                        mov              rax, qword ptr [rbp + 3856]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 3864]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   xchain77_n00039_α
xchain77_n00038_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1040] -> [zr+992]
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1000], rax
# marshal arg1 = producer-box slot [zr+1072] -> [zr+1008]
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1016], rax
                        .section         .rodata
.Lrkfn247:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn247]
                        lea              rsi, [rbp + 992]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        cmp              eax, 99
                                                                                        je    xchain77_n19_α
                                                                                        jmp   xchain77_n00040_α
xchain77_n00038_β:
                                                                                        jmp   xchain77_n19_α
xchain77_n00039_α:
# IR_CONJUNCTION value-forward copy
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   xchain77_n19_α
xchain77_n00039_β:
                                                                                        jmp   xchain77_n19_α
xchain77_n00040_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 976]
                        mov              rdx, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 3856], rax
                        mov              qword ptr [rbp + 3864], rdx
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                                                                                        jmp   xchain77_n00002_α
proc_gedload_res:
                        add              rsp, 8
                        pop              rbp
proc_gedload_β:
                                                                                        jmp   proc_gedload_ω
proc_gedload_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 3912]
                        lea              rsp, [rbp + 3936]
                        mov              rbp, [rbp + 3928]
                                                                                        jmp   rax
proc_gedload_ω:
                        mov              rax, [rbp + 3920]
                        lea              rsp, [rbp + 3936]
                        mov              rbp, [rbp + 3928]
                                                                                        jmp   rax
proc_gedload_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
                        pop              r11
                        sub              rsp, 3952
                        mov              qword ptr [rsp + 3944], rbp
                        mov              rbp, rsp
                        add              rbp, 16
                        mov              qword ptr [rbp + 3904], r11
                        lea              rax, [rip + .Lx00041_2]
                        mov              qword ptr [rbp + 3912], rax
                        lea              rax, [rip + .Lx00041_3]
                        mov              qword ptr [rbp + 3920], rax
                        mov              qword ptr [rbp + 3752], rbp
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 3744
                        mov              edx, 3904
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_gedload_α_body
.Lx00041_2:
                        mov              rdx, qword ptr [rsp + -3952]
                        mov              rcx, rsp
                        add              rcx, -3936
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00041_3:
                        mov              rdi, qword ptr [rsp + -3952]
                        mov              rsi, rsp
                        add              rsi, -3936
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
                        .globl           proc_gedscan_α
proc_gedscan_α:
#=======================================================================================================================
                        .global          proc_gedscan_α
                        .global          proc_gedscan_β
                        .global          proc_gedscan_γ
                        .global          proc_gedscan_ω
                        sub              rsp, 1936
                        mov              [rsp + 1912], rcx
                        mov              [rsp + 1920], rdx
                        mov              [rsp + 1928], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 1832], rsp
                        mov              rdi, rsp
                        mov              esi, 1824
                        mov              edx, 1904
                        call             rt_jmp_frame_lexprep2@PLT
proc_gedscan_α_body:
# IR_DISJUNCTION_NARY
xchain00042_n0_α:
                        mov              qword ptr [rbp + 1504], 0
                        mov              qword ptr [rbp + 1512], 0
                        mov              dword ptr [rbp + 1520], 0
                                                                                        jmp   xchain00042_n2_α
xchain00042_n0_as:
                        mov              eax, dword ptr [rbp + 1520]
                        cmp              eax, 0
                                                                                        jne   .Lx00043_0
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 1512], rax
                                                                                        jmp   xchain00042_n1_α
.Lx00043_0:
                                                                                        jmp   xchain00042_n1_α
xchain00042_n0_β:
                        mov              eax, dword ptr [rbp + 1520]
                                                                                        jmp   xchain00042_n1_α
xchain00042_n0_af:
                        add              dword ptr [rbp + 1520], 1
                        mov              eax, dword ptr [rbp + 1520]
                                                                                        jmp   xchain00042_n1_α
# IR_VAR
xchain00042_n1_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1480], rax
                                                                                        jmp   xchain00042_n4_α
# IR_VAR_REF
xchain00042_n2_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052320
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                                                                                        jmp   xchain00042_n5_α
xchain00042_n2_β:
                                                                                        jmp   xchain00042_n0_af
# IR_ASSIGN gva
xchain00042_n3_α:
                        mov              rax, qword ptr [rbp + 1552]
                        mov              rdx, qword ptr [rbp + 1560]
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                                                                                        jmp   xchain00042_n0_as
xchain00042_n3_β:
                                                                                        jmp   xchain00042_n1_α
# IR_GEN_SCAN
xchain00042_n4_α:
                        mov              rdi, qword ptr [rbp + 1472]
                        mov              rsi, qword ptr [rbp + 1480]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   xchain00042_n6_α
# IR_NULLTEST_VAR
xchain00042_n5_α:
                        mov              eax, dword ptr [rbp + 1712]
                        cmp              eax, 99
                                                                                        je    xchain00042_n0_af
                        mov              rdi, qword ptr [rbp + 1712]
                        mov              rsi, qword ptr [rbp + 1720]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    xchain00042_n0_af
                        cmp              eax, 0
                                                                                        jne   xchain00042_n0_af
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 1744], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 1752], rax
                                                                                        jmp   xchain00042_n7_α
# IR_LIT_CHARSET
xchain00042_n6_α:
                        mov              qword ptr [rbp + 1440], 1
                        mov              dword ptr [rbp + 1444], -1
                        mov              rax, qword ptr [rip + .Lx00044_0]
                        mov              qword ptr [rbp + 1448], rax
                                                                                        jmp   xchain00042_n8_α
.Lx00044_0:
                        .quad            .Lx00044_0_s
.Lx00044_0_s:
                        .string          "\t\n "
# IR_LIT_INTEGER
xchain00042_n7_α:
                        mov              qword ptr [rbp + 1792], 6
                        mov              rax, qword ptr [rip + .Lx00045_0]
                        mov              qword ptr [rbp + 1800], rax
                                                                                        jmp   xchain00042_n9_α
.Lx00045_0:
                        .quad            1
# IR_SCAN_MANY
xchain00042_n8_α:
                        mov              eax, r14d
.Lx00046_0:
                        cmp              eax, r15d
                                                                                        jge   .Lx00046_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx00046_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx00046_1
                        add              eax, 1
                                                                                        jmp   .Lx00046_0
.Lx00046_1:
                        cmp              eax, r14d
                                                                                        je    xchain00042_n12_α
                        mov              qword ptr [rbp + 1408], 6
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rbp + 1416], rcx
                                                                                        jmp   xchain00042_n10_α
xchain00042_n8_β:
                                                                                        jmp   xchain00042_n12_α
.Lx00046_2:
                        .quad            .Lx00046_2_s
.Lx00046_2_s:
                        .string          "\t\n "
# IR_ASSIGN_VAR
xchain00042_n9_α:
                        mov              rdi, qword ptr [rbp + 1744]
                        mov              rsi, qword ptr [rbp + 1752]
                        mov              rdx, qword ptr [rbp + 1792]
                        mov              rcx, qword ptr [rbp + 1800]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain00042_n0_af
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx
                                                                                        jmp   xchain00042_n11_α
# IR_SCAN_TAB
xchain00042_n10_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 1416]
                        cmp              rax, 1
                                                                                        jge   .Lx00047_0
                        add              rax, r15
                        add              rax, 1
.Lx00047_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00047_239
                        add              rsp, 16
                                                                                        jmp   xchain00042_n12_α
.Lx00047_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00047_240
                        add              rsp, 16
                                                                                        jmp   xchain00042_n12_α
.Lx00047_240:
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
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                                                                                        jmp   xchain00042_n12_α
xchain00042_n10_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   xchain00042_n12_α
# IR_LIT_CHARSET
xchain00042_n11_α:
                        mov              qword ptr [rbp + 1616], 1
                        mov              dword ptr [rbp + 1620], -1
                        mov              rax, qword ptr [rip + .Lx00048_0]
                        mov              qword ptr [rbp + 1624], rax
                                                                                        jmp   xchain00042_n13_α
.Lx00048_0:
                        .quad            .Lx00048_0_s
.Lx00048_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
# IR_DISJUNCTION_NARY
xchain00042_n12_α:
                        mov              qword ptr [rbp + 1248], 0
                        mov              qword ptr [rbp + 1256], 0
                        mov              dword ptr [rbp + 1264], 0
                                                                                        jmp   xchain00042_n15_α
xchain00042_n12_as:
                        mov              eax, dword ptr [rbp + 1264]
                        cmp              eax, 0
                                                                                        jne   .Lx00049_0
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   xchain00042_n14_α
.Lx00049_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00049_1
                                                                                        jmp   xchain00042_n14_α
.Lx00049_1:
                                                                                        jmp   xchain00042_n14_α
xchain00042_n12_β:
                        mov              eax, dword ptr [rbp + 1264]
                        cmp              eax, 0
                                                                                        je    xchain00042_n12_af
                                                                                        jmp   xchain00042_n12_af
xchain00042_n12_af:
                        add              dword ptr [rbp + 1264], 1
                        mov              eax, dword ptr [rbp + 1264]
                        cmp              eax, 1
                                                                                        je    proc_gedscan_ω
                                                                                        jmp   xchain00042_n18_α
# IR_LIT_CHARSET
xchain00042_n13_α:
                        mov              qword ptr [rbp + 1648], 1
                        mov              dword ptr [rbp + 1652], -1
                        mov              rax, qword ptr [rip + .Lx00050_0]
                        mov              qword ptr [rbp + 1656], rax
                                                                                        jmp   xchain00042_n17_α
.Lx00050_0:
                        .quad            .Lx00050_0_s
.Lx00050_0_s:
                        .string          "0123456789"
xchain00042_n14_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 1248]
                        mov              rdx, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                                                                                        jmp   xchain00042_n18_α
# IR_LIT_CHARSET
xchain00042_n15_α:
                        mov              qword ptr [rbp + 1344], 1
                        mov              dword ptr [rbp + 1348], -1
                        mov              rax, qword ptr [rip + .Lx00051_0]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   xchain00042_n19_α
xchain00042_n15_β:
                                                                                        jmp   xchain00042_n12_af
.Lx00051_0:
                        .quad            .Lx00051_0_s
.Lx00051_0_s:
                        .string          "0123456789"
# IR_SCAN_TAB
xchain00042_n16_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 1320]
                        cmp              rax, 1
                                                                                        jge   .Lx00052_0
                        add              rax, r15
                        add              rax, 1
.Lx00052_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00052_239
                        add              rsp, 16
                                                                                        jmp   xchain00042_n12_af
.Lx00052_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00052_240
                        add              rsp, 16
                                                                                        jmp   xchain00042_n12_af
.Lx00052_240:
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
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                                                                                        jmp   xchain00042_n12_as
xchain00042_n16_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   xchain00042_n12_af
xchain00042_n17_α:
# IR_BINOP_ARITH_REAL
                        mov              rdi, qword ptr [rbp + 1616]
                        mov              rsi, qword ptr [rbp + 1624]
                        mov              rdx, qword ptr [rbp + 1648]
                        mov              rcx, qword ptr [rbp + 1656]
                        mov              r8d, 19
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    xchain00042_n1_α
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                                                                                        jmp   xchain00042_n20_α
# IR_LIT_CHARSET
xchain00042_n18_α:
                        mov              qword ptr [rbp + 1200], 1
                        mov              dword ptr [rbp + 1204], -1
                        mov              rax, qword ptr [rip + .Lx00053_0]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   xchain00042_n21_α
.Lx00053_0:
                        .quad            .Lx00053_0_s
.Lx00053_0_s:
                        .string          "\t\n "
# IR_SCAN_MANY
xchain00042_n19_α:
                        mov              eax, r14d
.Lx00054_0:
                        cmp              eax, r15d
                                                                                        jge   .Lx00054_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx00054_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx00054_1
                        add              eax, 1
                                                                                        jmp   .Lx00054_0
.Lx00054_1:
                        cmp              eax, r14d
                                                                                        je    xchain00042_n12_af
                        mov              qword ptr [rbp + 1312], 6
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rbp + 1320], rcx
                                                                                        jmp   xchain00042_n16_α
xchain00042_n19_β:
                                                                                        jmp   xchain00042_n12_af
.Lx00054_2:
                        .quad            .Lx00054_2_s
.Lx00054_2_s:
                        .string          "0123456789"
# IR_LIT_CHARSET
xchain00042_n20_α:
                        mov              qword ptr [rbp + 1680], 1
                        mov              dword ptr [rbp + 1684], -1
                        mov              rax, qword ptr [rip + .Lx00055_0]
                        mov              qword ptr [rbp + 1688], rax
                                                                                        jmp   xchain00042_n22_α
.Lx00055_0:
                        .quad            .Lx00055_0_s
.Lx00055_0_s:
                        .string          "_"
# IR_SCAN_MANY
xchain00042_n21_α:
                        mov              eax, r14d
.Lx00056_0:
                        cmp              eax, r15d
                                                                                        jge   .Lx00056_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx00056_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx00056_1
                        add              eax, 1
                                                                                        jmp   .Lx00056_0
.Lx00056_1:
                        cmp              eax, r14d
                                                                                        je    xchain00042_n24_α
                        mov              qword ptr [rbp + 1168], 6
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rbp + 1176], rcx
                                                                                        jmp   xchain00042_n23_α
xchain00042_n21_β:
                                                                                        jmp   xchain00042_n24_α
.Lx00056_2:
                        .quad            .Lx00056_2_s
.Lx00056_2_s:
                        .string          "\t\n "
xchain00042_n22_α:
# IR_BINOP_ARITH_REAL
                        mov              rdi, qword ptr [rbp + 1584]
                        mov              rsi, qword ptr [rbp + 1592]
                        mov              rdx, qword ptr [rbp + 1680]
                        mov              rcx, qword ptr [rbp + 1688]
                        mov              r8d, 19
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    xchain00042_n1_α
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                                                                                        jmp   xchain00042_n3_α
# IR_SCAN_TAB
xchain00042_n23_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 1176]
                        cmp              rax, 1
                                                                                        jge   .Lx00057_0
                        add              rax, r15
                        add              rax, 1
.Lx00057_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00057_239
                        add              rsp, 16
                                                                                        jmp   xchain00042_n24_α
.Lx00057_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00057_240
                        add              rsp, 16
                                                                                        jmp   xchain00042_n24_α
.Lx00057_240:
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
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   xchain00042_n24_α
xchain00042_n23_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   xchain00042_n24_α
# IR_DISJUNCTION_NARY
xchain00042_n24_α:
                        mov              qword ptr [rbp + 672], 0
                        mov              qword ptr [rbp + 680], 0
                        mov              dword ptr [rbp + 688], 0
                                                                                        jmp   xchain00042_n26_α
xchain00042_n24_as:
                        mov              eax, dword ptr [rbp + 688]
                        cmp              eax, 0
                                                                                        jne   .Lx00058_0
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   xchain00042_n25_α
.Lx00058_0:
                                                                                        jmp   xchain00042_n25_α
xchain00042_n24_β:
                        mov              eax, dword ptr [rbp + 688]
                                                                                        jmp   xchain00042_n25_α
xchain00042_n24_af:
                        add              dword ptr [rbp + 688], 1
                        mov              eax, dword ptr [rbp + 688]
                                                                                        jmp   xchain00042_n25_α
# IR_DISJUNCTION_NARY
xchain00042_n25_α:
                        mov              qword ptr [rbp + 544], 0
                        mov              qword ptr [rbp + 552], 0
                        mov              dword ptr [rbp + 560], 0
                                                                                        jmp   xchain00042_n29_α
xchain00042_n25_as:
                        mov              eax, dword ptr [rbp + 560]
                        cmp              eax, 0
                                                                                        jne   .Lx00059_0
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   xchain00042_n28_α
.Lx00059_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00059_1
                                                                                        jmp   xchain00042_n28_α
.Lx00059_1:
                                                                                        jmp   xchain00042_n28_α
xchain00042_n25_β:
                        mov              eax, dword ptr [rbp + 560]
                        cmp              eax, 0
                                                                                        je    xchain00042_n25_af
                                                                                        jmp   xchain00042_n25_af
xchain00042_n25_af:
                        add              dword ptr [rbp + 560], 1
                        mov              eax, dword ptr [rbp + 560]
                        cmp              eax, 1
                                                                                        je    proc_gedscan_ω
                                                                                        jmp   xchain00042_n36_α
# IR_SCAN_SEQ_NARY
xchain00042_n26_α:
                        mov              dword ptr [rbp + 832], r14d
                        mov              dword ptr [rbp + 836], 0
                                                                                        jmp   xchain00042_n32_α
xchain00042_n26_as:
                        mov              eax, dword ptr [rbp + 836]
                        add              eax, 1
                        mov              dword ptr [rbp + 836], eax
                        cmp              eax, 1
                                                                                        je    xchain00042_n34_α
                        mov              rax, qword ptr [rbp + 848]
                        mov              rdx, qword ptr [rbp + 856]
                        push             r10
                        push             r10
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rbp + 944]
                        mov              rcx, qword ptr [rbp + 952]
                        call             str_concat_d@PLT
                        pop              r10
                        pop              r10
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   xchain00042_n31_α
xchain00042_n26_β:
                        mov              dword ptr [rbp + 836], 2
xchain00042_n26_af:
                        mov              eax, dword ptr [rbp + 836]
                        sub              eax, 1
                        mov              dword ptr [rbp + 836], eax
                        cmp              eax, 0
                                                                                        je    xchain00042_n33_β
                        cmp              eax, 1
                                                                                        je    xchain00042_n35_β
                                                                                        jmp   xchain00042_n24_af
# IR_SCAN_TAB
xchain00042_n27_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 744]
                        cmp              rax, 1
                                                                                        jge   .Lx00060_0
                        add              rax, r15
                        add              rax, 1
.Lx00060_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00060_239
                        add              rsp, 16
                                                                                        jmp   xchain00042_n25_α
.Lx00060_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00060_240
                        add              rsp, 16
                                                                                        jmp   xchain00042_n25_α
.Lx00060_240:
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
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   xchain00042_n24_as
xchain00042_n27_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   xchain00042_n25_α
xchain00042_n28_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 544]
                        mov              rdx, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   xchain00042_n36_α
# IR_VAR
xchain00042_n29_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   xchain00042_n37_α
xchain00042_n29_β:
                                                                                        jmp   xchain00042_n25_af
# IR_SCAN_TAB
xchain00042_n30_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 616]
                        cmp              rax, 1
                                                                                        jge   .Lx00061_0
                        add              rax, r15
                        add              rax, 1
.Lx00061_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00061_239
                        add              rsp, 16
                                                                                        jmp   xchain00042_n25_af
.Lx00061_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00061_240
                        add              rsp, 16
                                                                                        jmp   xchain00042_n25_af
.Lx00061_240:
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
                                                                                        jmp   xchain00042_n25_as
xchain00042_n30_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   xchain00042_n25_af
xchain00042_n31_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 816]
                        mov              rdx, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   xchain00042_n38_α
# IR_LIT_STRING
xchain00042_n32_α:
                        mov              qword ptr [rbp + 912], 1
                        mov              rax, qword ptr [rip + .Lx00062_0]
                        mov              qword ptr [rbp + 920], rax
                                                                                        jmp   xchain00042_n39_α
xchain00042_n32_β:
                                                                                        jmp   xchain00042_n26_af
.Lx00062_0:
                        .quad            .Lx00062_0_s
.Lx00062_0_s:
                        .string          "@"
# IR_SCAN_TAB
xchain00042_n33_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 888]
                        cmp              rax, 1
                                                                                        jge   .Lx00063_0
                        add              rax, r15
                        add              rax, 1
.Lx00063_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00063_239
                        add              rsp, 16
                                                                                        jmp   xchain00042_n26_af
.Lx00063_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00063_240
                        add              rsp, 16
                                                                                        jmp   xchain00042_n26_af
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
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   xchain00042_n26_as
xchain00042_n33_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   xchain00042_n26_af
# IR_LIT_CHARSET
xchain00042_n34_α:
                        mov              qword ptr [rbp + 1072], 1
                        mov              dword ptr [rbp + 1076], -1
                        mov              rax, qword ptr [rip + .Lx00064_0]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   xchain00042_n40_α
xchain00042_n34_β:
                                                                                        jmp   xchain00042_n26_af
.Lx00064_0:
                        .quad            .Lx00064_0_s
.Lx00064_0_s:
                        .string          "@"
# IR_SCAN_TAB
xchain00042_n35_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 984]
                        cmp              rax, 1
                                                                                        jge   .Lx00065_0
                        add              rax, r15
                        add              rax, 1
.Lx00065_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00065_239
                        add              rsp, 16
                                                                                        jmp   xchain00042_n40_β
.Lx00065_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00065_240
                        add              rsp, 16
                                                                                        jmp   xchain00042_n40_β
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
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                                                                                        jmp   xchain00042_n26_as
xchain00042_n35_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   xchain00042_n40_β
# IR_LIT_CHARSET
xchain00042_n36_α:
                        mov              qword ptr [rbp + 496], 1
                        mov              dword ptr [rbp + 500], -1
                        mov              rax, qword ptr [rip + .Lx00066_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   xchain00042_n41_α
.Lx00066_0:
                        .quad            .Lx00066_0_s
.Lx00066_0_s:
                        .string          "\t\n "
# IR_SCAN_MANY (var cset) [fstranl.r many: advance while s[i] in cset-descr@slot; fail if none consumed]
xchain00042_n37_α:
                        mov              eax, r14d
.Lx00067_0:
                        cmp              eax, r15d
                                                                                        jge   .Lx00067_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rbp + 648]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx00067_1
                        add              eax, 1
                                                                                        jmp   .Lx00067_0
.Lx00067_1:
                        cmp              eax, r14d
                                                                                        je    xchain00042_n25_af
                        mov              qword ptr [rbp + 608], 6
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rbp + 616], rcx
                                                                                        jmp   xchain00042_n30_α
xchain00042_n37_β:
                                                                                        jmp   xchain00042_n25_af
# IR_LIT_CHARSET
xchain00042_n38_α:
                        mov              qword ptr [rbp + 768], 1
                        mov              dword ptr [rbp + 772], -1
                        mov              rax, qword ptr [rip + .Lx00068_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   xchain00042_n42_α
.Lx00068_0:
                        .quad            .Lx00068_0_s
.Lx00068_0_s:
                        .string          "\t\n "
# IR_SCAN_MATCH
xchain00042_n39_α:
                        sub              rsp, 16
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1
                                                                                        jge   .Lx00069_239
                        add              rsp, 16
                                                                                        jmp   xchain00042_n26_af
.Lx00069_239:
                        mov              rdi, qword ptr [rip + .Lx00069_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 1
                        push             r10
                        call             memcmp@PLT
                        pop              r10
                        test             eax, eax
                                                                                        je    .Lx00069_240
                        add              rsp, 16
                                                                                        jmp   xchain00042_n26_af
.Lx00069_240:
                        mov              qword ptr [rbp + 880], 6
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   xchain00042_n33_α
.Lx00069_0:
                        .quad            .Lx00069_0_s
.Lx00069_0_s:
                        .string          "@"
# IR_SCAN_UPTO
xchain00042_n40_α:
                        mov              qword ptr [rbp + 1056], r14
.Lx00070_0:
                        mov              rax, qword ptr [rbp + 1056]
                        cmp              rax, r15
                                                                                        jge   xchain00042_n26_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx00070_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx00070_1
                        mov              qword ptr [rbp + 1040], 6
                        add              rax, 1
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   xchain00042_n43_α
.Lx00070_1:
                        inc              qword ptr [rbp + 1056]
                                                                                        jmp   .Lx00070_0
xchain00042_n40_β:
                        inc              qword ptr [rbp + 1056]
                                                                                        jmp   .Lx00070_0
.Lx00070_2:
                        .quad            .Lx00070_2_s
.Lx00070_2_s:
                        .string          "@"
# IR_SCAN_MANY
xchain00042_n41_α:
                        mov              eax, r14d
.Lx00071_0:
                        cmp              eax, r15d
                                                                                        jge   .Lx00071_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx00071_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx00071_1
                        add              eax, 1
                                                                                        jmp   .Lx00071_0
.Lx00071_1:
                        cmp              eax, r14d
                                                                                        je    xchain00042_n46_α
                        mov              qword ptr [rbp + 464], 6
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rbp + 472], rcx
                                                                                        jmp   xchain00042_n44_α
xchain00042_n41_β:
                                                                                        jmp   xchain00042_n46_α
.Lx00071_2:
                        .quad            .Lx00071_2_s
.Lx00071_2_s:
                        .string          "\t\n "
# IR_SCAN_MANY
xchain00042_n42_α:
                        mov              eax, r14d
.Lx00072_0:
                        cmp              eax, r15d
                                                                                        jge   .Lx00072_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx00072_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx00072_1
                        add              eax, 1
                                                                                        jmp   .Lx00072_0
.Lx00072_1:
                        cmp              eax, r14d
                                                                                        je    xchain00042_n25_α
                        mov              qword ptr [rbp + 736], 6
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rbp + 744], rcx
                                                                                        jmp   xchain00042_n27_α
xchain00042_n42_β:
                                                                                        jmp   xchain00042_n25_α
.Lx00072_2:
                        .quad            .Lx00072_2_s
.Lx00072_2_s:
                        .string          "\t\n "
# IR_LIT_INTEGER
xchain00042_n43_α:
                        mov              qword ptr [rbp + 1104], 6
                        mov              rax, qword ptr [rip + .Lx00073_0]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   xchain00042_n45_α
.Lx00073_0:
                        .quad            1
# IR_SCAN_TAB
xchain00042_n44_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 472]
                        cmp              rax, 1
                                                                                        jge   .Lx00074_0
                        add              rax, r15
                        add              rax, 1
.Lx00074_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00074_239
                        add              rsp, 16
                                                                                        jmp   xchain00042_n46_α
.Lx00074_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00074_240
                        add              rsp, 16
                                                                                        jmp   xchain00042_n46_α
.Lx00074_240:
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
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   xchain00042_n46_α
xchain00042_n44_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   xchain00042_n46_α
# IR_COERCE_NUMERIC
xchain00042_n45_α:
                        mov              eax, dword ptr [rbp + 1040]
                        cmp              eax, 7
                                                                                        je    .Lx00075_1
                        cmp              eax, 6
                                                                                        jne   .Lx00075_0
                        mov              eax, dword ptr [rbp + 1104]
                        cmp              eax, 6
                                                                                        jne   .Lx00075_0
.Lx00075_1:
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   xchain00042_n47_α
.Lx00075_0:
                        lea              rdi, [rbp + 1040]
                        lea              rsi, [rbp + 1104]
                        lea              rdx, [rbp + 1008]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   xchain00042_n47_α
# IR_LIT_INTEGER
xchain00042_n46_α:
                        mov              qword ptr [rbp + 400], 6
                        mov              rax, qword ptr [rip + .Lx00076_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   xchain00042_n48_α
.Lx00076_0:
                        .quad            0
xchain00042_n47_α:
# IR_BINOP_ARITH
                        mov              eax, dword ptr [rbp + 1008]
                        cmp              eax, 100
                                                                                        je    .Lx00077_0
                        mov              eax, dword ptr [rbp + 1008]
                        cmp              eax, 6
                                                                                        jne   .Lx00077_2
.Lx00077_1:
                        mov              rax, qword ptr [rbp + 1016]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 976], 6
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   xchain00042_n35_α
.Lx00077_0:
                        mov              rdi, qword ptr [rbp + 1008]
                        mov              rsi, qword ptr [rbp + 1016]
                        mov              rdx, qword ptr [rbp + 1104]
                        mov              rcx, qword ptr [rbp + 1112]
                        mov              r8d, 0
                        lea              r9, [rbp + 976]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   xchain00042_n35_α
.Lx00077_2:
                        mov              rdi, qword ptr [rbp + 1008]
                        mov              rsi, qword ptr [rbp + 1016]
                        mov              rdx, qword ptr [rbp + 1104]
                        mov              rcx, qword ptr [rbp + 1112]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    xchain00042_n26_af
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                                                                                        jmp   xchain00042_n35_α
xchain00042_n47_β:
                                                                                        jmp   xchain00042_n26_af
# IR_SCAN_TAB
xchain00042_n48_α:
                        sub              rsp, 16
                        mov              rax, 0
                        cmp              rax, 1
                                                                                        jge   .Lx00078_0
                        add              rax, r15
                        add              rax, 1
.Lx00078_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00078_239
                        add              rsp, 16
                                                                                        jmp   xchain00042_n50_α
.Lx00078_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00078_240
                        add              rsp, 16
                                                                                        jmp   xchain00042_n50_α
.Lx00078_240:
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
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   xchain00042_n49_α
xchain00042_n48_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   xchain00042_n50_α
xchain00042_n49_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   xchain00042_n50_α
# IR_VAR
xchain00042_n50_α:
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   xchain00042_n51_α
# IR_VAR
xchain00042_n51_α:
                        mov              rax, qword ptr [rbp + 1856]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 1864]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   xchain00042_n52_α
# IR_VAR
xchain00042_n52_α:
                        mov              rax, qword ptr [rbp + 1872]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 1880]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   xchain00042_n53_α
# IR_VAR
xchain00042_n53_α:
                        mov              rax, qword ptr [rbp + 1888]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 1896]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   xchain00042_n54_α
xchain00042_n54_α:
# BOX IR_CALL gednode(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+144]
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 152], rax
# marshal arg1 = producer-box slot [zr+256] -> [zr+160]
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 168], rax
# marshal arg2 = producer-box slot [zr+288] -> [zr+176]
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 184], rax
# marshal arg3 = producer-box slot [zr+320] -> [zr+192]
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 200], rax
                        .section         .rodata
.Lrkfn337:              .string          "gednode"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn337]
                        lea              rsi, [rbp + 144]
                        mov              edx, 4
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    proc_gedscan_ω
                                                                                        jmp   xchain00042_n55_α
xchain00042_n54_β:
                                                                                        jmp   proc_gedscan_ω
# IR_RETURN
xchain00042_n55_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_gedscan_γ
proc_gedscan_res:
                        add              rsp, 8
                        pop              rbp
proc_gedscan_β:
                                                                                        jmp   proc_gedscan_ω
proc_gedscan_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 1912]
                        lea              rsp, [rbp + 1936]
                        mov              rbp, [rbp + 1928]
                                                                                        jmp   rax
proc_gedscan_ω:
                        mov              rax, [rbp + 1920]
                        lea              rsp, [rbp + 1936]
                        mov              rbp, [rbp + 1928]
                                                                                        jmp   rax
proc_gedscan_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
                        pop              r11
                        sub              rsp, 1952
                        mov              qword ptr [rsp + 1944], rbp
                        mov              rbp, rsp
                        add              rbp, 16
                        mov              qword ptr [rbp + 1904], r11
                        lea              rax, [rip + .Lx00079_2]
                        mov              qword ptr [rbp + 1912], rax
                        lea              rax, [rip + .Lx00079_3]
                        mov              qword ptr [rbp + 1920], rax
                        mov              qword ptr [rbp + 1832], rbp
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 1824
                        mov              edx, 1904
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_gedscan_α_body
.Lx00079_2:
                        mov              rdx, qword ptr [rsp + -1952]
                        mov              rcx, rsp
                        add              rcx, -1936
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00079_3:
                        mov              rdi, qword ptr [rsp + -1952]
                        mov              rsi, rsp
                        add              rsi, -1936
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
                        .globl           proc_gedwalk_α
proc_gedwalk_α:
#=======================================================================================================================
                        .global          proc_gedwalk_α
                        .global          proc_gedwalk_β
                        .global          proc_gedwalk_γ
                        .global          proc_gedwalk_ω
                        sub              rsp, 320
                        mov              [rsp + 296], rcx
                        mov              [rsp + 304], rdx
                        mov              [rsp + 312], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 280], rsp
                        mov              rdi, rsp
                        mov              esi, 256
                        mov              edx, 288
                        call             rt_jmp_frame_lexprep2@PLT
proc_gedwalk_α_body:
                        lea              rax, [rip + xchain00080_n1_β]
                        mov              qword ptr [rbp + 256], rax
# IR_DISJUNCTION_NARY
xchain00080_n0_α:
                        mov              qword ptr [rbp + 32], 0
                        mov              qword ptr [rbp + 40], 0
                        mov              dword ptr [rbp + 48], 0
                                                                                        jmp   xchain00080_n2_α
xchain00080_n0_as:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 0
                                                                                        jne   .Lx00081_0
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   xchain00080_n1_α
.Lx00081_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00081_1
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   xchain00080_n1_α
.Lx00081_1:
                                                                                        jmp   xchain00080_n1_α
xchain00080_n0_β:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 0
                                                                                        je    xchain00080_n0_af
                                                                                        jmp   xchain00080_n4_β
xchain00080_n0_af:
                        add              dword ptr [rbp + 48], 1
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 1
                                                                                        je    xchain00080_n3_α
                                                                                        jmp   proc_gedwalk_ω
# IR_SUSPEND yield+resume
xchain00080_n1_α:
                        lea              rax, [rip + xchain00080_n1_β]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_gedwalk_γ
xchain00080_n1_β:
                                                                                        jmp   xchain00080_n0_β
# IR_VAR
xchain00080_n2_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   xchain00080_n0_as
xchain00080_n2_β:
                                                                                        jmp   xchain00080_n0_af
# IR_VAR
xchain00080_n3_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   xchain00080_n5_α
xchain00080_n3_β:
                                                                                        jmp   xchain00080_n0_af
xchain00080_n4_α:
                        mov              qword ptr [rbp + 128], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00082_20
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx00082_21
.Lx00082_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        call             rt_arg_stage@PLT
.Lx00082_21:
                        mov              edi, 5
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx00082_1
                        lea              rcx, [rip + .Lx00082_3]
                        lea              rdx, [rip + .Lx00082_4]
                                                                                        jmp   rax
.Lx00082_3:
                        mov              qword ptr [rbp + 136], rsp
                        mov              rax, qword ptr [rbp + 128]
                        test             rax, rax
                                                                                        jne   .Lx00082_5
                        mov              qword ptr [rbp + 128], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx00082_2
.Lx00082_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx00082_2
.Lx00082_4:
                        mov              rax, qword ptr [rbp + 128]
                        test             rax, rax
                                                                                        jne   .Lx00082_6
                        mov              qword ptr [rbp + 128], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx00082_2
.Lx00082_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx00082_2
.Lx00082_1:
                        call             rt_faildescr@PLT
.Lx00082_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    xchain00080_n6_β
                                                                                        jmp   xchain00080_n0_as
xchain00080_n4_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 136]
                                                                                        jmp   qword ptr [rsp]
.Lx00082_0:
                        .quad            .Lx00082_0_s
.Lx00082_0_s:
                        .string          "gedwalk"
# IR_FIELD_GET
xchain00080_n5_α:
                        mov              rdi, qword ptr [rip + .Lx00083_0]
                        mov              rsi, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    xchain00080_n0_af
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   xchain00080_n6_α
.Lx00083_0:
                        .quad            .Lx00083_0_s
.Lx00083_0_s:
                        .string          "sub"
# IR_LIST_BANG
xchain00080_n6_α:
                        mov              qword ptr [rbp + 176], 0
.Lx00084_0:
                        mov              rdi, qword ptr [rbp + 192]
                        mov              rsi, qword ptr [rbp + 200]
                        mov              rdx, qword ptr [rbp + 176]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              rax, 99
                                                                                        je    xchain00080_n0_af
                                                                                        jmp   xchain00080_n4_α
xchain00080_n6_β:
                        inc              qword ptr [rbp + 176]
                                                                                        jmp   .Lx00084_0
proc_gedwalk_res:
                        add              rsp, 8
                        pop              rbp
proc_gedwalk_β:
                                                                                        jmp   qword ptr [rbp + 256]
proc_gedwalk_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_gedwalk_res]
                        push             rax
                        mov              rax, [rbp + 296]
                        mov              rbp, [rbp + 312]
                                                                                        jmp   rax
proc_gedwalk_ω:
                        mov              rax, [rbp + 304]
                        lea              rsp, [rbp + 320]
                        mov              rbp, [rbp + 312]
                                                                                        jmp   rax
                        .globl           proc_gedsub_α
proc_gedsub_α:
#=======================================================================================================================
                        .global          proc_gedsub_α
                        .global          proc_gedsub_β
                        .global          proc_gedsub_γ
                        .global          proc_gedsub_ω
                        sub              rsp, 1024
                        mov              [rsp + 1000], rcx
                        mov              [rsp + 1008], rdx
                        mov              [rsp + 1016], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 952], rsp
                        mov              rdi, rsp
                        mov              esi, 928
                        mov              edx, 992
                        call             rt_jmp_frame_lexprep2@PLT
proc_gedsub_α_body:
                        lea              rax, [rip + xchain00085_n19_β]
                        mov              qword ptr [rbp + 928], rax
# IR_DISJUNCTION_NARY
xchain00085_n0_α:
                        mov              qword ptr [rbp + 816], 0
                        mov              qword ptr [rbp + 824], 0
                        mov              dword ptr [rbp + 832], 0
                                                                                        jmp   xchain00085_n2_α
xchain00085_n0_as:
                        mov              eax, dword ptr [rbp + 832]
                        cmp              eax, 0
                                                                                        jne   .Lx00086_0
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   xchain00085_n1_α
.Lx00086_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00086_1
                                                                                        jmp   xchain00085_n1_α
.Lx00086_1:
                                                                                        jmp   xchain00085_n1_α
xchain00085_n0_β:
                        mov              eax, dword ptr [rbp + 832]
                        cmp              eax, 0
                                                                                        je    xchain00085_n0_af
                                                                                        jmp   xchain00085_n0_af
xchain00085_n0_af:
                        add              dword ptr [rbp + 832], 1
                        mov              eax, dword ptr [rbp + 832]
                        cmp              eax, 1
                                                                                        je    proc_gedsub_ω
                                                                                        jmp   xchain00085_n4_α
xchain00085_n1_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 816]
                        mov              rdx, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   xchain00085_n4_α
# IR_VAR
xchain00085_n2_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   xchain00085_n3_α
xchain00085_n2_β:
                                                                                        jmp   xchain00085_n0_af
xchain00085_n3_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+896] -> [zr+864]
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 872], rax
                        .section         .rodata
.Lrkfn361:              .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn361]
                        lea              rsi, [rbp + 864]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                        cmp              eax, 99
                                                                                        je    xchain00085_n0_af
                                                                                        jmp   xchain00085_n0_as
xchain00085_n3_β:
                                                                                        jmp   xchain00085_n0_af
# IR_VAR
xchain00085_n4_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   xchain00085_n5_α
# IR_FIELD_GET
xchain00085_n5_α:
                        mov              rdi, qword ptr [rip + .Lx00087_0]
                        mov              rsi, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    proc_gedsub_ω
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   xchain00085_n6_α
.Lx00087_0:
                        .quad            .Lx00087_0_s
.Lx00087_0_s:
                        .string          "sub"
# IR_LIST_BANG
xchain00085_n6_α:
                        mov              qword ptr [rbp + 80], 0
.Lx00088_0:
                        mov              rdi, qword ptr [rbp + 96]
                        mov              rsi, qword ptr [rbp + 104]
                        mov              rdx, qword ptr [rbp + 80]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              rax, 99
                                                                                        je    proc_gedsub_ω
                                                                                        jmp   xchain00085_n7_α
xchain00085_n6_β:
                        inc              qword ptr [rbp + 80]
                                                                                        jmp   .Lx00088_0
xchain00085_n7_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 64]
                        mov              rdx, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                                                                                        jmp   xchain00085_n8_α
# IR_BOUND
xchain00085_n8_α:
                        mov              qword ptr [rbp + 160], rsp
                                                                                        jmp   xchain00085_n9_α
# IR_DISJUNCTION_NARY
xchain00085_n9_α:
                        mov              qword ptr [rbp + 208], 0
                        mov              qword ptr [rbp + 216], 0
                        mov              dword ptr [rbp + 224], 0
                                                                                        jmp   xchain00085_n11_α
xchain00085_n9_as:
                        mov              eax, dword ptr [rbp + 224]
                        cmp              eax, 0
                                                                                        jne   .Lx00089_0
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   xchain00085_n10_α
.Lx00089_0:
                                                                                        jmp   xchain00085_n10_α
xchain00085_n9_β:
                        mov              eax, dword ptr [rbp + 224]
                                                                                        jmp   xchain00085_n12_β
xchain00085_n9_af:
                        add              dword ptr [rbp + 224], 1
                        mov              eax, dword ptr [rbp + 224]
                                                                                        jmp   xchain00085_n10_α
# IR_UNMARK
xchain00085_n10_α:
                        mov              rsp, qword ptr [rbp + 160]
                                                                                        jmp   xchain00085_n6_β
# IR_VAR
xchain00085_n11_α:
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   xchain00085_n13_α
xchain00085_n11_β:
                                                                                        jmp   xchain00085_n9_af
# IR_DISJUNCTION_NARY
xchain00085_n12_α:
                        mov              qword ptr [rbp + 240], 0
                        mov              qword ptr [rbp + 248], 0
                        mov              dword ptr [rbp + 256], 0
                                                                                        jmp   xchain00085_n14_α
xchain00085_n12_as:
                        mov              eax, dword ptr [rbp + 256]
                        cmp              eax, 0
                                                                                        jne   .Lx00090_0
                                                                                        jmp   xchain00085_n9_as
.Lx00090_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00090_1
                                                                                        jmp   xchain00085_n9_as
.Lx00090_1:
                                                                                        jmp   xchain00085_n9_as
xchain00085_n12_β:
                        mov              eax, dword ptr [rbp + 256]
                        cmp              eax, 0
                                                                                        je    xchain00085_n15_β
                                                                                        jmp   xchain00085_n10_α
xchain00085_n12_af:
                        add              dword ptr [rbp + 256], 1
                        mov              eax, dword ptr [rbp + 256]
                        cmp              eax, 1
                                                                                        je    xchain00085_n16_α
                                                                                        jmp   xchain00085_n10_α
# IR_FIELD_GET
xchain00085_n13_α:
                        mov              rdi, qword ptr [rip + .Lx00091_0]
                        mov              rsi, qword ptr [rbp + 736]
                        mov              rdx, qword ptr [rbp + 744]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    xchain00085_n9_af
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   xchain00085_n17_α
.Lx00091_0:
                        .quad            .Lx00091_0_s
.Lx00091_0_s:
                        .string          "tag"
# IR_VAR
xchain00085_n14_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   xchain00085_n18_α
xchain00085_n14_β:
                                                                                        jmp   xchain00085_n12_af
# IR_CALL_VALUE invoke through a runtime callee value (proc/string/int); a jmp-entry GENERATOR callee takes the SPINE transfer (bcps_spine_gen_arm contract: prep resolves+stages+opens, wires in rcx/rdx, once-flag in the granted handle cell [zeta+off+16+n*16], beta resumes jmp [rsp]); det/builtin/unresolved callees fall back to the one-shot C window whose handle parks in the same cell (values 0/ptr, disjoint from the spine flag 1)
xchain00085_n15_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 328], rax
                        mov              qword ptr [rbp + 336], 0
                        mov              rdi, qword ptr [rbp + 272]
                        mov              rsi, qword ptr [rbp + 280]
                        mov              rdx, qword ptr [rbp + 320]
                        mov              rcx, qword ptr [rbp + 328]
                        call             rt_call_apply_spine_prep@PLT
                        test             rax, rax
                                                                                        je    .Lx00092_7
                        lea              rcx, [rip + .Lx00092_3]
                        lea              rdx, [rip + .Lx00092_4]
                                                                                        jmp   rax
.Lx00092_3:
                        mov              qword ptr [rbp + 344], rsp
                        mov              rax, qword ptr [rbp + 336]
                        test             rax, rax
                                                                                        jne   .Lx00092_5
                        mov              qword ptr [rbp + 336], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx00092_2
.Lx00092_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx00092_2
.Lx00092_4:
                        mov              qword ptr [rbp + 344], rsp
                        mov              rax, qword ptr [rbp + 336]
                        test             rax, rax
                                                                                        jne   .Lx00092_6
                        mov              qword ptr [rbp + 336], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx00092_2
.Lx00092_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx00092_2
.Lx00092_7:
                        mov              rdi, qword ptr [rbp + 272]
                        mov              rsi, qword ptr [rbp + 280]
                        mov              rdx, qword ptr [rbp + 320]
                        mov              rcx, qword ptr [rbp + 328]
                        lea              r8, [rbp + 336]
                        call             rt_call_apply_gen_h@PLT
.Lx00092_2:
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 99
                                                                                        je    xchain00085_n10_α
                                                                                        jmp   xchain00085_n19_α
xchain00085_n15_β:
                        mov              rax, qword ptr [rbp + 336]
                        cmp              rax, 1
                                                                                        jne   .Lx00092_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 344]
                                                                                        jmp   qword ptr [rsp]
.Lx00092_8:
                        lea              rdi, [rbp + 336]
                        call             rt_call_value_resume_h@PLT
                        cmp              eax, 99
                                                                                        je    xchain00085_n10_α
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   xchain00085_n19_α
                                                                                        jmp   xchain00085_n10_α
# IR_VAR
xchain00085_n16_α:
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   xchain00085_n20_α
xchain00085_n16_β:
                                                                                        jmp   xchain00085_n10_α
# IR_VAR
xchain00085_n17_α:
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   xchain00085_n21_α
# IR_UNOP
xchain00085_n18_α:
                        mov              rdi, qword ptr [rbp + 32]
                        mov              rsi, qword ptr [rbp + 40]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   xchain00085_n22_α
# IR_SUSPEND yield+resume
xchain00085_n19_α:
                        lea              rax, [rip + xchain00085_n19_β]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_gedsub_γ
xchain00085_n19_β:
                                                                                        jmp   xchain00085_n15_β
# IR_SUSPEND yield+resume
xchain00085_n20_α:
                        lea              rax, [rip + xchain00085_n20_β]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_gedsub_γ
xchain00085_n20_β:
                                                                                        jmp   xchain00085_n12_β
xchain00085_n21_α:
# IR_BINOP_TEST
                        mov              rdi, qword ptr [rbp + 704]
                        mov              rsi, qword ptr [rbp + 712]
                        mov              rdx, qword ptr [rbp + 976]
                        mov              rcx, qword ptr [rbp + 984]
                        mov              r8d, 16
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    xchain00085_n9_af
                        mov              rdi, qword ptr [rbp + 976]
                        mov              rsi, qword ptr [rbp + 984]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   xchain00085_n12_α
# IR_LIT_INTEGER
xchain00085_n22_α:
                        mov              qword ptr [rbp + 608], 6
                        mov              rax, qword ptr [rip + .Lx00093_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   xchain00085_n23_α
.Lx00093_0:
                        .quad            0
xchain00085_n23_α:
# IR_BINOP_TEST
                        mov              eax, dword ptr [rbp + 544]
                        cmp              eax, 100
                                                                                        je    .Lx00094_0
                        mov              eax, dword ptr [rbp + 608]
                        cmp              eax, 100
                                                                                        je    .Lx00094_0
                        mov              eax, dword ptr [rbp + 544]
                        cmp              eax, 6
                                                                                        jne   .Lx00094_2
                        mov              eax, dword ptr [rbp + 608]
                        cmp              eax, 6
                                                                                        jne   .Lx00094_2
.Lx00094_1:
                        mov              rax, qword ptr [rbp + 552]
                        mov              rcx, qword ptr [rbp + 616]
                        cmp              rax, rcx
                                                                                        jle   xchain00085_n12_af
                        mov              rcx, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 512], rcx
                        mov              rcx, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 520], rcx
                                                                                        jmp   xchain00085_n24_α
.Lx00094_0:
                        mov              rdi, qword ptr [rbp + 544]
                        mov              rsi, qword ptr [rbp + 552]
                        mov              rdx, qword ptr [rbp + 608]
                        mov              rcx, qword ptr [rbp + 616]
                        mov              r8d, 7
                        lea              r9, [rbp + 512]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx00094_1
                        cmp              eax, 1
                                                                                        je    xchain00085_n12_af
                                                                                        jmp   xchain00085_n24_α
.Lx00094_2:
                        mov              rdi, qword ptr [rbp + 544]
                        mov              rsi, qword ptr [rbp + 552]
                        mov              rdx, qword ptr [rbp + 608]
                        mov              rcx, qword ptr [rbp + 616]
                        mov              r8d, 7
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    xchain00085_n12_af
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   xchain00085_n24_α
# IR_LIT_STRING
xchain00085_n24_α:
                        mov              qword ptr [rbp + 272], 1
                        mov              rax, qword ptr [rip + .Lx00095_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   xchain00085_n25_α
.Lx00095_0:
                        .quad            .Lx00095_0_s
.Lx00095_0_s:
                        .string          "gedsub"
# IR_VAR
xchain00085_n25_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   xchain00085_n26_α
# IR_VAR
xchain00085_n26_α:
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   xchain00085_n27_α
xchain00085_n27_α:
# BOX IR_CALL push(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
.Lrkfn401:              .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn401]
                        lea              rsi, [rbp + 400]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    xchain00085_n10_α
                                                                                        jmp   xchain00085_n15_α
xchain00085_n27_β:
                                                                                        jmp   xchain00085_n10_α
proc_gedsub_res:
                        add              rsp, 8
                        pop              rbp
proc_gedsub_β:
                                                                                        jmp   qword ptr [rbp + 928]
proc_gedsub_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_gedsub_res]
                        push             rax
                        mov              rax, [rbp + 1000]
                        mov              rbp, [rbp + 1016]
                                                                                        jmp   rax
proc_gedsub_ω:
                        mov              rax, [rbp + 1008]
                        lea              rsp, [rbp + 1024]
                        mov              rbp, [rbp + 1016]
                                                                                        jmp   rax
                        .globl           proc_gedval_α
proc_gedval_α:
#=======================================================================================================================
                        .global          proc_gedval_α
                        .global          proc_gedval_β
                        .global          proc_gedval_γ
                        .global          proc_gedval_ω
                        sub              rsp, 272
                        mov              [rsp + 248], rcx
                        mov              [rsp + 256], rdx
                        mov              [rsp + 264], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 232], rsp
                        mov              rdi, rsp
                        mov              esi, 208
                        mov              edx, 240
                        call             rt_jmp_frame_lexprep2@PLT
proc_gedval_α_body:
                        lea              rax, [rip + xchain00096_n4_β]
                        mov              qword ptr [rbp + 208], rax
# IR_LIT_STRING
xchain00096_n0_α:
                        mov              qword ptr [rbp + 64], 1
                        mov              rax, qword ptr [rip + .Lx00097_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   xchain00096_n1_α
.Lx00097_0:
                        .quad            .Lx00097_0_s
.Lx00097_0_s:
                        .string          "gedsub"
# IR_VAR
xchain00096_n1_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   xchain00096_n2_α
# IR_CALL_VALUE invoke through a runtime callee value (proc/string/int); a jmp-entry GENERATOR callee takes the SPINE transfer (bcps_spine_gen_arm contract: prep resolves+stages+opens, wires in rcx/rdx, once-flag in the granted handle cell [zeta+off+16+n*16], beta resumes jmp [rsp]); det/builtin/unresolved callees fall back to the one-shot C window whose handle parks in the same cell (values 0/ptr, disjoint from the spine flag 1)
xchain00096_n2_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 120], rax
                        mov              qword ptr [rbp + 128], 0
                        mov              rdi, qword ptr [rbp + 64]
                        mov              rsi, qword ptr [rbp + 72]
                        mov              rdx, qword ptr [rbp + 112]
                        mov              rcx, qword ptr [rbp + 120]
                        call             rt_call_apply_spine_prep@PLT
                        test             rax, rax
                                                                                        je    .Lx00098_7
                        lea              rcx, [rip + .Lx00098_3]
                        lea              rdx, [rip + .Lx00098_4]
                                                                                        jmp   rax
.Lx00098_3:
                        mov              qword ptr [rbp + 136], rsp
                        mov              rax, qword ptr [rbp + 128]
                        test             rax, rax
                                                                                        jne   .Lx00098_5
                        mov              qword ptr [rbp + 128], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx00098_2
.Lx00098_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx00098_2
.Lx00098_4:
                        mov              qword ptr [rbp + 136], rsp
                        mov              rax, qword ptr [rbp + 128]
                        test             rax, rax
                                                                                        jne   .Lx00098_6
                        mov              qword ptr [rbp + 128], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx00098_2
.Lx00098_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx00098_2
.Lx00098_7:
                        mov              rdi, qword ptr [rbp + 64]
                        mov              rsi, qword ptr [rbp + 72]
                        mov              rdx, qword ptr [rbp + 112]
                        mov              rcx, qword ptr [rbp + 120]
                        lea              r8, [rbp + 128]
                        call             rt_call_apply_gen_h@PLT
.Lx00098_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    proc_gedval_ω
                                                                                        jmp   xchain00096_n3_α
xchain00096_n2_β:
                        mov              rax, qword ptr [rbp + 128]
                        cmp              rax, 1
                                                                                        jne   .Lx00098_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 136]
                                                                                        jmp   qword ptr [rsp]
.Lx00098_8:
                        lea              rdi, [rbp + 128]
                        call             rt_call_value_resume_h@PLT
                        cmp              eax, 99
                                                                                        je    proc_gedval_ω
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   xchain00096_n3_α
                                                                                        jmp   proc_gedval_ω
# IR_FIELD_GET
xchain00096_n3_α:
                        mov              rdi, qword ptr [rip + .Lx00099_0]
                        mov              rsi, qword ptr [rbp + 96]
                        mov              rdx, qword ptr [rbp + 104]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    proc_gedval_ω
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                                                                                        jmp   xchain00096_n4_α
.Lx00099_0:
                        .quad            .Lx00099_0_s
.Lx00099_0_s:
                        .string          "data"
# IR_SUSPEND yield+resume
xchain00096_n4_α:
                        lea              rax, [rip + xchain00096_n4_β]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_gedval_γ
xchain00096_n4_β:
                                                                                        jmp   xchain00096_n2_β
proc_gedval_res:
                        add              rsp, 8
                        pop              rbp
proc_gedval_β:
                                                                                        jmp   qword ptr [rbp + 208]
proc_gedval_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_gedval_res]
                        push             rax
                        mov              rax, [rbp + 248]
                        mov              rbp, [rbp + 264]
                                                                                        jmp   rax
proc_gedval_ω:
                        mov              rax, [rbp + 256]
                        lea              rsp, [rbp + 272]
                        mov              rbp, [rbp + 264]
                                                                                        jmp   rax
                        .globl           proc_gedref_α
proc_gedref_α:
#=======================================================================================================================
                        .global          proc_gedref_α
                        .global          proc_gedref_β
                        .global          proc_gedref_γ
                        .global          proc_gedref_ω
                        sub              rsp, 304
                        mov              [rsp + 280], rcx
                        mov              [rsp + 288], rdx
                        mov              [rsp + 296], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 264], rsp
                        mov              rdi, rsp
                        mov              esi, 240
                        mov              edx, 272
                        call             rt_jmp_frame_lexprep2@PLT
proc_gedref_α_body:
                        lea              rax, [rip + xchain00100_n5_β]
                        mov              qword ptr [rbp + 240], rax
# IR_LIT_STRING
xchain00100_n0_α:
                        mov              qword ptr [rbp + 96], 1
                        mov              rax, qword ptr [rip + .Lx00101_0]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   xchain00100_n1_α
.Lx00101_0:
                        .quad            .Lx00101_0_s
.Lx00101_0_s:
                        .string          "gedsub"
# IR_VAR
xchain00100_n1_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   xchain00100_n2_α
# IR_CALL_VALUE invoke through a runtime callee value (proc/string/int); a jmp-entry GENERATOR callee takes the SPINE transfer (bcps_spine_gen_arm contract: prep resolves+stages+opens, wires in rcx/rdx, once-flag in the granted handle cell [zeta+off+16+n*16], beta resumes jmp [rsp]); det/builtin/unresolved callees fall back to the one-shot C window whose handle parks in the same cell (values 0/ptr, disjoint from the spine flag 1)
xchain00100_n2_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 152], rax
                        mov              qword ptr [rbp + 160], 0
                        mov              rdi, qword ptr [rbp + 96]
                        mov              rsi, qword ptr [rbp + 104]
                        mov              rdx, qword ptr [rbp + 144]
                        mov              rcx, qword ptr [rbp + 152]
                        call             rt_call_apply_spine_prep@PLT
                        test             rax, rax
                                                                                        je    .Lx00102_7
                        lea              rcx, [rip + .Lx00102_3]
                        lea              rdx, [rip + .Lx00102_4]
                                                                                        jmp   rax
.Lx00102_3:
                        mov              qword ptr [rbp + 168], rsp
                        mov              rax, qword ptr [rbp + 160]
                        test             rax, rax
                                                                                        jne   .Lx00102_5
                        mov              qword ptr [rbp + 160], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx00102_2
.Lx00102_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx00102_2
.Lx00102_4:
                        mov              qword ptr [rbp + 168], rsp
                        mov              rax, qword ptr [rbp + 160]
                        test             rax, rax
                                                                                        jne   .Lx00102_6
                        mov              qword ptr [rbp + 160], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx00102_2
.Lx00102_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx00102_2
.Lx00102_7:
                        mov              rdi, qword ptr [rbp + 96]
                        mov              rsi, qword ptr [rbp + 104]
                        mov              rdx, qword ptr [rbp + 144]
                        mov              rcx, qword ptr [rbp + 152]
                        lea              r8, [rbp + 160]
                        call             rt_call_apply_gen_h@PLT
.Lx00102_2:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    proc_gedref_ω
                                                                                        jmp   xchain00100_n3_α
xchain00100_n2_β:
                        mov              rax, qword ptr [rbp + 160]
                        cmp              rax, 1
                                                                                        jne   .Lx00102_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 168]
                                                                                        jmp   qword ptr [rsp]
.Lx00102_8:
                        lea              rdi, [rbp + 160]
                        call             rt_call_value_resume_h@PLT
                        cmp              eax, 99
                                                                                        je    proc_gedref_ω
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                                                                                        jmp   xchain00100_n3_α
                                                                                        jmp   proc_gedref_ω
# IR_FIELD_GET
xchain00100_n3_α:
                        mov              rdi, qword ptr [rip + .Lx00103_0]
                        mov              rsi, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    proc_gedref_ω
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                                                                                        jmp   xchain00100_n4_α
.Lx00103_0:
                        .quad            .Lx00103_0_s
.Lx00103_0_s:
                        .string          "ref"
# IR_UNOP
xchain00100_n4_α:
                        mov              eax, dword ptr [rbp + 64]
                        cmp              eax, 99
                                                                                        je    xchain00100_n2_β
                        cmp              eax, 0
                                                                                        je    xchain00100_n2_β
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   xchain00100_n5_α
# IR_SUSPEND yield+resume
xchain00100_n5_α:
                        lea              rax, [rip + xchain00100_n5_β]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_gedref_γ
xchain00100_n5_β:
                                                                                        jmp   xchain00100_n2_β
proc_gedref_res:
                        add              rsp, 8
                        pop              rbp
proc_gedref_β:
                                                                                        jmp   qword ptr [rbp + 240]
proc_gedref_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_gedref_res]
                        push             rax
                        mov              rax, [rbp + 280]
                        mov              rbp, [rbp + 296]
                                                                                        jmp   rax
proc_gedref_ω:
                        mov              rax, [rbp + 288]
                        lea              rsp, [rbp + 304]
                        mov              rbp, [rbp + 296]
                                                                                        jmp   rax
                        .globl           proc_gedfnf_α
proc_gedfnf_α:
#=======================================================================================================================
                        .global          proc_gedfnf_α
                        .global          proc_gedfnf_β
                        .global          proc_gedfnf_γ
                        .global          proc_gedfnf_ω
                        sub              rsp, 1680
                        mov              [rsp + 1656], rcx
                        mov              [rsp + 1664], rdx
                        mov              [rsp + 1672], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 1592], rsp
                        mov              rdi, rsp
                        mov              esi, 1584
                        mov              edx, 1648
                        call             rt_jmp_frame_lexprep2@PLT
proc_gedfnf_α_body:
# IR_DISJUNCTION_NARY
xchain00104_n0_α:
                        mov              qword ptr [rbp + 1408], 0
                        mov              qword ptr [rbp + 1416], 0
                        mov              dword ptr [rbp + 1424], 0
                                                                                        jmp   xchain00104_n2_α
xchain00104_n0_as:
                        mov              eax, dword ptr [rbp + 1424]
                        cmp              eax, 0
                                                                                        jne   .Lx00105_0
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 1416], rax
                                                                                        jmp   xchain00104_n1_α
.Lx00105_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00105_1
                                                                                        jmp   xchain00104_n1_α
.Lx00105_1:
                                                                                        jmp   xchain00104_n1_α
xchain00104_n0_β:
                        mov              eax, dword ptr [rbp + 1424]
                        cmp              eax, 0
                                                                                        je    xchain00104_n3_β
                                                                                        jmp   xchain00104_n0_af
xchain00104_n0_af:
                        add              dword ptr [rbp + 1424], 1
                        mov              eax, dword ptr [rbp + 1424]
                        cmp              eax, 1
                                                                                        je    proc_gedfnf_ω
                                                                                        jmp   xchain00104_n4_α
xchain00104_n1_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 1408]
                        mov              rdx, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                                                                                        jmp   xchain00104_n4_α
# IR_VAR
xchain00104_n2_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1528], rax
                                                                                        jmp   xchain00104_n5_α
xchain00104_n2_β:
                                                                                        jmp   xchain00104_n0_af
xchain00104_n3_α:
                        mov              qword ptr [rbp + 1488], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00106_20
                        mov              rax, qword ptr [rbp + 1520]
                        mov              rdx, qword ptr [rbp + 1528]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx00106_21
.Lx00106_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1520]
                        mov              rdx, qword ptr [rbp + 1528]
                        call             rt_arg_stage@PLT
.Lx00106_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00106_22
                        mov              rax, qword ptr [rbp + 1552]
                        mov              rdx, qword ptr [rbp + 1560]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx00106_23
.Lx00106_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1552]
                        mov              rdx, qword ptr [rbp + 1560]
                        call             rt_arg_stage@PLT
.Lx00106_23:
                        mov              edi, 7
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx00106_1
                        lea              rcx, [rip + .Lx00106_3]
                        lea              rdx, [rip + .Lx00106_4]
                                                                                        jmp   rax
.Lx00106_3:
                        mov              qword ptr [rbp + 1496], rsp
                        mov              rax, qword ptr [rbp + 1488]
                        test             rax, rax
                                                                                        jne   .Lx00106_5
                        mov              qword ptr [rbp + 1488], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx00106_2
.Lx00106_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx00106_2
.Lx00106_4:
                        mov              rax, qword ptr [rbp + 1488]
                        test             rax, rax
                                                                                        jne   .Lx00106_6
                        mov              qword ptr [rbp + 1488], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx00106_2
.Lx00106_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx00106_2
.Lx00106_1:
                        call             rt_faildescr@PLT
.Lx00106_2:
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                        cmp              eax, 99
                                                                                        je    xchain00104_n0_af
                                                                                        jmp   xchain00104_n0_as
xchain00104_n3_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1496]
                                                                                        jmp   qword ptr [rsp]
.Lx00106_0:
                        .quad            .Lx00106_0_s
.Lx00106_0_s:
                        .string          "gedval"
# IR_VAR
xchain00104_n4_α:
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 1368], rax
                                                                                        jmp   xchain00104_n6_α
# IR_LIT_STRING
xchain00104_n5_α:
                        mov              qword ptr [rbp + 1552], 1
                        mov              rax, qword ptr [rip + .Lx00107_0]
                        mov              qword ptr [rbp + 1560], rax
                                                                                        jmp   xchain00104_n3_α
.Lx00107_0:
                        .quad            .Lx00107_0_s
.Lx00107_0_s:
                        .string          "NAME"
# IR_GEN_SCAN
xchain00104_n6_α:
                        mov              rdi, qword ptr [rbp + 1360]
                        mov              rsi, qword ptr [rbp + 1368]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   xchain00104_n8_α
# IR_DISJUNCTION_NARY
xchain00104_n7_α:
                        mov              qword ptr [rbp + 352], 0
                        mov              qword ptr [rbp + 360], 0
                        mov              dword ptr [rbp + 368], 0
                                                                                        jmp   xchain00104_n10_α
xchain00104_n7_as:
                        mov              eax, dword ptr [rbp + 368]
                        cmp              eax, 0
                                                                                        jne   .Lx00108_0
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   xchain00104_n9_α
.Lx00108_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00108_1
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   xchain00104_n9_α
.Lx00108_1:
                                                                                        jmp   xchain00104_n9_α
xchain00104_n7_β:
                        mov              eax, dword ptr [rbp + 368]
                        cmp              eax, 0
                                                                                        je    xchain00104_n9_α
                                                                                        jmp   xchain00104_n9_α
xchain00104_n7_af:
                        add              dword ptr [rbp + 368], 1
                        mov              eax, dword ptr [rbp + 368]
                        cmp              eax, 1
                                                                                        je    xchain00104_n11_α
                                                                                        jmp   xchain00104_n9_α
# IR_DISJUNCTION_NARY
xchain00104_n8_α:
                        mov              qword ptr [rbp + 1120], 0
                        mov              qword ptr [rbp + 1128], 0
                        mov              dword ptr [rbp + 1136], 0
                                                                                        jmp   xchain00104_n15_α
xchain00104_n8_as:
                        mov              eax, dword ptr [rbp + 1136]
                        cmp              eax, 0
                                                                                        jne   .Lx00109_0
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   xchain00104_n14_α
.Lx00109_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00109_1
                                                                                        jmp   xchain00104_n14_α
.Lx00109_1:
                                                                                        jmp   xchain00104_n14_α
xchain00104_n8_β:
                        mov              eax, dword ptr [rbp + 1136]
                        cmp              eax, 0
                                                                                        je    xchain00104_n16_β
                                                                                        jmp   xchain00104_n8_af
xchain00104_n8_af:
                        add              dword ptr [rbp + 1136], 1
                        mov              eax, dword ptr [rbp + 1136]
                        cmp              eax, 1
                                                                                        je    xchain00104_n17_α
                                                                                        jmp   xchain00104_n22_α
# IR_VAR
xchain00104_n9_α:
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   xchain00104_n19_α
# IR_VAR
xchain00104_n10_α:
                        mov              rax, qword ptr [rbp + 1616]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 1624]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   xchain00104_n21_α
xchain00104_n10_β:
                                                                                        jmp   xchain00104_n7_af
# IR_VAR
xchain00104_n11_α:
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   xchain00104_n13_α
xchain00104_n11_β:
                                                                                        jmp   xchain00104_n9_α
xchain00104_n12_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 400]
                        mov              rdx, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   xchain00104_n7_as
xchain00104_n12_β:
                                                                                        jmp   xchain00104_n9_α
xchain00104_n13_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 704]
                        mov              rdx, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   xchain00104_n7_as
xchain00104_n13_β:
                                                                                        jmp   xchain00104_n9_α
xchain00104_n14_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 1120]
                        mov              rdx, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                                                                                        jmp   xchain00104_n22_α
# IR_LIT_CHARSET
xchain00104_n15_α:
                        mov              qword ptr [rbp + 1264], 1
                        mov              dword ptr [rbp + 1268], -1
                        mov              rax, qword ptr [rip + .Lx00110_0]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   xchain00104_n16_α
xchain00104_n15_β:
                                                                                        jmp   xchain00104_n8_af
.Lx00110_0:
                        .quad            .Lx00110_0_s
.Lx00110_0_s:
                        .string          "/"
# IR_SCAN_UPTO
xchain00104_n16_α:
                        mov              qword ptr [rbp + 1248], r14
.Lx00111_0:
                        mov              rax, qword ptr [rbp + 1248]
                        cmp              rax, r15
                                                                                        jge   xchain00104_n8_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx00111_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx00111_1
                        mov              qword ptr [rbp + 1232], 6
                        add              rax, 1
                        mov              qword ptr [rbp + 1240], rax
                                                                                        jmp   xchain00104_n23_α
.Lx00111_1:
                        inc              qword ptr [rbp + 1248]
                                                                                        jmp   .Lx00111_0
xchain00104_n16_β:
                        inc              qword ptr [rbp + 1248]
                                                                                        jmp   .Lx00111_0
.Lx00111_2:
                        .quad            .Lx00111_2_s
.Lx00111_2_s:
                        .string          "/"
# IR_LIT_INTEGER
xchain00104_n17_α:
                        mov              qword ptr [rbp + 1328], 6
                        mov              rax, qword ptr [rip + .Lx00112_0]
                        mov              qword ptr [rbp + 1336], rax
                                                                                        jmp   xchain00104_n24_α
xchain00104_n17_β:
                                                                                        jmp   proc_gedfnf_ω
.Lx00112_0:
                        .quad            0
xchain00104_n18_α:
# BOX IR_CALL trim(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1200] -> [zr+1168]
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1176], rax
                        .section         .rodata
.Lrkfn452:              .string          "trim"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn452]
                        lea              rsi, [rbp + 1168]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        cmp              eax, 99
                                                                                        je    xchain00104_n16_β
                                                                                        jmp   xchain00104_n8_as
xchain00104_n18_β:
                                                                                        jmp   xchain00104_n16_β
# IR_LIT_STRING
xchain00104_n19_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              rax, qword ptr [rip + .Lx00113_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   xchain00104_n25_α
.Lx00113_0:
                        .quad            .Lx00113_0_s
.Lx00113_0_s:
                        .string          " "
# IR_VAR
xchain00104_n20_α:
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   xchain00104_n26_α
# IR_UNOP
xchain00104_n21_α:
                        mov              rdi, qword ptr [rbp + 1616]
                        mov              rsi, qword ptr [rbp + 1624]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   xchain00104_n27_α
# IR_LIT_STRING
xchain00104_n22_α:
                        mov              qword ptr [rbp + 1072], 1
                        mov              rax, qword ptr [rip + .Lx00114_0]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   xchain00104_n28_α
.Lx00114_0:
                        .quad            .Lx00114_0_s
.Lx00114_0_s:
                        .string          "/"
# IR_SCAN_TAB
xchain00104_n23_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 1240]
                        cmp              rax, 1
                                                                                        jge   .Lx00115_0
                        add              rax, r15
                        add              rax, 1
.Lx00115_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00115_239
                        add              rsp, 16
                                                                                        jmp   xchain00104_n16_β
.Lx00115_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00115_240
                        add              rsp, 16
                                                                                        jmp   xchain00104_n16_β
.Lx00115_240:
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
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                                                                                        jmp   xchain00104_n18_α
xchain00104_n23_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   xchain00104_n16_β
# IR_SCAN_TAB
xchain00104_n24_α:
                        sub              rsp, 16
                        mov              rax, 0
                        cmp              rax, 1
                                                                                        jge   .Lx00116_0
                        add              rax, r15
                        add              rax, 1
.Lx00116_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00116_239
                        add              rsp, 16
                                                                                        jmp   proc_gedfnf_ω
.Lx00116_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00116_240
                        add              rsp, 16
                                                                                        jmp   proc_gedfnf_ω
.Lx00116_240:
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
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                                                                                        jmp   xchain00104_n29_α
xchain00104_n24_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   proc_gedfnf_ω
# IR_VAR
xchain00104_n25_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   xchain00104_n30_α
# IR_RETURN
xchain00104_n26_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_gedfnf_γ
# IR_LIT_INTEGER
xchain00104_n27_α:
                        mov              qword ptr [rbp + 656], 6
                        mov              rax, qword ptr [rip + .Lx00117_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   xchain00104_n31_α
.Lx00117_0:
                        .quad            0
# IR_SCAN_MATCH
xchain00104_n28_α:
                        sub              rsp, 16
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1
                                                                                        jge   .Lx00118_239
                        add              rsp, 16
                                                                                        jmp   xchain00104_n33_α
.Lx00118_239:
                        mov              rdi, qword ptr [rip + .Lx00118_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 1
                        push             r10
                        call             memcmp@PLT
                        pop              r10
                        test             eax, eax
                                                                                        je    .Lx00118_240
                        add              rsp, 16
                                                                                        jmp   xchain00104_n33_α
.Lx00118_240:
                        mov              qword ptr [rbp + 1040], 6
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   xchain00104_n32_α
.Lx00118_0:
                        .quad            .Lx00118_0_s
.Lx00118_0_s:
                        .string          "/"
# IR_RETURN
xchain00104_n29_α:
                        mov              rax, qword ptr [rbp + 1296]
                        mov              rdx, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_gedfnf_γ
# IR_LIT_STRING
xchain00104_n30_α:
                        mov              qword ptr [rbp + 320], 1
                        mov              rax, qword ptr [rip + .Lx00119_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   xchain00104_n34_α
.Lx00119_0:
                        .quad            .Lx00119_0_s
.Lx00119_0_s:
                        .string          "TITL"
xchain00104_n31_α:
# IR_BINOP_TEST
                        mov              eax, dword ptr [rbp + 592]
                        cmp              eax, 100
                                                                                        je    .Lx00120_0
                        mov              eax, dword ptr [rbp + 656]
                        cmp              eax, 100
                                                                                        je    .Lx00120_0
                        mov              eax, dword ptr [rbp + 592]
                        cmp              eax, 6
                                                                                        jne   .Lx00120_2
                        mov              eax, dword ptr [rbp + 656]
                        cmp              eax, 6
                                                                                        jne   .Lx00120_2
.Lx00120_1:
                        mov              rax, qword ptr [rbp + 600]
                        mov              rcx, qword ptr [rbp + 664]
                        cmp              rax, rcx
                                                                                        jle   xchain00104_n7_af
                        mov              rcx, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 560], rcx
                        mov              rcx, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 568], rcx
                                                                                        jmp   xchain00104_n35_α
.Lx00120_0:
                        mov              rdi, qword ptr [rbp + 592]
                        mov              rsi, qword ptr [rbp + 600]
                        mov              rdx, qword ptr [rbp + 656]
                        mov              rcx, qword ptr [rbp + 664]
                        mov              r8d, 7
                        lea              r9, [rbp + 560]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx00120_1
                        cmp              eax, 1
                                                                                        je    xchain00104_n7_af
                                                                                        jmp   xchain00104_n35_α
.Lx00120_2:
                        mov              rdi, qword ptr [rbp + 592]
                        mov              rsi, qword ptr [rbp + 600]
                        mov              rdx, qword ptr [rbp + 656]
                        mov              rcx, qword ptr [rbp + 664]
                        mov              r8d, 7
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    xchain00104_n7_af
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   xchain00104_n35_α
# IR_SCAN_TAB
xchain00104_n32_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 1048]
                        cmp              rax, 1
                                                                                        jge   .Lx00121_0
                        add              rax, r15
                        add              rax, 1
.Lx00121_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00121_239
                        add              rsp, 16
                                                                                        jmp   xchain00104_n33_α
.Lx00121_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00121_240
                        add              rsp, 16
                                                                                        jmp   xchain00104_n33_α
.Lx00121_240:
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
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   xchain00104_n33_α
xchain00104_n32_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   xchain00104_n33_α
# IR_DISJUNCTION_NARY
xchain00104_n33_α:
                        mov              qword ptr [rbp + 880], 0
                        mov              qword ptr [rbp + 888], 0
                        mov              dword ptr [rbp + 896], 0
                                                                                        jmp   xchain00104_n37_α
xchain00104_n33_as:
                        mov              eax, dword ptr [rbp + 896]
                        cmp              eax, 0
                                                                                        jne   .Lx00122_0
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   xchain00104_n36_α
.Lx00122_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00122_1
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   xchain00104_n36_α
.Lx00122_1:
                                                                                        jmp   xchain00104_n36_α
xchain00104_n33_β:
                        mov              eax, dword ptr [rbp + 896]
                        cmp              eax, 0
                                                                                        je    xchain00104_n38_β
                                                                                        jmp   xchain00104_n33_af
xchain00104_n33_af:
                        add              dword ptr [rbp + 896], 1
                        mov              eax, dword ptr [rbp + 896]
                        cmp              eax, 1
                                                                                        je    xchain00104_n39_α
                                                                                        jmp   xchain00104_n50_α
xchain00104_n34_α:
                        mov              qword ptr [rbp + 256], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00123_20
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx00123_21
.Lx00123_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        call             rt_arg_stage@PLT
.Lx00123_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00123_22
                        mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx00123_23
.Lx00123_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        call             rt_arg_stage@PLT
.Lx00123_23:
                        mov              edi, 7
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx00123_1
                        lea              rcx, [rip + .Lx00123_3]
                        lea              rdx, [rip + .Lx00123_4]
                                                                                        jmp   rax
.Lx00123_3:
                        mov              qword ptr [rbp + 264], rsp
                        mov              rax, qword ptr [rbp + 256]
                        test             rax, rax
                                                                                        jne   .Lx00123_5
                        mov              qword ptr [rbp + 256], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx00123_2
.Lx00123_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx00123_2
.Lx00123_4:
                        mov              rax, qword ptr [rbp + 256]
                        test             rax, rax
                                                                                        jne   .Lx00123_6
                        mov              qword ptr [rbp + 256], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx00123_2
.Lx00123_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx00123_2
.Lx00123_1:
                        call             rt_faildescr@PLT
.Lx00123_2:
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    xchain00104_n20_α
                                                                                        jmp   xchain00104_n40_α
xchain00104_n34_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 264]
                                                                                        jmp   qword ptr [rsp]
.Lx00123_0:
                        .quad            .Lx00123_0_s
.Lx00123_0_s:
                        .string          "gedval"
# IR_VAR
xchain00104_n35_α:
                        mov              rax, qword ptr [rbp + 1616]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 1624]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   xchain00104_n41_α
# IR_SCAN_TAB
xchain00104_n36_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 888]
                        cmp              rax, 1
                                                                                        jge   .Lx00124_0
                        add              rax, r15
                        add              rax, 1
.Lx00124_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00124_239
                        add              rsp, 16
                                                                                        jmp   xchain00104_n33_β
.Lx00124_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00124_240
                        add              rsp, 16
                                                                                        jmp   xchain00104_n33_β
.Lx00124_240:
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
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   xchain00104_n42_α
xchain00104_n36_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   xchain00104_n33_β
# IR_LIT_CHARSET
xchain00104_n37_α:
                        mov              qword ptr [rbp + 944], 1
                        mov              dword ptr [rbp + 948], -1
                        mov              rax, qword ptr [rip + .Lx00125_0]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   xchain00104_n38_α
xchain00104_n37_β:
                                                                                        jmp   xchain00104_n33_af
.Lx00125_0:
                        .quad            .Lx00125_0_s
.Lx00125_0_s:
                        .string          "/"
# IR_SCAN_UPTO
xchain00104_n38_α:
                        mov              qword ptr [rbp + 928], r14
.Lx00126_0:
                        mov              rax, qword ptr [rbp + 928]
                        cmp              rax, r15
                                                                                        jge   xchain00104_n33_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx00126_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx00126_1
                        mov              qword ptr [rbp + 912], 6
                        add              rax, 1
                        mov              qword ptr [rbp + 920], rax
                                                                                        jmp   xchain00104_n33_as
.Lx00126_1:
                        inc              qword ptr [rbp + 928]
                                                                                        jmp   .Lx00126_0
xchain00104_n38_β:
                        inc              qword ptr [rbp + 928]
                                                                                        jmp   .Lx00126_0
.Lx00126_2:
                        .quad            .Lx00126_2_s
.Lx00126_2_s:
                        .string          "/"
# IR_LIT_INTEGER
xchain00104_n39_α:
                        mov              qword ptr [rbp + 976], 6
                        mov              rax, qword ptr [rip + .Lx00127_0]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   xchain00104_n33_as
xchain00104_n39_β:
                                                                                        jmp   xchain00104_n33_af
.Lx00127_0:
                        .quad            0
xchain00104_n40_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 176]
                        mov              rsi, qword ptr [rbp + 184]
                        mov              rdx, qword ptr [rbp + 208]
                        mov              rcx, qword ptr [rbp + 216]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   xchain00104_n43_α
# IR_LIT_STRING
xchain00104_n41_α:
                        mov              qword ptr [rbp + 496], 1
                        mov              rax, qword ptr [rip + .Lx00128_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   xchain00104_n44_α
.Lx00128_0:
                        .quad            .Lx00128_0_s
.Lx00128_0_s:
                        .string          " "
xchain00104_n42_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 848]
                        mov              rdx, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   xchain00104_n45_α
xchain00104_n43_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 1600]
                        mov              rsi, qword ptr [rbp + 1608]
                        mov              rdx, qword ptr [rbp + 144]
                        mov              rcx, qword ptr [rbp + 152]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   xchain00104_n46_α
xchain00104_n44_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 1616]
                        mov              rsi, qword ptr [rbp + 1624]
                        mov              rdx, qword ptr [rbp + 496]
                        mov              rcx, qword ptr [rbp + 504]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   xchain00104_n47_α
xchain00104_n45_α:
# IR_CONJUNCTION value-forward copy
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   xchain00104_n48_α
xchain00104_n45_β:
                                                                                        jmp   xchain00104_n50_α
xchain00104_n46_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 80]
                        mov              rdx, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                                                                                        jmp   xchain00104_n20_α
# IR_VAR
xchain00104_n47_α:
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   xchain00104_n49_α
# IR_GEN_SCAN
xchain00104_n48_α:
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 792], rax
                        lea              rdi, [rbp + 752]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 752]
                        mov              r14, qword ptr [rbp + 760]
                        mov              r15, qword ptr [rbp + 768]
                                                                                        jmp   xchain00104_n7_α
xchain00104_n48_β:
                                                                                        jmp   xchain00104_n7_α
xchain00104_n49_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 432]
                        mov              rsi, qword ptr [rbp + 440]
                        mov              rdx, qword ptr [rbp + 1632]
                        mov              rcx, qword ptr [rbp + 1640]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   xchain00104_n12_α
# IR_GEN_SCAN
xchain00104_n50_α:
                        lea              rdi, [rbp + 752]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 752]
                        mov              r14, qword ptr [rbp + 760]
                        mov              r15, qword ptr [rbp + 768]
                                                                                        jmp   xchain00104_n7_α
xchain00104_n50_β:
                                                                                        jmp   xchain00104_n7_α
proc_gedfnf_res:
                        add              rsp, 8
                        pop              rbp
proc_gedfnf_β:
                                                                                        jmp   proc_gedfnf_ω
proc_gedfnf_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 1656]
                        lea              rsp, [rbp + 1680]
                        mov              rbp, [rbp + 1672]
                                                                                        jmp   rax
proc_gedfnf_ω:
                        mov              rax, [rbp + 1664]
                        lea              rsp, [rbp + 1680]
                        mov              rbp, [rbp + 1672]
                                                                                        jmp   rax
proc_gedfnf_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
                        pop              r11
                        sub              rsp, 1696
                        mov              qword ptr [rsp + 1688], rbp
                        mov              rbp, rsp
                        add              rbp, 16
                        mov              qword ptr [rbp + 1648], r11
                        lea              rax, [rip + .Lx00129_2]
                        mov              qword ptr [rbp + 1656], rax
                        lea              rax, [rip + .Lx00129_3]
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1592], rbp
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 1584
                        mov              edx, 1648
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_gedfnf_α_body
.Lx00129_2:
                        mov              rdx, qword ptr [rsp + -1696]
                        mov              rcx, rsp
                        add              rcx, -1680
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00129_3:
                        mov              rdi, qword ptr [rsp + -1696]
                        mov              rsi, rsp
                        add              rsi, -1680
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
                        .globl           proc_gedlnf_α
proc_gedlnf_α:
#=======================================================================================================================
                        .global          proc_gedlnf_α
                        .global          proc_gedlnf_β
                        .global          proc_gedlnf_γ
                        .global          proc_gedlnf_ω
                        sub              rsp, 1472
                        mov              [rsp + 1448], rcx
                        mov              [rsp + 1456], rdx
                        mov              [rsp + 1464], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 1384], rsp
                        mov              rdi, rsp
                        mov              esi, 1376
                        mov              edx, 1440
                        call             rt_jmp_frame_lexprep2@PLT
proc_gedlnf_α_body:
# IR_DISJUNCTION_NARY
xchain00130_n0_α:
                        mov              qword ptr [rbp + 1200], 0
                        mov              qword ptr [rbp + 1208], 0
                        mov              dword ptr [rbp + 1216], 0
                                                                                        jmp   xchain00130_n2_α
xchain00130_n0_as:
                        mov              eax, dword ptr [rbp + 1216]
                        cmp              eax, 0
                                                                                        jne   .Lx00131_0
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   xchain00130_n1_α
.Lx00131_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00131_1
                                                                                        jmp   xchain00130_n1_α
.Lx00131_1:
                                                                                        jmp   xchain00130_n1_α
xchain00130_n0_β:
                        mov              eax, dword ptr [rbp + 1216]
                        cmp              eax, 0
                                                                                        je    xchain00130_n3_β
                                                                                        jmp   xchain00130_n0_af
xchain00130_n0_af:
                        add              dword ptr [rbp + 1216], 1
                        mov              eax, dword ptr [rbp + 1216]
                        cmp              eax, 1
                                                                                        je    proc_gedlnf_ω
                                                                                        jmp   xchain00130_n4_α
xchain00130_n1_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 1200]
                        mov              rdx, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                                                                                        jmp   xchain00130_n4_α
# IR_VAR
xchain00130_n2_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1320], rax
                                                                                        jmp   xchain00130_n5_α
xchain00130_n2_β:
                                                                                        jmp   xchain00130_n0_af
xchain00130_n3_α:
                        mov              qword ptr [rbp + 1280], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00132_20
                        mov              rax, qword ptr [rbp + 1312]
                        mov              rdx, qword ptr [rbp + 1320]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx00132_21
.Lx00132_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1312]
                        mov              rdx, qword ptr [rbp + 1320]
                        call             rt_arg_stage@PLT
.Lx00132_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00132_22
                        mov              rax, qword ptr [rbp + 1344]
                        mov              rdx, qword ptr [rbp + 1352]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx00132_23
.Lx00132_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1344]
                        mov              rdx, qword ptr [rbp + 1352]
                        call             rt_arg_stage@PLT
.Lx00132_23:
                        mov              edi, 7
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx00132_1
                        lea              rcx, [rip + .Lx00132_3]
                        lea              rdx, [rip + .Lx00132_4]
                                                                                        jmp   rax
.Lx00132_3:
                        mov              qword ptr [rbp + 1288], rsp
                        mov              rax, qword ptr [rbp + 1280]
                        test             rax, rax
                                                                                        jne   .Lx00132_5
                        mov              qword ptr [rbp + 1280], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx00132_2
.Lx00132_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx00132_2
.Lx00132_4:
                        mov              rax, qword ptr [rbp + 1280]
                        test             rax, rax
                                                                                        jne   .Lx00132_6
                        mov              qword ptr [rbp + 1280], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx00132_2
.Lx00132_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx00132_2
.Lx00132_1:
                        call             rt_faildescr@PLT
.Lx00132_2:
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                        cmp              eax, 99
                                                                                        je    xchain00130_n0_af
                                                                                        jmp   xchain00130_n0_as
xchain00130_n3_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1288]
                                                                                        jmp   qword ptr [rsp]
.Lx00132_0:
                        .quad            .Lx00132_0_s
.Lx00132_0_s:
                        .string          "gedval"
# IR_VAR
xchain00130_n4_α:
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   xchain00130_n6_α
# IR_LIT_STRING
xchain00130_n5_α:
                        mov              qword ptr [rbp + 1344], 1
                        mov              rax, qword ptr [rip + .Lx00133_0]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   xchain00130_n3_α
.Lx00133_0:
                        .quad            .Lx00133_0_s
.Lx00133_0_s:
                        .string          "NAME"
# IR_GEN_SCAN
xchain00130_n6_α:
                        mov              rdi, qword ptr [rbp + 1152]
                        mov              rsi, qword ptr [rbp + 1160]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   xchain00130_n8_α
# IR_VAR
xchain00130_n7_α:
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   xchain00130_n9_α
# IR_DISJUNCTION_NARY
xchain00130_n8_α:
                        mov              qword ptr [rbp + 912], 0
                        mov              qword ptr [rbp + 920], 0
                        mov              dword ptr [rbp + 928], 0
                                                                                        jmp   xchain00130_n12_α
xchain00130_n8_as:
                        mov              eax, dword ptr [rbp + 928]
                        cmp              eax, 0
                                                                                        jne   .Lx00134_0
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 920], rax
                                                                                        jmp   xchain00130_n11_α
.Lx00134_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00134_1
                                                                                        jmp   xchain00130_n11_α
.Lx00134_1:
                                                                                        jmp   xchain00130_n11_α
xchain00130_n8_β:
                        mov              eax, dword ptr [rbp + 928]
                        cmp              eax, 0
                                                                                        je    xchain00130_n13_β
                                                                                        jmp   xchain00130_n8_af
xchain00130_n8_af:
                        add              dword ptr [rbp + 928], 1
                        mov              eax, dword ptr [rbp + 928]
                        cmp              eax, 1
                                                                                        je    xchain00130_n14_α
                                                                                        jmp   xchain00130_n19_α
# IR_LIT_STRING
xchain00130_n9_α:
                        mov              qword ptr [rbp + 464], 1
                        mov              rax, qword ptr [rip + .Lx00135_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   xchain00130_n16_α
.Lx00135_0:
                        .quad            .Lx00135_0_s
.Lx00135_0_s:
                        .string          ", "
# IR_VAR
xchain00130_n10_α:
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   xchain00130_n17_α
xchain00130_n11_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 912]
                        mov              rdx, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                                                                                        jmp   xchain00130_n19_α
# IR_LIT_CHARSET
xchain00130_n12_α:
                        mov              qword ptr [rbp + 1056], 1
                        mov              dword ptr [rbp + 1060], -1
                        mov              rax, qword ptr [rip + .Lx00136_0]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   xchain00130_n13_α
xchain00130_n12_β:
                                                                                        jmp   xchain00130_n8_af
.Lx00136_0:
                        .quad            .Lx00136_0_s
.Lx00136_0_s:
                        .string          "/"
# IR_SCAN_UPTO
xchain00130_n13_α:
                        mov              qword ptr [rbp + 1040], r14
.Lx00137_0:
                        mov              rax, qword ptr [rbp + 1040]
                        cmp              rax, r15
                                                                                        jge   xchain00130_n8_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx00137_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx00137_1
                        mov              qword ptr [rbp + 1024], 6
                        add              rax, 1
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   xchain00130_n20_α
.Lx00137_1:
                        inc              qword ptr [rbp + 1040]
                                                                                        jmp   .Lx00137_0
xchain00130_n13_β:
                        inc              qword ptr [rbp + 1040]
                                                                                        jmp   .Lx00137_0
.Lx00137_2:
                        .quad            .Lx00137_2_s
.Lx00137_2_s:
                        .string          "/"
# IR_LIT_INTEGER
xchain00130_n14_α:
                        mov              qword ptr [rbp + 1120], 6
                        mov              rax, qword ptr [rip + .Lx00138_0]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   xchain00130_n21_α
xchain00130_n14_β:
                                                                                        jmp   proc_gedlnf_ω
.Lx00138_0:
                        .quad            0
xchain00130_n15_α:
# BOX IR_CALL trim(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+992] -> [zr+960]
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 968], rax
                        .section         .rodata
.Lrkfn526:              .string          "trim"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn526]
                        lea              rsi, [rbp + 960]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                        cmp              eax, 99
                                                                                        je    xchain00130_n13_β
                                                                                        jmp   xchain00130_n8_as
xchain00130_n15_β:
                                                                                        jmp   xchain00130_n13_β
xchain00130_n16_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 1408]
                        mov              rsi, qword ptr [rbp + 1416]
                        mov              rdx, qword ptr [rbp + 464]
                        mov              rcx, qword ptr [rbp + 472]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   xchain00130_n22_α
# IR_LIT_STRING
xchain00130_n17_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              rax, qword ptr [rip + .Lx00139_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   xchain00130_n23_α
.Lx00139_0:
                        .quad            .Lx00139_0_s
.Lx00139_0_s:
                        .string          " "
# IR_VAR
xchain00130_n18_α:
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   xchain00130_n24_α
# IR_LIT_STRING
xchain00130_n19_α:
                        mov              qword ptr [rbp + 864], 1
                        mov              rax, qword ptr [rip + .Lx00140_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   xchain00130_n25_α
.Lx00140_0:
                        .quad            .Lx00140_0_s
.Lx00140_0_s:
                        .string          "/"
# IR_SCAN_TAB
xchain00130_n20_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 1032]
                        cmp              rax, 1
                                                                                        jge   .Lx00141_0
                        add              rax, r15
                        add              rax, 1
.Lx00141_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00141_239
                        add              rsp, 16
                                                                                        jmp   xchain00130_n13_β
.Lx00141_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00141_240
                        add              rsp, 16
                                                                                        jmp   xchain00130_n13_β
.Lx00141_240:
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
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                                                                                        jmp   xchain00130_n15_α
xchain00130_n20_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   xchain00130_n13_β
# IR_SCAN_TAB
xchain00130_n21_α:
                        sub              rsp, 16
                        mov              rax, 0
                        cmp              rax, 1
                                                                                        jge   .Lx00142_0
                        add              rax, r15
                        add              rax, 1
.Lx00142_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00142_239
                        add              rsp, 16
                                                                                        jmp   proc_gedlnf_ω
.Lx00142_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00142_240
                        add              rsp, 16
                                                                                        jmp   proc_gedlnf_ω
.Lx00142_240:
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
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                                                                                        jmp   xchain00130_n26_α
xchain00130_n21_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   proc_gedlnf_ω
# IR_VAR
xchain00130_n22_α:
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   xchain00130_n27_α
# IR_VAR
xchain00130_n23_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   xchain00130_n28_α
# IR_RETURN
xchain00130_n24_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_gedlnf_γ
# IR_SCAN_MATCH
xchain00130_n25_α:
                        sub              rsp, 16
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1
                                                                                        jge   .Lx00143_239
                        add              rsp, 16
                                                                                        jmp   xchain00130_n30_α
.Lx00143_239:
                        mov              rdi, qword ptr [rip + .Lx00143_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 1
                        push             r10
                        call             memcmp@PLT
                        pop              r10
                        test             eax, eax
                                                                                        je    .Lx00143_240
                        add              rsp, 16
                                                                                        jmp   xchain00130_n30_α
.Lx00143_240:
                        mov              qword ptr [rbp + 832], 6
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   xchain00130_n29_α
.Lx00143_0:
                        .quad            .Lx00143_0_s
.Lx00143_0_s:
                        .string          "/"
# IR_RETURN
xchain00130_n26_α:
                        mov              rax, qword ptr [rbp + 1088]
                        mov              rdx, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_gedlnf_γ
xchain00130_n27_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 400]
                        mov              rsi, qword ptr [rbp + 408]
                        mov              rdx, qword ptr [rbp + 1424]
                        mov              rcx, qword ptr [rbp + 1432]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   xchain00130_n31_α
# IR_LIT_STRING
xchain00130_n28_α:
                        mov              qword ptr [rbp + 320], 1
                        mov              rax, qword ptr [rip + .Lx00144_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   xchain00130_n32_α
.Lx00144_0:
                        .quad            .Lx00144_0_s
.Lx00144_0_s:
                        .string          "TITL"
# IR_SCAN_TAB
xchain00130_n29_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 840]
                        cmp              rax, 1
                                                                                        jge   .Lx00145_0
                        add              rax, r15
                        add              rax, 1
.Lx00145_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00145_239
                        add              rsp, 16
                                                                                        jmp   xchain00130_n30_α
.Lx00145_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00145_240
                        add              rsp, 16
                                                                                        jmp   xchain00130_n30_α
.Lx00145_240:
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
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   xchain00130_n30_α
xchain00130_n29_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   xchain00130_n30_α
# IR_DISJUNCTION_NARY
xchain00130_n30_α:
                        mov              qword ptr [rbp + 672], 0
                        mov              qword ptr [rbp + 680], 0
                        mov              dword ptr [rbp + 688], 0
                                                                                        jmp   xchain00130_n34_α
xchain00130_n30_as:
                        mov              eax, dword ptr [rbp + 688]
                        cmp              eax, 0
                                                                                        jne   .Lx00146_0
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   xchain00130_n33_α
.Lx00146_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00146_1
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   xchain00130_n33_α
.Lx00146_1:
                                                                                        jmp   xchain00130_n33_α
xchain00130_n30_β:
                        mov              eax, dword ptr [rbp + 688]
                        cmp              eax, 0
                                                                                        je    xchain00130_n35_β
                                                                                        jmp   xchain00130_n30_af
xchain00130_n30_af:
                        add              dword ptr [rbp + 688], 1
                        mov              eax, dword ptr [rbp + 688]
                        cmp              eax, 1
                                                                                        je    xchain00130_n36_α
                                                                                        jmp   xchain00130_n43_α
xchain00130_n31_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   xchain00130_n10_α
xchain00130_n32_α:
                        mov              qword ptr [rbp + 256], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00147_20
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx00147_21
.Lx00147_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        call             rt_arg_stage@PLT
.Lx00147_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00147_22
                        mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx00147_23
.Lx00147_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        call             rt_arg_stage@PLT
.Lx00147_23:
                        mov              edi, 7
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx00147_1
                        lea              rcx, [rip + .Lx00147_3]
                        lea              rdx, [rip + .Lx00147_4]
                                                                                        jmp   rax
.Lx00147_3:
                        mov              qword ptr [rbp + 264], rsp
                        mov              rax, qword ptr [rbp + 256]
                        test             rax, rax
                                                                                        jne   .Lx00147_5
                        mov              qword ptr [rbp + 256], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx00147_2
.Lx00147_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx00147_2
.Lx00147_4:
                        mov              rax, qword ptr [rbp + 256]
                        test             rax, rax
                                                                                        jne   .Lx00147_6
                        mov              qword ptr [rbp + 256], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx00147_2
.Lx00147_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx00147_2
.Lx00147_1:
                        call             rt_faildescr@PLT
.Lx00147_2:
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    xchain00130_n18_α
                                                                                        jmp   xchain00130_n37_α
xchain00130_n32_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 264]
                                                                                        jmp   qword ptr [rsp]
.Lx00147_0:
                        .quad            .Lx00147_0_s
.Lx00147_0_s:
                        .string          "gedval"
# IR_SCAN_TAB
xchain00130_n33_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 680]
                        cmp              rax, 1
                                                                                        jge   .Lx00148_0
                        add              rax, r15
                        add              rax, 1
.Lx00148_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00148_239
                        add              rsp, 16
                                                                                        jmp   xchain00130_n30_β
.Lx00148_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00148_240
                        add              rsp, 16
                                                                                        jmp   xchain00130_n30_β
.Lx00148_240:
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
                                                                                        jmp   xchain00130_n38_α
xchain00130_n33_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   xchain00130_n30_β
# IR_LIT_CHARSET
xchain00130_n34_α:
                        mov              qword ptr [rbp + 736], 1
                        mov              dword ptr [rbp + 740], -1
                        mov              rax, qword ptr [rip + .Lx00149_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   xchain00130_n35_α
xchain00130_n34_β:
                                                                                        jmp   xchain00130_n30_af
.Lx00149_0:
                        .quad            .Lx00149_0_s
.Lx00149_0_s:
                        .string          "/"
# IR_SCAN_UPTO
xchain00130_n35_α:
                        mov              qword ptr [rbp + 720], r14
.Lx00150_0:
                        mov              rax, qword ptr [rbp + 720]
                        cmp              rax, r15
                                                                                        jge   xchain00130_n30_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx00150_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx00150_1
                        mov              qword ptr [rbp + 704], 6
                        add              rax, 1
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   xchain00130_n30_as
.Lx00150_1:
                        inc              qword ptr [rbp + 720]
                                                                                        jmp   .Lx00150_0
xchain00130_n35_β:
                        inc              qword ptr [rbp + 720]
                                                                                        jmp   .Lx00150_0
.Lx00150_2:
                        .quad            .Lx00150_2_s
.Lx00150_2_s:
                        .string          "/"
# IR_LIT_INTEGER
xchain00130_n36_α:
                        mov              qword ptr [rbp + 768], 6
                        mov              rax, qword ptr [rip + .Lx00151_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   xchain00130_n30_as
xchain00130_n36_β:
                                                                                        jmp   xchain00130_n30_af
.Lx00151_0:
                        .quad            0
xchain00130_n37_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 176]
                        mov              rsi, qword ptr [rbp + 184]
                        mov              rdx, qword ptr [rbp + 208]
                        mov              rcx, qword ptr [rbp + 216]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   xchain00130_n39_α
xchain00130_n38_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 640]
                        mov              rdx, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   xchain00130_n40_α
xchain00130_n39_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 1392]
                        mov              rsi, qword ptr [rbp + 1400]
                        mov              rdx, qword ptr [rbp + 144]
                        mov              rcx, qword ptr [rbp + 152]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   xchain00130_n41_α
xchain00130_n40_α:
# IR_CONJUNCTION value-forward copy
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   xchain00130_n42_α
xchain00130_n40_β:
                                                                                        jmp   xchain00130_n43_α
xchain00130_n41_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 80]
                        mov              rdx, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                                                                                        jmp   xchain00130_n18_α
# IR_GEN_SCAN
xchain00130_n42_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 584], rax
                        lea              rdi, [rbp + 544]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 544]
                        mov              r14, qword ptr [rbp + 552]
                        mov              r15, qword ptr [rbp + 560]
                                                                                        jmp   xchain00130_n7_α
xchain00130_n42_β:
                                                                                        jmp   xchain00130_n7_α
# IR_GEN_SCAN
xchain00130_n43_α:
                        lea              rdi, [rbp + 544]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 544]
                        mov              r14, qword ptr [rbp + 552]
                        mov              r15, qword ptr [rbp + 560]
                                                                                        jmp   xchain00130_n7_α
xchain00130_n43_β:
                                                                                        jmp   xchain00130_n7_α
proc_gedlnf_res:
                        add              rsp, 8
                        pop              rbp
proc_gedlnf_β:
                                                                                        jmp   proc_gedlnf_ω
proc_gedlnf_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 1448]
                        lea              rsp, [rbp + 1472]
                        mov              rbp, [rbp + 1464]
                                                                                        jmp   rax
proc_gedlnf_ω:
                        mov              rax, [rbp + 1456]
                        lea              rsp, [rbp + 1472]
                        mov              rbp, [rbp + 1464]
                                                                                        jmp   rax
proc_gedlnf_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
                        pop              r11
                        sub              rsp, 1488
                        mov              qword ptr [rsp + 1480], rbp
                        mov              rbp, rsp
                        add              rbp, 16
                        mov              qword ptr [rbp + 1440], r11
                        lea              rax, [rip + .Lx00152_2]
                        mov              qword ptr [rbp + 1448], rax
                        lea              rax, [rip + .Lx00152_3]
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1384], rbp
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 1376
                        mov              edx, 1440
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_gedlnf_α_body
.Lx00152_2:
                        mov              rdx, qword ptr [rsp + -1488]
                        mov              rcx, rsp
                        add              rcx, -1472
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00152_3:
                        mov              rdi, qword ptr [rsp + -1488]
                        mov              rsi, rsp
                        add              rsi, -1472
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
                        .globl           proc_geddate_α
proc_geddate_α:
#=======================================================================================================================
                        .global          proc_geddate_α
                        .global          proc_geddate_β
                        .global          proc_geddate_γ
                        .global          proc_geddate_ω
                        sub              rsp, 4384
                        mov              [rsp + 4360], rcx
                        mov              [rsp + 4368], rdx
                        mov              [rsp + 4376], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 4296], rsp
                        mov              rdi, rsp
                        mov              esi, 4288
                        mov              edx, 4352
                        call             rt_jmp_frame_lexprep2@PLT
proc_geddate_α_body:
# IR_DISJUNCTION_NARY
xchain00153_n0_α:
                        mov              qword ptr [rbp + 1632], 0
                        mov              qword ptr [rbp + 1640], 0
                        mov              dword ptr [rbp + 1648], 0
                                                                                        jmp   xchain00153_n2_α
xchain00153_n0_as:
                        mov              eax, dword ptr [rbp + 1648]
                        cmp              eax, 0
                                                                                        jne   .Lx00154_0
                        mov              rax, qword ptr [rbp + 1776]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 1784]
                        mov              qword ptr [rbp + 1640], rax
                                                                                        jmp   xchain00153_n1_α
.Lx00154_0:
                                                                                        jmp   xchain00153_n1_α
xchain00153_n0_β:
                        mov              eax, dword ptr [rbp + 1648]
                                                                                        jmp   xchain00153_n1_α
xchain00153_n0_af:
                        add              dword ptr [rbp + 1648], 1
                        mov              eax, dword ptr [rbp + 1648]
                                                                                        jmp   xchain00153_n1_α
# IR_DISJUNCTION_NARY
xchain00153_n1_α:
                        mov              qword ptr [rbp + 1360], 0
                        mov              qword ptr [rbp + 1368], 0
                        mov              dword ptr [rbp + 1376], 0
                                                                                        jmp   xchain00153_n5_α
xchain00153_n1_as:
                        mov              eax, dword ptr [rbp + 1376]
                        cmp              eax, 0
                                                                                        jne   .Lx00155_0
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1368], rax
                                                                                        jmp   xchain00153_n4_α
.Lx00155_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00155_1
                                                                                        jmp   xchain00153_n4_α
.Lx00155_1:
                                                                                        jmp   xchain00153_n4_α
xchain00153_n1_β:
                        mov              eax, dword ptr [rbp + 1376]
                        cmp              eax, 0
                                                                                        je    xchain00153_n6_β
                                                                                        jmp   xchain00153_n1_af
xchain00153_n1_af:
                        add              dword ptr [rbp + 1376], 1
                        mov              eax, dword ptr [rbp + 1376]
                        cmp              eax, 1
                                                                                        je    proc_geddate_ω
                                                                                        jmp   xchain00153_n9_α
# IR_VAR_REF
xchain00153_n2_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052352
                        mov              qword ptr [rbp + 4176], rax
                        mov              qword ptr [rbp + 4184], rdx
                                                                                        jmp   xchain00153_n8_α
xchain00153_n2_β:
                                                                                        jmp   xchain00153_n0_af
xchain00153_n3_α:
                                                                                        jmp   xchain00153_n0_as
xchain00153_n3_β:
                                                                                        jmp   xchain00153_n1_α
xchain00153_n4_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 1360]
                        mov              rdx, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 4336], rax
                        mov              qword ptr [rbp + 4344], rdx
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                                                                                        jmp   xchain00153_n9_α
# IR_VAR
xchain00153_n5_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1544], rax
                                                                                        jmp   xchain00153_n10_α
xchain00153_n5_β:
                                                                                        jmp   xchain00153_n1_af
xchain00153_n6_α:
                        mov              qword ptr [rbp + 1504], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00156_20
                        mov              rax, qword ptr [rbp + 1536]
                        mov              rdx, qword ptr [rbp + 1544]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx00156_21
.Lx00156_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1536]
                        mov              rdx, qword ptr [rbp + 1544]
                        call             rt_arg_stage@PLT
.Lx00156_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00156_22
                        mov              rax, qword ptr [rbp + 1568]
                        mov              rdx, qword ptr [rbp + 1576]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx00156_23
.Lx00156_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1568]
                        mov              rdx, qword ptr [rbp + 1576]
                        call             rt_arg_stage@PLT
.Lx00156_23:
                        mov              edi, 7
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx00156_1
                        lea              rcx, [rip + .Lx00156_3]
                        lea              rdx, [rip + .Lx00156_4]
                                                                                        jmp   rax
.Lx00156_3:
                        mov              qword ptr [rbp + 1512], rsp
                        mov              rax, qword ptr [rbp + 1504]
                        test             rax, rax
                                                                                        jne   .Lx00156_5
                        mov              qword ptr [rbp + 1504], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx00156_2
.Lx00156_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx00156_2
.Lx00156_4:
                        mov              rax, qword ptr [rbp + 1504]
                        test             rax, rax
                                                                                        jne   .Lx00156_6
                        mov              qword ptr [rbp + 1504], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx00156_2
.Lx00156_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx00156_2
.Lx00156_1:
                        call             rt_faildescr@PLT
.Lx00156_2:
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                        cmp              eax, 99
                                                                                        je    xchain00153_n1_af
                                                                                        jmp   xchain00153_n11_α
xchain00153_n6_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1512]
                                                                                        jmp   qword ptr [rsp]
.Lx00156_0:
                        .quad            .Lx00156_0_s
.Lx00156_0_s:
                        .string          "gedval"
xchain00153_n7_α:
# BOX IR_CALL trim(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1456] -> [zr+1408]
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1416], rax
# marshal arg1 = producer-box slot [zr+1600] -> [zr+1424]
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 1432], rax
                        .section         .rodata
.Lrkfn583:              .string          "trim"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn583]
                        lea              rsi, [rbp + 1408]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                        cmp              eax, 99
                                                                                        je    xchain00153_n6_β
                                                                                        jmp   xchain00153_n1_as
xchain00153_n7_β:
                                                                                        jmp   xchain00153_n6_β
# IR_NULLTEST_VAR
xchain00153_n8_α:
                        mov              eax, dword ptr [rbp + 4176]
                        cmp              eax, 99
                                                                                        je    xchain00153_n0_af
                        mov              rdi, qword ptr [rbp + 4176]
                        mov              rsi, qword ptr [rbp + 4184]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    xchain00153_n0_af
                        cmp              eax, 0
                                                                                        jne   xchain00153_n0_af
                        mov              rax, qword ptr [rbp + 4176]
                        mov              qword ptr [rbp + 4208], rax
                        mov              rax, qword ptr [rbp + 4184]
                        mov              qword ptr [rbp + 4216], rax
                                                                                        jmp   xchain00153_n12_α
# IR_LIT_STRING
xchain00153_n9_α:
                        mov              qword ptr [rbp + 1312], 1
                        mov              rax, qword ptr [rip + .Lx00157_0]
                        mov              qword ptr [rbp + 1320], rax
                                                                                        jmp   xchain00153_n13_α
.Lx00157_0:
                        .quad            .Lx00157_0_s
.Lx00157_0_s:
                        .string          ""
# IR_LIT_STRING
xchain00153_n10_α:
                        mov              qword ptr [rbp + 1568], 1
                        mov              rax, qword ptr [rip + .Lx00158_0]
                        mov              qword ptr [rbp + 1576], rax
                                                                                        jmp   xchain00153_n6_α
.Lx00158_0:
                        .quad            .Lx00158_0_s
.Lx00158_0_s:
                        .string          "DATE"
# IR_LIT_CHARSET
xchain00153_n11_α:
                        mov              qword ptr [rbp + 1600], 1
                        mov              dword ptr [rbp + 1604], -1
                        mov              rax, qword ptr [rip + .Lx00159_0]
                        mov              qword ptr [rbp + 1608], rax
                                                                                        jmp   xchain00153_n7_α
.Lx00159_0:
                        .quad            .Lx00159_0_s
.Lx00159_0_s:
                        .string          "\t\n "
# IR_LIT_INTEGER
xchain00153_n12_α:
                        mov              qword ptr [rbp + 4256], 6
                        mov              rax, qword ptr [rip + .Lx00160_0]
                        mov              qword ptr [rbp + 4264], rax
                                                                                        jmp   xchain00153_n14_α
.Lx00160_0:
                        .quad            1
xchain00153_n13_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 1312]
                        mov              rdx, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 4304], rax
                        mov              qword ptr [rbp + 4312], rdx
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                                                                                        jmp   xchain00153_n15_α
# IR_ASSIGN_VAR
xchain00153_n14_α:
                        mov              rdi, qword ptr [rbp + 4208]
                        mov              rsi, qword ptr [rbp + 4216]
                        mov              rdx, qword ptr [rbp + 4256]
                        mov              rcx, qword ptr [rbp + 4264]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain00153_n0_af
                        mov              qword ptr [rbp + 4240], rax
                        mov              qword ptr [rbp + 4248], rdx
                                                                                        jmp   xchain00153_n16_α
# IR_VAR
xchain00153_n15_α:
                        mov              rax, qword ptr [rbp + 4336]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 4344]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   xchain00153_n17_α
xchain00153_n16_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
                        .section         .rodata
.Lrkfn594:              .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn594]
                        lea              rsi, [rbp + 4160]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4144], rax
                        mov              qword ptr [rbp + 4152], rdx
                        cmp              eax, 99
                                                                                        je    xchain00153_n20_α
                                                                                        jmp   xchain00153_n19_α
xchain00153_n16_β:
                                                                                        jmp   xchain00153_n20_α
# IR_GEN_SCAN
xchain00153_n17_α:
                        mov              rdi, qword ptr [rbp + 1264]
                        mov              rsi, qword ptr [rbp + 1272]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   xchain00153_n21_α
# IR_DISJUNCTION_NARY
xchain00153_n18_α:
                        mov              qword ptr [rbp + 32], 0
                        mov              qword ptr [rbp + 40], 0
                        mov              dword ptr [rbp + 48], 0
                                                                                        jmp   xchain00153_n22_α
xchain00153_n18_as:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 0
                                                                                        jne   .Lx00161_0
                                                                                        jmp   proc_geddate_ω
.Lx00161_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00161_1
                                                                                        jmp   proc_geddate_ω
.Lx00161_1:
                                                                                        jmp   proc_geddate_ω
xchain00153_n18_β:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 0
                                                                                        je    proc_geddate_ω
                                                                                        jmp   proc_geddate_ω
xchain00153_n18_af:
                        add              dword ptr [rbp + 48], 1
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 1
                                                                                        je    xchain00153_n23_α
                                                                                        jmp   proc_geddate_ω
# IR_ASSIGN gva
xchain00153_n19_α:
                        mov              rax, qword ptr [rbp + 4144]
                        mov              rdx, qword ptr [rbp + 4152]
                        mov              qword ptr [1879052336], rax
                        mov              qword ptr [1879052344], rdx
                        mov              qword ptr [rbp + 4128], rax
                        mov              qword ptr [rbp + 4136], rdx
                                                                                        jmp   xchain00153_n20_α
# IR_VAR_REF
xchain00153_n20_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052336
                        mov              qword ptr [rbp + 3984], rax
                        mov              qword ptr [rbp + 3992], rdx
                                                                                        jmp   xchain00153_n24_α
# IR_LIT_INTEGER
xchain00153_n21_α:
                        mov              qword ptr [rbp + 592], 6
                        mov              rax, qword ptr [rip + .Lx00162_0]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   xchain00153_n25_α
.Lx00162_0:
                        .quad            0
# IR_VAR
xchain00153_n22_α:
                        mov              rax, qword ptr [rbp + 4304]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 4312]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   xchain00153_n26_α
xchain00153_n22_β:
                                                                                        jmp   xchain00153_n18_af
# IR_VAR
xchain00153_n23_α:
                        mov              rax, qword ptr [rbp + 4304]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 4312]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   xchain00153_n27_α
xchain00153_n23_β:
                                                                                        jmp   proc_geddate_ω
# IR_LIT_STRING
xchain00153_n24_α:
                        mov              qword ptr [rbp + 4016], 1
                        mov              rax, qword ptr [rip + .Lx00163_0]
                        mov              qword ptr [rbp + 4024], rax
                                                                                        jmp   xchain00153_n28_α
.Lx00163_0:
                        .quad            .Lx00163_0_s
.Lx00163_0_s:
                        .string          "JAN"
# BOX ICN IR_SCAN_POS pos(n) [ICN-SCAN-3 fscan.r: i=cvpos(i,len); succeed iff i==&pos (r14+1); result {DT_I,i} normalized; single-shot beta->omega]
xchain00153_n25_α:
                        mov              rax, 0
                        cmp              rax, 1
                                                                                        jge   .Lx00164_0
                        add              rax, r15
                        add              rax, 1
.Lx00164_0:
                        cmp              rax, 1
                                                                                        jl    xchain00153_n30_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jg    xchain00153_n30_α
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jne   xchain00153_n30_α
                        mov              qword ptr [rbp + 560], 6
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   xchain00153_n29_α
# IR_UNOP
xchain00153_n26_α:
                        mov              rdi, qword ptr [rbp + 4304]
                        mov              rsi, qword ptr [rbp + 4312]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   xchain00153_n31_α
# IR_LIT_INTEGER
xchain00153_n27_α:
                        mov              qword ptr [rbp + 416], 6
                        mov              rax, qword ptr [rip + .Lx00165_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   xchain00153_n32_α
.Lx00165_0:
                        .quad            12
# IR_SUBSCRIPT x[i] variable
xchain00153_n28_α:
                        mov              rdi, qword ptr [rbp + 3984]
                        mov              rsi, qword ptr [rbp + 3992]
                        mov              rdx, qword ptr [rbp + 4016]
                        mov              rcx, qword ptr [rbp + 4024]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain00153_n34_α
                        mov              qword ptr [rbp + 4048], rax
                        mov              qword ptr [rbp + 4056], rdx
                                                                                        jmp   xchain00153_n33_α
# IR_GEN_SCAN
xchain00153_n29_α:
                        lea              rdi, [rbp + 464]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 464]
                        mov              r14, qword ptr [rbp + 472]
                        mov              r15, qword ptr [rbp + 480]
                                                                                        jmp   xchain00153_n18_α
xchain00153_n29_β:
                                                                                        jmp   xchain00153_n18_α
# KEYWORD_null
xchain00153_n30_α:
                        mov              qword ptr [rbp + 528], 0
                        mov              qword ptr [rbp + 536], 0
                                                                                        jmp   xchain00153_n35_α
xchain00153_n30_β:
                                                                                        jmp   xchain00153_n29_α
# IR_LIT_INTEGER
xchain00153_n31_α:
                        mov              qword ptr [rbp + 288], 6
                        mov              rax, qword ptr [rip + .Lx00166_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   xchain00153_n36_α
.Lx00166_0:
                        .quad            13
xchain00153_n32_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+384] -> [zr+336]
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 344], rax
# marshal arg1 = producer-box slot [zr+416] -> [zr+352]
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 360], rax
                        .section         .rodata
.Lrkfn618:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn618]
                        lea              rsi, [rbp + 336]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    proc_geddate_ω
                                                                                        jmp   xchain00153_n37_α
xchain00153_n32_β:
                                                                                        jmp   proc_geddate_ω
# IR_LIT_STRING
xchain00153_n33_α:
                        mov              qword ptr [rbp + 4096], 1
                        mov              rax, qword ptr [rip + .Lx00167_0]
                        mov              qword ptr [rbp + 4104], rax
                                                                                        jmp   xchain00153_n38_α
.Lx00167_0:
                        .quad            .Lx00167_0_s
.Lx00167_0_s:
                        .string          "Jan"
# IR_VAR_REF
xchain00153_n34_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052336
                        mov              qword ptr [rbp + 3840], rax
                        mov              qword ptr [rbp + 3848], rdx
                                                                                        jmp   xchain00153_n39_α
# IR_LIT_CHARSET
xchain00153_n35_α:
                        mov              qword ptr [rbp + 1232], 1
                        mov              dword ptr [rbp + 1236], -1
                        mov              rax, qword ptr [rip + .Lx00168_0]
                        mov              qword ptr [rbp + 1240], rax
                                                                                        jmp   xchain00153_n40_α
.Lx00168_0:
                        .quad            .Lx00168_0_s
.Lx00168_0_s:
                        .string          "\t\n "
xchain00153_n36_α:
# IR_BINOP_TEST
                        mov              eax, dword ptr [rbp + 224]
                        cmp              eax, 100
                                                                                        je    .Lx00169_0
                        mov              eax, dword ptr [rbp + 288]
                        cmp              eax, 100
                                                                                        je    .Lx00169_0
                        mov              eax, dword ptr [rbp + 224]
                        cmp              eax, 6
                                                                                        jne   .Lx00169_2
                        mov              eax, dword ptr [rbp + 288]
                        cmp              eax, 6
                                                                                        jne   .Lx00169_2
.Lx00169_1:
                        mov              rax, qword ptr [rbp + 232]
                        mov              rcx, qword ptr [rbp + 296]
                        cmp              rax, rcx
                                                                                        jle   xchain00153_n18_af
                        mov              rcx, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 192], rcx
                        mov              rcx, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 200], rcx
                                                                                        jmp   xchain00153_n41_α
.Lx00169_0:
                        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        mov              rdx, qword ptr [rbp + 288]
                        mov              rcx, qword ptr [rbp + 296]
                        mov              r8d, 7
                        lea              r9, [rbp + 192]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx00169_1
                        cmp              eax, 1
                                                                                        je    xchain00153_n18_af
                                                                                        jmp   xchain00153_n41_α
.Lx00169_2:
                        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        mov              rdx, qword ptr [rbp + 288]
                        mov              rcx, qword ptr [rbp + 296]
                        mov              r8d, 7
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    xchain00153_n18_af
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   xchain00153_n41_α
# IR_RETURN
xchain00153_n37_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_geddate_γ
# IR_ASSIGN_VAR
xchain00153_n38_α:
                        mov              rdi, qword ptr [rbp + 4048]
                        mov              rsi, qword ptr [rbp + 4056]
                        mov              rdx, qword ptr [rbp + 4096]
                        mov              rcx, qword ptr [rbp + 4104]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain00153_n34_α
                        mov              qword ptr [rbp + 4080], rax
                        mov              qword ptr [rbp + 4088], rdx
                                                                                        jmp   xchain00153_n34_α
# IR_LIT_STRING
xchain00153_n39_α:
                        mov              qword ptr [rbp + 3872], 1
                        mov              rax, qword ptr [rip + .Lx00170_0]
                        mov              qword ptr [rbp + 3880], rax
                                                                                        jmp   xchain00153_n42_α
.Lx00170_0:
                        .quad            .Lx00170_0_s
.Lx00170_0_s:
                        .string          "FEB"
# IR_SCAN_MANY
xchain00153_n40_α:
                        mov              eax, r14d
.Lx00171_0:
                        cmp              eax, r15d
                                                                                        jge   .Lx00171_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx00171_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx00171_1
                        add              eax, 1
                                                                                        jmp   .Lx00171_0
.Lx00171_1:
                        cmp              eax, r14d
                                                                                        je    xchain00153_n47_α
                        mov              qword ptr [rbp + 1200], 6
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rbp + 1208], rcx
                                                                                        jmp   xchain00153_n43_α
xchain00153_n40_β:
                                                                                        jmp   xchain00153_n47_α
.Lx00171_2:
                        .quad            .Lx00171_2_s
.Lx00171_2_s:
                        .string          "\t\n "
# IR_VAR
xchain00153_n41_α:
                        mov              rax, qword ptr [rbp + 4304]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 4312]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   xchain00153_n44_α
# IR_SUBSCRIPT x[i] variable
xchain00153_n42_α:
                        mov              rdi, qword ptr [rbp + 3840]
                        mov              rsi, qword ptr [rbp + 3848]
                        mov              rdx, qword ptr [rbp + 3872]
                        mov              rcx, qword ptr [rbp + 3880]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain00153_n46_α
                        mov              qword ptr [rbp + 3904], rax
                        mov              qword ptr [rbp + 3912], rdx
                                                                                        jmp   xchain00153_n45_α
# IR_SCAN_TAB
xchain00153_n43_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 1208]
                        cmp              rax, 1
                                                                                        jge   .Lx00172_0
                        add              rax, r15
                        add              rax, 1
.Lx00172_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00172_239
                        add              rsp, 16
                                                                                        jmp   xchain00153_n47_α
.Lx00172_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00172_240
                        add              rsp, 16
                                                                                        jmp   xchain00153_n47_α
.Lx00172_240:
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
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                                                                                        jmp   xchain00153_n47_α
xchain00153_n43_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   xchain00153_n47_α
# IR_LIT_INTEGER
xchain00153_n44_α:
                        mov              qword ptr [rbp + 128], 6
                        mov              rax, qword ptr [rip + .Lx00173_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   xchain00153_n48_α
.Lx00173_0:
                        .quad            2
# IR_LIT_STRING
xchain00153_n45_α:
                        mov              qword ptr [rbp + 3952], 1
                        mov              rax, qword ptr [rip + .Lx00174_0]
                        mov              qword ptr [rbp + 3960], rax
                                                                                        jmp   xchain00153_n49_α
.Lx00174_0:
                        .quad            .Lx00174_0_s
.Lx00174_0_s:
                        .string          "Feb"
# IR_VAR_REF
xchain00153_n46_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052336
                        mov              qword ptr [rbp + 3696], rax
                        mov              qword ptr [rbp + 3704], rdx
                                                                                        jmp   xchain00153_n50_α
# IR_DISJUNCTION_NARY
xchain00153_n47_α:
                        mov              qword ptr [rbp + 1040], 0
                        mov              qword ptr [rbp + 1048], 0
                        mov              dword ptr [rbp + 1056], 0
                                                                                        jmp   xchain00153_n52_α
xchain00153_n47_as:
                        mov              eax, dword ptr [rbp + 1056]
                        cmp              eax, 0
                                                                                        jne   .Lx00175_0
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   xchain00153_n51_α
.Lx00175_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00175_1
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   xchain00153_n51_α
.Lx00175_1:
                                                                                        jmp   xchain00153_n51_α
xchain00153_n47_β:
                        mov              eax, dword ptr [rbp + 1056]
                        cmp              eax, 0
                                                                                        je    xchain00153_n53_β
                                                                                        jmp   xchain00153_n47_af
xchain00153_n47_af:
                        add              dword ptr [rbp + 1056], 1
                        mov              eax, dword ptr [rbp + 1056]
                        cmp              eax, 1
                                                                                        je    xchain00153_n54_α
                                                                                        jmp   xchain00153_n61_α
# IR_LIT_INTEGER
xchain00153_n48_α:
                        mov              qword ptr [rbp + 160], 6
                        mov              rax, qword ptr [rip + .Lx00176_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   xchain00153_n55_α
.Lx00176_0:
                        .quad            0
# IR_ASSIGN_VAR
xchain00153_n49_α:
                        mov              rdi, qword ptr [rbp + 3904]
                        mov              rsi, qword ptr [rbp + 3912]
                        mov              rdx, qword ptr [rbp + 3952]
                        mov              rcx, qword ptr [rbp + 3960]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain00153_n46_α
                        mov              qword ptr [rbp + 3936], rax
                        mov              qword ptr [rbp + 3944], rdx
                                                                                        jmp   xchain00153_n46_α
# IR_LIT_STRING
xchain00153_n50_α:
                        mov              qword ptr [rbp + 3728], 1
                        mov              rax, qword ptr [rip + .Lx00177_0]
                        mov              qword ptr [rbp + 3736], rax
                                                                                        jmp   xchain00153_n56_α
.Lx00177_0:
                        .quad            .Lx00177_0_s
.Lx00177_0_s:
                        .string          "MAR"
# IR_SCAN_TAB
xchain00153_n51_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 1048]
                        cmp              rax, 1
                                                                                        jge   .Lx00178_0
                        add              rax, r15
                        add              rax, 1
.Lx00178_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00178_239
                        add              rsp, 16
                                                                                        jmp   xchain00153_n47_β
.Lx00178_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00178_240
                        add              rsp, 16
                                                                                        jmp   xchain00153_n47_β
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
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   xchain00153_n57_α
xchain00153_n51_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   xchain00153_n47_β
# IR_LIT_CHARSET
xchain00153_n52_α:
                        mov              qword ptr [rbp + 1104], 1
                        mov              dword ptr [rbp + 1108], -1
                        mov              rax, qword ptr [rip + .Lx00179_0]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   xchain00153_n53_α
xchain00153_n52_β:
                                                                                        jmp   xchain00153_n47_af
.Lx00179_0:
                        .quad            .Lx00179_0_s
.Lx00179_0_s:
                        .string          "\t\n "
# IR_SCAN_UPTO
xchain00153_n53_α:
                        mov              qword ptr [rbp + 1088], r14
.Lx00180_0:
                        mov              rax, qword ptr [rbp + 1088]
                        cmp              rax, r15
                                                                                        jge   xchain00153_n47_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx00180_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx00180_1
                        mov              qword ptr [rbp + 1072], 6
                        add              rax, 1
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   xchain00153_n47_as
.Lx00180_1:
                        inc              qword ptr [rbp + 1088]
                                                                                        jmp   .Lx00180_0
xchain00153_n53_β:
                        inc              qword ptr [rbp + 1088]
                                                                                        jmp   .Lx00180_0
.Lx00180_2:
                        .quad            .Lx00180_2_s
.Lx00180_2_s:
                        .string          "\t\n "
# IR_LIT_INTEGER
xchain00153_n54_α:
                        mov              qword ptr [rbp + 1136], 6
                        mov              rax, qword ptr [rip + .Lx00181_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   xchain00153_n47_as
xchain00153_n54_β:
                                                                                        jmp   xchain00153_n47_af
.Lx00181_0:
                        .quad            0
# IR_SUBSCRIPT section
xchain00153_n55_α:
                        mov              rdi, qword ptr [rbp + 96]
                        mov              rsi, qword ptr [rbp + 104]
                        mov              rdx, qword ptr [rbp + 128]
                        mov              rcx, qword ptr [rbp + 136]
                        mov              r8, qword ptr [rbp + 160]
                        mov              r9, qword ptr [rbp + 168]
                        call             subscript_get2@PLT
                        cmp              eax, 99
                                                                                        je    proc_geddate_ω
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                                                                                        jmp   xchain00153_n58_α
# IR_SUBSCRIPT x[i] variable
xchain00153_n56_α:
                        mov              rdi, qword ptr [rbp + 3696]
                        mov              rsi, qword ptr [rbp + 3704]
                        mov              rdx, qword ptr [rbp + 3728]
                        mov              rcx, qword ptr [rbp + 3736]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain00153_n60_α
                        mov              qword ptr [rbp + 3760], rax
                        mov              qword ptr [rbp + 3768], rdx
                                                                                        jmp   xchain00153_n59_α
xchain00153_n57_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 1008]
                        mov              rdx, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 4320], rax
                        mov              qword ptr [rbp + 4328], rdx
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                                                                                        jmp   xchain00153_n61_α
# IR_RETURN
xchain00153_n58_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              rdx, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_geddate_γ
# IR_LIT_STRING
xchain00153_n59_α:
                        mov              qword ptr [rbp + 3808], 1
                        mov              rax, qword ptr [rip + .Lx00182_0]
                        mov              qword ptr [rbp + 3816], rax
                                                                                        jmp   xchain00153_n62_α
.Lx00182_0:
                        .quad            .Lx00182_0_s
.Lx00182_0_s:
                        .string          "Mar"
# IR_VAR_REF
xchain00153_n60_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052336
                        mov              qword ptr [rbp + 3552], rax
                        mov              qword ptr [rbp + 3560], rdx
                                                                                        jmp   xchain00153_n63_α
# IR_VAR
xchain00153_n61_α:
                        mov              rax, qword ptr [rbp + 4304]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 4312]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   xchain00153_n64_α
# IR_ASSIGN_VAR
xchain00153_n62_α:
                        mov              rdi, qword ptr [rbp + 3760]
                        mov              rsi, qword ptr [rbp + 3768]
                        mov              rdx, qword ptr [rbp + 3808]
                        mov              rcx, qword ptr [rbp + 3816]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain00153_n60_α
                        mov              qword ptr [rbp + 3792], rax
                        mov              qword ptr [rbp + 3800], rdx
                                                                                        jmp   xchain00153_n60_α
# IR_LIT_STRING
xchain00153_n63_α:
                        mov              qword ptr [rbp + 3584], 1
                        mov              rax, qword ptr [rip + .Lx00183_0]
                        mov              qword ptr [rbp + 3592], rax
                                                                                        jmp   xchain00153_n65_α
.Lx00183_0:
                        .quad            .Lx00183_0_s
.Lx00183_0_s:
                        .string          "APR"
# IR_LIT_STRING
xchain00153_n64_α:
                        mov              qword ptr [rbp + 752], 1
                        mov              rax, qword ptr [rip + .Lx00184_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   xchain00153_n66_α
.Lx00184_0:
                        .quad            .Lx00184_0_s
.Lx00184_0_s:
                        .string          " "
# IR_SUBSCRIPT x[i] variable
xchain00153_n65_α:
                        mov              rdi, qword ptr [rbp + 3552]
                        mov              rsi, qword ptr [rbp + 3560]
                        mov              rdx, qword ptr [rbp + 3584]
                        mov              rcx, qword ptr [rbp + 3592]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain00153_n68_α
                        mov              qword ptr [rbp + 3616], rax
                        mov              qword ptr [rbp + 3624], rdx
                                                                                        jmp   xchain00153_n67_α
# IR_DISJUNCTION_NARY
xchain00153_n66_α:
                        mov              qword ptr [rbp + 784], 0
                        mov              qword ptr [rbp + 792], 0
                        mov              dword ptr [rbp + 800], 0
                                                                                        jmp   xchain00153_n70_α
xchain00153_n66_as:
                        mov              eax, dword ptr [rbp + 800]
                        cmp              eax, 0
                                                                                        jne   .Lx00185_0
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   xchain00153_n69_α
.Lx00185_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00185_1
                        mov              rax, qword ptr [rbp + 4320]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 4328]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   xchain00153_n69_α
.Lx00185_1:
                                                                                        jmp   xchain00153_n69_α
xchain00153_n66_β:
                        mov              eax, dword ptr [rbp + 800]
                        cmp              eax, 0
                                                                                        je    xchain00153_n66_af
                                                                                        jmp   xchain00153_n66_af
xchain00153_n66_af:
                        add              dword ptr [rbp + 800], 1
                        mov              eax, dword ptr [rbp + 800]
                        cmp              eax, 1
                                                                                        je    xchain00153_n71_α
                                                                                        jmp   xchain00153_n21_α
# IR_LIT_STRING
xchain00153_n67_α:
                        mov              qword ptr [rbp + 3664], 1
                        mov              rax, qword ptr [rip + .Lx00186_0]
                        mov              qword ptr [rbp + 3672], rax
                                                                                        jmp   xchain00153_n73_α
.Lx00186_0:
                        .quad            .Lx00186_0_s
.Lx00186_0_s:
                        .string          "Apr"
# IR_VAR_REF
xchain00153_n68_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052336
                        mov              qword ptr [rbp + 3408], rax
                        mov              qword ptr [rbp + 3416], rdx
                                                                                        jmp   xchain00153_n74_α
xchain00153_n69_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 752]
                        mov              rsi, qword ptr [rbp + 760]
                        mov              rdx, qword ptr [rbp + 784]
                        mov              rcx, qword ptr [rbp + 792]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   xchain00153_n75_α
# IR_VAR_REF
xchain00153_n70_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052336
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   xchain00153_n76_α
xchain00153_n70_β:
                                                                                        jmp   xchain00153_n66_af
# IR_VAR
xchain00153_n71_α:
                        mov              rax, qword ptr [rbp + 4320]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 4328]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   xchain00153_n66_as
xchain00153_n71_β:
                                                                                        jmp   xchain00153_n66_af
# IR_UNOP
xchain00153_n72_α:
                        mov              eax, dword ptr [rbp + 944]
                        cmp              eax, 99
                                                                                        je    xchain00153_n66_af
                        cmp              eax, 0
                                                                                        je    xchain00153_n66_af
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   xchain00153_n66_as
xchain00153_n72_β:
                                                                                        jmp   xchain00153_n66_af
# IR_ASSIGN_VAR
xchain00153_n73_α:
                        mov              rdi, qword ptr [rbp + 3616]
                        mov              rsi, qword ptr [rbp + 3624]
                        mov              rdx, qword ptr [rbp + 3664]
                        mov              rcx, qword ptr [rbp + 3672]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain00153_n68_α
                        mov              qword ptr [rbp + 3648], rax
                        mov              qword ptr [rbp + 3656], rdx
                                                                                        jmp   xchain00153_n68_α
# IR_LIT_STRING
xchain00153_n74_α:
                        mov              qword ptr [rbp + 3440], 1
                        mov              rax, qword ptr [rip + .Lx00187_0]
                        mov              qword ptr [rbp + 3448], rax
                                                                                        jmp   xchain00153_n77_α
.Lx00187_0:
                        .quad            .Lx00187_0_s
.Lx00187_0_s:
                        .string          "MAY"
xchain00153_n75_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 4304]
                        mov              rsi, qword ptr [rbp + 4312]
                        mov              rdx, qword ptr [rbp + 720]
                        mov              rcx, qword ptr [rbp + 728]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   xchain00153_n78_α
# IR_VAR
xchain00153_n76_α:
                        mov              rax, qword ptr [rbp + 4320]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 4328]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   xchain00153_n79_α
# IR_SUBSCRIPT x[i] variable
xchain00153_n77_α:
                        mov              rdi, qword ptr [rbp + 3408]
                        mov              rsi, qword ptr [rbp + 3416]
                        mov              rdx, qword ptr [rbp + 3440]
                        mov              rcx, qword ptr [rbp + 3448]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain00153_n81_α
                        mov              qword ptr [rbp + 3472], rax
                        mov              qword ptr [rbp + 3480], rdx
                                                                                        jmp   xchain00153_n80_α
xchain00153_n78_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 4304], rax
                        mov              qword ptr [rbp + 4312], rdx
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   xchain00153_n82_α
# IR_SUBSCRIPT x[i] variable
xchain00153_n79_α:
                        mov              rdi, qword ptr [rbp + 848]
                        mov              rsi, qword ptr [rbp + 856]
                        mov              rdx, qword ptr [rbp + 880]
                        mov              rcx, qword ptr [rbp + 888]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain00153_n66_af
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                                                                                        jmp   xchain00153_n83_α
# IR_LIT_STRING
xchain00153_n80_α:
                        mov              qword ptr [rbp + 3520], 1
                        mov              rax, qword ptr [rip + .Lx00188_0]
                        mov              qword ptr [rbp + 3528], rax
                                                                                        jmp   xchain00153_n84_α
.Lx00188_0:
                        .quad            .Lx00188_0_s
.Lx00188_0_s:
                        .string          "May"
# IR_VAR_REF
xchain00153_n81_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052336
                        mov              qword ptr [rbp + 3264], rax
                        mov              qword ptr [rbp + 3272], rdx
                                                                                        jmp   xchain00153_n85_α
xchain00153_n82_α:
# IR_CONJUNCTION value-forward copy
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   xchain00153_n21_α
xchain00153_n82_β:
                                                                                        jmp   xchain00153_n21_α
# IR_DEREF variable -> value
xchain00153_n83_α:
                        mov              rdi, qword ptr [rbp + 912]
                        mov              rsi, qword ptr [rbp + 920]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    xchain00153_n66_af
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                                                                                        jmp   xchain00153_n72_α
# IR_ASSIGN_VAR
xchain00153_n84_α:
                        mov              rdi, qword ptr [rbp + 3472]
                        mov              rsi, qword ptr [rbp + 3480]
                        mov              rdx, qword ptr [rbp + 3520]
                        mov              rcx, qword ptr [rbp + 3528]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain00153_n81_α
                        mov              qword ptr [rbp + 3504], rax
                        mov              qword ptr [rbp + 3512], rdx
                                                                                        jmp   xchain00153_n81_α
# IR_LIT_STRING
xchain00153_n85_α:
                        mov              qword ptr [rbp + 3296], 1
                        mov              rax, qword ptr [rip + .Lx00189_0]
                        mov              qword ptr [rbp + 3304], rax
                                                                                        jmp   xchain00153_n86_α
.Lx00189_0:
                        .quad            .Lx00189_0_s
.Lx00189_0_s:
                        .string          "JUN"
# IR_SUBSCRIPT x[i] variable
xchain00153_n86_α:
                        mov              rdi, qword ptr [rbp + 3264]
                        mov              rsi, qword ptr [rbp + 3272]
                        mov              rdx, qword ptr [rbp + 3296]
                        mov              rcx, qword ptr [rbp + 3304]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain00153_n88_α
                        mov              qword ptr [rbp + 3328], rax
                        mov              qword ptr [rbp + 3336], rdx
                                                                                        jmp   xchain00153_n87_α
# IR_LIT_STRING
xchain00153_n87_α:
                        mov              qword ptr [rbp + 3376], 1
                        mov              rax, qword ptr [rip + .Lx00190_0]
                        mov              qword ptr [rbp + 3384], rax
                                                                                        jmp   xchain00153_n89_α
.Lx00190_0:
                        .quad            .Lx00190_0_s
.Lx00190_0_s:
                        .string          "Jun"
# IR_VAR_REF
xchain00153_n88_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052336
                        mov              qword ptr [rbp + 3120], rax
                        mov              qword ptr [rbp + 3128], rdx
                                                                                        jmp   xchain00153_n90_α
# IR_ASSIGN_VAR
xchain00153_n89_α:
                        mov              rdi, qword ptr [rbp + 3328]
                        mov              rsi, qword ptr [rbp + 3336]
                        mov              rdx, qword ptr [rbp + 3376]
                        mov              rcx, qword ptr [rbp + 3384]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain00153_n88_α
                        mov              qword ptr [rbp + 3360], rax
                        mov              qword ptr [rbp + 3368], rdx
                                                                                        jmp   xchain00153_n88_α
# IR_LIT_STRING
xchain00153_n90_α:
                        mov              qword ptr [rbp + 3152], 1
                        mov              rax, qword ptr [rip + .Lx00191_0]
                        mov              qword ptr [rbp + 3160], rax
                                                                                        jmp   xchain00153_n91_α
.Lx00191_0:
                        .quad            .Lx00191_0_s
.Lx00191_0_s:
                        .string          "JUL"
# IR_SUBSCRIPT x[i] variable
xchain00153_n91_α:
                        mov              rdi, qword ptr [rbp + 3120]
                        mov              rsi, qword ptr [rbp + 3128]
                        mov              rdx, qword ptr [rbp + 3152]
                        mov              rcx, qword ptr [rbp + 3160]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain00153_n93_α
                        mov              qword ptr [rbp + 3184], rax
                        mov              qword ptr [rbp + 3192], rdx
                                                                                        jmp   xchain00153_n92_α
# IR_LIT_STRING
xchain00153_n92_α:
                        mov              qword ptr [rbp + 3232], 1
                        mov              rax, qword ptr [rip + .Lx00192_0]
                        mov              qword ptr [rbp + 3240], rax
                                                                                        jmp   xchain00153_n94_α
.Lx00192_0:
                        .quad            .Lx00192_0_s
.Lx00192_0_s:
                        .string          "Jul"
# IR_VAR_REF
xchain00153_n93_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052336
                        mov              qword ptr [rbp + 2976], rax
                        mov              qword ptr [rbp + 2984], rdx
                                                                                        jmp   xchain00153_n95_α
# IR_ASSIGN_VAR
xchain00153_n94_α:
                        mov              rdi, qword ptr [rbp + 3184]
                        mov              rsi, qword ptr [rbp + 3192]
                        mov              rdx, qword ptr [rbp + 3232]
                        mov              rcx, qword ptr [rbp + 3240]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain00153_n93_α
                        mov              qword ptr [rbp + 3216], rax
                        mov              qword ptr [rbp + 3224], rdx
                                                                                        jmp   xchain00153_n93_α
# IR_LIT_STRING
xchain00153_n95_α:
                        mov              qword ptr [rbp + 3008], 1
                        mov              rax, qword ptr [rip + .Lx00193_0]
                        mov              qword ptr [rbp + 3016], rax
                                                                                        jmp   xchain00153_n96_α
.Lx00193_0:
                        .quad            .Lx00193_0_s
.Lx00193_0_s:
                        .string          "AUG"
# IR_SUBSCRIPT x[i] variable
xchain00153_n96_α:
                        mov              rdi, qword ptr [rbp + 2976]
                        mov              rsi, qword ptr [rbp + 2984]
                        mov              rdx, qword ptr [rbp + 3008]
                        mov              rcx, qword ptr [rbp + 3016]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain00153_n98_α
                        mov              qword ptr [rbp + 3040], rax
                        mov              qword ptr [rbp + 3048], rdx
                                                                                        jmp   xchain00153_n97_α
# IR_LIT_STRING
xchain00153_n97_α:
                        mov              qword ptr [rbp + 3088], 1
                        mov              rax, qword ptr [rip + .Lx00194_0]
                        mov              qword ptr [rbp + 3096], rax
                                                                                        jmp   xchain00153_n99_α
.Lx00194_0:
                        .quad            .Lx00194_0_s
.Lx00194_0_s:
                        .string          "Aug"
# IR_VAR_REF
xchain00153_n98_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052336
                        mov              qword ptr [rbp + 2832], rax
                        mov              qword ptr [rbp + 2840], rdx
                                                                                        jmp   xchain00153_n00026_α
# IR_ASSIGN_VAR
xchain00153_n99_α:
                        mov              rdi, qword ptr [rbp + 3040]
                        mov              rsi, qword ptr [rbp + 3048]
                        mov              rdx, qword ptr [rbp + 3088]
                        mov              rcx, qword ptr [rbp + 3096]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain00153_n98_α
                        mov              qword ptr [rbp + 3072], rax
                        mov              qword ptr [rbp + 3080], rdx
                                                                                        jmp   xchain00153_n98_α
# IR_LIT_STRING
xchain00153_n00026_α:
                        mov              qword ptr [rbp + 2864], 1
                        mov              rax, qword ptr [rip + .Lx00195_0]
                        mov              qword ptr [rbp + 2872], rax
                                                                                        jmp   xchain00153_n00028_α
.Lx00195_0:
                        .quad            .Lx00195_0_s
.Lx00195_0_s:
                        .string          "SEP"
# IR_SUBSCRIPT x[i] variable
xchain00153_n00028_α:
                        mov              rdi, qword ptr [rbp + 2832]
                        mov              rsi, qword ptr [rbp + 2840]
                        mov              rdx, qword ptr [rbp + 2864]
                        mov              rcx, qword ptr [rbp + 2872]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain00153_n00031_α
                        mov              qword ptr [rbp + 2896], rax
                        mov              qword ptr [rbp + 2904], rdx
                                                                                        jmp   xchain00153_n00029_α
# IR_LIT_STRING
xchain00153_n00029_α:
                        mov              qword ptr [rbp + 2944], 1
                        mov              rax, qword ptr [rip + .Lx00196_0]
                        mov              qword ptr [rbp + 2952], rax
                                                                                        jmp   xchain00153_n00030_α
.Lx00196_0:
                        .quad            .Lx00196_0_s
.Lx00196_0_s:
                        .string          "Sep"
# IR_VAR_REF
xchain00153_n00031_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052336
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                                                                                        jmp   xchain00153_n00032_α
# IR_ASSIGN_VAR
xchain00153_n00030_α:
                        mov              rdi, qword ptr [rbp + 2896]
                        mov              rsi, qword ptr [rbp + 2904]
                        mov              rdx, qword ptr [rbp + 2944]
                        mov              rcx, qword ptr [rbp + 2952]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain00153_n00031_α
                        mov              qword ptr [rbp + 2928], rax
                        mov              qword ptr [rbp + 2936], rdx
                                                                                        jmp   xchain00153_n00031_α
# IR_LIT_STRING
xchain00153_n00032_α:
                        mov              qword ptr [rbp + 2720], 1
                        mov              rax, qword ptr [rip + .Lx00197_0]
                        mov              qword ptr [rbp + 2728], rax
                                                                                        jmp   xchain00153_n00034_α
.Lx00197_0:
                        .quad            .Lx00197_0_s
.Lx00197_0_s:
                        .string          "OCT"
# IR_SUBSCRIPT x[i] variable
xchain00153_n00034_α:
                        mov              rdi, qword ptr [rbp + 2688]
                        mov              rsi, qword ptr [rbp + 2696]
                        mov              rdx, qword ptr [rbp + 2720]
                        mov              rcx, qword ptr [rbp + 2728]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain00153_n00036_α
                        mov              qword ptr [rbp + 2752], rax
                        mov              qword ptr [rbp + 2760], rdx
                                                                                        jmp   xchain00153_n00035_α
# IR_LIT_STRING
xchain00153_n00035_α:
                        mov              qword ptr [rbp + 2800], 1
                        mov              rax, qword ptr [rip + .Lx00198_0]
                        mov              qword ptr [rbp + 2808], rax
                                                                                        jmp   xchain00153_n00001_α
.Lx00198_0:
                        .quad            .Lx00198_0_s
.Lx00198_0_s:
                        .string          "Oct"
# IR_VAR_REF
xchain00153_n00036_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052336
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx
                                                                                        jmp   xchain00153_n00037_α
# IR_ASSIGN_VAR
xchain00153_n00001_α:
                        mov              rdi, qword ptr [rbp + 2752]
                        mov              rsi, qword ptr [rbp + 2760]
                        mov              rdx, qword ptr [rbp + 2800]
                        mov              rcx, qword ptr [rbp + 2808]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain00153_n00036_α
                        mov              qword ptr [rbp + 2784], rax
                        mov              qword ptr [rbp + 2792], rdx
                                                                                        jmp   xchain00153_n00036_α
# IR_LIT_STRING
xchain00153_n00037_α:
                        mov              qword ptr [rbp + 2576], 1
                        mov              rax, qword ptr [rip + .Lx00199_0]
                        mov              qword ptr [rbp + 2584], rax
                                                                                        jmp   xchain00153_n00002_α
.Lx00199_0:
                        .quad            .Lx00199_0_s
.Lx00199_0_s:
                        .string          "NOV"
# IR_SUBSCRIPT x[i] variable
xchain00153_n00002_α:
                        mov              rdi, qword ptr [rbp + 2544]
                        mov              rsi, qword ptr [rbp + 2552]
                        mov              rdx, qword ptr [rbp + 2576]
                        mov              rcx, qword ptr [rbp + 2584]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain00153_n00039_α
                        mov              qword ptr [rbp + 2608], rax
                        mov              qword ptr [rbp + 2616], rdx
                                                                                        jmp   xchain00153_n00038_α
# IR_LIT_STRING
xchain00153_n00038_α:
                        mov              qword ptr [rbp + 2656], 1
                        mov              rax, qword ptr [rip + .Lx00200_0]
                        mov              qword ptr [rbp + 2664], rax
                                                                                        jmp   xchain00153_n00040_α
.Lx00200_0:
                        .quad            .Lx00200_0_s
.Lx00200_0_s:
                        .string          "Nov"
# IR_VAR_REF
xchain00153_n00039_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052336
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx
                                                                                        jmp   xchain00153_n00201_α
# IR_ASSIGN_VAR
xchain00153_n00040_α:
                        mov              rdi, qword ptr [rbp + 2608]
                        mov              rsi, qword ptr [rbp + 2616]
                        mov              rdx, qword ptr [rbp + 2656]
                        mov              rcx, qword ptr [rbp + 2664]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain00153_n00039_α
                        mov              qword ptr [rbp + 2640], rax
                        mov              qword ptr [rbp + 2648], rdx
                                                                                        jmp   xchain00153_n00039_α
# IR_LIT_STRING
xchain00153_n00201_α:
                        mov              qword ptr [rbp + 2432], 1
                        mov              rax, qword ptr [rip + .Lx00202_0]
                        mov              qword ptr [rbp + 2440], rax
                                                                                        jmp   xchain00153_n00203_α
.Lx00202_0:
                        .quad            .Lx00202_0_s
.Lx00202_0_s:
                        .string          "DEC"
# IR_SUBSCRIPT x[i] variable
xchain00153_n00203_α:
                        mov              rdi, qword ptr [rbp + 2400]
                        mov              rsi, qword ptr [rbp + 2408]
                        mov              rdx, qword ptr [rbp + 2432]
                        mov              rcx, qword ptr [rbp + 2440]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain00153_n00204_α
                        mov              qword ptr [rbp + 2464], rax
                        mov              qword ptr [rbp + 2472], rdx
                                                                                        jmp   xchain00153_n00205_α
# IR_LIT_STRING
xchain00153_n00205_α:
                        mov              qword ptr [rbp + 2512], 1
                        mov              rax, qword ptr [rip + .Lx00206_0]
                        mov              qword ptr [rbp + 2520], rax
                                                                                        jmp   xchain00153_n00207_α
.Lx00206_0:
                        .quad            .Lx00206_0_s
.Lx00206_0_s:
                        .string          "Dec"
# IR_VAR_REF
xchain00153_n00204_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052336
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx
                                                                                        jmp   xchain00153_n00208_α
# IR_ASSIGN_VAR
xchain00153_n00207_α:
                        mov              rdi, qword ptr [rbp + 2464]
                        mov              rsi, qword ptr [rbp + 2472]
                        mov              rdx, qword ptr [rbp + 2512]
                        mov              rcx, qword ptr [rbp + 2520]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain00153_n00204_α
                        mov              qword ptr [rbp + 2496], rax
                        mov              qword ptr [rbp + 2504], rdx
                                                                                        jmp   xchain00153_n00204_α
# IR_LIT_STRING
xchain00153_n00208_α:
                        mov              qword ptr [rbp + 2288], 1
                        mov              rax, qword ptr [rip + .Lx00209_0]
                        mov              qword ptr [rbp + 2296], rax
                                                                                        jmp   xchain00153_n00210_α
.Lx00209_0:
                        .quad            .Lx00209_0_s
.Lx00209_0_s:
                        .string          "ABT"
# IR_SUBSCRIPT x[i] variable
xchain00153_n00210_α:
                        mov              rdi, qword ptr [rbp + 2256]
                        mov              rsi, qword ptr [rbp + 2264]
                        mov              rdx, qword ptr [rbp + 2288]
                        mov              rcx, qword ptr [rbp + 2296]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain00153_n00211_α
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx
                                                                                        jmp   xchain00153_n00212_α
# IR_LIT_STRING
xchain00153_n00212_α:
                        mov              qword ptr [rbp + 2368], 1
                        mov              rax, qword ptr [rip + .Lx00213_0]
                        mov              qword ptr [rbp + 2376], rax
                                                                                        jmp   xchain00153_n00214_α
.Lx00213_0:
                        .quad            .Lx00213_0_s
.Lx00213_0_s:
                        .string          "abt"
# IR_VAR_REF
xchain00153_n00211_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052336
                        mov              qword ptr [rbp + 2112], rax
                        mov              qword ptr [rbp + 2120], rdx
                                                                                        jmp   xchain00153_n00215_α
# IR_ASSIGN_VAR
xchain00153_n00214_α:
                        mov              rdi, qword ptr [rbp + 2320]
                        mov              rsi, qword ptr [rbp + 2328]
                        mov              rdx, qword ptr [rbp + 2368]
                        mov              rcx, qword ptr [rbp + 2376]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain00153_n00211_α
                        mov              qword ptr [rbp + 2352], rax
                        mov              qword ptr [rbp + 2360], rdx
                                                                                        jmp   xchain00153_n00211_α
# IR_LIT_STRING
xchain00153_n00215_α:
                        mov              qword ptr [rbp + 2144], 1
                        mov              rax, qword ptr [rip + .Lx00216_0]
                        mov              qword ptr [rbp + 2152], rax
                                                                                        jmp   xchain00153_n00217_α
.Lx00216_0:
                        .quad            .Lx00216_0_s
.Lx00216_0_s:
                        .string          "BEF"
# IR_SUBSCRIPT x[i] variable
xchain00153_n00217_α:
                        mov              rdi, qword ptr [rbp + 2112]
                        mov              rsi, qword ptr [rbp + 2120]
                        mov              rdx, qword ptr [rbp + 2144]
                        mov              rcx, qword ptr [rbp + 2152]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain00153_n00218_α
                        mov              qword ptr [rbp + 2176], rax
                        mov              qword ptr [rbp + 2184], rdx
                                                                                        jmp   xchain00153_n00219_α
# IR_LIT_STRING
xchain00153_n00219_α:
                        mov              qword ptr [rbp + 2224], 1
                        mov              rax, qword ptr [rip + .Lx00220_0]
                        mov              qword ptr [rbp + 2232], rax
                                                                                        jmp   xchain00153_n00221_α
.Lx00220_0:
                        .quad            .Lx00220_0_s
.Lx00220_0_s:
                        .string          "bef"
# IR_VAR_REF
xchain00153_n00218_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052336
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx
                                                                                        jmp   xchain00153_n00003_α
# IR_ASSIGN_VAR
xchain00153_n00221_α:
                        mov              rdi, qword ptr [rbp + 2176]
                        mov              rsi, qword ptr [rbp + 2184]
                        mov              rdx, qword ptr [rbp + 2224]
                        mov              rcx, qword ptr [rbp + 2232]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain00153_n00218_α
                        mov              qword ptr [rbp + 2208], rax
                        mov              qword ptr [rbp + 2216], rdx
                                                                                        jmp   xchain00153_n00218_α
# IR_LIT_STRING
xchain00153_n00003_α:
                        mov              qword ptr [rbp + 2000], 1
                        mov              rax, qword ptr [rip + .Lx00222_0]
                        mov              qword ptr [rbp + 2008], rax
                                                                                        jmp   xchain00153_n00223_α
.Lx00222_0:
                        .quad            .Lx00222_0_s
.Lx00222_0_s:
                        .string          "AFT"
# IR_SUBSCRIPT x[i] variable
xchain00153_n00223_α:
                        mov              rdi, qword ptr [rbp + 1968]
                        mov              rsi, qword ptr [rbp + 1976]
                        mov              rdx, qword ptr [rbp + 2000]
                        mov              rcx, qword ptr [rbp + 2008]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain00153_n00005_α
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx
                                                                                        jmp   xchain00153_n00004_α
# IR_LIT_STRING
xchain00153_n00004_α:
                        mov              qword ptr [rbp + 2080], 1
                        mov              rax, qword ptr [rip + .Lx00224_0]
                        mov              qword ptr [rbp + 2088], rax
                                                                                        jmp   xchain00153_n00225_α
.Lx00224_0:
                        .quad            .Lx00224_0_s
.Lx00224_0_s:
                        .string          "aft"
# IR_VAR_REF
xchain00153_n00005_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052336
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx
                                                                                        jmp   xchain00153_n00226_α
# IR_ASSIGN_VAR
xchain00153_n00225_α:
                        mov              rdi, qword ptr [rbp + 2032]
                        mov              rsi, qword ptr [rbp + 2040]
                        mov              rdx, qword ptr [rbp + 2080]
                        mov              rcx, qword ptr [rbp + 2088]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain00153_n00005_α
                        mov              qword ptr [rbp + 2064], rax
                        mov              qword ptr [rbp + 2072], rdx
                                                                                        jmp   xchain00153_n00005_α
# IR_LIT_STRING
xchain00153_n00226_α:
                        mov              qword ptr [rbp + 1856], 1
                        mov              rax, qword ptr [rip + .Lx00227_0]
                        mov              qword ptr [rbp + 1864], rax
                                                                                        jmp   xchain00153_n00228_α
.Lx00227_0:
                        .quad            .Lx00227_0_s
.Lx00227_0_s:
                        .string          "CAL"
# IR_SUBSCRIPT x[i] variable
xchain00153_n00228_α:
                        mov              rdi, qword ptr [rbp + 1824]
                        mov              rsi, qword ptr [rbp + 1832]
                        mov              rdx, qword ptr [rbp + 1856]
                        mov              rcx, qword ptr [rbp + 1864]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain00153_n00229_α
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx
                                                                                        jmp   xchain00153_n00230_α
# IR_LIT_STRING
xchain00153_n00230_α:
                        mov              qword ptr [rbp + 1936], 1
                        mov              rax, qword ptr [rip + .Lx00231_0]
                        mov              qword ptr [rbp + 1944], rax
                                                                                        jmp   xchain00153_n00006_α
.Lx00231_0:
                        .quad            .Lx00231_0_s
.Lx00231_0_s:
                        .string          "cal"
# IR_VAR_REF
xchain00153_n00229_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052336
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
                                                                                        jmp   xchain00153_n00232_α
# IR_ASSIGN_VAR
xchain00153_n00006_α:
                        mov              rdi, qword ptr [rbp + 1888]
                        mov              rsi, qword ptr [rbp + 1896]
                        mov              rdx, qword ptr [rbp + 1936]
                        mov              rcx, qword ptr [rbp + 1944]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain00153_n00229_α
                        mov              qword ptr [rbp + 1920], rax
                        mov              qword ptr [rbp + 1928], rdx
                                                                                        jmp   xchain00153_n00229_α
# IR_LIT_STRING
xchain00153_n00232_α:
                        mov              qword ptr [rbp + 1712], 1
                        mov              rax, qword ptr [rip + .Lx00233_0]
                        mov              qword ptr [rbp + 1720], rax
                                                                                        jmp   xchain00153_n00007_α
.Lx00233_0:
                        .quad            .Lx00233_0_s
.Lx00233_0_s:
                        .string          "EST"
# IR_SUBSCRIPT x[i] variable
xchain00153_n00007_α:
                        mov              rdi, qword ptr [rbp + 1680]
                        mov              rsi, qword ptr [rbp + 1688]
                        mov              rdx, qword ptr [rbp + 1712]
                        mov              rcx, qword ptr [rbp + 1720]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain00153_n1_α
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                                                                                        jmp   xchain00153_n00234_α
# IR_LIT_STRING
xchain00153_n00234_α:
                        mov              qword ptr [rbp + 1792], 1
                        mov              rax, qword ptr [rip + .Lx00235_0]
                        mov              qword ptr [rbp + 1800], rax
                                                                                        jmp   xchain00153_n00236_α
.Lx00235_0:
                        .quad            .Lx00235_0_s
.Lx00235_0_s:
                        .string          "est"
# IR_ASSIGN_VAR
xchain00153_n00236_α:
                        mov              rdi, qword ptr [rbp + 1744]
                        mov              rsi, qword ptr [rbp + 1752]
                        mov              rdx, qword ptr [rbp + 1792]
                        mov              rcx, qword ptr [rbp + 1800]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain00153_n1_α
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx
                                                                                        jmp   xchain00153_n3_α
proc_geddate_res:
                        add              rsp, 8
                        pop              rbp
proc_geddate_β:
                                                                                        jmp   proc_geddate_ω
proc_geddate_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 4360]
                        lea              rsp, [rbp + 4384]
                        mov              rbp, [rbp + 4376]
                                                                                        jmp   rax
proc_geddate_ω:
                        mov              rax, [rbp + 4368]
                        lea              rsp, [rbp + 4384]
                        mov              rbp, [rbp + 4376]
                                                                                        jmp   rax
proc_geddate_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
                        pop              r11
                        sub              rsp, 4400
                        mov              qword ptr [rsp + 4392], rbp
                        mov              rbp, rsp
                        add              rbp, 16
                        mov              qword ptr [rbp + 4352], r11
                        lea              rax, [rip + .Lx00237_2]
                        mov              qword ptr [rbp + 4360], rax
                        lea              rax, [rip + .Lx00237_3]
                        mov              qword ptr [rbp + 4368], rax
                        mov              qword ptr [rbp + 4296], rbp
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 4288
                        mov              edx, 4352
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_geddate_α_body
.Lx00237_2:
                        mov              rdx, qword ptr [rsp + -4400]
                        mov              rcx, rsp
                        add              rcx, -4384
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00237_3:
                        mov              rdi, qword ptr [rsp + -4400]
                        mov              rsi, rsp
                        add              rsi, -4384
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lclassspec0:           .string          "person(n,k,r)"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lclassspec0]
                        call             record_register@PLT
                        .section         .rodata
.Lclassspec1:           .string          "gedcom(tree,id,fam,ind)"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lclassspec1]
                        call             record_register@PLT
                        .section         .rodata
.Lclassspec2:           .string          "gednode(level,id,tag,data,lnum,parent,ref,sub)"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lclassspec2]
                        call             record_register@PLT
                        .section         .rodata
.Lstartup_pname0:       .string          "event"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_event_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1248
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_event_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "refto"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_refto_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 544
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_refto_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "sortkey"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_sortkey_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 176
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_sortkey_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "gedload"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_gedload_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 3904
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_gedload_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "gedscan"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_gedscan_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1904
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_gedscan_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "gedwalk"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_gedwalk_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 288
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "gedsub"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_gedsub_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 992
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_variadic@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "gedval"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname7]
                        lea              rsi, [rip + proc_gedval_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 240
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_variadic@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname8:       .string          "gedref"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname8]
                        lea              rsi, [rip + proc_gedref_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 272
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_variadic@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname9:       .string          "gedfnf"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname9]
                        lea              rsi, [rip + proc_gedfnf_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1648
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        lea              rsi, [rip + proc_gedfnf_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname10:      .string          "gedlnf"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname10]
                        lea              rsi, [rip + proc_gedlnf_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 1440
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        lea              rsi, [rip + proc_gedlnf_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname11:      .string          "geddate"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname11]
                        lea              rsi, [rip + proc_geddate_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 4352
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        lea              rsi, [rip + proc_geddate_dcα]
                        call             rt_proc_set_dcfn@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "ptab"
.Lgvan1:                .string          "gedscan__STATIC__alnum"
.Lgvan2:                .string          "gedscan__INITFLAG__0"
.Lgvan3:                .string          "geddate__STATIC__ftab"
.Lgvan4:                .string          "geddate__INITFLAG__0"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .quad            .Lgvan3
                        .quad            .Lgvan4
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 5
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 5
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
main_α:
#=======================================================================================================================
                        .global          main_α
                        .global          main_β
                        .global          main_γ
                        .global          main_ω
                        sub              rsp, 65544
                        mov              rdi, rsp
                        mov              ecx, 65544
                        xor              eax, eax
                        rep stosb
                        mov              qword ptr [rsp + 6728], rsp
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
# IR_DISJUNCTION_NARY
xchain00238_n0_α:
                        mov              qword ptr [rbp + 6096], 0
                        mov              qword ptr [rbp + 6104], 0
                        mov              dword ptr [rbp + 6112], 0
                                                                                        jmp   xchain00238_n2_α
xchain00238_n0_as:
                        mov              eax, dword ptr [rbp + 6112]
                        cmp              eax, 0
                                                                                        jne   .Lx00239_0
                        mov              rax, qword ptr [rbp + 6128]
                        mov              qword ptr [rbp + 6096], rax
                        mov              rax, qword ptr [rbp + 6136]
                        mov              qword ptr [rbp + 6104], rax
                                                                                        jmp   xchain00238_n1_α
.Lx00239_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00239_1
                        mov              rax, qword ptr [rbp + 6672]
                        mov              qword ptr [rbp + 6096], rax
                        mov              rax, qword ptr [rbp + 6680]
                        mov              qword ptr [rbp + 6104], rax
                                                                                        jmp   xchain00238_n1_α
.Lx00239_1:
                                                                                        jmp   xchain00238_n1_α
xchain00238_n0_β:
                        mov              eax, dword ptr [rbp + 6112]
                        cmp              eax, 0
                                                                                        je    xchain00238_n3_β
                                                                                        jmp   xchain00238_n1_α
xchain00238_n0_af:
                        add              dword ptr [rbp + 6112], 1
                        mov              eax, dword ptr [rbp + 6112]
                        cmp              eax, 1
                                                                                        je    xchain00238_n4_α
                                                                                        jmp   xchain00238_n1_α
# IR_VAR
xchain00238_n1_α:
                        mov              rax, qword ptr [rbp + 6848]
                        mov              qword ptr [rbp + 6064], rax
                        mov              rax, qword ptr [rbp + 6856]
                        mov              qword ptr [rbp + 6072], rax
                                                                                        jmp   xchain00238_n7_α
# IR_VAR
xchain00238_n2_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 6608], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 6616], rax
                                                                                        jmp   xchain00238_n9_α
xchain00238_n2_β:
                                                                                        jmp   xchain00238_n0_af
# IR_DISJUNCTION_NARY
xchain00238_n3_α:
                        mov              qword ptr [rbp + 6144], 0
                        mov              qword ptr [rbp + 6152], 0
                        mov              dword ptr [rbp + 6160], 0
                                                                                        jmp   xchain00238_n10_α
xchain00238_n3_as:
                        mov              eax, dword ptr [rbp + 6160]
                        cmp              eax, 0
                                                                                        jne   .Lx00240_0
                        mov              rax, qword ptr [rbp + 6176]
                        mov              qword ptr [rbp + 6144], rax
                        mov              rax, qword ptr [rbp + 6184]
                        mov              qword ptr [rbp + 6152], rax
                                                                                        jmp   xchain00238_n5_α
.Lx00240_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00240_1
                        mov              rax, qword ptr [rbp + 6336]
                        mov              qword ptr [rbp + 6144], rax
                        mov              rax, qword ptr [rbp + 6344]
                        mov              qword ptr [rbp + 6152], rax
                                                                                        jmp   xchain00238_n5_α
.Lx00240_1:
                                                                                        jmp   xchain00238_n5_α
xchain00238_n3_β:
                        mov              eax, dword ptr [rbp + 6160]
                        cmp              eax, 0
                                                                                        je    xchain00238_n3_af
                                                                                        jmp   xchain00238_n3_af
xchain00238_n3_af:
                        add              dword ptr [rbp + 6160], 1
                        mov              eax, dword ptr [rbp + 6160]
                        cmp              eax, 1
                                                                                        je    xchain00238_n11_α
                                                                                        jmp   xchain00238_n1_α
# KEYWORD_read
xchain00238_n4_α:
                        mov              rdi, qword ptr [rip + .Lx00241_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    xchain00238_n1_α
                        mov              qword ptr [rbp + 6688], rax
                        mov              qword ptr [rbp + 6696], rdx
                                                                                        jmp   xchain00238_n6_α
xchain00238_n4_β:
                                                                                        jmp   xchain00238_n1_α
.Lx00241_0:
                        .quad            .Lx00241_0_s
.Lx00241_0_s:
                        .string          "&input"
xchain00238_n5_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 6144]
                        mov              rdx, qword ptr [rbp + 6152]
                        mov              qword ptr [rbp + 6848], rax
                        mov              qword ptr [rbp + 6856], rdx
                        mov              qword ptr [rbp + 6128], rax
                        mov              qword ptr [rbp + 6136], rdx
                                                                                        jmp   xchain00238_n0_as
xchain00238_n5_β:
                                                                                        jmp   xchain00238_n1_α
xchain00238_n6_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 6688]
                        mov              rdx, qword ptr [rbp + 6696]
                        mov              qword ptr [rbp + 6848], rax
                        mov              qword ptr [rbp + 6856], rdx
                        mov              qword ptr [rbp + 6672], rax
                        mov              qword ptr [rbp + 6680], rdx
                                                                                        jmp   xchain00238_n0_as
xchain00238_n6_β:
                                                                                        jmp   xchain00238_n1_α
xchain00238_n7_α:
                        lea              rsi, [rbp + 6064]
                        call             proc_gedload_dcα
                                                                                        jmp   .Lx00242_2
.Lx00242_2:
                        mov              qword ptr [rbp + 6016], rax
                        mov              qword ptr [rbp + 6024], rdx
                        cmp              eax, 99
                                                                                        je    xchain00238_n8_α
                                                                                        jmp   xchain00238_n14_α
xchain00238_n7_β:
                                                                                        jmp   xchain00238_n8_α
.Lx00242_0:
                        .quad            .Lx00242_0_s
.Lx00242_0_s:
                        .string          "gedload"
# IR_VAR
xchain00238_n8_α:
                        mov              rax, qword ptr [rbp + 6848]
                        mov              qword ptr [rbp + 5968], rax
                        mov              rax, qword ptr [rbp + 6856]
                        mov              qword ptr [rbp + 5976], rax
                                                                                        jmp   xchain00238_n15_α
# IR_UNOP
xchain00238_n9_α:
                        mov              rdi, qword ptr [rbp + 16]
                        mov              rsi, qword ptr [rbp + 24]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 6576], rax
                        mov              qword ptr [rbp + 6584], rdx
                                                                                        jmp   xchain00238_n17_α
# IR_VAR_REF
xchain00238_n10_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 6224], rax
                        mov              qword ptr [rbp + 6232], rdx
                                                                                        jmp   xchain00238_n18_α
xchain00238_n10_β:
                                                                                        jmp   xchain00238_n3_af
# IR_LIT_STRING
xchain00238_n11_α:
                        mov              qword ptr [rbp + 6400], 1
                        mov              rax, qword ptr [rip + .Lx00243_0]
                        mov              qword ptr [rbp + 6408], rax
                                                                                        jmp   xchain00238_n19_α
xchain00238_n11_β:
                                                                                        jmp   xchain00238_n3_af
.Lx00243_0:
                        .quad            .Lx00243_0_s
.Lx00243_0_s:
                        .string          "can't open "
xchain00238_n12_α:
# BOX IR_CALL open(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6320] -> [zr+6192]
                        mov              rax, qword ptr [rbp + 6320]
                        mov              qword ptr [rbp + 6192], rax
                        mov              rax, qword ptr [rbp + 6328]
                        mov              qword ptr [rbp + 6200], rax
                        .section         .rodata
.Lrkfn779:              .string          "open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn779]
                        lea              rsi, [rbp + 6192]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 6176], rax
                        mov              qword ptr [rbp + 6184], rdx
                        cmp              eax, 99
                                                                                        je    xchain00238_n3_af
                                                                                        jmp   xchain00238_n3_as
xchain00238_n12_β:
                                                                                        jmp   xchain00238_n3_af
xchain00238_n13_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6400] -> [zr+6352]
                        mov              rax, qword ptr [rbp + 6400]
                        mov              qword ptr [rbp + 6352], rax
                        mov              rax, qword ptr [rbp + 6408]
                        mov              qword ptr [rbp + 6360], rax
# marshal arg1 = producer-box slot [zr+6528] -> [zr+6368]
                        mov              rax, qword ptr [rbp + 6528]
                        mov              qword ptr [rbp + 6368], rax
                        mov              rax, qword ptr [rbp + 6536]
                        mov              qword ptr [rbp + 6376], rax
                        .section         .rodata
.Lrkfn781:              .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn781]
                        lea              rsi, [rbp + 6352]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 6336], rax
                        mov              qword ptr [rbp + 6344], rdx
                        cmp              eax, 99
                                                                                        je    xchain00238_n3_af
                                                                                        jmp   xchain00238_n3_as
xchain00238_n13_β:
                                                                                        jmp   xchain00238_n3_af
xchain00238_n14_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 6016]
                        mov              rdx, qword ptr [rbp + 6024]
                        mov              qword ptr [rbp + 6832], rax
                        mov              qword ptr [rbp + 6840], rdx
                        mov              qword ptr [rbp + 6000], rax
                        mov              qword ptr [rbp + 6008], rdx
                                                                                        jmp   xchain00238_n8_α
xchain00238_n15_α:
# BOX IR_CALL close(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5968] -> [zr+5936]
                        mov              rax, qword ptr [rbp + 5968]
                        mov              qword ptr [rbp + 5936], rax
                        mov              rax, qword ptr [rbp + 5976]
                        mov              qword ptr [rbp + 5944], rax
                        .section         .rodata
.Lrkfn784:              .string          "close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn784]
                        lea              rsi, [rbp + 5936]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5920], rax
                        mov              qword ptr [rbp + 5928], rdx
                        cmp              eax, 99
                                                                                        je    xchain00238_n16_α
                                                                                        jmp   xchain00238_n16_α
xchain00238_n15_β:
                                                                                        jmp   xchain00238_n16_α
# IR_MAKE_LIST
xchain00238_n16_α:
                        lea              rdi, [rbp + 5920]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 5904], rax
                        mov              qword ptr [rbp + 5912], rdx
                                                                                        jmp   xchain00238_n20_α
# IR_LIT_INTEGER
xchain00238_n17_α:
                        mov              qword ptr [rbp + 6640], 6
                        mov              rax, qword ptr [rip + .Lx00244_0]
                        mov              qword ptr [rbp + 6648], rax
                                                                                        jmp   xchain00238_n21_α
.Lx00244_0:
                        .quad            0
# IR_LIT_INTEGER
xchain00238_n18_α:
                        mov              qword ptr [rbp + 6256], 6
                        mov              rax, qword ptr [rip + .Lx00245_0]
                        mov              qword ptr [rbp + 6264], rax
                                                                                        jmp   xchain00238_n22_α
.Lx00245_0:
                        .quad            1
# IR_VAR_REF
xchain00238_n19_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 6432], rax
                        mov              qword ptr [rbp + 6440], rdx
                                                                                        jmp   xchain00238_n23_α
xchain00238_n20_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 5904]
                        mov              rdx, qword ptr [rbp + 5912]
                        mov              qword ptr [rbp + 6752], rax
                        mov              qword ptr [rbp + 6760], rdx
                        mov              qword ptr [rbp + 5888], rax
                        mov              qword ptr [rbp + 5896], rdx
                                                                                        jmp   xchain00238_n24_α
xchain00238_n21_α:
# IR_BINOP_TEST
                        mov              eax, dword ptr [rbp + 6576]
                        cmp              eax, 100
                                                                                        je    .Lx00246_0
                        mov              eax, dword ptr [rbp + 6640]
                        cmp              eax, 100
                                                                                        je    .Lx00246_0
                        mov              eax, dword ptr [rbp + 6576]
                        cmp              eax, 6
                                                                                        jne   .Lx00246_2
                        mov              eax, dword ptr [rbp + 6640]
                        cmp              eax, 6
                                                                                        jne   .Lx00246_2
.Lx00246_1:
                        mov              rax, qword ptr [rbp + 6584]
                        mov              rcx, qword ptr [rbp + 6648]
                        cmp              rax, rcx
                                                                                        jle   xchain00238_n0_af
                        mov              rcx, qword ptr [rbp + 6640]
                        mov              qword ptr [rbp + 6544], rcx
                        mov              rcx, qword ptr [rbp + 6648]
                        mov              qword ptr [rbp + 6552], rcx
                                                                                        jmp   xchain00238_n3_α
.Lx00246_0:
                        mov              rdi, qword ptr [rbp + 6576]
                        mov              rsi, qword ptr [rbp + 6584]
                        mov              rdx, qword ptr [rbp + 6640]
                        mov              rcx, qword ptr [rbp + 6648]
                        mov              r8d, 7
                        lea              r9, [rbp + 6544]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx00246_1
                        cmp              eax, 1
                                                                                        je    xchain00238_n0_af
                                                                                        jmp   xchain00238_n3_α
.Lx00246_2:
                        mov              rdi, qword ptr [rbp + 6576]
                        mov              rsi, qword ptr [rbp + 6584]
                        mov              rdx, qword ptr [rbp + 6640]
                        mov              rcx, qword ptr [rbp + 6648]
                        mov              r8d, 7
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    xchain00238_n0_af
                        mov              rax, qword ptr [rbp + 6640]
                        mov              qword ptr [rbp + 6544], rax
                        mov              rax, qword ptr [rbp + 6648]
                        mov              qword ptr [rbp + 6552], rax
                                                                                        jmp   xchain00238_n3_α
# IR_SUBSCRIPT x[i] variable
xchain00238_n22_α:
                        mov              rdi, qword ptr [rbp + 6224]
                        mov              rsi, qword ptr [rbp + 6232]
                        mov              rdx, qword ptr [rbp + 6256]
                        mov              rcx, qword ptr [rbp + 6264]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain00238_n3_af
                        mov              qword ptr [rbp + 6288], rax
                        mov              qword ptr [rbp + 6296], rdx
                                                                                        jmp   xchain00238_n25_α
# IR_LIT_INTEGER
xchain00238_n23_α:
                        mov              qword ptr [rbp + 6464], 6
                        mov              rax, qword ptr [rip + .Lx00247_0]
                        mov              qword ptr [rbp + 6472], rax
                                                                                        jmp   xchain00238_n26_α
.Lx00247_0:
                        .quad            1
xchain00238_n24_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
                        .section         .rodata
.Lrkfn796:              .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn796]
                        lea              rsi, [rbp + 5872]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5856], rax
                        mov              qword ptr [rbp + 5864], rdx
                        cmp              eax, 99
                                                                                        je    xchain00238_n28_α
                                                                                        jmp   xchain00238_n27_α
xchain00238_n24_β:
                                                                                        jmp   xchain00238_n28_α
# IR_DEREF variable -> value
xchain00238_n25_α:
                        mov              rdi, qword ptr [rbp + 6288]
                        mov              rsi, qword ptr [rbp + 6296]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    xchain00238_n3_af
                        mov              qword ptr [rbp + 6320], rax
                        mov              qword ptr [rbp + 6328], rdx
                                                                                        jmp   xchain00238_n12_α
# IR_SUBSCRIPT x[i] variable
xchain00238_n26_α:
                        mov              rdi, qword ptr [rbp + 6432]
                        mov              rsi, qword ptr [rbp + 6440]
                        mov              rdx, qword ptr [rbp + 6464]
                        mov              rcx, qword ptr [rbp + 6472]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain00238_n3_af
                        mov              qword ptr [rbp + 6496], rax
                        mov              qword ptr [rbp + 6504], rdx
                                                                                        jmp   xchain00238_n29_α
# IR_ASSIGN gva
xchain00238_n27_α:
                        mov              rax, qword ptr [rbp + 5856]
                        mov              rdx, qword ptr [rbp + 5864]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                        mov              qword ptr [rbp + 5840], rax
                        mov              qword ptr [rbp + 5848], rdx
                                                                                        jmp   xchain00238_n28_α
# IR_VAR
xchain00238_n28_α:
                        mov              rax, qword ptr [rbp + 6832]
                        mov              qword ptr [rbp + 5328], rax
                        mov              rax, qword ptr [rbp + 6840]
                        mov              qword ptr [rbp + 5336], rax
                                                                                        jmp   xchain00238_n30_α
# IR_DEREF variable -> value
xchain00238_n29_α:
                        mov              rdi, qword ptr [rbp + 6496]
                        mov              rsi, qword ptr [rbp + 6504]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    xchain00238_n3_af
                        mov              qword ptr [rbp + 6528], rax
                        mov              qword ptr [rbp + 6536], rdx
                                                                                        jmp   xchain00238_n13_α
# IR_FIELD_GET
xchain00238_n30_α:
                        mov              rdi, qword ptr [rip + .Lx00248_0]
                        mov              rsi, qword ptr [rbp + 5328]
                        mov              rdx, qword ptr [rbp + 5336]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    xchain00238_n31_α
                        mov              qword ptr [rbp + 5296], rax
                        mov              qword ptr [rbp + 5304], rdx
                                                                                        jmp   xchain00238_n32_α
.Lx00248_0:
                        .quad            .Lx00248_0_s
.Lx00248_0_s:
                        .string          "ind"
# IR_VAR
xchain00238_n31_α:
                        mov              rax, qword ptr [rbp + 6752]
                        mov              qword ptr [rbp + 5184], rax
                        mov              rax, qword ptr [rbp + 6760]
                        mov              qword ptr [rbp + 5192], rax
                                                                                        jmp   xchain00238_n33_α
# IR_LIST_BANG
xchain00238_n32_α:
                        mov              qword ptr [rbp + 5280], 0
.Lx00249_0:
                        mov              rdi, qword ptr [rbp + 5296]
                        mov              rsi, qword ptr [rbp + 5304]
                        mov              rdx, qword ptr [rbp + 5280]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 5264], rax
                        mov              qword ptr [rbp + 5272], rdx
                        cmp              rax, 99
                                                                                        je    xchain00238_n31_α
                                                                                        jmp   xchain00238_n35_α
xchain00238_n32_β:
                        inc              qword ptr [rbp + 5280]
                                                                                        jmp   .Lx00249_0
# IR_LIT_INTEGER
xchain00238_n33_α:
                        mov              qword ptr [rbp + 5216], 6
                        mov              rax, qword ptr [rip + .Lx00250_0]
                        mov              qword ptr [rbp + 5224], rax
                                                                                        jmp   xchain00238_n36_α
.Lx00250_0:
                        .quad            2
# IR_LIT_INTEGER
xchain00238_n34_α:
                        mov              qword ptr [rbp + 5072], 6
                        mov              rax, qword ptr [rip + .Lx00251_0]
                        mov              qword ptr [rbp + 5080], rax
                                                                                        jmp   xchain00238_n37_α
.Lx00251_0:
                        .quad            0
xchain00238_n35_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 5264]
                        mov              rdx, qword ptr [rbp + 5272]
                        mov              qword ptr [rbp + 6784], rax
                        mov              qword ptr [rbp + 6792], rdx
                        mov              qword ptr [rbp + 5248], rax
                        mov              qword ptr [rbp + 5256], rdx
                                                                                        jmp   xchain00238_n38_α
xchain00238_n36_α:
# BOX IR_CALL sortf(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5184] -> [zr+5136]
                        mov              rax, qword ptr [rbp + 5184]
                        mov              qword ptr [rbp + 5136], rax
                        mov              rax, qword ptr [rbp + 5192]
                        mov              qword ptr [rbp + 5144], rax
# marshal arg1 = producer-box slot [zr+5216] -> [zr+5152]
                        mov              rax, qword ptr [rbp + 5216]
                        mov              qword ptr [rbp + 5152], rax
                        mov              rax, qword ptr [rbp + 5224]
                        mov              qword ptr [rbp + 5160], rax
                        .section         .rodata
.Lrkfn812:              .string          "sortf"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn812]
                        lea              rsi, [rbp + 5136]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5120], rax
                        mov              qword ptr [rbp + 5128], rdx
                        cmp              eax, 99
                                                                                        je    xchain00238_n34_α
                                                                                        jmp   xchain00238_n39_α
xchain00238_n36_β:
                                                                                        jmp   xchain00238_n34_α
xchain00238_n37_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 5072]
                        mov              rdx, qword ptr [rbp + 5080]
                        mov              qword ptr [rbp + 6816], rax
                        mov              qword ptr [rbp + 6824], rdx
                        mov              qword ptr [rbp + 5056], rax
                        mov              qword ptr [rbp + 5064], rdx
                                                                                        jmp   xchain00238_n40_α
# IR_BOUND
xchain00238_n38_α:
                        mov              qword ptr [rbp + 5360], rsp
                                                                                        jmp   xchain00238_n41_α
xchain00238_n39_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 5120]
                        mov              rdx, qword ptr [rbp + 5128]
                        mov              qword ptr [rbp + 6752], rax
                        mov              qword ptr [rbp + 6760], rdx
                        mov              qword ptr [rbp + 5104], rax
                        mov              qword ptr [rbp + 5112], rdx
                                                                                        jmp   xchain00238_n34_α
# IR_VAR
xchain00238_n40_α:
                        mov              rax, qword ptr [rbp + 6752]
                        mov              qword ptr [rbp + 4864], rax
                        mov              rax, qword ptr [rbp + 6760]
                        mov              qword ptr [rbp + 4872], rax
                                                                                        jmp   xchain00238_n42_α
# IR_VAR
xchain00238_n41_α:
                        mov              rax, qword ptr [rbp + 6752]
                        mov              qword ptr [rbp + 5472], rax
                        mov              rax, qword ptr [rbp + 6760]
                        mov              qword ptr [rbp + 5480], rax
                                                                                        jmp   xchain00238_n44_α
# IR_LIST_BANG
xchain00238_n42_α:
                        mov              qword ptr [rbp + 4848], 0
.Lx00252_0:
                        mov              rdi, qword ptr [rbp + 4864]
                        mov              rsi, qword ptr [rbp + 4872]
                        mov              rdx, qword ptr [rbp + 4848]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 4832], rax
                        mov              qword ptr [rbp + 4840], rdx
                        cmp              rax, 99
                                                                                        je    xchain00238_n43_α
                                                                                        jmp   xchain00238_n46_α
xchain00238_n42_β:
                        inc              qword ptr [rbp + 4848]
                                                                                        jmp   .Lx00252_0
# IR_VAR
xchain00238_n43_α:
                        mov              rax, qword ptr [rbp + 6752]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 6760]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   xchain00238_n47_α
# IR_VAR_REF
xchain00238_n44_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052288
                        mov              qword ptr [rbp + 5504], rax
                        mov              qword ptr [rbp + 5512], rdx
                                                                                        jmp   xchain00238_n48_α
# IR_UNMARK
xchain00238_n45_α:
                        mov              rsp, qword ptr [rbp + 5360]
                                                                                        jmp   xchain00238_n32_β
# IR_FIELD_GET lv
xchain00238_n46_α:
                        mov              rdi, qword ptr [rip + .Lx00253_0]
                        mov              rsi, qword ptr [rbp + 4832]
                        mov              rdx, qword ptr [rbp + 4840]
                        call             rt_field_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain00238_n43_α
                        mov              qword ptr [rbp + 4800], rax
                        mov              qword ptr [rbp + 4808], rdx
                                                                                        jmp   xchain00238_n49_α
.Lx00253_0:
                        .quad            .Lx00253_0_s
.Lx00253_0_s:
                        .string          "n"
# IR_LIST_BANG
xchain00238_n47_α:
                        mov              qword ptr [rbp + 64], 0
.Lx00254_0:
                        mov              rdi, qword ptr [rbp + 80]
                        mov              rsi, qword ptr [rbp + 88]
                        mov              rdx, qword ptr [rbp + 64]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              rax, 99
                                                                                        je    main_ω
                                                                                        jmp   xchain00238_n50_α
xchain00238_n47_β:
                        inc              qword ptr [rbp + 64]
                                                                                        jmp   .Lx00254_0
# IR_VAR
xchain00238_n48_α:
                        mov              rax, qword ptr [rbp + 6784]
                        mov              qword ptr [rbp + 5536], rax
                        mov              rax, qword ptr [rbp + 6792]
                        mov              qword ptr [rbp + 5544], rax
                                                                                        jmp   xchain00238_n51_α
# IR_VAR
xchain00238_n49_α:
                        mov              rax, qword ptr [rbp + 6816]
                        mov              qword ptr [rbp + 4992], rax
                        mov              rax, qword ptr [rbp + 6824]
                        mov              qword ptr [rbp + 5000], rax
                                                                                        jmp   xchain00238_n52_α
xchain00238_n50_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 6736], rax
                        mov              qword ptr [rbp + 6744], rdx
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                                                                                        jmp   xchain00238_n53_α
# IR_SUBSCRIPT x[i] variable
xchain00238_n51_α:
                        mov              rdi, qword ptr [rbp + 5504]
                        mov              rsi, qword ptr [rbp + 5512]
                        mov              rdx, qword ptr [rbp + 5536]
                        mov              rcx, qword ptr [rbp + 5544]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain00238_n45_α
                        mov              qword ptr [rbp + 5568], rax
                        mov              qword ptr [rbp + 5576], rdx
                                                                                        jmp   xchain00238_n54_α
# IR_LIT_INTEGER
xchain00238_n52_α:
                        mov              qword ptr [rbp + 5024], 6
                        mov              rax, qword ptr [rip + .Lx00255_0]
                        mov              qword ptr [rbp + 5032], rax
                                                                                        jmp   xchain00238_n55_α
.Lx00255_0:
                        .quad            1
# IR_BOUND
xchain00238_n53_α:
                        mov              qword ptr [rbp + 112], rsp
                                                                                        jmp   xchain00238_n56_α
# IR_LIT_INTEGER
xchain00238_n54_α:
                        mov              qword ptr [rbp + 5696], 6
                        mov              rax, qword ptr [rip + .Lx00256_0]
                        mov              qword ptr [rbp + 5704], rax
                                                                                        jmp   xchain00238_n57_α
.Lx00256_0:
                        .quad            0
# IR_COERCE_NUMERIC
xchain00238_n55_α:
                        mov              eax, dword ptr [rbp + 6816]
                        cmp              eax, 7
                                                                                        je    .Lx00257_1
                        cmp              eax, 6
                                                                                        jne   .Lx00257_0
                        mov              eax, dword ptr [rbp + 5024]
                        cmp              eax, 6
                                                                                        jne   .Lx00257_0
.Lx00257_1:
                        mov              rax, qword ptr [rbp + 6816]
                        mov              qword ptr [rbp + 4960], rax
                        mov              rax, qword ptr [rbp + 6824]
                        mov              qword ptr [rbp + 4968], rax
                                                                                        jmp   xchain00238_n58_α
.Lx00257_0:
                        lea              rdi, [rbp + 6816]
                        lea              rsi, [rbp + 5024]
                        lea              rdx, [rbp + 4960]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   xchain00238_n58_α
xchain00238_n56_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
                        .section         .rodata
.Lrkfn845:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn845]
                        lea              rsi, [rbp + 4784]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4768], rax
                        mov              qword ptr [rbp + 4776], rdx
                        cmp              eax, 99
                                                                                        je    xchain00238_n59_α
                                                                                        jmp   xchain00238_n59_α
xchain00238_n56_β:
                                                                                        jmp   xchain00238_n59_α
# IR_VAR
xchain00238_n57_α:
                        mov              rax, qword ptr [rbp + 6784]
                        mov              qword ptr [rbp + 5776], rax
                        mov              rax, qword ptr [rbp + 6792]
                        mov              qword ptr [rbp + 5784], rax
                                                                                        jmp   xchain00238_n60_α
xchain00238_n58_α:
# IR_BINOP_ARITH
                        mov              eax, dword ptr [rbp + 4960]
                        cmp              eax, 100
                                                                                        je    .Lx00258_0
                        mov              eax, dword ptr [rbp + 4960]
                        cmp              eax, 6
                                                                                        jne   .Lx00258_2
.Lx00258_1:
                        mov              rax, qword ptr [rbp + 4968]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 4928], 6
                        mov              qword ptr [rbp + 4936], rax
                                                                                        jmp   xchain00238_n61_α
.Lx00258_0:
                        mov              rdi, qword ptr [rbp + 4960]
                        mov              rsi, qword ptr [rbp + 4968]
                        mov              rdx, qword ptr [rbp + 5024]
                        mov              rcx, qword ptr [rbp + 5032]
                        mov              r8d, 0
                        lea              r9, [rbp + 4928]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   xchain00238_n61_α
.Lx00258_2:
                        mov              rdi, qword ptr [rbp + 4960]
                        mov              rsi, qword ptr [rbp + 4968]
                        mov              rdx, qword ptr [rbp + 5024]
                        mov              rcx, qword ptr [rbp + 5032]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    xchain00238_n42_β
                        mov              qword ptr [rbp + 4928], rax
                        mov              qword ptr [rbp + 4936], rdx
                                                                                        jmp   xchain00238_n61_α
xchain00238_n58_β:
                                                                                        jmp   xchain00238_n42_β
# IR_LIT_STRING
xchain00238_n59_α:
                        mov              qword ptr [rbp + 4528], 1
                        mov              rax, qword ptr [rip + .Lx00259_0]
                        mov              qword ptr [rbp + 4536], rax
                                                                                        jmp   xchain00238_n62_α
.Lx00259_0:
                        .quad            .Lx00259_0_s
.Lx00259_0_s:
                        .string          "["
xchain00238_n60_α:
                        lea              rsi, [rbp + 5776]
                        call             proc_sortkey_dcα
                                                                                        jmp   .Lx00260_2
.Lx00260_2:
                        mov              qword ptr [rbp + 5728], rax
                        mov              qword ptr [rbp + 5736], rdx
                        cmp              eax, 99
                                                                                        je    xchain00238_n45_α
                                                                                        jmp   xchain00238_n63_α
xchain00238_n60_β:
                                                                                        jmp   xchain00238_n45_α
.Lx00260_0:
                        .quad            .Lx00260_0_s
.Lx00260_0_s:
                        .string          "sortkey"
xchain00238_n61_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 4928]
                        mov              rdx, qword ptr [rbp + 4936]
                        mov              qword ptr [rbp + 6816], rax
                        mov              qword ptr [rbp + 6824], rdx
                        mov              qword ptr [rbp + 4912], rax
                        mov              qword ptr [rbp + 4920], rdx
                                                                                        jmp   xchain00238_n64_α
# IR_VAR
xchain00238_n62_α:
                        mov              rax, qword ptr [rbp + 6736]
                        mov              qword ptr [rbp + 4592], rax
                        mov              rax, qword ptr [rbp + 6744]
                        mov              qword ptr [rbp + 4600], rax
                                                                                        jmp   xchain00238_n65_α
# IR_VAR
xchain00238_n63_α:
                        mov              rax, qword ptr [rbp + 6784]
                        mov              qword ptr [rbp + 5808], rax
                        mov              rax, qword ptr [rbp + 6792]
                        mov              qword ptr [rbp + 5816], rax
                                                                                        jmp   xchain00238_n67_α
# IR_ASSIGN_VAR
xchain00238_n64_α:
                        mov              rdi, qword ptr [rbp + 4800]
                        mov              rsi, qword ptr [rbp + 4808]
                        mov              rdx, qword ptr [rbp + 4912]
                        mov              rcx, qword ptr [rbp + 4920]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain00238_n43_α
                        mov              qword ptr [rbp + 4896], rax
                        mov              qword ptr [rbp + 4904], rdx
                                                                                        jmp   xchain00238_n42_β
# IR_FIELD_GET
xchain00238_n65_α:
                        mov              rdi, qword ptr [rip + .Lx00261_0]
                        mov              rsi, qword ptr [rbp + 4592]
                        mov              rdx, qword ptr [rbp + 4600]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    xchain00238_n66_α
                        mov              qword ptr [rbp + 4560], rax
                        mov              qword ptr [rbp + 4568], rdx
                                                                                        jmp   xchain00238_n68_α
.Lx00261_0:
                        .quad            .Lx00261_0_s
.Lx00261_0_s:
                        .string          "n"
# IR_DISJUNCTION_NARY
xchain00238_n66_α:
                        mov              qword ptr [rbp + 3712], 0
                        mov              qword ptr [rbp + 3720], 0
                        mov              dword ptr [rbp + 3728], 0
                                                                                        jmp   xchain00238_n70_α
xchain00238_n66_as:
                        mov              eax, dword ptr [rbp + 3728]
                        cmp              eax, 0
                                                                                        jne   .Lx00262_0
                        mov              rax, qword ptr [rbp + 3760]
                        mov              qword ptr [rbp + 3712], rax
                        mov              rax, qword ptr [rbp + 3768]
                        mov              qword ptr [rbp + 3720], rax
                                                                                        jmp   xchain00238_n69_α
.Lx00262_0:
                                                                                        jmp   xchain00238_n69_α
xchain00238_n66_β:
                        mov              eax, dword ptr [rbp + 3728]
                                                                                        jmp   xchain00238_n71_β
xchain00238_n66_af:
                        add              dword ptr [rbp + 3728], 1
                        mov              eax, dword ptr [rbp + 3728]
                                                                                        jmp   xchain00238_n69_α
xchain00238_n67_α:
# BOX IR_CALL person(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5696] -> [zr+5632]
                        mov              rax, qword ptr [rbp + 5696]
                        mov              qword ptr [rbp + 5632], rax
                        mov              rax, qword ptr [rbp + 5704]
                        mov              qword ptr [rbp + 5640], rax
# marshal arg1 = producer-box slot [zr+5728] -> [zr+5648]
                        mov              rax, qword ptr [rbp + 5728]
                        mov              qword ptr [rbp + 5648], rax
                        mov              rax, qword ptr [rbp + 5736]
                        mov              qword ptr [rbp + 5656], rax
# marshal arg2 = producer-box slot [zr+5808] -> [zr+5664]
                        mov              rax, qword ptr [rbp + 5808]
                        mov              qword ptr [rbp + 5664], rax
                        mov              rax, qword ptr [rbp + 5816]
                        mov              qword ptr [rbp + 5672], rax
                        .section         .rodata
.Lrkfn862:              .string          "person"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn862]
                        lea              rsi, [rbp + 5632]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5616], rax
                        mov              qword ptr [rbp + 5624], rdx
                        cmp              eax, 99
                                                                                        je    xchain00238_n45_α
                                                                                        jmp   xchain00238_n73_α
xchain00238_n67_β:
                                                                                        jmp   xchain00238_n45_α
# IR_LIT_STRING
xchain00238_n68_α:
                        mov              qword ptr [rbp + 4624], 1
                        mov              rax, qword ptr [rip + .Lx00263_0]
                        mov              qword ptr [rbp + 4632], rax
                                                                                        jmp   xchain00238_n74_α
.Lx00263_0:
                        .quad            .Lx00263_0_s
.Lx00263_0_s:
                        .string          "] "
# IR_LIT_STRING
xchain00238_n69_α:
                        mov              qword ptr [rbp + 3504], 1
                        mov              rax, qword ptr [rip + .Lx00264_0]
                        mov              qword ptr [rbp + 3512], rax
                                                                                        jmp   xchain00238_n75_α
.Lx00264_0:
                        .quad            .Lx00264_0_s
.Lx00264_0_s:
                        .string          "b."
# IR_VAR
xchain00238_n70_α:
                        mov              rax, qword ptr [rbp + 6736]
                        mov              qword ptr [rbp + 4368], rax
                        mov              rax, qword ptr [rbp + 6744]
                        mov              qword ptr [rbp + 4376], rax
                                                                                        jmp   xchain00238_n76_α
xchain00238_n70_β:
                                                                                        jmp   xchain00238_n66_af
xchain00238_n71_α:
                        mov              qword ptr [rbp + 3904], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00265_20
                        mov              rax, qword ptr [rbp + 3936]
                        mov              rdx, qword ptr [rbp + 3944]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx00265_21
.Lx00265_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 3936]
                        mov              rdx, qword ptr [rbp + 3944]
                        call             rt_arg_stage@PLT
.Lx00265_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00265_22
                        mov              rax, qword ptr [rbp + 3968]
                        mov              rdx, qword ptr [rbp + 3976]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx00265_23
.Lx00265_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 3968]
                        mov              rdx, qword ptr [rbp + 3976]
                        call             rt_arg_stage@PLT
.Lx00265_23:
                        mov              edi, 8
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx00265_1
                        lea              rcx, [rip + .Lx00265_3]
                        lea              rdx, [rip + .Lx00265_4]
                                                                                        jmp   rax
.Lx00265_3:
                        mov              qword ptr [rbp + 3912], rsp
                        mov              rax, qword ptr [rbp + 3904]
                        test             rax, rax
                                                                                        jne   .Lx00265_5
                        mov              qword ptr [rbp + 3904], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx00265_2
.Lx00265_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx00265_2
.Lx00265_4:
                        mov              rax, qword ptr [rbp + 3904]
                        test             rax, rax
                                                                                        jne   .Lx00265_6
                        mov              qword ptr [rbp + 3904], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx00265_2
.Lx00265_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx00265_2
.Lx00265_1:
                        call             rt_faildescr@PLT
.Lx00265_2:
                        mov              qword ptr [rbp + 3856], rax
                        mov              qword ptr [rbp + 3864], rdx
                        cmp              eax, 99
                                                                                        je    xchain00238_n69_α
                                                                                        jmp   xchain00238_n77_α
xchain00238_n71_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 3912]
                                                                                        jmp   qword ptr [rsp]
.Lx00265_0:
                        .quad            .Lx00265_0_s
.Lx00265_0_s:
                        .string          "gedref"
xchain00238_n72_α:
                                                                                        jmp   xchain00238_n66_as
xchain00238_n72_β:
                                                                                        jmp   xchain00238_n69_α
# IR_ASSIGN_VAR
xchain00238_n73_α:
                        mov              rdi, qword ptr [rbp + 5568]
                        mov              rsi, qword ptr [rbp + 5576]
                        mov              rdx, qword ptr [rbp + 5616]
                        mov              rcx, qword ptr [rbp + 5624]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain00238_n45_α
                        mov              qword ptr [rbp + 5600], rax
                        mov              qword ptr [rbp + 5608], rdx
                                                                                        jmp   xchain00238_n78_α
# IR_VAR
xchain00238_n74_α:
                        mov              rax, qword ptr [rbp + 6736]
                        mov              qword ptr [rbp + 4736], rax
                        mov              rax, qword ptr [rbp + 6744]
                        mov              qword ptr [rbp + 4744], rax
                                                                                        jmp   xchain00238_n79_α
# IR_VAR
xchain00238_n75_α:
                        mov              rax, qword ptr [rbp + 6736]
                        mov              qword ptr [rbp + 3648], rax
                        mov              rax, qword ptr [rbp + 6744]
                        mov              qword ptr [rbp + 3656], rax
                                                                                        jmp   xchain00238_n80_α
# IR_FIELD_GET
xchain00238_n76_α:
                        mov              rdi, qword ptr [rip + .Lx00266_0]
                        mov              rsi, qword ptr [rbp + 4368]
                        mov              rdx, qword ptr [rbp + 4376]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    xchain00238_n66_af
                        mov              qword ptr [rbp + 4336], rax
                        mov              qword ptr [rbp + 4344], rdx
                                                                                        jmp   xchain00238_n82_α
.Lx00266_0:
                        .quad            .Lx00266_0_s
.Lx00266_0_s:
                        .string          "r"
xchain00238_n77_α:
                        lea              rsi, [rbp + 3824]
                        lea              rdx, [rbp + 3856]
                        call             proc_refto_dcα
                                                                                        jmp   .Lx00267_2
.Lx00267_2:
                        mov              qword ptr [rbp + 3760], rax
                        mov              qword ptr [rbp + 3768], rdx
                        cmp              eax, 99
                                                                                        je    xchain00238_n71_β
                                                                                        jmp   xchain00238_n72_α
xchain00238_n77_β:
                                                                                        jmp   xchain00238_n71_β
.Lx00267_0:
                        .quad            .Lx00267_0_s
.Lx00267_0_s:
                        .string          "refto"
xchain00238_n78_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5472] -> [zr+5424]
                        mov              rax, qword ptr [rbp + 5472]
                        mov              qword ptr [rbp + 5424], rax
                        mov              rax, qword ptr [rbp + 5480]
                        mov              qword ptr [rbp + 5432], rax
# marshal arg1 = producer-box slot [zr+5600] -> [zr+5440]
                        mov              rax, qword ptr [rbp + 5600]
                        mov              qword ptr [rbp + 5440], rax
                        mov              rax, qword ptr [rbp + 5608]
                        mov              qword ptr [rbp + 5448], rax
                        .section         .rodata
.Lrkfn879:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn879]
                        lea              rsi, [rbp + 5424]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5408], rax
                        mov              qword ptr [rbp + 5416], rdx
                        cmp              eax, 99
                                                                                        je    xchain00238_n45_α
                                                                                        jmp   xchain00238_n45_α
xchain00238_n78_β:
                                                                                        jmp   xchain00238_n45_α
# IR_FIELD_GET
xchain00238_n79_α:
                        mov              rdi, qword ptr [rip + .Lx00268_0]
                        mov              rsi, qword ptr [rbp + 4736]
                        mov              rdx, qword ptr [rbp + 4744]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    xchain00238_n66_α
                        mov              qword ptr [rbp + 4704], rax
                        mov              qword ptr [rbp + 4712], rdx
                                                                                        jmp   xchain00238_n83_α
.Lx00268_0:
                        .quad            .Lx00268_0_s
.Lx00268_0_s:
                        .string          "r"
# IR_FIELD_GET
xchain00238_n80_α:
                        mov              rdi, qword ptr [rip + .Lx00269_0]
                        mov              rsi, qword ptr [rbp + 3648]
                        mov              rdx, qword ptr [rbp + 3656]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    xchain00238_n81_α
                        mov              qword ptr [rbp + 3616], rax
                        mov              qword ptr [rbp + 3624], rdx
                                                                                        jmp   xchain00238_n84_α
.Lx00269_0:
                        .quad            .Lx00269_0_s
.Lx00269_0_s:
                        .string          "r"
# KEYWORD_null
xchain00238_n81_α:
                        mov              qword ptr [rbp + 3408], 0
                        mov              qword ptr [rbp + 3416], 0
                                                                                        jmp   xchain00238_n85_α
xchain00238_n81_β:
                                                                                        jmp   xchain00238_n89_α
# IR_LIT_STRING
xchain00238_n82_α:
                        mov              qword ptr [rbp + 4400], 1
                        mov              rax, qword ptr [rip + .Lx00270_0]
                        mov              qword ptr [rbp + 4408], rax
                                                                                        jmp   xchain00238_n86_α
.Lx00270_0:
                        .quad            .Lx00270_0_s
.Lx00270_0_s:
                        .string          "FAMC"
xchain00238_n83_α:
                        lea              rsi, [rbp + 4704]
                        call             proc_gedlnf_dcα
                                                                                        jmp   .Lx00271_2
.Lx00271_2:
                        mov              qword ptr [rbp + 4656], rax
                        mov              qword ptr [rbp + 4664], rdx
                        cmp              eax, 99
                                                                                        je    xchain00238_n66_α
                                                                                        jmp   xchain00238_n87_α
xchain00238_n83_β:
                                                                                        jmp   xchain00238_n66_α
.Lx00271_0:
                        .quad            .Lx00271_0_s
.Lx00271_0_s:
                        .string          "gedlnf"
# IR_LIT_STRING
xchain00238_n84_α:
                        mov              qword ptr [rbp + 3680], 1
                        mov              rax, qword ptr [rip + .Lx00272_0]
                        mov              qword ptr [rbp + 3688], rax
                                                                                        jmp   xchain00238_n88_α
.Lx00272_0:
                        .quad            .Lx00272_0_s
.Lx00272_0_s:
                        .string          "BIRT"
xchain00238_n85_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 3408]
                        mov              rdx, qword ptr [rbp + 3416]
                        mov              qword ptr [rbp + 6784], rax
                        mov              qword ptr [rbp + 6792], rdx
                        mov              qword ptr [rbp + 3392], rax
                        mov              qword ptr [rbp + 3400], rdx
                                                                                        jmp   xchain00238_n89_α
xchain00238_n86_α:
                        mov              qword ptr [rbp + 4304], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00273_20
                        mov              rax, qword ptr [rbp + 4336]
                        mov              rdx, qword ptr [rbp + 4344]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx00273_21
.Lx00273_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 4336]
                        mov              rdx, qword ptr [rbp + 4344]
                        call             rt_arg_stage@PLT
.Lx00273_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00273_22
                        mov              rax, qword ptr [rbp + 4400]
                        mov              rdx, qword ptr [rbp + 4408]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx00273_23
.Lx00273_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 4400]
                        mov              rdx, qword ptr [rbp + 4408]
                        call             rt_arg_stage@PLT
.Lx00273_23:
                        mov              edi, 8
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx00273_1
                        lea              rcx, [rip + .Lx00273_3]
                        lea              rdx, [rip + .Lx00273_4]
                                                                                        jmp   rax
.Lx00273_3:
                        mov              qword ptr [rbp + 4312], rsp
                        mov              rax, qword ptr [rbp + 4304]
                        test             rax, rax
                                                                                        jne   .Lx00273_5
                        mov              qword ptr [rbp + 4304], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx00273_2
.Lx00273_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx00273_2
.Lx00273_4:
                        mov              rax, qword ptr [rbp + 4304]
                        test             rax, rax
                                                                                        jne   .Lx00273_6
                        mov              qword ptr [rbp + 4304], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx00273_2
.Lx00273_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx00273_2
.Lx00273_1:
                        call             rt_faildescr@PLT
.Lx00273_2:
                        mov              qword ptr [rbp + 4256], rax
                        mov              qword ptr [rbp + 4264], rdx
                        cmp              eax, 99
                                                                                        je    xchain00238_n66_af
                                                                                        jmp   xchain00238_n90_α
xchain00238_n86_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 4312]
                                                                                        jmp   qword ptr [rsp]
.Lx00273_0:
                        .quad            .Lx00273_0_s
.Lx00273_0_s:
                        .string          "gedref"
xchain00238_n87_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4528] -> [zr+4448]
                        mov              rax, qword ptr [rbp + 4528]
                        mov              qword ptr [rbp + 4448], rax
                        mov              rax, qword ptr [rbp + 4536]
                        mov              qword ptr [rbp + 4456], rax
# marshal arg1 = producer-box slot [zr+4560] -> [zr+4464]
                        mov              rax, qword ptr [rbp + 4560]
                        mov              qword ptr [rbp + 4464], rax
                        mov              rax, qword ptr [rbp + 4568]
                        mov              qword ptr [rbp + 4472], rax
# marshal arg2 = producer-box slot [zr+4624] -> [zr+4480]
                        mov              rax, qword ptr [rbp + 4624]
                        mov              qword ptr [rbp + 4480], rax
                        mov              rax, qword ptr [rbp + 4632]
                        mov              qword ptr [rbp + 4488], rax
# marshal arg3 = producer-box slot [zr+4656] -> [zr+4496]
                        mov              rax, qword ptr [rbp + 4656]
                        mov              qword ptr [rbp + 4496], rax
                        mov              rax, qword ptr [rbp + 4664]
                        mov              qword ptr [rbp + 4504], rax
                        .section         .rodata
.Lrkfn891:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn891]
                        lea              rsi, [rbp + 4448]
                        mov              edx, 4
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4432], rax
                        mov              qword ptr [rbp + 4440], rdx
                        cmp              eax, 99
                                                                                        je    xchain00238_n66_α
                                                                                        jmp   xchain00238_n66_α
xchain00238_n87_β:
                                                                                        jmp   xchain00238_n66_α
xchain00238_n88_α:
                        mov              qword ptr [rbp + 3584], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00274_20
                        mov              rax, qword ptr [rbp + 3616]
                        mov              rdx, qword ptr [rbp + 3624]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx00274_21
.Lx00274_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 3616]
                        mov              rdx, qword ptr [rbp + 3624]
                        call             rt_arg_stage@PLT
.Lx00274_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00274_22
                        mov              rax, qword ptr [rbp + 3680]
                        mov              rdx, qword ptr [rbp + 3688]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx00274_23
.Lx00274_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 3680]
                        mov              rdx, qword ptr [rbp + 3688]
                        call             rt_arg_stage@PLT
.Lx00274_23:
                        mov              edi, 6
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx00274_1
                        lea              rcx, [rip + .Lx00274_3]
                        lea              rdx, [rip + .Lx00274_4]
                                                                                        jmp   rax
.Lx00274_3:
                        mov              qword ptr [rbp + 3592], rsp
                        mov              rax, qword ptr [rbp + 3584]
                        test             rax, rax
                                                                                        jne   .Lx00274_5
                        mov              qword ptr [rbp + 3584], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx00274_2
.Lx00274_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx00274_2
.Lx00274_4:
                        mov              rax, qword ptr [rbp + 3584]
                        test             rax, rax
                                                                                        jne   .Lx00274_6
                        mov              qword ptr [rbp + 3584], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx00274_2
.Lx00274_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx00274_2
.Lx00274_1:
                        call             rt_faildescr@PLT
.Lx00274_2:
                        mov              qword ptr [rbp + 3536], rax
                        mov              qword ptr [rbp + 3544], rdx
                        cmp              eax, 99
                                                                                        je    xchain00238_n81_α
                                                                                        jmp   xchain00238_n91_α
xchain00238_n88_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 3592]
                                                                                        jmp   qword ptr [rsp]
.Lx00274_0:
                        .quad            .Lx00274_0_s
.Lx00274_0_s:
                        .string          "gedsub"
# IR_VAR
xchain00238_n89_α:
                        mov              rax, qword ptr [rbp + 6736]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 6744]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   xchain00238_n92_α
xchain00238_n90_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 4256]
                        mov              rdx, qword ptr [rbp + 4264]
                        mov              qword ptr [rbp + 6768], rax
                        mov              qword ptr [rbp + 6776], rdx
                        mov              qword ptr [rbp + 4240], rax
                        mov              qword ptr [rbp + 4248], rdx
                                                                                        jmp   xchain00238_n94_α
xchain00238_n91_α:
                        lea              rsi, [rbp + 3504]
                        lea              rdx, [rbp + 3536]
                        call             proc_event_dcα
                                                                                        jmp   .Lx00275_2
.Lx00275_2:
                        mov              qword ptr [rbp + 3440], rax
                        mov              qword ptr [rbp + 3448], rdx
                        cmp              eax, 99
                                                                                        je    xchain00238_n88_β
                                                                                        jmp   xchain00238_n81_α
xchain00238_n91_β:
                                                                                        jmp   xchain00238_n88_β
.Lx00275_0:
                        .quad            .Lx00275_0_s
.Lx00275_0_s:
                        .string          "event"
# IR_FIELD_GET
xchain00238_n92_α:
                        mov              rdi, qword ptr [rip + .Lx00276_0]
                        mov              rsi, qword ptr [rbp + 576]
                        mov              rdx, qword ptr [rbp + 584]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    xchain00238_n93_α
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   xchain00238_n95_α
.Lx00276_0:
                        .quad            .Lx00276_0_s
.Lx00276_0_s:
                        .string          "r"
# IR_LIT_STRING
xchain00238_n93_α:
                        mov              qword ptr [rbp + 240], 1
                        mov              rax, qword ptr [rip + .Lx00277_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   xchain00238_n96_α
.Lx00277_0:
                        .quad            .Lx00277_0_s
.Lx00277_0_s:
                        .string          "d."
# IR_LIT_STRING
xchain00238_n94_α:
                        mov              qword ptr [rbp + 4064], 1
                        mov              rax, qword ptr [rip + .Lx00278_0]
                        mov              qword ptr [rbp + 4072], rax
                                                                                        jmp   xchain00238_n97_α
.Lx00278_0:
                        .quad            .Lx00278_0_s
.Lx00278_0_s:
                        .string          "father"
# IR_LIT_STRING
xchain00238_n95_α:
                        mov              qword ptr [rbp + 608], 1
                        mov              rax, qword ptr [rip + .Lx00279_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   xchain00238_n98_α
.Lx00279_0:
                        .quad            .Lx00279_0_s
.Lx00279_0_s:
                        .string          "FAMS"
# IR_VAR
xchain00238_n96_α:
                        mov              rax, qword ptr [rbp + 6736]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 6744]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   xchain00238_n99_α
# IR_VAR
xchain00238_n97_α:
                        mov              rax, qword ptr [rbp + 6768]
                        mov              qword ptr [rbp + 4176], rax
                        mov              rax, qword ptr [rbp + 6776]
                        mov              qword ptr [rbp + 4184], rax
                                                                                        jmp   xchain00238_n00028_α
xchain00238_n98_α:
                        mov              qword ptr [rbp + 512], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00280_20
                        mov              rax, qword ptr [rbp + 544]
                        mov              rdx, qword ptr [rbp + 552]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx00280_21
.Lx00280_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 544]
                        mov              rdx, qword ptr [rbp + 552]
                        call             rt_arg_stage@PLT
.Lx00280_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00280_22
                        mov              rax, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx00280_23
.Lx00280_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        call             rt_arg_stage@PLT
.Lx00280_23:
                        mov              edi, 8
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx00280_1
                        lea              rcx, [rip + .Lx00280_3]
                        lea              rdx, [rip + .Lx00280_4]
                                                                                        jmp   rax
.Lx00280_3:
                        mov              qword ptr [rbp + 520], rsp
                        mov              rax, qword ptr [rbp + 512]
                        test             rax, rax
                                                                                        jne   .Lx00280_5
                        mov              qword ptr [rbp + 512], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx00280_2
.Lx00280_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx00280_2
.Lx00280_4:
                        mov              rax, qword ptr [rbp + 512]
                        test             rax, rax
                                                                                        jne   .Lx00280_6
                        mov              qword ptr [rbp + 512], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx00280_2
.Lx00280_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx00280_2
.Lx00280_1:
                        call             rt_faildescr@PLT
.Lx00280_2:
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 99
                                                                                        je    xchain00238_n93_α
                                                                                        jmp   xchain00238_n00031_α
xchain00238_n98_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 520]
                                                                                        jmp   qword ptr [rsp]
.Lx00280_0:
                        .quad            .Lx00280_0_s
.Lx00280_0_s:
                        .string          "gedref"
# IR_FIELD_GET
xchain00238_n99_α:
                        mov              rdi, qword ptr [rip + .Lx00281_0]
                        mov              rsi, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    xchain00238_n00026_α
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   xchain00238_n00030_α
.Lx00281_0:
                        .quad            .Lx00281_0_s
.Lx00281_0_s:
                        .string          "r"
# IR_UNMARK
xchain00238_n00026_α:
                        mov              rsp, qword ptr [rbp + 112]
                                                                                        jmp   xchain00238_n47_β
# IR_LIT_STRING
xchain00238_n00028_α:
                        mov              qword ptr [rbp + 4208], 1
                        mov              rax, qword ptr [rip + .Lx00282_0]
                        mov              qword ptr [rbp + 4216], rax
                                                                                        jmp   xchain00238_n00032_α
.Lx00282_0:
                        .quad            .Lx00282_0_s
.Lx00282_0_s:
                        .string          "HUSB"
# IR_LIT_STRING
xchain00238_n00029_α:
                        mov              qword ptr [rbp + 3824], 1
                        mov              rax, qword ptr [rip + .Lx00283_0]
                        mov              qword ptr [rbp + 3832], rax
                                                                                        jmp   xchain00238_n00034_α
.Lx00283_0:
                        .quad            .Lx00283_0_s
.Lx00283_0_s:
                        .string          "mother"
xchain00238_n00031_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 6768], rax
                        mov              qword ptr [rbp + 6776], rdx
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   xchain00238_n00035_α
# IR_LIT_STRING
xchain00238_n00030_α:
                        mov              qword ptr [rbp + 416], 1
                        mov              rax, qword ptr [rip + .Lx00284_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   xchain00238_n00036_α
.Lx00284_0:
                        .quad            .Lx00284_0_s
.Lx00284_0_s:
                        .string          "DEAT"
xchain00238_n00032_α:
                        mov              qword ptr [rbp + 4144], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00285_20
                        mov              rax, qword ptr [rbp + 4176]
                        mov              rdx, qword ptr [rbp + 4184]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx00285_21
.Lx00285_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 4176]
                        mov              rdx, qword ptr [rbp + 4184]
                        call             rt_arg_stage@PLT
.Lx00285_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00285_22
                        mov              rax, qword ptr [rbp + 4208]
                        mov              rdx, qword ptr [rbp + 4216]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx00285_23
.Lx00285_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 4208]
                        mov              rdx, qword ptr [rbp + 4216]
                        call             rt_arg_stage@PLT
.Lx00285_23:
                        mov              edi, 8
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx00285_1
                        lea              rcx, [rip + .Lx00285_3]
                        lea              rdx, [rip + .Lx00285_4]
                                                                                        jmp   rax
.Lx00285_3:
                        mov              qword ptr [rbp + 4152], rsp
                        mov              rax, qword ptr [rbp + 4144]
                        test             rax, rax
                                                                                        jne   .Lx00285_5
                        mov              qword ptr [rbp + 4144], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx00285_2
.Lx00285_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx00285_2
.Lx00285_4:
                        mov              rax, qword ptr [rbp + 4144]
                        test             rax, rax
                                                                                        jne   .Lx00285_6
                        mov              qword ptr [rbp + 4144], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx00285_2
.Lx00285_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx00285_2
.Lx00285_1:
                        call             rt_faildescr@PLT
.Lx00285_2:
                        mov              qword ptr [rbp + 4096], rax
                        mov              qword ptr [rbp + 4104], rdx
                        cmp              eax, 99
                                                                                        je    xchain00238_n00029_α
                                                                                        jmp   xchain00238_n00001_α
xchain00238_n00032_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 4152]
                                                                                        jmp   qword ptr [rsp]
.Lx00285_0:
                        .quad            .Lx00285_0_s
.Lx00285_0_s:
                        .string          "gedref"
# IR_VAR
xchain00238_n00034_α:
                        mov              rax, qword ptr [rbp + 6768]
                        mov              qword ptr [rbp + 3936], rax
                        mov              rax, qword ptr [rbp + 6776]
                        mov              qword ptr [rbp + 3944], rax
                                                                                        jmp   xchain00238_n00037_α
# IR_BOUND
xchain00238_n00035_α:
                        mov              qword ptr [rbp + 640], rsp
                                                                                        jmp   xchain00238_n00002_α
xchain00238_n00036_α:
                        mov              qword ptr [rbp + 320], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00286_20
                        mov              rax, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx00286_21
.Lx00286_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        call             rt_arg_stage@PLT
.Lx00286_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00286_22
                        mov              rax, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx00286_23
.Lx00286_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        call             rt_arg_stage@PLT
.Lx00286_23:
                        mov              edi, 6
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx00286_1
                        lea              rcx, [rip + .Lx00286_3]
                        lea              rdx, [rip + .Lx00286_4]
                                                                                        jmp   rax
.Lx00286_3:
                        mov              qword ptr [rbp + 328], rsp
                        mov              rax, qword ptr [rbp + 320]
                        test             rax, rax
                                                                                        jne   .Lx00286_5
                        mov              qword ptr [rbp + 320], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx00286_2
.Lx00286_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx00286_2
.Lx00286_4:
                        mov              rax, qword ptr [rbp + 320]
                        test             rax, rax
                                                                                        jne   .Lx00286_6
                        mov              qword ptr [rbp + 320], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx00286_2
.Lx00286_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx00286_2
.Lx00286_1:
                        call             rt_faildescr@PLT
.Lx00286_2:
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    xchain00238_n00026_α
                                                                                        jmp   xchain00238_n00038_α
xchain00238_n00036_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 328]
                                                                                        jmp   qword ptr [rsp]
.Lx00286_0:
                        .quad            .Lx00286_0_s
.Lx00286_0_s:
                        .string          "gedsub"
xchain00238_n00001_α:
                        lea              rsi, [rbp + 4064]
                        lea              rdx, [rbp + 4096]
                        call             proc_refto_dcα
                                                                                        jmp   .Lx00287_2
.Lx00287_2:
                        mov              qword ptr [rbp + 4000], rax
                        mov              qword ptr [rbp + 4008], rdx
                        cmp              eax, 99
                                                                                        je    xchain00238_n00032_β
                                                                                        jmp   xchain00238_n00029_α
xchain00238_n00001_β:
                                                                                        jmp   xchain00238_n00032_β
.Lx00287_0:
                        .quad            .Lx00287_0_s
.Lx00287_0_s:
                        .string          "refto"
# IR_LIT_STRING
xchain00238_n00037_α:
                        mov              qword ptr [rbp + 3968], 1
                        mov              rax, qword ptr [rip + .Lx00288_0]
                        mov              qword ptr [rbp + 3976], rax
                                                                                        jmp   xchain00238_n71_α
.Lx00288_0:
                        .quad            .Lx00288_0_s
.Lx00288_0_s:
                        .string          "WIFE"
# IR_LIT_STRING
xchain00238_n00002_α:
                        mov              qword ptr [rbp + 3216], 1
                        mov              rax, qword ptr [rip + .Lx00289_0]
                        mov              qword ptr [rbp + 3224], rax
                                                                                        jmp   xchain00238_n00039_α
.Lx00289_0:
                        .quad            .Lx00289_0_s
.Lx00289_0_s:
                        .string          "m."
xchain00238_n00038_α:
                        lea              rsi, [rbp + 240]
                        lea              rdx, [rbp + 272]
                        call             proc_event_dcα
                                                                                        jmp   .Lx00290_2
.Lx00290_2:
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    xchain00238_n00036_β
                                                                                        jmp   xchain00238_n00040_α
xchain00238_n00038_β:
                                                                                        jmp   xchain00238_n00036_β
.Lx00290_0:
                        .quad            .Lx00290_0_s
.Lx00290_0_s:
                        .string          "event"
# IR_VAR
xchain00238_n00039_α:
                        mov              rax, qword ptr [rbp + 6768]
                        mov              qword ptr [rbp + 3328], rax
                        mov              rax, qword ptr [rbp + 6776]
                        mov              qword ptr [rbp + 3336], rax
                                                                                        jmp   xchain00238_n00201_α
xchain00238_n00040_α:
# IR_CONJUNCTION value-forward copy
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   xchain00238_n00026_α
xchain00238_n00040_β:
                                                                                        jmp   xchain00238_n00026_α
# IR_LIT_STRING
xchain00238_n00201_α:
                        mov              qword ptr [rbp + 3360], 1
                        mov              rax, qword ptr [rip + .Lx00291_0]
                        mov              qword ptr [rbp + 3368], rax
                                                                                        jmp   xchain00238_n00205_α
.Lx00291_0:
                        .quad            .Lx00291_0_s
.Lx00291_0_s:
                        .string          "MARR"
# IR_LIT_STRING
xchain00238_n00203_α:
                        mov              qword ptr [rbp + 2864], 1
                        mov              rax, qword ptr [rip + .Lx00292_0]
                        mov              qword ptr [rbp + 2872], rax
                                                                                        jmp   xchain00238_n00204_α
.Lx00292_0:
                        .quad            .Lx00292_0_s
.Lx00292_0_s:
                        .string          "  husb"
xchain00238_n00205_α:
                        mov              qword ptr [rbp + 3296], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00293_20
                        mov              rax, qword ptr [rbp + 3328]
                        mov              rdx, qword ptr [rbp + 3336]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx00293_21
.Lx00293_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 3328]
                        mov              rdx, qword ptr [rbp + 3336]
                        call             rt_arg_stage@PLT
.Lx00293_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00293_22
                        mov              rax, qword ptr [rbp + 3360]
                        mov              rdx, qword ptr [rbp + 3368]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx00293_23
.Lx00293_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 3360]
                        mov              rdx, qword ptr [rbp + 3368]
                        call             rt_arg_stage@PLT
.Lx00293_23:
                        mov              edi, 6
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx00293_1
                        lea              rcx, [rip + .Lx00293_3]
                        lea              rdx, [rip + .Lx00293_4]
                                                                                        jmp   rax
.Lx00293_3:
                        mov              qword ptr [rbp + 3304], rsp
                        mov              rax, qword ptr [rbp + 3296]
                        test             rax, rax
                                                                                        jne   .Lx00293_5
                        mov              qword ptr [rbp + 3296], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx00293_2
.Lx00293_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx00293_2
.Lx00293_4:
                        mov              rax, qword ptr [rbp + 3296]
                        test             rax, rax
                                                                                        jne   .Lx00293_6
                        mov              qword ptr [rbp + 3296], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx00293_2
.Lx00293_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx00293_2
.Lx00293_1:
                        call             rt_faildescr@PLT
.Lx00293_2:
                        mov              qword ptr [rbp + 3248], rax
                        mov              qword ptr [rbp + 3256], rdx
                        cmp              eax, 99
                                                                                        je    xchain00238_n00203_α
                                                                                        jmp   xchain00238_n00207_α
xchain00238_n00205_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 3304]
                                                                                        jmp   qword ptr [rsp]
.Lx00293_0:
                        .quad            .Lx00293_0_s
.Lx00293_0_s:
                        .string          "gedsub"
# IR_VAR
xchain00238_n00204_α:
                        mov              rax, qword ptr [rbp + 6736]
                        mov              qword ptr [rbp + 2960], rax
                        mov              rax, qword ptr [rbp + 6744]
                        mov              qword ptr [rbp + 2968], rax
                                                                                        jmp   xchain00238_n00208_α
xchain00238_n00207_α:
                        lea              rsi, [rbp + 3216]
                        lea              rdx, [rbp + 3248]
                        call             proc_event_dcα
                                                                                        jmp   .Lx00294_2
.Lx00294_2:
                        mov              qword ptr [rbp + 3152], rax
                        mov              qword ptr [rbp + 3160], rdx
                        cmp              eax, 99
                                                                                        je    xchain00238_n00205_β
                                                                                        jmp   xchain00238_n00212_α
xchain00238_n00207_β:
                                                                                        jmp   xchain00238_n00205_β
.Lx00294_0:
                        .quad            .Lx00294_0_s
.Lx00294_0_s:
                        .string          "event"
# IR_FIELD_GET
xchain00238_n00208_α:
                        mov              rdi, qword ptr [rip + .Lx00295_0]
                        mov              rsi, qword ptr [rbp + 2960]
                        mov              rdx, qword ptr [rbp + 2968]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    xchain00238_n00210_α
                        mov              qword ptr [rbp + 2928], rax
                        mov              qword ptr [rbp + 2936], rdx
                                                                                        jmp   xchain00238_n00211_α
.Lx00295_0:
                        .quad            .Lx00295_0_s
.Lx00295_0_s:
                        .string          "r"
# IR_LIT_STRING
xchain00238_n00210_α:
                        mov              qword ptr [rbp + 2512], 1
                        mov              rax, qword ptr [rip + .Lx00296_0]
                        mov              qword ptr [rbp + 2520], rax
                                                                                        jmp   xchain00238_n00214_α
.Lx00296_0:
                        .quad            .Lx00296_0_s
.Lx00296_0_s:
                        .string          "  wife"
xchain00238_n00212_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 3152]
                        mov              rdx, qword ptr [rbp + 3160]
                        mov              qword ptr [rbp + 6784], rax
                        mov              qword ptr [rbp + 6792], rdx
                        mov              qword ptr [rbp + 3136], rax
                        mov              qword ptr [rbp + 3144], rdx
                                                                                        jmp   xchain00238_n00203_α
# IR_VAR
xchain00238_n00211_α:
                        mov              rax, qword ptr [rbp + 6768]
                        mov              qword ptr [rbp + 3072], rax
                        mov              rax, qword ptr [rbp + 6776]
                        mov              qword ptr [rbp + 3080], rax
                                                                                        jmp   xchain00238_n00215_α
# IR_VAR
xchain00238_n00214_α:
                        mov              rax, qword ptr [rbp + 6736]
                        mov              qword ptr [rbp + 2608], rax
                        mov              rax, qword ptr [rbp + 6744]
                        mov              qword ptr [rbp + 2616], rax
                                                                                        jmp   xchain00238_n00217_α
# IR_LIT_STRING
xchain00238_n00215_α:
                        mov              qword ptr [rbp + 3104], 1
                        mov              rax, qword ptr [rip + .Lx00297_0]
                        mov              qword ptr [rbp + 3112], rax
                                                                                        jmp   xchain00238_n00218_α
.Lx00297_0:
                        .quad            .Lx00297_0_s
.Lx00297_0_s:
                        .string          "HUSB"
# IR_FIELD_GET
xchain00238_n00217_α:
                        mov              rdi, qword ptr [rip + .Lx00298_0]
                        mov              rsi, qword ptr [rbp + 2608]
                        mov              rdx, qword ptr [rbp + 2616]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    xchain00238_n00219_α
                        mov              qword ptr [rbp + 2576], rax
                        mov              qword ptr [rbp + 2584], rdx
                                                                                        jmp   xchain00238_n00221_α
.Lx00298_0:
                        .quad            .Lx00298_0_s
.Lx00298_0_s:
                        .string          "r"
# IR_DISJUNCTION_NARY
xchain00238_n00219_α:
                        mov              qword ptr [rbp + 2256], 0
                        mov              qword ptr [rbp + 2264], 0
                        mov              dword ptr [rbp + 2272], 0
                                                                                        jmp   xchain00238_n00223_α
xchain00238_n00219_as:
                        mov              eax, dword ptr [rbp + 2272]
                        cmp              eax, 0
                                                                                        jne   .Lx00299_0
                        mov              rax, qword ptr [rbp + 2288]
                        mov              qword ptr [rbp + 2256], rax
                        mov              rax, qword ptr [rbp + 2296]
                        mov              qword ptr [rbp + 2264], rax
                                                                                        jmp   xchain00238_n00003_α
.Lx00299_0:
                                                                                        jmp   xchain00238_n00003_α
xchain00238_n00219_β:
                        mov              eax, dword ptr [rbp + 2272]
                                                                                        jmp   xchain00238_n00003_α
xchain00238_n00219_af:
                        add              dword ptr [rbp + 2272], 1
                        mov              eax, dword ptr [rbp + 2272]
                                                                                        jmp   xchain00238_n00003_α
xchain00238_n00218_α:
                        mov              qword ptr [rbp + 3040], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00300_20
                        mov              rax, qword ptr [rbp + 3072]
                        mov              rdx, qword ptr [rbp + 3080]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx00300_21
.Lx00300_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 3072]
                        mov              rdx, qword ptr [rbp + 3080]
                        call             rt_arg_stage@PLT
.Lx00300_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00300_22
                        mov              rax, qword ptr [rbp + 3104]
                        mov              rdx, qword ptr [rbp + 3112]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx00300_23
.Lx00300_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 3104]
                        mov              rdx, qword ptr [rbp + 3112]
                        call             rt_arg_stage@PLT
.Lx00300_23:
                        mov              edi, 8
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx00300_1
                        lea              rcx, [rip + .Lx00300_3]
                        lea              rdx, [rip + .Lx00300_4]
                                                                                        jmp   rax
.Lx00300_3:
                        mov              qword ptr [rbp + 3048], rsp
                        mov              rax, qword ptr [rbp + 3040]
                        test             rax, rax
                                                                                        jne   .Lx00300_5
                        mov              qword ptr [rbp + 3040], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx00300_2
.Lx00300_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx00300_2
.Lx00300_4:
                        mov              rax, qword ptr [rbp + 3040]
                        test             rax, rax
                                                                                        jne   .Lx00300_6
                        mov              qword ptr [rbp + 3040], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx00300_2
.Lx00300_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx00300_2
.Lx00300_1:
                        call             rt_faildescr@PLT
.Lx00300_2:
                        mov              qword ptr [rbp + 2992], rax
                        mov              qword ptr [rbp + 3000], rdx
                        cmp              eax, 99
                                                                                        je    xchain00238_n00210_α
                                                                                        jmp   xchain00238_n00005_α
xchain00238_n00218_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 3048]
                                                                                        jmp   qword ptr [rsp]
.Lx00300_0:
                        .quad            .Lx00300_0_s
.Lx00300_0_s:
                        .string          "gedref"
# IR_VAR
xchain00238_n00221_α:
                        mov              rax, qword ptr [rbp + 6768]
                        mov              qword ptr [rbp + 2720], rax
                        mov              rax, qword ptr [rbp + 6776]
                        mov              qword ptr [rbp + 2728], rax
                                                                                        jmp   xchain00238_n00225_α
# IR_DISJUNCTION_NARY
xchain00238_n00003_α:
                        mov              qword ptr [rbp + 704], 0
                        mov              qword ptr [rbp + 712], 0
                        mov              dword ptr [rbp + 720], 0
                                                                                        jmp   xchain00238_n00228_α
xchain00238_n00003_as:
                        mov              eax, dword ptr [rbp + 720]
                        cmp              eax, 0
                                                                                        jne   .Lx00301_0
                                                                                        jmp   xchain00238_n00226_α
.Lx00301_0:
                                                                                        jmp   xchain00238_n00226_α
xchain00238_n00003_β:
                        mov              eax, dword ptr [rbp + 720]
                                                                                        jmp   xchain00238_n00232_α
xchain00238_n00003_af:
                        add              dword ptr [rbp + 720], 1
                        mov              eax, dword ptr [rbp + 720]
                                                                                        jmp   xchain00238_n00232_α
# IR_VAR
xchain00238_n00223_α:
                        mov              rax, qword ptr [rbp + 6784]
                        mov              qword ptr [rbp + 2400], rax
                        mov              rax, qword ptr [rbp + 6792]
                        mov              qword ptr [rbp + 2408], rax
                                                                                        jmp   xchain00238_n00230_α
xchain00238_n00223_β:
                                                                                        jmp   xchain00238_n00219_af
xchain00238_n00004_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2336] -> [zr+2304]
                        mov              rax, qword ptr [rbp + 2336]
                        mov              qword ptr [rbp + 2304], rax
                        mov              rax, qword ptr [rbp + 2344]
                        mov              qword ptr [rbp + 2312], rax
                        .section         .rodata
.Lrkfn961:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn961]
                        lea              rsi, [rbp + 2304]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2288], rax
                        mov              qword ptr [rbp + 2296], rdx
                        cmp              eax, 99
                                                                                        je    xchain00238_n00003_α
                                                                                        jmp   xchain00238_n00219_as
xchain00238_n00004_β:
                                                                                        jmp   xchain00238_n00003_α
xchain00238_n00005_α:
# IR_BINOP_TEST
                        mov              rdi, qword ptr [rbp + 2928]
                        mov              rsi, qword ptr [rbp + 2936]
                        mov              rdx, qword ptr [rbp + 2992]
                        mov              rcx, qword ptr [rbp + 3000]
                        mov              r8d, 23
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    xchain00238_n00218_β
                        mov              rax, qword ptr [rbp + 2992]
                        mov              qword ptr [rbp + 2896], rax
                        mov              rax, qword ptr [rbp + 3000]
                        mov              qword ptr [rbp + 2904], rax
                                                                                        jmp   xchain00238_n00229_α
# IR_LIT_STRING
xchain00238_n00225_α:
                        mov              qword ptr [rbp + 2752], 1
                        mov              rax, qword ptr [rip + .Lx00302_0]
                        mov              qword ptr [rbp + 2760], rax
                                                                                        jmp   xchain00238_n00006_α
.Lx00302_0:
                        .quad            .Lx00302_0_s
.Lx00302_0_s:
                        .string          "WIFE"
xchain00238_n00226_α:
# IR_CONJUNCTION value-forward copy
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   xchain00238_n00232_α
xchain00238_n00226_β:
                                                                                        jmp   xchain00238_n00232_α
# IR_DISJUNCTION_NARY
xchain00238_n00228_α:
                        mov              qword ptr [rbp + 1808], 0
                        mov              qword ptr [rbp + 1816], 0
                        mov              dword ptr [rbp + 1824], 0
                                                                                        jmp   xchain00238_n00234_α
xchain00238_n00228_as:
                        mov              eax, dword ptr [rbp + 1824]
                        cmp              eax, 0
                                                                                        jne   .Lx00303_0
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1816], rax
                                                                                        jmp   xchain00238_n00007_α
.Lx00303_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00303_1
                        mov              rax, qword ptr [rbp + 2080]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 2088]
                        mov              qword ptr [rbp + 1816], rax
                                                                                        jmp   xchain00238_n00007_α
.Lx00303_1:
                                                                                        jmp   xchain00238_n00007_α
xchain00238_n00228_β:
                        mov              eax, dword ptr [rbp + 1824]
                        cmp              eax, 0
                                                                                        je    xchain00238_n00236_β
                                                                                        jmp   xchain00238_n00228_af
xchain00238_n00228_af:
                        add              dword ptr [rbp + 1824], 1
                        mov              eax, dword ptr [rbp + 1824]
                        cmp              eax, 1
                                                                                        je    xchain00238_n00304_α
                                                                                        jmp   xchain00238_n00003_af
# IR_UNOP
xchain00238_n00230_α:
                        mov              eax, dword ptr [rbp + 6784]
                        cmp              eax, 99
                                                                                        je    xchain00238_n00219_af
                        cmp              eax, 0
                                                                                        je    xchain00238_n00219_af
                        mov              rax, qword ptr [rbp + 6784]
                        mov              qword ptr [rbp + 2368], rax
                        mov              rax, qword ptr [rbp + 6792]
                        mov              qword ptr [rbp + 2376], rax
                                                                                        jmp   xchain00238_n00008_α
xchain00238_n00229_α:
                        lea              rsi, [rbp + 2864]
                        lea              rdx, [rbp + 2896]
                        call             proc_refto_dcα
                                                                                        jmp   .Lx00305_2
.Lx00305_2:
                        mov              qword ptr [rbp + 2800], rax
                        mov              qword ptr [rbp + 2808], rdx
                        cmp              eax, 99
                                                                                        je    xchain00238_n00218_β
                                                                                        jmp   xchain00238_n00306_α
xchain00238_n00229_β:
                                                                                        jmp   xchain00238_n00218_β
.Lx00305_0:
                        .quad            .Lx00305_0_s
.Lx00305_0_s:
                        .string          "refto"
xchain00238_n00006_α:
                        mov              qword ptr [rbp + 2688], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00307_20
                        mov              rax, qword ptr [rbp + 2720]
                        mov              rdx, qword ptr [rbp + 2728]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx00307_21
.Lx00307_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2720]
                        mov              rdx, qword ptr [rbp + 2728]
                        call             rt_arg_stage@PLT
.Lx00307_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00307_22
                        mov              rax, qword ptr [rbp + 2752]
                        mov              rdx, qword ptr [rbp + 2760]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx00307_23
.Lx00307_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 2752]
                        mov              rdx, qword ptr [rbp + 2760]
                        call             rt_arg_stage@PLT
.Lx00307_23:
                        mov              edi, 8
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx00307_1
                        lea              rcx, [rip + .Lx00307_3]
                        lea              rdx, [rip + .Lx00307_4]
                                                                                        jmp   rax
.Lx00307_3:
                        mov              qword ptr [rbp + 2696], rsp
                        mov              rax, qword ptr [rbp + 2688]
                        test             rax, rax
                                                                                        jne   .Lx00307_5
                        mov              qword ptr [rbp + 2688], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx00307_2
.Lx00307_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx00307_2
.Lx00307_4:
                        mov              rax, qword ptr [rbp + 2688]
                        test             rax, rax
                                                                                        jne   .Lx00307_6
                        mov              qword ptr [rbp + 2688], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx00307_2
.Lx00307_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx00307_2
.Lx00307_1:
                        call             rt_faildescr@PLT
.Lx00307_2:
                        mov              qword ptr [rbp + 2640], rax
                        mov              qword ptr [rbp + 2648], rdx
                        cmp              eax, 99
                                                                                        je    xchain00238_n00219_α
                                                                                        jmp   xchain00238_n00308_α
xchain00238_n00006_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2696]
                                                                                        jmp   qword ptr [rsp]
.Lx00307_0:
                        .quad            .Lx00307_0_s
.Lx00307_0_s:
                        .string          "gedref"
# IR_UNMARK
xchain00238_n00232_α:
                        mov              rsp, qword ptr [rbp + 640]
                                                                                        jmp   xchain00238_n98_β
# IR_VAR
xchain00238_n00007_α:
                        mov              rax, qword ptr [rbp + 6768]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 6776]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   xchain00238_n00309_α
# IR_VAR
xchain00238_n00234_α:
                        mov              rax, qword ptr [rbp + 6736]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 6744]
                        mov              qword ptr [rbp + 1912], rax
                                                                                        jmp   xchain00238_n00310_α
xchain00238_n00234_β:
                                                                                        jmp   xchain00238_n00228_af
xchain00238_n00236_α:
                        mov              qword ptr [rbp + 1984], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00311_20
                        mov              rax, qword ptr [rbp + 2016]
                        mov              rdx, qword ptr [rbp + 2024]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx00311_21
.Lx00311_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2016]
                        mov              rdx, qword ptr [rbp + 2024]
                        call             rt_arg_stage@PLT
.Lx00311_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00311_22
                        mov              rax, qword ptr [rbp + 2048]
                        mov              rdx, qword ptr [rbp + 2056]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx00311_23
.Lx00311_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 2048]
                        mov              rdx, qword ptr [rbp + 2056]
                        call             rt_arg_stage@PLT
.Lx00311_23:
                        mov              edi, 8
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx00311_1
                        lea              rcx, [rip + .Lx00311_3]
                        lea              rdx, [rip + .Lx00311_4]
                                                                                        jmp   rax
.Lx00311_3:
                        mov              qword ptr [rbp + 1992], rsp
                        mov              rax, qword ptr [rbp + 1984]
                        test             rax, rax
                                                                                        jne   .Lx00311_5
                        mov              qword ptr [rbp + 1984], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx00311_2
.Lx00311_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx00311_2
.Lx00311_4:
                        mov              rax, qword ptr [rbp + 1984]
                        test             rax, rax
                                                                                        jne   .Lx00311_6
                        mov              qword ptr [rbp + 1984], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx00311_2
.Lx00311_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx00311_2
.Lx00311_1:
                        call             rt_faildescr@PLT
.Lx00311_2:
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx
                        cmp              eax, 99
                                                                                        je    xchain00238_n00228_af
                                                                                        jmp   xchain00238_n00312_α
xchain00238_n00236_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1992]
                                                                                        jmp   qword ptr [rsp]
.Lx00311_0:
                        .quad            .Lx00311_0_s
.Lx00311_0_s:
                        .string          "gedref"
# IR_VAR
xchain00238_n00304_α:
                        mov              rax, qword ptr [rbp + 6768]
                        mov              qword ptr [rbp + 2192], rax
                        mov              rax, qword ptr [rbp + 6776]
                        mov              qword ptr [rbp + 2200], rax
                                                                                        jmp   xchain00238_n00313_α
xchain00238_n00304_β:
                                                                                        jmp   xchain00238_n00314_α
xchain00238_n00312_α:
# IR_BINOP_TEST
                        mov              rdi, qword ptr [rbp + 1872]
                        mov              rsi, qword ptr [rbp + 1880]
                        mov              rdx, qword ptr [rbp + 1936]
                        mov              rcx, qword ptr [rbp + 1944]
                        mov              r8d, 22
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    xchain00238_n00236_β
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 1840], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 1848], rax
                                                                                        jmp   xchain00238_n00228_as
xchain00238_n00312_β:
                                                                                        jmp   xchain00238_n00236_β
# KEYWORD_null
xchain00238_n00314_α:
                        mov              qword ptr [rbp + 2080], 0
                        mov              qword ptr [rbp + 2088], 0
                                                                                        jmp   xchain00238_n00228_as
xchain00238_n00314_β:
                                                                                        jmp   xchain00238_n00228_af
# IR_LIT_STRING
xchain00238_n00008_α:
                        mov              qword ptr [rbp + 2336], 1
                        mov              rax, qword ptr [rip + .Lx00315_0]
                        mov              qword ptr [rbp + 2344], rax
                                                                                        jmp   xchain00238_n00004_α
.Lx00315_0:
                        .quad            .Lx00315_0_s
.Lx00315_0_s:
                        .string          "   m."
xchain00238_n00306_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 2800]
                        mov              rdx, qword ptr [rbp + 2808]
                        mov              qword ptr [rbp + 6784], rax
                        mov              qword ptr [rbp + 6792], rdx
                        mov              qword ptr [rbp + 2784], rax
                        mov              qword ptr [rbp + 2792], rdx
                                                                                        jmp   xchain00238_n00210_α
xchain00238_n00308_α:
# IR_BINOP_TEST
                        mov              rdi, qword ptr [rbp + 2576]
                        mov              rsi, qword ptr [rbp + 2584]
                        mov              rdx, qword ptr [rbp + 2640]
                        mov              rcx, qword ptr [rbp + 2648]
                        mov              r8d, 23
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    xchain00238_n00006_β
                        mov              rax, qword ptr [rbp + 2640]
                        mov              qword ptr [rbp + 2544], rax
                        mov              rax, qword ptr [rbp + 2648]
                        mov              qword ptr [rbp + 2552], rax
                                                                                        jmp   xchain00238_n00316_α
# IR_LIT_STRING
xchain00238_n00309_α:
                        mov              qword ptr [rbp + 864], 1
                        mov              rax, qword ptr [rip + .Lx00317_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   xchain00238_n00318_α
.Lx00317_0:
                        .quad            .Lx00317_0_s
.Lx00317_0_s:
                        .string          "CHIL"
# IR_FIELD_GET
xchain00238_n00310_α:
                        mov              rdi, qword ptr [rip + .Lx00319_0]
                        mov              rsi, qword ptr [rbp + 1904]
                        mov              rdx, qword ptr [rbp + 1912]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    xchain00238_n00228_af
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                                                                                        jmp   xchain00238_n00320_α
.Lx00319_0:
                        .quad            .Lx00319_0_s
.Lx00319_0_s:
                        .string          "r"
# IR_LIT_STRING
xchain00238_n00313_α:
                        mov              qword ptr [rbp + 2224], 1
                        mov              rax, qword ptr [rip + .Lx00321_0]
                        mov              qword ptr [rbp + 2232], rax
                                                                                        jmp   xchain00238_n00322_α
.Lx00321_0:
                        .quad            .Lx00321_0_s
.Lx00321_0_s:
                        .string          "HUSB"
xchain00238_n00316_α:
                        lea              rsi, [rbp + 2512]
                        lea              rdx, [rbp + 2544]
                        call             proc_refto_dcα
                                                                                        jmp   .Lx00323_2
.Lx00323_2:
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx
                        cmp              eax, 99
                                                                                        je    xchain00238_n00006_β
                                                                                        jmp   xchain00238_n00009_α
xchain00238_n00316_β:
                                                                                        jmp   xchain00238_n00006_β
.Lx00323_0:
                        .quad            .Lx00323_0_s
.Lx00323_0_s:
                        .string          "refto"
xchain00238_n00318_α:
                        mov              qword ptr [rbp + 800], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00324_20
                        mov              rax, qword ptr [rbp + 832]
                        mov              rdx, qword ptr [rbp + 840]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx00324_21
.Lx00324_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 832]
                        mov              rdx, qword ptr [rbp + 840]
                        call             rt_arg_stage@PLT
.Lx00324_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00324_22
                        mov              rax, qword ptr [rbp + 864]
                        mov              rdx, qword ptr [rbp + 872]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx00324_23
.Lx00324_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 864]
                        mov              rdx, qword ptr [rbp + 872]
                        call             rt_arg_stage@PLT
.Lx00324_23:
                        mov              edi, 8
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx00324_1
                        lea              rcx, [rip + .Lx00324_3]
                        lea              rdx, [rip + .Lx00324_4]
                                                                                        jmp   rax
.Lx00324_3:
                        mov              qword ptr [rbp + 808], rsp
                        mov              rax, qword ptr [rbp + 800]
                        test             rax, rax
                                                                                        jne   .Lx00324_5
                        mov              qword ptr [rbp + 800], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx00324_2
.Lx00324_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx00324_2
.Lx00324_4:
                        mov              rax, qword ptr [rbp + 800]
                        test             rax, rax
                                                                                        jne   .Lx00324_6
                        mov              qword ptr [rbp + 800], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx00324_2
.Lx00324_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx00324_2
.Lx00324_1:
                        call             rt_faildescr@PLT
.Lx00324_2:
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        cmp              eax, 99
                                                                                        je    xchain00238_n00232_α
                                                                                        jmp   xchain00238_n00325_α
xchain00238_n00318_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 808]
                                                                                        jmp   qword ptr [rsp]
.Lx00324_0:
                        .quad            .Lx00324_0_s
.Lx00324_0_s:
                        .string          "gedref"
# IR_VAR
xchain00238_n00320_α:
                        mov              rax, qword ptr [rbp + 6768]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 6776]
                        mov              qword ptr [rbp + 2024], rax
                                                                                        jmp   xchain00238_n00326_α
xchain00238_n00322_α:
                        mov              qword ptr [rbp + 2160], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00327_20
                        mov              rax, qword ptr [rbp + 2192]
                        mov              rdx, qword ptr [rbp + 2200]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx00327_21
.Lx00327_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2192]
                        mov              rdx, qword ptr [rbp + 2200]
                        call             rt_arg_stage@PLT
.Lx00327_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00327_22
                        mov              rax, qword ptr [rbp + 2224]
                        mov              rdx, qword ptr [rbp + 2232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx00327_23
.Lx00327_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 2224]
                        mov              rdx, qword ptr [rbp + 2232]
                        call             rt_arg_stage@PLT
.Lx00327_23:
                        mov              edi, 8
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx00327_1
                        lea              rcx, [rip + .Lx00327_3]
                        lea              rdx, [rip + .Lx00327_4]
                                                                                        jmp   rax
.Lx00327_3:
                        mov              qword ptr [rbp + 2168], rsp
                        mov              rax, qword ptr [rbp + 2160]
                        test             rax, rax
                                                                                        jne   .Lx00327_5
                        mov              qword ptr [rbp + 2160], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx00327_2
.Lx00327_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx00327_2
.Lx00327_4:
                        mov              rax, qword ptr [rbp + 2160]
                        test             rax, rax
                                                                                        jne   .Lx00327_6
                        mov              qword ptr [rbp + 2160], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx00327_2
.Lx00327_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx00327_2
.Lx00327_1:
                        call             rt_faildescr@PLT
.Lx00327_2:
                        mov              qword ptr [rbp + 2112], rax
                        mov              qword ptr [rbp + 2120], rdx
                        cmp              eax, 99
                                                                                        je    xchain00238_n00314_α
                                                                                        jmp   xchain00238_n00228_af
xchain00238_n00322_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2168]
                                                                                        jmp   qword ptr [rsp]
.Lx00327_0:
                        .quad            .Lx00327_0_s
.Lx00327_0_s:
                        .string          "gedref"
xchain00238_n00009_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 2448]
                        mov              rdx, qword ptr [rbp + 2456]
                        mov              qword ptr [rbp + 6784], rax
                        mov              qword ptr [rbp + 6792], rdx
                        mov              qword ptr [rbp + 2432], rax
                        mov              qword ptr [rbp + 2440], rdx
                                                                                        jmp   xchain00238_n00219_α
xchain00238_n00325_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 752]
                        mov              rdx, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 6784], rax
                        mov              qword ptr [rbp + 6792], rdx
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   xchain00238_n00328_α
# IR_LIT_STRING
xchain00238_n00326_α:
                        mov              qword ptr [rbp + 2048], 1
                        mov              rax, qword ptr [rip + .Lx00329_0]
                        mov              qword ptr [rbp + 2056], rax
                                                                                        jmp   xchain00238_n00236_α
.Lx00329_0:
                        .quad            .Lx00329_0_s
.Lx00329_0_s:
                        .string          "HUSB"
# IR_BOUND
xchain00238_n00328_α:
                        mov              qword ptr [rbp + 896], rsp
                                                                                        jmp   xchain00238_n00010_α
# IR_DISJUNCTION_NARY
xchain00238_n00010_α:
                        mov              qword ptr [rbp + 976], 0
                        mov              qword ptr [rbp + 984], 0
                        mov              dword ptr [rbp + 992], 0
                                                                                        jmp   xchain00238_n00011_α
xchain00238_n00010_as:
                        mov              eax, dword ptr [rbp + 992]
                        cmp              eax, 0
                                                                                        jne   .Lx00330_0
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   xchain00238_n00331_α
.Lx00330_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00330_1
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   xchain00238_n00331_α
.Lx00330_1:
                                                                                        jmp   xchain00238_n00331_α
xchain00238_n00010_β:
                        mov              eax, dword ptr [rbp + 992]
                        cmp              eax, 0
                                                                                        je    xchain00238_n00012_β
                                                                                        jmp   xchain00238_n00010_af
xchain00238_n00010_af:
                        add              dword ptr [rbp + 992], 1
                        mov              eax, dword ptr [rbp + 992]
                        cmp              eax, 1
                                                                                        je    xchain00238_n00332_α
                                                                                        jmp   xchain00238_n00333_α
# IR_LIT_STRING
xchain00238_n00331_α:
                        mov              qword ptr [rbp + 1568], 1
                        mov              rax, qword ptr [rip + .Lx00334_0]
                        mov              qword ptr [rbp + 1576], rax
                                                                                        jmp   xchain00238_n00335_α
.Lx00334_0:
                        .quad            .Lx00334_0_s
.Lx00334_0_s:
                        .string          "M"
# IR_VAR
xchain00238_n00011_α:
                        mov              rax, qword ptr [rbp + 6784]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 6792]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   xchain00238_n00013_α
xchain00238_n00011_β:
                                                                                        jmp   xchain00238_n00010_af
xchain00238_n00012_α:
                        mov              qword ptr [rbp + 1056], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00336_20
                        mov              rax, qword ptr [rbp + 1088]
                        mov              rdx, qword ptr [rbp + 1096]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx00336_21
.Lx00336_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1088]
                        mov              rdx, qword ptr [rbp + 1096]
                        call             rt_arg_stage@PLT
.Lx00336_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00336_22
                        mov              rax, qword ptr [rbp + 1120]
                        mov              rdx, qword ptr [rbp + 1128]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx00336_23
.Lx00336_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1120]
                        mov              rdx, qword ptr [rbp + 1128]
                        call             rt_arg_stage@PLT
.Lx00336_23:
                        mov              edi, 7
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx00336_1
                        lea              rcx, [rip + .Lx00336_3]
                        lea              rdx, [rip + .Lx00336_4]
                                                                                        jmp   rax
.Lx00336_3:
                        mov              qword ptr [rbp + 1064], rsp
                        mov              rax, qword ptr [rbp + 1056]
                        test             rax, rax
                                                                                        jne   .Lx00336_5
                        mov              qword ptr [rbp + 1056], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx00336_2
.Lx00336_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx00336_2
.Lx00336_4:
                        mov              rax, qword ptr [rbp + 1056]
                        test             rax, rax
                                                                                        jne   .Lx00336_6
                        mov              qword ptr [rbp + 1056], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx00336_2
.Lx00336_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx00336_2
.Lx00336_1:
                        call             rt_faildescr@PLT
.Lx00336_2:
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                        cmp              eax, 99
                                                                                        je    xchain00238_n00010_af
                                                                                        jmp   xchain00238_n00010_as
xchain00238_n00012_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1064]
                                                                                        jmp   qword ptr [rsp]
.Lx00336_0:
                        .quad            .Lx00336_0_s
.Lx00336_0_s:
                        .string          "gedval"
# IR_LIT_STRING
xchain00238_n00332_α:
                        mov              qword ptr [rbp + 1152], 1
                        mov              rax, qword ptr [rip + .Lx00337_0]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   xchain00238_n00010_as
xchain00238_n00332_β:
                                                                                        jmp   xchain00238_n00010_af
.Lx00337_0:
                        .quad            .Lx00337_0_s
.Lx00337_0_s:
                        .string          ""
xchain00238_n00335_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+976] -> [zr+1760]
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 1768], rax
# marshal arg1 = producer-box slot [zr+1568] -> [zr+1776]
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [rbp + 1784], rax
                        .section         .rodata
.Lrkfn1012:             .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1012]
                        lea              rsi, [rbp + 1760]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                        cmp              eax, 99
                                                                                        je    xchain00238_n00338_α
                                                                                        jmp   xchain00238_n00339_α
xchain00238_n00335_β:
                                                                                        jmp   xchain00238_n00338_α
# IR_LIT_STRING
xchain00238_n00013_α:
                        mov              qword ptr [rbp + 1120], 1
                        mov              rax, qword ptr [rip + .Lx00340_0]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   xchain00238_n00012_α
.Lx00340_0:
                        .quad            .Lx00340_0_s
.Lx00340_0_s:
                        .string          "SEX"
# IR_LIT_STRING
xchain00238_n00339_α:
                        mov              qword ptr [rbp + 1664], 1
                        mov              rax, qword ptr [rip + .Lx00341_0]
                        mov              qword ptr [rbp + 1672], rax
                                                                                        jmp   xchain00238_n00342_α
.Lx00341_0:
                        .quad            .Lx00341_0_s
.Lx00341_0_s:
                        .string          "   son"
# IR_LIT_STRING
xchain00238_n00338_α:
                        mov              qword ptr [rbp + 1328], 1
                        mov              rax, qword ptr [rip + .Lx00343_0]
                        mov              qword ptr [rbp + 1336], rax
                                                                                        jmp   xchain00238_n00014_α
.Lx00343_0:
                        .quad            .Lx00343_0_s
.Lx00343_0_s:
                        .string          "F"
# IR_VAR
xchain00238_n00342_α:
                        mov              rax, qword ptr [rbp + 6784]
                        mov              qword ptr [rbp + 1696], rax
                        mov              rax, qword ptr [rbp + 6792]
                        mov              qword ptr [rbp + 1704], rax
                                                                                        jmp   xchain00238_n00015_α
xchain00238_n00014_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+976] -> [zr+1520]
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 1528], rax
# marshal arg1 = producer-box slot [zr+1328] -> [zr+1536]
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1544], rax
                        .section         .rodata
.Lrkfn1019:             .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1019]
                        lea              rsi, [rbp + 1520]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                        cmp              eax, 99
                                                                                        je    xchain00238_n00344_α
                                                                                        jmp   xchain00238_n00345_α
xchain00238_n00014_β:
                                                                                        jmp   xchain00238_n00344_α
xchain00238_n00015_α:
                        lea              rsi, [rbp + 1664]
                        lea              rdx, [rbp + 1696]
                        call             proc_refto_dcα
                                                                                        jmp   .Lx00346_2
.Lx00346_2:
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                        cmp              eax, 99
                                                                                        je    xchain00238_n00333_α
                                                                                        jmp   xchain00238_n00347_α
xchain00238_n00015_β:
                                                                                        jmp   xchain00238_n00333_α
.Lx00346_0:
                        .quad            .Lx00346_0_s
.Lx00346_0_s:
                        .string          "refto"
# IR_UNMARK
xchain00238_n00333_α:
                        mov              rsp, qword ptr [rbp + 896]
                                                                                        jmp   xchain00238_n00318_β
# IR_LIT_STRING
xchain00238_n00345_α:
                        mov              qword ptr [rbp + 1424], 1
                        mov              rax, qword ptr [rip + .Lx00348_0]
                        mov              qword ptr [rbp + 1432], rax
                                                                                        jmp   xchain00238_n00016_α
.Lx00348_0:
                        .quad            .Lx00348_0_s
.Lx00348_0_s:
                        .string          "   dau"
# IR_LIT_STRING
xchain00238_n00344_α:
                        mov              qword ptr [rbp + 1248], 1
                        mov              rax, qword ptr [rip + .Lx00349_0]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   xchain00238_n00350_α
.Lx00349_0:
                        .quad            .Lx00349_0_s
.Lx00349_0_s:
                        .string          " child"
xchain00238_n00347_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 1600]
                        mov              rdx, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 6800], rax
                        mov              qword ptr [rbp + 6808], rdx
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx
                                                                                        jmp   xchain00238_n00351_α
# IR_VAR
xchain00238_n00016_α:
                        mov              rax, qword ptr [rbp + 6784]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 6792]
                        mov              qword ptr [rbp + 1464], rax
                                                                                        jmp   xchain00238_n00017_α
# IR_VAR
xchain00238_n00350_α:
                        mov              rax, qword ptr [rbp + 6784]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 6792]
                        mov              qword ptr [rbp + 1288], rax
                                                                                        jmp   xchain00238_n00352_α
# IR_VAR
xchain00238_n00351_α:
                        mov              rax, qword ptr [rbp + 6800]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 6808]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   xchain00238_n00333_α
xchain00238_n00017_α:
                        lea              rsi, [rbp + 1424]
                        lea              rdx, [rbp + 1456]
                        call             proc_refto_dcα
                                                                                        jmp   .Lx00353_2
.Lx00353_2:
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                        cmp              eax, 99
                                                                                        je    xchain00238_n00333_α
                                                                                        jmp   xchain00238_n00354_α
xchain00238_n00017_β:
                                                                                        jmp   xchain00238_n00333_α
.Lx00353_0:
                        .quad            .Lx00353_0_s
.Lx00353_0_s:
                        .string          "refto"
xchain00238_n00352_α:
                        lea              rsi, [rbp + 1248]
                        lea              rdx, [rbp + 1280]
                        call             proc_refto_dcα
                                                                                        jmp   .Lx00355_2
.Lx00355_2:
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                        cmp              eax, 99
                                                                                        je    xchain00238_n00333_α
                                                                                        jmp   xchain00238_n00356_α
xchain00238_n00352_β:
                                                                                        jmp   xchain00238_n00333_α
.Lx00355_0:
                        .quad            .Lx00355_0_s
.Lx00355_0_s:
                        .string          "refto"
xchain00238_n00354_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 1360]
                        mov              rdx, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 6800], rax
                        mov              qword ptr [rbp + 6808], rdx
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                                                                                        jmp   xchain00238_n00351_α
xchain00238_n00356_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 1184]
                        mov              rdx, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 6800], rax
                        mov              qword ptr [rbp + 6808], rdx
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                                                                                        jmp   xchain00238_n00351_α
main_β:
                                                                                        jmp   main_ω
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, qword ptr [rbp + 6728]
                        mov              rbp, [rsp + 65536]
                        add              rsp, 65544
                        ret
main_ω:
                        mov              rsp, qword ptr [rbp + 6728]
                        mov              dword ptr [rsp+0], 99
                        mov              dword ptr [rsp+4], 0
                        mov              qword ptr [rsp+8], 0
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 65536]
                        add              rsp, 65544
                        ret
